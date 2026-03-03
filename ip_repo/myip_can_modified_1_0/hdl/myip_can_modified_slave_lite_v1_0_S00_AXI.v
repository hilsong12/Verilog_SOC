`timescale 1 ns / 1 ps

module myip_can_modified_slave_lite_v1_0_S00_AXI #
(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 5
)
(
    // [USER PORTS]
    input wire can_rx_port,
    output wire can_tx_port,

    // [AXI PORTS]
    input wire  S_AXI_ACLK,
    input wire  S_AXI_ARESETN,
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    input wire [2 : 0] S_AXI_AWPROT,
    input wire  S_AXI_AWVALID,
    output wire  S_AXI_AWREADY,
    input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    input wire  S_AXI_WVALID,
    output wire  S_AXI_WREADY,
    output wire [1 : 0] S_AXI_BRESP,
    output wire  S_AXI_BVALID,
    input wire  S_AXI_BREADY,
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    input wire [2 : 0] S_AXI_ARPROT,
    input wire  S_AXI_ARVALID,
    output wire  S_AXI_ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    output wire [1 : 0] S_AXI_RRESP,
    output wire  S_AXI_RVALID,
    input wire  S_AXI_RREADY
);

    // AXI4LITE signals
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_awaddr;
    reg  axi_awready;
    reg  axi_wready;
    reg [1 : 0] axi_bresp;
    reg  axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_araddr;
    reg  axi_arready;
    reg [1 : 0] axi_rresp;
    reg  axi_rvalid;

    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 2;

    // Registers
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg1;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg2;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg3;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg4;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg5;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg6;
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg7;
    
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;

    // State Machine
    reg [1:0] state_write;
    reg [1:0] state_read;
    localparam Idle = 2'b00, Raddr = 2'b10, Rdata = 2'b11, Waddr = 2'b10, Wdata = 2'b11;

    // Write State Machine
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_awready <= 0;
            axi_wready <= 0;
            axi_bvalid <= 0;
            axi_bresp <= 0;
            axi_awaddr <= 0;
            state_write <= Idle;
        end else begin
            case(state_write)
                Idle: begin
                    if(S_AXI_ARESETN == 1'b1) begin
                        axi_awready <= 1'b1;
                        axi_wready <= 1'b1;
                        state_write <= Waddr;
                    end else state_write <= state_write;
                end
                Waddr: begin
                    if (S_AXI_AWVALID && S_AXI_AWREADY) begin
                        axi_awaddr <= S_AXI_AWADDR;
                        if(S_AXI_WVALID) begin
                            axi_awready <= 1'b1;
                            state_write <= Waddr;
                            axi_bvalid <= 1'b1;
                        end else begin
                            axi_awready <= 1'b0;
                            state_write <= Wdata;
                            if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
                        end
                    end else begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
                    end
                end
                Wdata: begin
                    if (S_AXI_WVALID) begin
                        state_write <= Waddr;
                        axi_bvalid <= 1'b1;
                        axi_awready <= 1'b1;
                    end else begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    // Read State Machine
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_arready <= 1'b0;
            axi_rvalid <= 1'b0;
            axi_rresp <= 1'b0;
            state_read <= Idle;
        end else begin
            case(state_read)
                Idle: begin
                    if (S_AXI_ARESETN == 1'b1) begin
                        state_read <= Raddr;
                        axi_arready <= 1'b1;
                    end else state_read <= state_read;
                end
                Raddr: begin
                    if (S_AXI_ARVALID && S_AXI_ARREADY) begin
                        state_read <= Rdata;
                        axi_araddr <= S_AXI_ARADDR;
                        axi_rvalid <= 1'b1;
                        axi_arready <= 1'b0;
                    end else state_read <= state_read;
                end
                Rdata: begin
                    if (S_AXI_RVALID && S_AXI_RREADY) begin
                        axi_rvalid <= 1'b0;
                        axi_arready <= 1'b1;
                        state_read <= Raddr;
                    end else state_read <= state_read;
                end
            endcase
        end
    end

    assign S_AXI_RDATA = (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h0) ? slv_reg0 :
                         (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h1) ? slv_reg1 :
                         (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h2) ? slv_reg2 :
                         (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h3) ? slv_reg3 :
                         (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h4) ? slv_reg4 :
                         (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h5) ? slv_reg5 :
                         (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h6) ? slv_reg6 :
                         (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h7) ? slv_reg7 : 0;

    // =========================================================================
    // [USER LOGIC] Controller Integration & Register Logic
    // =========================================================================

    wire tx_busy_w, tx_done_w, rx_valid_w;
    wire [10:0] rx_id_w;
    wire [63:0] rx_data_w;
    wire [3:0]  rx_dlc_w;
    
    // [수정된 부분] 쓰기 감지 신호 수정 (AWVALID/READY 조건 제거)
    // 데이터(W)가 유효하고 준비되면 씁니다. 주소는 이미 래치되어 있습니다.
    wire slv_reg_wren;
    assign slv_reg_wren = S_AXI_WVALID && S_AXI_WREADY;

    CAN_Controller u_can_inst (
        .clk(S_AXI_ACLK),        
        .reset_p(~S_AXI_ARESETN),
        .can_rx_pin(can_rx_port), 
        .can_tx_pin(can_tx_port),
        .tx_start(slv_reg0[0]), 
        .tx_id(slv_reg2[14:4]), 
        .tx_dlc(slv_reg2[3:0]), 
        .tx_data({slv_reg4, slv_reg3}), 
        .tx_busy(tx_busy_w),
        .tx_done(tx_done_w),
        .rx_valid(rx_valid_w),
        .rx_id(rx_id_w),
        .rx_data(rx_data_w),
        .rx_dlc(rx_dlc_w)
    );

    always @(posedge S_AXI_ACLK) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            slv_reg0 <= 0; slv_reg1 <= 0; slv_reg2 <= 0; slv_reg3 <= 0;
            slv_reg4 <= 0; slv_reg5 <= 0; slv_reg6 <= 0; slv_reg7 <= 0;
        end 
        else begin
            // 1. [CPU Write]
            if (slv_reg_wren) begin
                case (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
                    3'h0: begin // Control
                        if (S_AXI_WSTRB[0]) slv_reg0[7:0]   <= S_AXI_WDATA[7:0];
                        if (S_AXI_WSTRB[1]) slv_reg0[15:8]  <= S_AXI_WDATA[15:8];
                        if (S_AXI_WSTRB[2]) slv_reg0[23:16] <= S_AXI_WDATA[23:16];
                        if (S_AXI_WSTRB[3]) slv_reg0[31:24] <= S_AXI_WDATA[31:24];
                    end
                    3'h2: begin // ID/DLC
                        if (S_AXI_WSTRB[0]) slv_reg2[7:0]   <= S_AXI_WDATA[7:0];
                        if (S_AXI_WSTRB[1]) slv_reg2[15:8]  <= S_AXI_WDATA[15:8];
                        if (S_AXI_WSTRB[2]) slv_reg2[23:16] <= S_AXI_WDATA[23:16];
                        if (S_AXI_WSTRB[3]) slv_reg2[31:24] <= S_AXI_WDATA[31:24];
                    end
                    3'h3: begin // TX Data L
                        if (S_AXI_WSTRB[0]) slv_reg3[7:0]   <= S_AXI_WDATA[7:0];
                        if (S_AXI_WSTRB[1]) slv_reg3[15:8]  <= S_AXI_WDATA[15:8];
                        if (S_AXI_WSTRB[2]) slv_reg3[23:16] <= S_AXI_WDATA[23:16];
                        if (S_AXI_WSTRB[3]) slv_reg3[31:24] <= S_AXI_WDATA[31:24];
                    end
                    3'h4: begin // TX Data H
                        if (S_AXI_WSTRB[0]) slv_reg4[7:0]   <= S_AXI_WDATA[7:0];
                        if (S_AXI_WSTRB[1]) slv_reg4[15:8]  <= S_AXI_WDATA[15:8];
                        if (S_AXI_WSTRB[2]) slv_reg4[23:16] <= S_AXI_WDATA[23:16];
                        if (S_AXI_WSTRB[3]) slv_reg4[31:24] <= S_AXI_WDATA[31:24];
                    end
                endcase
            end

            // 2. [Control] Auto-Clear
            if (slv_reg0[0] == 1'b1) slv_reg0[0] <= 1'b0; 

            // 3. [Status] Sticky Bits
            slv_reg1[0] <= tx_busy_w; 

            // Tx Done
            if (tx_done_w) slv_reg1[1] <= 1'b1; 
            else if (slv_reg_wren && (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h1) && S_AXI_WDATA[1]) 
                slv_reg1[1] <= 1'b0;

            // Rx Valid
            if (rx_valid_w) slv_reg1[2] <= 1'b1;
            else if (slv_reg_wren && (axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 3'h1) && S_AXI_WDATA[2]) 
                slv_reg1[2] <= 1'b0;

            // 4. [Data] Lock
            if (rx_valid_w) begin
                if (slv_reg1[2] == 1'b0) begin 
                    slv_reg5 <= {17'b0, rx_id_w, rx_dlc_w};
                    slv_reg6 <= rx_data_w[31:0];
                    slv_reg7 <= rx_data_w[63:32];
                end
            end
        end
    end

endmodule