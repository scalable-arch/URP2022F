`include "TIME_SCALE.svh"
`include "SAL_DDR_PARAMS.svh"

module SAL_BK_CTRL
#(
    parameter                   BK_ID   = 0
)
(
    // clock & reset
    input                       clk,
    input                       rst_n,

    // timing parameters
    TIMING_IF.MON               timing_if,

    // request from the address decoder
    REQ_IF.DST                  req_if,

    // scheduling interface
    output  logic               act_req_o,
    output  logic               rd_req_o,
    output  logic               wr_req_o,
    output  logic               pre_req_o,
    output  logic               ref_req_o,
    output  dram_ra_t           ra_o,
    output  dram_ca_t           ca_o,
    output  axi_id_t            id_o,
    output  axi_len_t           len_o,

    input   wire                act_gnt_i,
    input   wire                rd_gnt_i,
    input   wire                wr_gnt_i,
    input   wire                pre_gnt_i,
    input   wire                ref_gnt_i,

    // per-bank auto-refresh requests
    input   wire                ref_req_i,
    output  logic               ref_gnt_o
);

    
    /*
    * FILL YOUR CODES HERE
    */

    
endmodule // SAL_BK_CTRL
