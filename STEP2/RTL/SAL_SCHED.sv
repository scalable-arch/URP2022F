`include "TIME_SCALE.svh"
`include "SAL_DDR_PARAMS.svh"

module SAL_SCHED
(
    // clock & reset
    input                       clk,
    input                       rst_n,

    // requests from bank controllers
    input   [`DRAM_BK_CNT-1:0]  act_req_arr,
    input   [`DRAM_BK_CNT-1:0]  rd_req_arr,
    input   [`DRAM_BK_CNT-1:0]  wr_req_arr,
    input   [`DRAM_BK_CNT-1:0]  pre_req_arr,
    input   [`DRAM_BK_CNT-1:0]  ref_req_arr,
    input   dram_ra_t           ra_arr[`DRAM_BK_CNT],
    input   dram_ca_t           ca_arr[`DRAM_BK_CNT],
    input   axi_id_t            id_arr[`DRAM_BK_CNT],
    input   axi_len_t           len_arr[`DRAM_BK_CNT],

    // grants to bank controllers
    output  logic [`DRAM_BK_CNT-1:0]  act_gnt_arr,
    output  logic [`DRAM_BK_CNT-1:0]  rd_gnt_arr,
    output  logic [`DRAM_BK_CNT-1:0]  wr_gnt_arr,
    output  logic [`DRAM_BK_CNT-1:0]  pre_gnt_arr,
    output  logic [`DRAM_BK_CNT-1:0]  ref_gnt_arr,

    SCHED_IF.SRC                sched_if
);

    
    /*
    * FILL YOUR CODES HERE
    */
    
    
endmodule // SAL_SCHED
