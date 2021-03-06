// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module AESL_axi_s_OUTPUT_STREAM (
    clk,
    reset,
    TRAN_OUTPUT_STREAM_TDATA,
    TRAN_OUTPUT_STREAM_TKEEP,
    TRAN_OUTPUT_STREAM_TSTRB,
    TRAN_OUTPUT_STREAM_TUSER,
    TRAN_OUTPUT_STREAM_TLAST,
    TRAN_OUTPUT_STREAM_TID,
    TRAN_OUTPUT_STREAM_TDEST,
    TRAN_OUTPUT_STREAM_TVALID,
    TRAN_OUTPUT_STREAM_TREADY,
    ready,
    done
    );

//------------------------Parameter----------------------
`define TV_IN_OUTPUT_STREAM_TDATA "./c.image_filter.autotvin_OUTPUT_STREAM_V_data_V.dat"
`define TV_OUT_OUTPUT_STREAM_TDATA "./impl_rtl.image_filter.autotvout_OUTPUT_STREAM_V_data_V.dat"
`define TV_IN_OUTPUT_STREAM_TKEEP "./c.image_filter.autotvin_OUTPUT_STREAM_V_keep_V.dat"
`define TV_OUT_OUTPUT_STREAM_TKEEP "./impl_rtl.image_filter.autotvout_OUTPUT_STREAM_V_keep_V.dat"
`define TV_IN_OUTPUT_STREAM_TSTRB "./c.image_filter.autotvin_OUTPUT_STREAM_V_strb_V.dat"
`define TV_OUT_OUTPUT_STREAM_TSTRB "./impl_rtl.image_filter.autotvout_OUTPUT_STREAM_V_strb_V.dat"
`define TV_IN_OUTPUT_STREAM_TUSER "./c.image_filter.autotvin_OUTPUT_STREAM_V_user_V.dat"
`define TV_OUT_OUTPUT_STREAM_TUSER "./impl_rtl.image_filter.autotvout_OUTPUT_STREAM_V_user_V.dat"
`define TV_IN_OUTPUT_STREAM_TLAST "./c.image_filter.autotvin_OUTPUT_STREAM_V_last_V.dat"
`define TV_OUT_OUTPUT_STREAM_TLAST "./impl_rtl.image_filter.autotvout_OUTPUT_STREAM_V_last_V.dat"
`define TV_IN_OUTPUT_STREAM_TID "./c.image_filter.autotvin_OUTPUT_STREAM_V_id_V.dat"
`define TV_OUT_OUTPUT_STREAM_TID "./impl_rtl.image_filter.autotvout_OUTPUT_STREAM_V_id_V.dat"
`define TV_IN_OUTPUT_STREAM_TDEST "./c.image_filter.autotvin_OUTPUT_STREAM_V_dest_V.dat"
`define TV_OUT_OUTPUT_STREAM_TDEST "./impl_rtl.image_filter.autotvout_OUTPUT_STREAM_V_dest_V.dat"
// Input and Output
input clk;
input reset;
input [31 : 0] TRAN_OUTPUT_STREAM_TDATA;
input [3 : 0] TRAN_OUTPUT_STREAM_TKEEP;
input [3 : 0] TRAN_OUTPUT_STREAM_TSTRB;
input  TRAN_OUTPUT_STREAM_TUSER;
input  TRAN_OUTPUT_STREAM_TLAST;
input  TRAN_OUTPUT_STREAM_TID;
input  TRAN_OUTPUT_STREAM_TDEST;
input  TRAN_OUTPUT_STREAM_TVALID;
output  TRAN_OUTPUT_STREAM_TREADY;
input ready;
input done;

//------------------------Local signal-------------------
reg [31 : 0] mem_OUTPUT_STREAM_TDATA [2073600 : 0];
initial begin : initialize_mem_OUTPUT_STREAM_TDATA
  integer i;
  for (i = 0; i < 2073600; i = i + 1) begin
      mem_OUTPUT_STREAM_TDATA[i] = 0;
  end
end
wire OUTPUT_STREAM_TDATA_empty_n;
wire OUTPUT_STREAM_TDATA_full_n;
reg [22 : 0]  OUTPUT_STREAM_TDATA_mInPtr  =   0;
reg [22 : 0]  OUTPUT_STREAM_TDATA_mOutPtr =   0;
reg  OUTPUT_STREAM_TDATA_mFlag_nEF_hint;  // 0: empty hint, 1: full hint

reg [3 : 0] mem_OUTPUT_STREAM_TKEEP [2073600 : 0];
initial begin : initialize_mem_OUTPUT_STREAM_TKEEP
  integer i;
  for (i = 0; i < 2073600; i = i + 1) begin
      mem_OUTPUT_STREAM_TKEEP[i] = 0;
  end
end
wire OUTPUT_STREAM_TKEEP_empty_n;
wire OUTPUT_STREAM_TKEEP_full_n;
reg [22 : 0]  OUTPUT_STREAM_TKEEP_mInPtr  =   0;
reg [22 : 0]  OUTPUT_STREAM_TKEEP_mOutPtr =   0;
reg  OUTPUT_STREAM_TKEEP_mFlag_nEF_hint;  // 0: empty hint, 1: full hint

reg [3 : 0] mem_OUTPUT_STREAM_TSTRB [2073600 : 0];
initial begin : initialize_mem_OUTPUT_STREAM_TSTRB
  integer i;
  for (i = 0; i < 2073600; i = i + 1) begin
      mem_OUTPUT_STREAM_TSTRB[i] = 0;
  end
end
wire OUTPUT_STREAM_TSTRB_empty_n;
wire OUTPUT_STREAM_TSTRB_full_n;
reg [22 : 0]  OUTPUT_STREAM_TSTRB_mInPtr  =   0;
reg [22 : 0]  OUTPUT_STREAM_TSTRB_mOutPtr =   0;
reg  OUTPUT_STREAM_TSTRB_mFlag_nEF_hint;  // 0: empty hint, 1: full hint

reg [0 : 0] mem_OUTPUT_STREAM_TUSER [2073600 : 0];
initial begin : initialize_mem_OUTPUT_STREAM_TUSER
  integer i;
  for (i = 0; i < 2073600; i = i + 1) begin
      mem_OUTPUT_STREAM_TUSER[i] = 0;
  end
end
wire OUTPUT_STREAM_TUSER_empty_n;
wire OUTPUT_STREAM_TUSER_full_n;
reg [22 : 0]  OUTPUT_STREAM_TUSER_mInPtr  =   0;
reg [22 : 0]  OUTPUT_STREAM_TUSER_mOutPtr =   0;
reg  OUTPUT_STREAM_TUSER_mFlag_nEF_hint;  // 0: empty hint, 1: full hint

reg [0 : 0] mem_OUTPUT_STREAM_TLAST [2073600 : 0];
initial begin : initialize_mem_OUTPUT_STREAM_TLAST
  integer i;
  for (i = 0; i < 2073600; i = i + 1) begin
      mem_OUTPUT_STREAM_TLAST[i] = 0;
  end
end
wire OUTPUT_STREAM_TLAST_empty_n;
wire OUTPUT_STREAM_TLAST_full_n;
reg [22 : 0]  OUTPUT_STREAM_TLAST_mInPtr  =   0;
reg [22 : 0]  OUTPUT_STREAM_TLAST_mOutPtr =   0;
reg  OUTPUT_STREAM_TLAST_mFlag_nEF_hint;  // 0: empty hint, 1: full hint

reg [0 : 0] mem_OUTPUT_STREAM_TID [2073600 : 0];
initial begin : initialize_mem_OUTPUT_STREAM_TID
  integer i;
  for (i = 0; i < 2073600; i = i + 1) begin
      mem_OUTPUT_STREAM_TID[i] = 0;
  end
end
wire OUTPUT_STREAM_TID_empty_n;
wire OUTPUT_STREAM_TID_full_n;
reg [22 : 0]  OUTPUT_STREAM_TID_mInPtr  =   0;
reg [22 : 0]  OUTPUT_STREAM_TID_mOutPtr =   0;
reg  OUTPUT_STREAM_TID_mFlag_nEF_hint;  // 0: empty hint, 1: full hint

reg [0 : 0] mem_OUTPUT_STREAM_TDEST [2073600 : 0];
initial begin : initialize_mem_OUTPUT_STREAM_TDEST
  integer i;
  for (i = 0; i < 2073600; i = i + 1) begin
      mem_OUTPUT_STREAM_TDEST[i] = 0;
  end
end
wire OUTPUT_STREAM_TDEST_empty_n;
wire OUTPUT_STREAM_TDEST_full_n;
reg [22 : 0]  OUTPUT_STREAM_TDEST_mInPtr  =   0;
reg [22 : 0]  OUTPUT_STREAM_TDEST_mOutPtr =   0;
reg  OUTPUT_STREAM_TDEST_mFlag_nEF_hint;  // 0: empty hint, 1: full hint

assign OUTPUT_STREAM_TDATA_empty_n	=	((OUTPUT_STREAM_TDATA_mInPtr == OUTPUT_STREAM_TDATA_mOutPtr) && OUTPUT_STREAM_TDATA_mFlag_nEF_hint == 1'b0)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TDATA_full_n	=	((OUTPUT_STREAM_TDATA_mInPtr == OUTPUT_STREAM_TDATA_mOutPtr) && OUTPUT_STREAM_TDATA_mFlag_nEF_hint == 1'b1)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TKEEP_empty_n	=	((OUTPUT_STREAM_TKEEP_mInPtr == OUTPUT_STREAM_TKEEP_mOutPtr) && OUTPUT_STREAM_TKEEP_mFlag_nEF_hint == 1'b0)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TKEEP_full_n	=	((OUTPUT_STREAM_TKEEP_mInPtr == OUTPUT_STREAM_TKEEP_mOutPtr) && OUTPUT_STREAM_TKEEP_mFlag_nEF_hint == 1'b1)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TSTRB_empty_n	=	((OUTPUT_STREAM_TSTRB_mInPtr == OUTPUT_STREAM_TSTRB_mOutPtr) && OUTPUT_STREAM_TSTRB_mFlag_nEF_hint == 1'b0)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TSTRB_full_n	=	((OUTPUT_STREAM_TSTRB_mInPtr == OUTPUT_STREAM_TSTRB_mOutPtr) && OUTPUT_STREAM_TSTRB_mFlag_nEF_hint == 1'b1)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TUSER_empty_n	=	((OUTPUT_STREAM_TUSER_mInPtr == OUTPUT_STREAM_TUSER_mOutPtr) && OUTPUT_STREAM_TUSER_mFlag_nEF_hint == 1'b0)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TUSER_full_n	=	((OUTPUT_STREAM_TUSER_mInPtr == OUTPUT_STREAM_TUSER_mOutPtr) && OUTPUT_STREAM_TUSER_mFlag_nEF_hint == 1'b1)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TLAST_empty_n	=	((OUTPUT_STREAM_TLAST_mInPtr == OUTPUT_STREAM_TLAST_mOutPtr) && OUTPUT_STREAM_TLAST_mFlag_nEF_hint == 1'b0)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TLAST_full_n	=	((OUTPUT_STREAM_TLAST_mInPtr == OUTPUT_STREAM_TLAST_mOutPtr) && OUTPUT_STREAM_TLAST_mFlag_nEF_hint == 1'b1)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TID_empty_n	=	((OUTPUT_STREAM_TID_mInPtr == OUTPUT_STREAM_TID_mOutPtr) && OUTPUT_STREAM_TID_mFlag_nEF_hint == 1'b0)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TID_full_n	=	((OUTPUT_STREAM_TID_mInPtr == OUTPUT_STREAM_TID_mOutPtr) && OUTPUT_STREAM_TID_mFlag_nEF_hint == 1'b1)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TDEST_empty_n	=	((OUTPUT_STREAM_TDEST_mInPtr == OUTPUT_STREAM_TDEST_mOutPtr) && OUTPUT_STREAM_TDEST_mFlag_nEF_hint == 1'b0)? 1'b 0: 1'b 1;
assign OUTPUT_STREAM_TDEST_full_n	=	((OUTPUT_STREAM_TDEST_mInPtr == OUTPUT_STREAM_TDEST_mOutPtr) && OUTPUT_STREAM_TDEST_mFlag_nEF_hint == 1'b1)? 1'b 0: 1'b 1;
// Inner signals
assign TRAN_OUTPUT_STREAM_TREADY = 1 & 
    OUTPUT_STREAM_TDATA_full_n &
    OUTPUT_STREAM_TKEEP_full_n &
    OUTPUT_STREAM_TSTRB_full_n &
    OUTPUT_STREAM_TUSER_full_n &
    OUTPUT_STREAM_TLAST_full_n &
    OUTPUT_STREAM_TID_full_n &
    OUTPUT_STREAM_TDEST_full_n &
      1;
//------------------------Task and function--------------
task read_token;
	input integer fp;
  output reg [183 : 0] token;
	reg [7:0] c;
	reg intoken;
	reg done;
	begin
	    token = "";
	    intoken = 0;
	    done = 0;
	    while (!done) begin
		c = $fgetc(fp);
		if (c == 8'hff) begin	// EOF
		    done = 1;
		end
		else if (c == " " || c == "\011" || c == "\012" || c == "\015") begin   // blank
		    if (intoken) begin
			done = 1;
		    end
		end
		else begin			// valid character
		    intoken = 1;
		    token = (token << 8) | c;
		end
	    end
	end
endtask

//------------------------Write-only axi_s-------------------

// Write operation for write-only axi_s
always @ (posedge clk) begin
    if (reset === 0) begin
	    OUTPUT_STREAM_TDATA_mInPtr = 0;
  end
  else if(TRAN_OUTPUT_STREAM_TVALID && TRAN_OUTPUT_STREAM_TREADY) begin
	    if(OUTPUT_STREAM_TDATA_mInPtr < 2073600) begin
          mem_OUTPUT_STREAM_TDATA[OUTPUT_STREAM_TDATA_mInPtr] = TRAN_OUTPUT_STREAM_TDATA;
	        OUTPUT_STREAM_TDATA_mInPtr <= OUTPUT_STREAM_TDATA_mInPtr + 1;
	    end
  end
end

// Reset mInPtr when done is pulled up
initial begin : done_reset_OUTPUT_STREAM_TDATA_mInPtr_process
  while(1) begin
      @(posedge clk);
      # 0.2;
      while(done !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      OUTPUT_STREAM_TDATA_mInPtr = 0;
  end
end

// Read operation for write-only axi_s signal OUTPUT_STREAM_TDATA
initial begin : OUTPUT_STREAM_TDATA_write_file_process
  integer fp;
  integer transaction_idx;
  reg [ 8*5 : 1] str;
  integer idx;
  transaction_idx = 0;
  OUTPUT_STREAM_TDATA_mOutPtr = 2073601;
  OUTPUT_STREAM_TDATA_mFlag_nEF_hint = 1;
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(done !== 1) begin
          @(posedge clk);
          # 0.1;
      end
	    fp = $fopen(`TV_OUT_OUTPUT_STREAM_TDATA, "a");
	    if(fp == 0) begin       // Failed to open file
	        $display("Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TDATA);
	        $finish;
	    end
	    $fdisplay(fp, "[[transaction]] %d", transaction_idx);
	    for (idx = 0; idx < OUTPUT_STREAM_TDATA_mInPtr; idx = idx + 1) begin
	        $fdisplay(fp,"0x%x",mem_OUTPUT_STREAM_TDATA[idx]);
	    end
	    $fdisplay(fp, "[[/transaction]]");
	    transaction_idx = transaction_idx + 1;
	    $fclose(fp);
  end
end

// Write operation for write-only axi_s
always @ (posedge clk) begin
    if (reset === 0) begin
	    OUTPUT_STREAM_TKEEP_mInPtr = 0;
  end
  else if(TRAN_OUTPUT_STREAM_TVALID && TRAN_OUTPUT_STREAM_TREADY) begin
	    if(OUTPUT_STREAM_TKEEP_mInPtr < 2073600) begin
          mem_OUTPUT_STREAM_TKEEP[OUTPUT_STREAM_TKEEP_mInPtr] = TRAN_OUTPUT_STREAM_TKEEP;
	        OUTPUT_STREAM_TKEEP_mInPtr <= OUTPUT_STREAM_TKEEP_mInPtr + 1;
	    end
  end
end

// Reset mInPtr when done is pulled up
initial begin : done_reset_OUTPUT_STREAM_TKEEP_mInPtr_process
  while(1) begin
      @(posedge clk);
      # 0.2;
      while(done !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      OUTPUT_STREAM_TKEEP_mInPtr = 0;
  end
end

// Read operation for write-only axi_s signal OUTPUT_STREAM_TKEEP
initial begin : OUTPUT_STREAM_TKEEP_write_file_process
  integer fp;
  integer transaction_idx;
  reg [ 8*5 : 1] str;
  integer idx;
  transaction_idx = 0;
  OUTPUT_STREAM_TKEEP_mOutPtr = 2073601;
  OUTPUT_STREAM_TKEEP_mFlag_nEF_hint = 1;
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(done !== 1) begin
          @(posedge clk);
          # 0.1;
      end
	    fp = $fopen(`TV_OUT_OUTPUT_STREAM_TKEEP, "a");
	    if(fp == 0) begin       // Failed to open file
	        $display("Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TKEEP);
	        $finish;
	    end
	    $fdisplay(fp, "[[transaction]] %d", transaction_idx);
	    for (idx = 0; idx < OUTPUT_STREAM_TKEEP_mInPtr; idx = idx + 1) begin
	        $fdisplay(fp,"0x%x",mem_OUTPUT_STREAM_TKEEP[idx]);
	    end
	    $fdisplay(fp, "[[/transaction]]");
	    transaction_idx = transaction_idx + 1;
	    $fclose(fp);
  end
end

// Write operation for write-only axi_s
always @ (posedge clk) begin
    if (reset === 0) begin
	    OUTPUT_STREAM_TSTRB_mInPtr = 0;
  end
  else if(TRAN_OUTPUT_STREAM_TVALID && TRAN_OUTPUT_STREAM_TREADY) begin
	    if(OUTPUT_STREAM_TSTRB_mInPtr < 2073600) begin
          mem_OUTPUT_STREAM_TSTRB[OUTPUT_STREAM_TSTRB_mInPtr] = TRAN_OUTPUT_STREAM_TSTRB;
	        OUTPUT_STREAM_TSTRB_mInPtr <= OUTPUT_STREAM_TSTRB_mInPtr + 1;
	    end
  end
end

// Reset mInPtr when done is pulled up
initial begin : done_reset_OUTPUT_STREAM_TSTRB_mInPtr_process
  while(1) begin
      @(posedge clk);
      # 0.2;
      while(done !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      OUTPUT_STREAM_TSTRB_mInPtr = 0;
  end
end

// Read operation for write-only axi_s signal OUTPUT_STREAM_TSTRB
initial begin : OUTPUT_STREAM_TSTRB_write_file_process
  integer fp;
  integer transaction_idx;
  reg [ 8*5 : 1] str;
  integer idx;
  transaction_idx = 0;
  OUTPUT_STREAM_TSTRB_mOutPtr = 2073601;
  OUTPUT_STREAM_TSTRB_mFlag_nEF_hint = 1;
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(done !== 1) begin
          @(posedge clk);
          # 0.1;
      end
	    fp = $fopen(`TV_OUT_OUTPUT_STREAM_TSTRB, "a");
	    if(fp == 0) begin       // Failed to open file
	        $display("Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TSTRB);
	        $finish;
	    end
	    $fdisplay(fp, "[[transaction]] %d", transaction_idx);
	    for (idx = 0; idx < OUTPUT_STREAM_TSTRB_mInPtr; idx = idx + 1) begin
	        $fdisplay(fp,"0x%x",mem_OUTPUT_STREAM_TSTRB[idx]);
	    end
	    $fdisplay(fp, "[[/transaction]]");
	    transaction_idx = transaction_idx + 1;
	    $fclose(fp);
  end
end

// Write operation for write-only axi_s
always @ (posedge clk) begin
    if (reset === 0) begin
	    OUTPUT_STREAM_TUSER_mInPtr = 0;
  end
  else if(TRAN_OUTPUT_STREAM_TVALID && TRAN_OUTPUT_STREAM_TREADY) begin
	    if(OUTPUT_STREAM_TUSER_mInPtr < 2073600) begin
          mem_OUTPUT_STREAM_TUSER[OUTPUT_STREAM_TUSER_mInPtr] = TRAN_OUTPUT_STREAM_TUSER;
	        OUTPUT_STREAM_TUSER_mInPtr <= OUTPUT_STREAM_TUSER_mInPtr + 1;
	    end
  end
end

// Reset mInPtr when done is pulled up
initial begin : done_reset_OUTPUT_STREAM_TUSER_mInPtr_process
  while(1) begin
      @(posedge clk);
      # 0.2;
      while(done !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      OUTPUT_STREAM_TUSER_mInPtr = 0;
  end
end

// Read operation for write-only axi_s signal OUTPUT_STREAM_TUSER
initial begin : OUTPUT_STREAM_TUSER_write_file_process
  integer fp;
  integer transaction_idx;
  reg [ 8*5 : 1] str;
  integer idx;
  transaction_idx = 0;
  OUTPUT_STREAM_TUSER_mOutPtr = 2073601;
  OUTPUT_STREAM_TUSER_mFlag_nEF_hint = 1;
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(done !== 1) begin
          @(posedge clk);
          # 0.1;
      end
	    fp = $fopen(`TV_OUT_OUTPUT_STREAM_TUSER, "a");
	    if(fp == 0) begin       // Failed to open file
	        $display("Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TUSER);
	        $finish;
	    end
	    $fdisplay(fp, "[[transaction]] %d", transaction_idx);
	    for (idx = 0; idx < OUTPUT_STREAM_TUSER_mInPtr; idx = idx + 1) begin
	        $fdisplay(fp,"0x%x",mem_OUTPUT_STREAM_TUSER[idx]);
	    end
	    $fdisplay(fp, "[[/transaction]]");
	    transaction_idx = transaction_idx + 1;
	    $fclose(fp);
  end
end

// Write operation for write-only axi_s
always @ (posedge clk) begin
    if (reset === 0) begin
	    OUTPUT_STREAM_TLAST_mInPtr = 0;
  end
  else if(TRAN_OUTPUT_STREAM_TVALID && TRAN_OUTPUT_STREAM_TREADY) begin
	    if(OUTPUT_STREAM_TLAST_mInPtr < 2073600) begin
          mem_OUTPUT_STREAM_TLAST[OUTPUT_STREAM_TLAST_mInPtr] = TRAN_OUTPUT_STREAM_TLAST;
	        OUTPUT_STREAM_TLAST_mInPtr <= OUTPUT_STREAM_TLAST_mInPtr + 1;
	    end
  end
end

// Reset mInPtr when done is pulled up
initial begin : done_reset_OUTPUT_STREAM_TLAST_mInPtr_process
  while(1) begin
      @(posedge clk);
      # 0.2;
      while(done !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      OUTPUT_STREAM_TLAST_mInPtr = 0;
  end
end

// Read operation for write-only axi_s signal OUTPUT_STREAM_TLAST
initial begin : OUTPUT_STREAM_TLAST_write_file_process
  integer fp;
  integer transaction_idx;
  reg [ 8*5 : 1] str;
  integer idx;
  transaction_idx = 0;
  OUTPUT_STREAM_TLAST_mOutPtr = 2073601;
  OUTPUT_STREAM_TLAST_mFlag_nEF_hint = 1;
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(done !== 1) begin
          @(posedge clk);
          # 0.1;
      end
	    fp = $fopen(`TV_OUT_OUTPUT_STREAM_TLAST, "a");
	    if(fp == 0) begin       // Failed to open file
	        $display("Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TLAST);
	        $finish;
	    end
	    $fdisplay(fp, "[[transaction]] %d", transaction_idx);
	    for (idx = 0; idx < OUTPUT_STREAM_TLAST_mInPtr; idx = idx + 1) begin
	        $fdisplay(fp,"0x%x",mem_OUTPUT_STREAM_TLAST[idx]);
	    end
	    $fdisplay(fp, "[[/transaction]]");
	    transaction_idx = transaction_idx + 1;
	    $fclose(fp);
  end
end

// Write operation for write-only axi_s
always @ (posedge clk) begin
    if (reset === 0) begin
	    OUTPUT_STREAM_TID_mInPtr = 0;
  end
  else if(TRAN_OUTPUT_STREAM_TVALID && TRAN_OUTPUT_STREAM_TREADY) begin
	    if(OUTPUT_STREAM_TID_mInPtr < 2073600) begin
          mem_OUTPUT_STREAM_TID[OUTPUT_STREAM_TID_mInPtr] = TRAN_OUTPUT_STREAM_TID;
	        OUTPUT_STREAM_TID_mInPtr <= OUTPUT_STREAM_TID_mInPtr + 1;
	    end
  end
end

// Reset mInPtr when done is pulled up
initial begin : done_reset_OUTPUT_STREAM_TID_mInPtr_process
  while(1) begin
      @(posedge clk);
      # 0.2;
      while(done !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      OUTPUT_STREAM_TID_mInPtr = 0;
  end
end

// Read operation for write-only axi_s signal OUTPUT_STREAM_TID
initial begin : OUTPUT_STREAM_TID_write_file_process
  integer fp;
  integer transaction_idx;
  reg [ 8*5 : 1] str;
  integer idx;
  transaction_idx = 0;
  OUTPUT_STREAM_TID_mOutPtr = 2073601;
  OUTPUT_STREAM_TID_mFlag_nEF_hint = 1;
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(done !== 1) begin
          @(posedge clk);
          # 0.1;
      end
	    fp = $fopen(`TV_OUT_OUTPUT_STREAM_TID, "a");
	    if(fp == 0) begin       // Failed to open file
	        $display("Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TID);
	        $finish;
	    end
	    $fdisplay(fp, "[[transaction]] %d", transaction_idx);
	    for (idx = 0; idx < OUTPUT_STREAM_TID_mInPtr; idx = idx + 1) begin
	        $fdisplay(fp,"0x%x",mem_OUTPUT_STREAM_TID[idx]);
	    end
	    $fdisplay(fp, "[[/transaction]]");
	    transaction_idx = transaction_idx + 1;
	    $fclose(fp);
  end
end

// Write operation for write-only axi_s
always @ (posedge clk) begin
    if (reset === 0) begin
	    OUTPUT_STREAM_TDEST_mInPtr = 0;
  end
  else if(TRAN_OUTPUT_STREAM_TVALID && TRAN_OUTPUT_STREAM_TREADY) begin
	    if(OUTPUT_STREAM_TDEST_mInPtr < 2073600) begin
          mem_OUTPUT_STREAM_TDEST[OUTPUT_STREAM_TDEST_mInPtr] = TRAN_OUTPUT_STREAM_TDEST;
	        OUTPUT_STREAM_TDEST_mInPtr <= OUTPUT_STREAM_TDEST_mInPtr + 1;
	    end
  end
end

// Reset mInPtr when done is pulled up
initial begin : done_reset_OUTPUT_STREAM_TDEST_mInPtr_process
  while(1) begin
      @(posedge clk);
      # 0.2;
      while(done !== 1) begin
          @(posedge clk);
          # 0.2;
      end
      OUTPUT_STREAM_TDEST_mInPtr = 0;
  end
end

// Read operation for write-only axi_s signal OUTPUT_STREAM_TDEST
initial begin : OUTPUT_STREAM_TDEST_write_file_process
  integer fp;
  integer transaction_idx;
  reg [ 8*5 : 1] str;
  integer idx;
  transaction_idx = 0;
  OUTPUT_STREAM_TDEST_mOutPtr = 2073601;
  OUTPUT_STREAM_TDEST_mFlag_nEF_hint = 1;
  while(1) begin
      @(posedge clk);
      # 0.1;
      while(done !== 1) begin
          @(posedge clk);
          # 0.1;
      end
	    fp = $fopen(`TV_OUT_OUTPUT_STREAM_TDEST, "a");
	    if(fp == 0) begin       // Failed to open file
	        $display("Failed to open file \"%s\"!", `TV_OUT_OUTPUT_STREAM_TDEST);
	        $finish;
	    end
	    $fdisplay(fp, "[[transaction]] %d", transaction_idx);
	    for (idx = 0; idx < OUTPUT_STREAM_TDEST_mInPtr; idx = idx + 1) begin
	        $fdisplay(fp,"0x%x",mem_OUTPUT_STREAM_TDEST[idx]);
	    end
	    $fdisplay(fp, "[[/transaction]]");
	    transaction_idx = transaction_idx + 1;
	    $fclose(fp);
  end
end

endmodule
