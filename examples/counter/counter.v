module counter (
    input  wire        clk,     // reloj
    input  wire        rst,     // reset asincrono activo en '1'
    input  wire        start,   // habilita el conteo
    input  wire [7:0]  inc,     // valor por el que se incrementa

    output wire [7:0]  cnt1,    // contador que incrementa cada 1 ciclo
    output wire [7:0]  cnt10,   // contador que incrementa cada 10 ciclos
    output wire [7:0]  cnt17    // contador que incrementa cada 17 ciclos
);

    // Registros internos de los contadores
    reg [7:0] r_cnt1;
    reg [7:0] r_cnt10;
    reg [7:0] r_cnt17;

    // Divisores de ciclos
    reg [3:0] r_div10;   // cuenta de 0 a 9 (10 ciclos)
    reg [4:0] r_div17;   // cuenta de 0 a 16 (17 ciclos)

    // Logica secuencial
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset: todo a 0
            r_cnt1  <= 8'd0;
            r_cnt10 <= 8'd0;
            r_cnt17 <= 8'd0;
            r_div10 <= 4'd0;
            r_div17 <= 5'd0;
        end
        else if (start) begin
            // ==========================
            // Contador que va a 1 ciclo
            // ==========================
            r_cnt1 <= r_cnt1 + inc;   // cada flanco suma "inc"

            // ==========================
            // Divisor /10: genera pulso
            // cada 10 ciclos
            // ==========================
            if (r_div10 == 4'd9) begin
                r_div10 <= 4'd0;
                r_cnt10 <= r_cnt10 + inc;  // incrementa cada 10 ciclos
            end
            else begin
                r_div10 <= r_div10 + 4'd1;
            end

            // ==========================
            // Divisor /17: genera pulso
            // cada 17 ciclos
            // ==========================
            if (r_div17 == 5'd16) begin
                r_div17 <= 5'd0;
                r_cnt17 <= r_cnt17 + inc;  // incrementa cada 17 ciclos
            end
            else begin
                r_div17 <= r_div17 + 5'd1;
            end

        end
        // si start = 0, los registros mantienen su valor
    end

    // Asignacion de registros internos a salidas
    assign cnt1  = r_cnt1;
    assign cnt10 = r_cnt10;
    assign cnt17 = r_cnt17;

endmodule
