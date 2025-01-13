-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Jan 11 22:13:56 2025
-- Host        : DESKTOP-BFRN34B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               a:/ECE544_GitHub/ece544_Proj1/project_1/project_1.gen/sources_1/bd/embsys/ip/embsys_rgbPWM_0_0/embsys_rgbPWM_0_0_stub.vhdl
-- Design      : embsys_rgbPWM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity embsys_rgbPWM_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    controlReg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rgbRED : out STD_LOGIC;
    rgbGREEN : out STD_LOGIC;
    rgbBLUE : out STD_LOGIC;
    clkPWM : out STD_LOGIC
  );

end embsys_rgbPWM_0_0;

architecture stub of embsys_rgbPWM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,controlReg[31:0],rgbRED,rgbGREEN,rgbBLUE,clkPWM";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rgbPWM,Vivado 2024.1";
begin
end;
