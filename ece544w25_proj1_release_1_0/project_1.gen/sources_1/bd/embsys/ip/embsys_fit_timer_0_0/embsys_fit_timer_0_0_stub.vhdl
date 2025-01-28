-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Jan 26 21:26:09 2025
-- Host        : DESKTOP-BFRN34B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               a:/ECE544_GitHub/ece544w25_proj1_release_1_0/project_1.gen/sources_1/bd/embsys/ip/embsys_fit_timer_0_0/embsys_fit_timer_0_0_stub.vhdl
-- Design      : embsys_fit_timer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity embsys_fit_timer_0_0 is
  Port ( 
    Clk : in STD_LOGIC;
    Rst : in STD_LOGIC;
    Interrupt : out STD_LOGIC
  );

end embsys_fit_timer_0_0;

architecture stub of embsys_fit_timer_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Rst,Interrupt";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fit_timer,Vivado 2024.1";
begin
end;
