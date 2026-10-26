module top(
    input [15:0] sw, 
    input btnL, 
    input btnU, 
    input btnR, 
    input btnD, 
    input btnC,
    output [15:0] led
);

    wire [1:0] mux_sel;
    assign mux_sel = {btnU, btnL};
    
    wire [1:0] demux_sel;
    assign demux_sel = {btnR, btnD};
    
    wire enable;
    assign enable = btnC;
    
    wire [3:0] carry;
    
    mux internet_mux(
        .A(sw[3:0]), // CEO
        .B(sw[7:4]), // You
        .C(sw[11:8]), // Fred
        .D(sw[15:12]), // Jill
        .Sel(mux_sel),
        .Enable(enable),
        .Y(carry)
    );

    demux internet_demux(
        .In(carry),
        .Sel(demux_sel),
        .Enable(enable),
        .Y1(led[3:0]), // Library
        .Y2(led[7:4]), // Fire Dept
        .Y3(led[11:8]), // School
        .Y4(led[15:12]) // Rib Shack
    );

endmodule