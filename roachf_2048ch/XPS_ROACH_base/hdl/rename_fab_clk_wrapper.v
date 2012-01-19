//-----------------------------------------------------------------------------
// rename_fab_clk_wrapper.v
//-----------------------------------------------------------------------------

  (* x_core_info = "signal_rename_v1_00_a" *)
module rename_fab_clk_wrapper
  (
    sig_in,
    sig_out
  );
  input sig_in;
  output sig_out;

  signal_rename
    rename_fab_clk (
      .sig_in ( sig_in ),
      .sig_out ( sig_out )
    );

endmodule

