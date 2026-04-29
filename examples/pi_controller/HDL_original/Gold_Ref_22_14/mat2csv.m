% Cargar el archivo .mat
load('Gold_Ref_Sim.mat');

% Reemplazar 'nombre_de_la_variable' con el nombre de la variable que contiene los datos
datos = ans;

% Escribir los datos en un archivo CSV
csvwrite('Gold_Ref_22_14.csv', datos);