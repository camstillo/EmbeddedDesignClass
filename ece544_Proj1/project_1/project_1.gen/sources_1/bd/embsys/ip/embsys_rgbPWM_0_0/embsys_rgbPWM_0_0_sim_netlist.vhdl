-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Jan 11 22:13:56 2025
-- Host        : DESKTOP-BFRN34B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               a:/ECE544_GitHub/ece544_Proj1/project_1/project_1.gen/sources_1/bd/embsys/ip/embsys_rgbPWM_0_0/embsys_rgbPWM_0_0_sim_netlist.vhdl
-- Design      : embsys_rgbPWM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_rgbPWM_0_0_rgbPWM is
  port (
    rgbRED : out STD_LOGIC;
    rgbGREEN : out STD_LOGIC;
    rgbBLUE : out STD_LOGIC;
    controlReg : in STD_LOGIC_VECTOR ( 30 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of embsys_rgbPWM_0_0_rgbPWM : entity is "rgbPWM";
end embsys_rgbPWM_0_0_rgbPWM;

architecture STRUCTURE of embsys_rgbPWM_0_0_rgbPWM is
  signal blueDC : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal blueDC_latch : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal enable : STD_LOGIC;
  signal greenDC : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal greenDC_latch : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal redDC : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal redDC_latch : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \redDC_latch[9]_i_1_n_0\ : STD_LOGIC;
  signal rgbBLUE0 : STD_LOGIC;
  signal \rgbBLUE0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgbBLUE0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgbBLUE0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgbBLUE0_carry__0_n_3\ : STD_LOGIC;
  signal rgbBLUE0_carry_i_1_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_i_2_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_i_3_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_i_4_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_i_5_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_i_6_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_i_7_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_i_8_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_n_0 : STD_LOGIC;
  signal rgbBLUE0_carry_n_1 : STD_LOGIC;
  signal rgbBLUE0_carry_n_2 : STD_LOGIC;
  signal rgbBLUE0_carry_n_3 : STD_LOGIC;
  signal rgbGREEN0 : STD_LOGIC;
  signal \rgbGREEN0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgbGREEN0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgbGREEN0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgbGREEN0_carry__0_n_3\ : STD_LOGIC;
  signal rgbGREEN0_carry_i_1_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_i_2_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_i_3_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_i_4_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_i_5_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_i_6_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_i_7_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_i_8_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_n_0 : STD_LOGIC;
  signal rgbGREEN0_carry_n_1 : STD_LOGIC;
  signal rgbGREEN0_carry_n_2 : STD_LOGIC;
  signal rgbGREEN0_carry_n_3 : STD_LOGIC;
  signal rgbRED0 : STD_LOGIC;
  signal \rgbRED0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgbRED0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgbRED0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgbRED0_carry__0_n_3\ : STD_LOGIC;
  signal rgbRED0_carry_i_1_n_0 : STD_LOGIC;
  signal rgbRED0_carry_i_2_n_0 : STD_LOGIC;
  signal rgbRED0_carry_i_3_n_0 : STD_LOGIC;
  signal rgbRED0_carry_i_4_n_0 : STD_LOGIC;
  signal rgbRED0_carry_i_5_n_0 : STD_LOGIC;
  signal rgbRED0_carry_i_6_n_0 : STD_LOGIC;
  signal rgbRED0_carry_i_7_n_0 : STD_LOGIC;
  signal rgbRED0_carry_i_8_n_0 : STD_LOGIC;
  signal rgbRED0_carry_n_0 : STD_LOGIC;
  signal rgbRED0_carry_n_1 : STD_LOGIC;
  signal rgbRED0_carry_n_2 : STD_LOGIC;
  signal rgbRED0_carry_n_3 : STD_LOGIC;
  signal \NLW_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rgbBLUE0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgbBLUE0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgbBLUE0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rgbGREEN0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgbGREEN0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgbGREEN0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rgbRED0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgbRED0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rgbRED0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of rgbBLUE0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \rgbBLUE0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of rgbGREEN0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \rgbGREEN0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rgbGREEN_INST_0 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD of rgbRED0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \rgbRED0_carry__0\ : label is 11;
  attribute SOFT_HLUTNM of rgbRED_INST_0 : label is "soft_lutpair0";
begin
\blueDC_latch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(0),
      Q => blueDC_latch(0),
      R => p_0_in
    );
\blueDC_latch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(1),
      Q => blueDC_latch(1),
      R => p_0_in
    );
\blueDC_latch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(2),
      Q => blueDC_latch(2),
      R => p_0_in
    );
\blueDC_latch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(3),
      Q => blueDC_latch(3),
      R => p_0_in
    );
\blueDC_latch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(4),
      Q => blueDC_latch(4),
      R => p_0_in
    );
\blueDC_latch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(5),
      Q => blueDC_latch(5),
      R => p_0_in
    );
\blueDC_latch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(6),
      Q => blueDC_latch(6),
      R => p_0_in
    );
\blueDC_latch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(7),
      Q => blueDC_latch(7),
      R => p_0_in
    );
\blueDC_latch_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(8),
      Q => blueDC_latch(8),
      R => p_0_in
    );
\blueDC_latch_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => blueDC(9),
      Q => blueDC_latch(9),
      R => p_0_in
    );
\blueDC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(0),
      Q => blueDC(0),
      R => p_0_in
    );
\blueDC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(1),
      Q => blueDC(1),
      R => p_0_in
    );
\blueDC_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(2),
      Q => blueDC(2),
      R => p_0_in
    );
\blueDC_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(3),
      Q => blueDC(3),
      R => p_0_in
    );
\blueDC_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(4),
      Q => blueDC(4),
      R => p_0_in
    );
\blueDC_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(5),
      Q => blueDC(5),
      R => p_0_in
    );
\blueDC_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(6),
      Q => blueDC(6),
      R => p_0_in
    );
\blueDC_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(7),
      Q => blueDC(7),
      R => p_0_in
    );
\blueDC_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(8),
      Q => blueDC(8),
      R => p_0_in
    );
\blueDC_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(9),
      Q => blueDC(9),
      R => p_0_in
    );
\count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => enable,
      I1 => count_reg(11),
      I2 => reset,
      O => \count[0]_i_1_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[0]_i_2_n_7\,
      Q => count_reg(0),
      R => \count[0]_i_1_n_0\
    );
\count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_2_n_0\,
      CO(2) => \count_reg[0]_i_2_n_1\,
      CO(1) => \count_reg[0]_i_2_n_2\,
      CO(0) => \count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_2_n_4\,
      O(2) => \count_reg[0]_i_2_n_5\,
      O(1) => \count_reg[0]_i_2_n_6\,
      O(0) => \count_reg[0]_i_2_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_3_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => \count[0]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => \count[0]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[0]_i_2_n_6\,
      Q => count_reg(1),
      R => \count[0]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[0]_i_2_n_5\,
      Q => count_reg(2),
      R => \count[0]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[0]_i_2_n_4\,
      Q => count_reg(3),
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => \count[0]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_2_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => \count[0]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => \count[0]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => \count[0]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \NLW_count_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => reset,
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => \count[0]_i_1_n_0\
    );
enable_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => p_0_in
    );
enable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(30),
      Q => enable,
      R => p_0_in
    );
\greenDC_latch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(0),
      Q => greenDC_latch(0),
      R => p_0_in
    );
\greenDC_latch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(1),
      Q => greenDC_latch(1),
      R => p_0_in
    );
\greenDC_latch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(2),
      Q => greenDC_latch(2),
      R => p_0_in
    );
\greenDC_latch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(3),
      Q => greenDC_latch(3),
      R => p_0_in
    );
\greenDC_latch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(4),
      Q => greenDC_latch(4),
      R => p_0_in
    );
\greenDC_latch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(5),
      Q => greenDC_latch(5),
      R => p_0_in
    );
\greenDC_latch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(6),
      Q => greenDC_latch(6),
      R => p_0_in
    );
\greenDC_latch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(7),
      Q => greenDC_latch(7),
      R => p_0_in
    );
\greenDC_latch_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(8),
      Q => greenDC_latch(8),
      R => p_0_in
    );
\greenDC_latch_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => greenDC(9),
      Q => greenDC_latch(9),
      R => p_0_in
    );
\greenDC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(10),
      Q => greenDC(0),
      R => p_0_in
    );
\greenDC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(11),
      Q => greenDC(1),
      R => p_0_in
    );
\greenDC_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(12),
      Q => greenDC(2),
      R => p_0_in
    );
\greenDC_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(13),
      Q => greenDC(3),
      R => p_0_in
    );
\greenDC_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(14),
      Q => greenDC(4),
      R => p_0_in
    );
\greenDC_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(15),
      Q => greenDC(5),
      R => p_0_in
    );
\greenDC_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(16),
      Q => greenDC(6),
      R => p_0_in
    );
\greenDC_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(17),
      Q => greenDC(7),
      R => p_0_in
    );
\greenDC_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(18),
      Q => greenDC(8),
      R => p_0_in
    );
\greenDC_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(19),
      Q => greenDC(9),
      R => p_0_in
    );
\redDC_latch[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => count_reg(11),
      I1 => enable,
      O => \redDC_latch[9]_i_1_n_0\
    );
\redDC_latch_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(0),
      Q => redDC_latch(0),
      R => p_0_in
    );
\redDC_latch_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(1),
      Q => redDC_latch(1),
      R => p_0_in
    );
\redDC_latch_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(2),
      Q => redDC_latch(2),
      R => p_0_in
    );
\redDC_latch_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(3),
      Q => redDC_latch(3),
      R => p_0_in
    );
\redDC_latch_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(4),
      Q => redDC_latch(4),
      R => p_0_in
    );
\redDC_latch_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(5),
      Q => redDC_latch(5),
      R => p_0_in
    );
\redDC_latch_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(6),
      Q => redDC_latch(6),
      R => p_0_in
    );
\redDC_latch_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(7),
      Q => redDC_latch(7),
      R => p_0_in
    );
\redDC_latch_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(8),
      Q => redDC_latch(8),
      R => p_0_in
    );
\redDC_latch_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \redDC_latch[9]_i_1_n_0\,
      D => redDC(9),
      Q => redDC_latch(9),
      R => p_0_in
    );
\redDC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(20),
      Q => redDC(0),
      R => p_0_in
    );
\redDC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(21),
      Q => redDC(1),
      R => p_0_in
    );
\redDC_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(22),
      Q => redDC(2),
      R => p_0_in
    );
\redDC_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(23),
      Q => redDC(3),
      R => p_0_in
    );
\redDC_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(24),
      Q => redDC(4),
      R => p_0_in
    );
\redDC_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(25),
      Q => redDC(5),
      R => p_0_in
    );
\redDC_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(26),
      Q => redDC(6),
      R => p_0_in
    );
\redDC_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(27),
      Q => redDC(7),
      R => p_0_in
    );
\redDC_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(28),
      Q => redDC(8),
      R => p_0_in
    );
\redDC_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => controlReg(29),
      Q => redDC(9),
      R => p_0_in
    );
rgbBLUE0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgbBLUE0_carry_n_0,
      CO(2) => rgbBLUE0_carry_n_1,
      CO(1) => rgbBLUE0_carry_n_2,
      CO(0) => rgbBLUE0_carry_n_3,
      CYINIT => '0',
      DI(3) => rgbBLUE0_carry_i_1_n_0,
      DI(2) => rgbBLUE0_carry_i_2_n_0,
      DI(1) => rgbBLUE0_carry_i_3_n_0,
      DI(0) => rgbBLUE0_carry_i_4_n_0,
      O(3 downto 0) => NLW_rgbBLUE0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rgbBLUE0_carry_i_5_n_0,
      S(2) => rgbBLUE0_carry_i_6_n_0,
      S(1) => rgbBLUE0_carry_i_7_n_0,
      S(0) => rgbBLUE0_carry_i_8_n_0
    );
\rgbBLUE0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgbBLUE0_carry_n_0,
      CO(3 downto 2) => \NLW_rgbBLUE0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rgbBLUE0,
      CO(0) => \rgbBLUE0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rgbBLUE0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_rgbBLUE0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rgbBLUE0_carry__0_i_2_n_0\,
      S(0) => \rgbBLUE0_carry__0_i_3_n_0\
    );
\rgbBLUE0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blueDC_latch(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => blueDC_latch(9),
      O => \rgbBLUE0_carry__0_i_1_n_0\
    );
\rgbBLUE0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \rgbBLUE0_carry__0_i_2_n_0\
    );
\rgbBLUE0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blueDC_latch(8),
      I1 => count_reg(8),
      I2 => blueDC_latch(9),
      I3 => count_reg(9),
      O => \rgbBLUE0_carry__0_i_3_n_0\
    );
rgbBLUE0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blueDC_latch(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => blueDC_latch(7),
      O => rgbBLUE0_carry_i_1_n_0
    );
rgbBLUE0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blueDC_latch(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => blueDC_latch(5),
      O => rgbBLUE0_carry_i_2_n_0
    );
rgbBLUE0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blueDC_latch(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => blueDC_latch(3),
      O => rgbBLUE0_carry_i_3_n_0
    );
rgbBLUE0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blueDC_latch(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => blueDC_latch(1),
      O => rgbBLUE0_carry_i_4_n_0
    );
rgbBLUE0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blueDC_latch(6),
      I1 => count_reg(6),
      I2 => blueDC_latch(7),
      I3 => count_reg(7),
      O => rgbBLUE0_carry_i_5_n_0
    );
rgbBLUE0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blueDC_latch(4),
      I1 => count_reg(4),
      I2 => blueDC_latch(5),
      I3 => count_reg(5),
      O => rgbBLUE0_carry_i_6_n_0
    );
rgbBLUE0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blueDC_latch(2),
      I1 => count_reg(2),
      I2 => blueDC_latch(3),
      I3 => count_reg(3),
      O => rgbBLUE0_carry_i_7_n_0
    );
rgbBLUE0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blueDC_latch(0),
      I1 => count_reg(0),
      I2 => blueDC_latch(1),
      I3 => count_reg(1),
      O => rgbBLUE0_carry_i_8_n_0
    );
rgbBLUE_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => rgbBLUE0,
      O => rgbBLUE
    );
rgbGREEN0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgbGREEN0_carry_n_0,
      CO(2) => rgbGREEN0_carry_n_1,
      CO(1) => rgbGREEN0_carry_n_2,
      CO(0) => rgbGREEN0_carry_n_3,
      CYINIT => '0',
      DI(3) => rgbGREEN0_carry_i_1_n_0,
      DI(2) => rgbGREEN0_carry_i_2_n_0,
      DI(1) => rgbGREEN0_carry_i_3_n_0,
      DI(0) => rgbGREEN0_carry_i_4_n_0,
      O(3 downto 0) => NLW_rgbGREEN0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rgbGREEN0_carry_i_5_n_0,
      S(2) => rgbGREEN0_carry_i_6_n_0,
      S(1) => rgbGREEN0_carry_i_7_n_0,
      S(0) => rgbGREEN0_carry_i_8_n_0
    );
\rgbGREEN0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgbGREEN0_carry_n_0,
      CO(3 downto 2) => \NLW_rgbGREEN0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rgbGREEN0,
      CO(0) => \rgbGREEN0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rgbGREEN0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_rgbGREEN0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rgbGREEN0_carry__0_i_2_n_0\,
      S(0) => \rgbGREEN0_carry__0_i_3_n_0\
    );
\rgbGREEN0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => greenDC_latch(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => greenDC_latch(9),
      O => \rgbGREEN0_carry__0_i_1_n_0\
    );
\rgbGREEN0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \rgbGREEN0_carry__0_i_2_n_0\
    );
\rgbGREEN0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => greenDC_latch(8),
      I1 => count_reg(8),
      I2 => greenDC_latch(9),
      I3 => count_reg(9),
      O => \rgbGREEN0_carry__0_i_3_n_0\
    );
rgbGREEN0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => greenDC_latch(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => greenDC_latch(7),
      O => rgbGREEN0_carry_i_1_n_0
    );
rgbGREEN0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => greenDC_latch(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => greenDC_latch(5),
      O => rgbGREEN0_carry_i_2_n_0
    );
rgbGREEN0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => greenDC_latch(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => greenDC_latch(3),
      O => rgbGREEN0_carry_i_3_n_0
    );
rgbGREEN0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => greenDC_latch(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => greenDC_latch(1),
      O => rgbGREEN0_carry_i_4_n_0
    );
rgbGREEN0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => greenDC_latch(6),
      I1 => count_reg(6),
      I2 => greenDC_latch(7),
      I3 => count_reg(7),
      O => rgbGREEN0_carry_i_5_n_0
    );
rgbGREEN0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => greenDC_latch(4),
      I1 => count_reg(4),
      I2 => greenDC_latch(5),
      I3 => count_reg(5),
      O => rgbGREEN0_carry_i_6_n_0
    );
rgbGREEN0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => greenDC_latch(2),
      I1 => count_reg(2),
      I2 => greenDC_latch(3),
      I3 => count_reg(3),
      O => rgbGREEN0_carry_i_7_n_0
    );
rgbGREEN0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => greenDC_latch(0),
      I1 => count_reg(0),
      I2 => greenDC_latch(1),
      I3 => count_reg(1),
      O => rgbGREEN0_carry_i_8_n_0
    );
rgbGREEN_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => rgbGREEN0,
      O => rgbGREEN
    );
rgbRED0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgbRED0_carry_n_0,
      CO(2) => rgbRED0_carry_n_1,
      CO(1) => rgbRED0_carry_n_2,
      CO(0) => rgbRED0_carry_n_3,
      CYINIT => '0',
      DI(3) => rgbRED0_carry_i_1_n_0,
      DI(2) => rgbRED0_carry_i_2_n_0,
      DI(1) => rgbRED0_carry_i_3_n_0,
      DI(0) => rgbRED0_carry_i_4_n_0,
      O(3 downto 0) => NLW_rgbRED0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rgbRED0_carry_i_5_n_0,
      S(2) => rgbRED0_carry_i_6_n_0,
      S(1) => rgbRED0_carry_i_7_n_0,
      S(0) => rgbRED0_carry_i_8_n_0
    );
\rgbRED0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgbRED0_carry_n_0,
      CO(3 downto 2) => \NLW_rgbRED0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => rgbRED0,
      CO(0) => \rgbRED0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \rgbRED0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_rgbRED0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \rgbRED0_carry__0_i_2_n_0\,
      S(0) => \rgbRED0_carry__0_i_3_n_0\
    );
\rgbRED0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => redDC_latch(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => redDC_latch(9),
      O => \rgbRED0_carry__0_i_1_n_0\
    );
\rgbRED0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      O => \rgbRED0_carry__0_i_2_n_0\
    );
\rgbRED0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => redDC_latch(8),
      I1 => count_reg(8),
      I2 => redDC_latch(9),
      I3 => count_reg(9),
      O => \rgbRED0_carry__0_i_3_n_0\
    );
rgbRED0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => redDC_latch(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => redDC_latch(7),
      O => rgbRED0_carry_i_1_n_0
    );
rgbRED0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => redDC_latch(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => redDC_latch(5),
      O => rgbRED0_carry_i_2_n_0
    );
rgbRED0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => redDC_latch(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => redDC_latch(3),
      O => rgbRED0_carry_i_3_n_0
    );
rgbRED0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => redDC_latch(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => redDC_latch(1),
      O => rgbRED0_carry_i_4_n_0
    );
rgbRED0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => redDC_latch(6),
      I1 => count_reg(6),
      I2 => redDC_latch(7),
      I3 => count_reg(7),
      O => rgbRED0_carry_i_5_n_0
    );
rgbRED0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => redDC_latch(4),
      I1 => count_reg(4),
      I2 => redDC_latch(5),
      I3 => count_reg(5),
      O => rgbRED0_carry_i_6_n_0
    );
rgbRED0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => redDC_latch(2),
      I1 => count_reg(2),
      I2 => redDC_latch(3),
      I3 => count_reg(3),
      O => rgbRED0_carry_i_7_n_0
    );
rgbRED0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => redDC_latch(0),
      I1 => count_reg(0),
      I2 => redDC_latch(1),
      I3 => count_reg(1),
      O => rgbRED0_carry_i_8_n_0
    );
rgbRED_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => rgbRED0,
      O => rgbRED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity embsys_rgbPWM_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    controlReg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rgbRED : out STD_LOGIC;
    rgbGREEN : out STD_LOGIC;
    rgbBLUE : out STD_LOGIC;
    clkPWM : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of embsys_rgbPWM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of embsys_rgbPWM_0_0 : entity is "embsys_rgbPWM_0_0,rgbPWM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of embsys_rgbPWM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of embsys_rgbPWM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of embsys_rgbPWM_0_0 : entity is "rgbPWM,Vivado 2024.1";
end embsys_rgbPWM_0_0;

architecture STRUCTURE of embsys_rgbPWM_0_0 is
  signal \^clk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^clk\ <= clk;
  clkPWM <= \^clk\;
inst: entity work.embsys_rgbPWM_0_0_rgbPWM
     port map (
      clk => \^clk\,
      controlReg(30) => controlReg(31),
      controlReg(29 downto 0) => controlReg(29 downto 0),
      reset => reset,
      rgbBLUE => rgbBLUE,
      rgbGREEN => rgbGREEN,
      rgbRED => rgbRED
    );
end STRUCTURE;
