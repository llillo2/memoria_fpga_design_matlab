mem_file = 'spike_train.mem';

%% --- CARGAR FRAMES ---
fid = fopen(mem_file, 'r');
if fid < 0, error('No pude abrir %s', mem_file); end
C = textscan(fid, '%s', 'Delimiter','\n');
fclose(fid);

frames = C{1};
num_frames = numel(frames);
fprintf('Frames cargados: %d\n', num_frames);

%% --- CREAR MATRIZ LOGICAL DE FRAMES ---
char_mat   = char(strtrim(frames));   % cada fila es "0101..."
frames_mat = (char_mat == '1');       % logical (num_frames x 784)

%% --- EMPAQUETAR TODOS LOS FRAMES A ufix784  ---
packed_in = fi(zeros(num_frames,1), 0, 784, 0);  % num_frames x 1, ufix784

% frames_mat(f,1)   -> bit 784 (MSB)
% frames_mat(f,784) -> bit 1   (LSB)
for i = 1:784
    packed_in = bitset(packed_in, 784 - i + 1, frames_mat(:, i));
end
in_ts = timeseries(packed_in, (0:num_frames-1)'*0.1);

for f = 1:num_frames
    out = snn(packed_in(f));   % ufix10 
    fprintf('Frame %d -> %s\n', f, bin(out));
end
