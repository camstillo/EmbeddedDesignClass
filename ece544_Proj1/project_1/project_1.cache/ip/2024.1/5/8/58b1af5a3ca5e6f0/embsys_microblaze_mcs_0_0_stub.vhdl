-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Jan 11 22:13:57 2025
-- Host        : DESKTOP-BFRN34B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embsys_microblaze_mcs_0_0_stub.vhdl
-- Design      : embsys_microblaze_mcs_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    FIT1_Toggle : out STD_LOGIC;
    GPIO1_tri_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    GPIO2_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    GPIO3_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    GPIO4_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Clk,Reset,FIT1_Toggle,GPIO1_tri_i[15:0],GPIO2_tri_i[4:0],GPIO3_tri_o[15:0],GPIO4_tri_o[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_0ac7,Vivado 2024.1";
begin
end;
