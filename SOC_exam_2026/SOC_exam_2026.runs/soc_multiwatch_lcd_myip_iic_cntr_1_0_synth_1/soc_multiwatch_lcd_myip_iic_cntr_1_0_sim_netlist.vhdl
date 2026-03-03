-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed Jan 28 19:22:57 2026
-- Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_multiwatch_lcd_myip_iic_cntr_1_0_sim_netlist.vhdl
-- Design      : soc_multiwatch_lcd_myip_iic_cntr_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  port (
    ff_old_reg_0 : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[21]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_usec : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    count_usec_reg_0_sp_1 : in STD_LOGIC;
    count_usec_reg_3_sp_1 : in STD_LOGIC;
    \count_usec_reg[3]_0\ : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \count_usec_reg[3]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  signal \count_usec[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[20]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal count_usec_reg_0_sn_1 : STD_LOGIC;
  signal count_usec_reg_3_sn_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_usec_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_usec_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_usec_reg[8]_i_1\ : label is 11;
begin
  count_usec_reg_0_sn_1 <= count_usec_reg_0_sp_1;
  count_usec_reg_3_sn_1 <= count_usec_reg_3_sp_1;
\count_usec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => count_usec_reg_0_sn_1,
      O => ff_old_reg_0
    );
\count_usec[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_3_n_0\
    );
\count_usec[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_4_n_0\
    );
\count_usec[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => \count_usec_reg[3]_0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_5_n_0\
    );
\count_usec[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg_3_sn_1,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_6_n_0\
    );
\count_usec[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC4C"
    )
        port map (
      I0 => \count_usec_reg[3]_1\,
      I1 => count_usec_reg_0_sn_1,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \count_usec[0]_i_7_n_0\
    );
\count_usec[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(12),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_2_n_0\
    );
\count_usec[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(11),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_3_n_0\
    );
\count_usec[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(10),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_4_n_0\
    );
\count_usec[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(9),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_5_n_0\
    );
\count_usec[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(16),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_2_n_0\
    );
\count_usec[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(15),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_3_n_0\
    );
\count_usec[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(14),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_4_n_0\
    );
\count_usec[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(13),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_5_n_0\
    );
\count_usec[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(18),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[20]_i_2_n_0\
    );
\count_usec[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(17),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[20]_i_3_n_0\
    );
\count_usec[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(4),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_2_n_0\
    );
\count_usec[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_3_n_0\
    );
\count_usec[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_4_n_0\
    );
\count_usec[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_5_n_0\
    );
\count_usec[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(8),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_2_n_0\
    );
\count_usec[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(7),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_3_n_0\
    );
\count_usec[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(6),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_4_n_0\
    );
\count_usec[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(5),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_5_n_0\
    );
\count_usec_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_usec_reg[0]_i_2_n_0\,
      CO(2) => \count_usec_reg[0]_i_2_n_1\,
      CO(1) => \count_usec_reg[0]_i_2_n_2\,
      CO(0) => \count_usec_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count_usec[0]_i_3_n_0\,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \count_usec[0]_i_4_n_0\,
      S(2) => \count_usec[0]_i_5_n_0\,
      S(1) => \count_usec[0]_i_6_n_0\,
      S(0) => \count_usec[0]_i_7_n_0\
    );
\count_usec_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[8]_i_1_n_0\,
      CO(3) => \count_usec_reg[12]_i_1_n_0\,
      CO(2) => \count_usec_reg[12]_i_1_n_1\,
      CO(1) => \count_usec_reg[12]_i_1_n_2\,
      CO(0) => \count_usec_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[15]\(3 downto 0),
      S(3) => \count_usec[12]_i_2_n_0\,
      S(2) => \count_usec[12]_i_3_n_0\,
      S(1) => \count_usec[12]_i_4_n_0\,
      S(0) => \count_usec[12]_i_5_n_0\
    );
\count_usec_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[12]_i_1_n_0\,
      CO(3) => \count_usec_reg[16]_i_1_n_0\,
      CO(2) => \count_usec_reg[16]_i_1_n_1\,
      CO(1) => \count_usec_reg[16]_i_1_n_2\,
      CO(0) => \count_usec_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[19]\(3 downto 0),
      S(3) => \count_usec[16]_i_2_n_0\,
      S(2) => \count_usec[16]_i_3_n_0\,
      S(1) => \count_usec[16]_i_4_n_0\,
      S(0) => \count_usec[16]_i_5_n_0\
    );
\count_usec_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_usec_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_usec_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \count_usec_reg[21]\(1 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \count_usec[20]_i_2_n_0\,
      S(0) => \count_usec[20]_i_3_n_0\
    );
\count_usec_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[0]_i_2_n_0\,
      CO(3) => \count_usec_reg[4]_i_1_n_0\,
      CO(2) => \count_usec_reg[4]_i_1_n_1\,
      CO(1) => \count_usec_reg[4]_i_1_n_2\,
      CO(0) => \count_usec_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[7]\(3 downto 0),
      S(3) => \count_usec[4]_i_2_n_0\,
      S(2) => \count_usec[4]_i_3_n_0\,
      S(1) => \count_usec[4]_i_4_n_0\,
      S(0) => \count_usec[4]_i_5_n_0\
    );
\count_usec_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[4]_i_1_n_0\,
      CO(3) => \count_usec_reg[8]_i_1_n_0\,
      CO(2) => \count_usec_reg[8]_i_1_n_1\,
      CO(1) => \count_usec_reg[8]_i_1_n_2\,
      CO(0) => \count_usec_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[11]\(3 downto 0),
      S(3) => \count_usec[8]_i_2_n_0\,
      S(2) => \count_usec[8]_i_3_n_0\,
      S(1) => \count_usec[8]_i_4_n_0\,
      S(0) => \count_usec[8]_i_5_n_0\
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => clk_usec,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_4 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn_0 : out STD_LOGIC;
    ff_old_reg_0 : out STD_LOGIC;
    ff_cur_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    count_usec5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    scl_reg : in STD_LOGIC;
    scl : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_4 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_4 is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => ff_cur_reg_0,
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
scl_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF08FF"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => count_usec5(0),
      I2 => \^p_0_in\(1),
      I3 => scl_reg,
      I4 => scl,
      O => ff_old_reg_0
    );
scl_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  port (
    \state_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \next_state_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    busy : in STD_LOGIC;
    \next_state[2]_i_4_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  signal \next_state[2]_i_8_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\next_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABAAAAA"
    )
        port map (
      I0 => \next_state[2]_i_8_n_0\,
      I1 => \next_state_reg[0]\(0),
      I2 => \next_state_reg[0]\(2),
      I3 => \next_state_reg[0]\(1),
      I4 => busy,
      O => \state_reg[0]\
    );
\next_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \next_state_reg[0]\(2),
      I1 => \next_state_reg[0]\(1),
      I2 => \next_state[2]_i_4_0\,
      I3 => \next_state_reg[0]\(0),
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \next_state[2]_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  port (
    ff_cur_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    send_byte : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    busy_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data0 : in STD_LOGIC;
    \next_state_reg[0]\ : in STD_LOGIC;
    \next_state_reg[0]_0\ : in STD_LOGIC;
    \next_state_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  signal \next_state[5]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
busy_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => D(0),
      I3 => busy_reg,
      O => ff_cur_reg_0
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => send_byte,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\next_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFCEEFEF"
    )
        port map (
      I0 => Q(1),
      I1 => \next_state[5]_i_3_n_0\,
      I2 => data0,
      I3 => Q(2),
      I4 => \next_state_reg[0]\,
      O => E(0)
    );
\next_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEBFAFBFAEBFAEB"
    )
        port map (
      I0 => \next_state_reg[0]_0\,
      I1 => \next_state_reg[0]_1\,
      I2 => Q(0),
      I3 => Q(3),
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \next_state[5]_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_1 is
  port (
    ff_old_reg_0 : out STD_LOGIC;
    sda_tristate_oe_reg : out STD_LOGIC;
    ff_cur_reg_0 : out STD_LOGIC;
    cnt_bit : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_1 : out STD_LOGIC;
    scl : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sda_INST_0_i_1 : in STD_LOGIC;
    sda_INST_0_i_1_0 : in STD_LOGIC;
    sda_INST_0_i_1_1 : in STD_LOGIC;
    sda_tristate_oe_reg_0 : in STD_LOGIC;
    sda_tristate_oe_reg_1 : in STD_LOGIC;
    sda_tristate_oe_reg_2 : in STD_LOGIC;
    sda_tristate_oe_reg_3 : in STD_LOGIC;
    stop_flag_reg : in STD_LOGIC;
    stop_flag_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    sda_tristate_oe_reg_4 : in STD_LOGIC;
    \cnt_bit_reg[0]\ : in STD_LOGIC;
    count_usec5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    sda_INST_0_i_1_2 : in STD_LOGIC;
    sda_INST_0_i_1_3 : in STD_LOGIC;
    sda_INST_0_i_1_4 : in STD_LOGIC;
    sda_INST_0_i_1_5 : in STD_LOGIC;
    \next_state_reg[0]\ : in STD_LOGIC;
    \next_state_reg[0]_0\ : in STD_LOGIC;
    \next_state_reg[0]_1\ : in STD_LOGIC;
    \next_state_reg[0]_2\ : in STD_LOGIC;
    \next_state_reg[0]_3\ : in STD_LOGIC;
    \next_state_reg[0]_4\ : in STD_LOGIC;
    \next_state_reg[0]_5\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_1 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_1 is
  signal \next_state[6]_i_4_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sda0 : STD_LOGIC;
  signal sda_INST_0_i_5_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_5_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_9_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_state[6]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of stop_flag_i_1 : label is "soft_lutpair0";
begin
\cnt_bit[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000060000000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \cnt_bit_reg[0]\,
      I5 => sda_tristate_oe_reg_4,
      O => cnt_bit
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => scl,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\next_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFD5"
    )
        port map (
      I0 => \next_state_reg[0]\,
      I1 => Q(4),
      I2 => \next_state_reg[0]_0\,
      I3 => \next_state[6]_i_4_n_0\,
      I4 => \next_state_reg[0]_1\,
      O => E(0)
    );
\next_state[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \next_state_reg[0]_2\,
      I1 => \next_state_reg[0]_3\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => \next_state_reg[0]_4\,
      I5 => \next_state_reg[0]_5\,
      O => \next_state[6]_i_4_n_0\
    );
\next_state[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => ff_cur_reg_1
    );
sda_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFBFAAAA0080"
    )
        port map (
      I0 => sda0,
      I1 => sda_INST_0_i_1,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => sda_INST_0_i_1_0,
      I5 => sda_INST_0_i_1_1,
      O => ff_old_reg_0
    );
sda_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAFEEE"
    )
        port map (
      I0 => sda_INST_0_i_5_n_0,
      I1 => count_usec5(0),
      I2 => sda_INST_0_i_1_2,
      I3 => sda_INST_0_i_1_3,
      I4 => sda_INST_0_i_1_4,
      I5 => sda_INST_0_i_1_5,
      O => sda0
    );
sda_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020202020200"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => Q(1),
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => sda_INST_0_i_5_n_0
    );
sda_tristate_oe_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFFFEFEFE00"
    )
        port map (
      I0 => sda_tristate_oe_reg_0,
      I1 => sda_tristate_oe_reg_1,
      I2 => sda_tristate_oe_reg_2,
      I3 => sda_tristate_oe_i_5_n_0,
      I4 => sda_INST_0_i_1_0,
      I5 => sda_tristate_oe_reg_3,
      O => sda_tristate_oe_reg
    );
sda_tristate_oe_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000202080"
    )
        port map (
      I0 => sda_tristate_oe_i_9_n_0,
      I1 => Q(1),
      I2 => sda_tristate_oe_reg_4,
      I3 => Q(3),
      I4 => Q(0),
      I5 => Q(2),
      O => sda_tristate_oe_i_5_n_0
    );
sda_tristate_oe_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => sda_tristate_oe_i_9_n_0
    );
stop_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => stop_flag_reg,
      I3 => stop_flag_reg_0,
      O => ff_cur_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_2 is
  port (
    \state_reg[1]\ : out STD_LOGIC;
    ff_cur_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \next_state_reg[0]\ : in STD_LOGIC;
    \next_state_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_2 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_2 is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ff_cur_reg_0,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\next_state[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAEAAAEAAAEA"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => \next_state_reg[0]\,
      I5 => \next_state_reg[0]_0\,
      O => \state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec is
  port (
    ff_old_reg : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[21]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    count_usec_reg_0_sp_1 : in STD_LOGIC;
    count_usec_reg_3_sp_1 : in STD_LOGIC;
    \count_usec_reg[3]_0\ : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \count_usec_reg[3]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec is
  signal clk_usec : STD_LOGIC;
  signal clk_usec_i_1_n_0 : STD_LOGIC;
  signal clk_usec_i_2_n_0 : STD_LOGIC;
  signal cnt_sysclk_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal count_usec_reg_0_sn_1 : STD_LOGIC;
  signal count_usec_reg_3_sn_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk[1]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_sysclk[2]_i_1__0\ : label is "soft_lutpair11";
begin
  count_usec_reg_0_sn_1 <= count_usec_reg_0_sp_1;
  count_usec_reg_3_sn_1 <= count_usec_reg_3_sp_1;
clk_usec_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_usec_i_2_n_0,
      I1 => clk_usec,
      O => clk_usec_i_1_n_0
    );
clk_usec_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(4),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(0),
      I4 => cnt_sysclk_reg(3),
      I5 => cnt_sysclk_reg(2),
      O => clk_usec_i_2_n_0
    );
clk_usec_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => clk_usec_i_1_n_0,
      Q => clk_usec
    );
\cnt_sysclk[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010F0F0F0F0F0F"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => p_0_in(0)
    );
\cnt_sysclk[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0666"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => cnt_sysclk_reg(1),
      I2 => cnt_sysclk_reg(4),
      I3 => cnt_sysclk_reg(5),
      O => p_0_in(1)
    );
\cnt_sysclk[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006A6A6A"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(0),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(4),
      I4 => cnt_sysclk_reg(5),
      O => p_0_in(2)
    );
\cnt_sysclk[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006CCC6CCC6CCC"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => p_0_in(3)
    );
\cnt_sysclk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000180007FFF8000"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => p_0_in(4)
    );
\cnt_sysclk[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000002AAAAAAAA"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(2),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(0),
      I4 => cnt_sysclk_reg(3),
      I5 => cnt_sysclk_reg(4),
      O => p_0_in(5)
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(0),
      Q => cnt_sysclk_reg(0)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => cnt_sysclk_reg(1)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(2),
      Q => cnt_sysclk_reg(2)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(3),
      Q => cnt_sysclk_reg(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(4),
      Q => cnt_sysclk_reg(4)
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(5),
      Q => cnt_sysclk_reg(5)
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
     port map (
      AR(0) => AR(0),
      O(3 downto 0) => O(3 downto 0),
      clk_usec => clk_usec,
      count_usec_reg(18 downto 0) => count_usec_reg(18 downto 0),
      \count_usec_reg[11]\(3 downto 0) => \count_usec_reg[11]\(3 downto 0),
      \count_usec_reg[15]\(3 downto 0) => \count_usec_reg[15]\(3 downto 0),
      \count_usec_reg[19]\(3 downto 0) => \count_usec_reg[19]\(3 downto 0),
      \count_usec_reg[21]\(1 downto 0) => \count_usec_reg[21]\(1 downto 0),
      \count_usec_reg[3]_0\ => \count_usec_reg[3]_0\,
      \count_usec_reg[3]_1\ => \count_usec_reg[3]_1\,
      \count_usec_reg[7]\(3 downto 0) => \count_usec_reg[7]\(3 downto 0),
      count_usec_reg_0_sp_1 => count_usec_reg_0_sn_1,
      count_usec_reg_3_sp_1 => count_usec_reg_3_sn_1,
      ff_old_reg_0 => ff_old_reg,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec_3 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    count_usec5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    scl_reg : in STD_LOGIC;
    scl : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec_3 : entity is "clock_usec";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec_3 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \clk_usec_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_usec_i_2__0_n_0\ : STD_LOGIC;
  signal clk_usec_reg_n_0 : STD_LOGIC;
  signal cnt_sysclk_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_sysclk[2]_i_1\ : label is "soft_lutpair1";
begin
  AR(0) <= \^ar\(0);
\clk_usec_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_usec_i_2__0_n_0\,
      I1 => clk_usec_reg_n_0,
      O => \clk_usec_i_1__0_n_0\
    );
\clk_usec_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(4),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(0),
      I4 => cnt_sysclk_reg(3),
      I5 => cnt_sysclk_reg(2),
      O => \clk_usec_i_2__0_n_0\
    );
clk_usec_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \clk_usec_i_1__0_n_0\,
      Q => clk_usec_reg_n_0
    );
\cnt_sysclk[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010F0F0F0F0F0F"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => \p_0_in__0\(0)
    );
\cnt_sysclk[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0666"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => cnt_sysclk_reg(1),
      I2 => cnt_sysclk_reg(4),
      I3 => cnt_sysclk_reg(5),
      O => \p_0_in__0\(1)
    );
\cnt_sysclk[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006A6A6A"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(0),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(4),
      I4 => cnt_sysclk_reg(5),
      O => \p_0_in__0\(2)
    );
\cnt_sysclk[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006CCC6CCC6CCC"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => \p_0_in__0\(3)
    );
\cnt_sysclk[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000180007FFF8000"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(1),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(5),
      O => \p_0_in__0\(4)
    );
\cnt_sysclk[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000002AAAAAAAA"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(2),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(0),
      I4 => cnt_sysclk_reg(3),
      I5 => cnt_sysclk_reg(4),
      O => \p_0_in__0\(5)
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__0\(0),
      Q => cnt_sysclk_reg(0)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__0\(1),
      Q => cnt_sysclk_reg(1)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__0\(2),
      Q => cnt_sysclk_reg(2)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__0\(3),
      Q => cnt_sysclk_reg(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__0\(4),
      Q => cnt_sysclk_reg(4)
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \p_0_in__0\(5),
      Q => cnt_sysclk_reg(5)
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_4
     port map (
      count_usec5(0) => count_usec5(0),
      ff_cur_reg_0 => clk_usec_reg_n_0,
      ff_old_reg_0 => ff_old_reg,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^ar\(0),
      scl => scl,
      scl_reg => scl_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_I2C_master is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    scl : out STD_LOGIC;
    ff_old_reg : out STD_LOGIC;
    sda : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    ff_cur_reg : in STD_LOGIC;
    sda_INST_0_i_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_I2C_master;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_I2C_master is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt_bit : STD_LOGIC;
  signal \cnt_bit[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_bit_reg_n_0_[2]\ : STD_LOGIC;
  signal count_usec5 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \count_usec5[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec5[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec5[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec5_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_usec5_reg_n_0_[1]\ : STD_LOGIC;
  signal \ed/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ed_scl_n_1 : STD_LOGIC;
  signal ed_scl_n_2 : STD_LOGIC;
  signal ed_scl_n_5 : STD_LOGIC;
  signal ed_start_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal \next_state[0]_i_1__0__0_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1__0__0_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[6]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[6]_i_6_n_0\ : STD_LOGIC;
  signal \next_state[6]_i_7_n_0\ : STD_LOGIC;
  signal \next_state__1_n_0\ : STD_LOGIC;
  signal \next_state__2_n_0\ : STD_LOGIC;
  signal \next_state__3_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \^scl\ : STD_LOGIC;
  signal scl_e_i_1_n_0 : STD_LOGIC;
  signal scl_e_i_2_n_0 : STD_LOGIC;
  signal scl_e_reg_n_0 : STD_LOGIC;
  signal sda_INST_0_i_4_n_0 : STD_LOGIC;
  signal sda_INST_0_i_6_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_10_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_2_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_3_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_4_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_6_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_7_n_0 : STD_LOGIC;
  signal sda_tristate_oe_i_8_n_0 : STD_LOGIC;
  signal sda_tristate_oe_reg_n_0 : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \state_reg_n_0_[4]\ : STD_LOGIC;
  signal \state_reg_n_0_[5]\ : STD_LOGIC;
  signal \state_reg_n_0_[6]\ : STD_LOGIC;
  signal stop_flag_i_2_n_0 : STD_LOGIC;
  signal stop_flag_reg_n_0 : STD_LOGIC;
  signal usec_clk_n_3 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_bit[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_bit[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_bit[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \next_state[0]_i_1__0__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[2]_i_2__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \next_state[3]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_state[6]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_state[6]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \next_state__2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \next_state__3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of scl_e_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sda_INST_0_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sda_INST_0_i_6 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sda_tristate_oe_i_10 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of sda_tristate_oe_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of sda_tristate_oe_i_6 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of stop_flag_i_2 : label is "soft_lutpair5";
begin
  AR(0) <= \^ar\(0);
  scl <= \^scl\;
\cnt_bit[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_bit,
      I1 => \cnt_bit_reg_n_0_[0]\,
      O => \cnt_bit[0]_i_1_n_0\
    );
\cnt_bit[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[0]\,
      I1 => cnt_bit,
      I2 => \cnt_bit_reg_n_0_[1]\,
      O => \cnt_bit[1]_i_1_n_0\
    );
\cnt_bit[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[1]\,
      I1 => \cnt_bit_reg_n_0_[0]\,
      I2 => cnt_bit,
      I3 => \cnt_bit_reg_n_0_[2]\,
      O => \cnt_bit[2]_i_1_n_0\
    );
\cnt_bit_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_bit[0]_i_1_n_0\,
      PRE => \^ar\(0),
      Q => \cnt_bit_reg_n_0_[0]\
    );
\cnt_bit_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_bit[1]_i_1_n_0\,
      PRE => \^ar\(0),
      Q => \cnt_bit_reg_n_0_[1]\
    );
\cnt_bit_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \cnt_bit[2]_i_1_n_0\,
      PRE => \^ar\(0),
      Q => \cnt_bit_reg_n_0_[2]\
    );
\count_usec5[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF001000"
    )
        port map (
      I0 => count_usec5(2),
      I1 => \ed/p_0_in\(1),
      I2 => \ed/p_0_in\(0),
      I3 => scl_e_reg_n_0,
      I4 => \count_usec5_reg_n_0_[0]\,
      O => \count_usec5[0]_i_1_n_0\
    );
\count_usec5[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FF000004000000"
    )
        port map (
      I0 => count_usec5(2),
      I1 => \count_usec5_reg_n_0_[0]\,
      I2 => \ed/p_0_in\(1),
      I3 => \ed/p_0_in\(0),
      I4 => scl_e_reg_n_0,
      I5 => \count_usec5_reg_n_0_[1]\,
      O => \count_usec5[1]_i_1_n_0\
    );
\count_usec5[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF000008000000"
    )
        port map (
      I0 => \count_usec5_reg_n_0_[1]\,
      I1 => \count_usec5_reg_n_0_[0]\,
      I2 => \ed/p_0_in\(1),
      I3 => \ed/p_0_in\(0),
      I4 => scl_e_reg_n_0,
      I5 => count_usec5(2),
      O => \count_usec5[2]_i_1_n_0\
    );
\count_usec5_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \count_usec5[0]_i_1_n_0\,
      Q => \count_usec5_reg_n_0_[0]\
    );
\count_usec5_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \count_usec5[1]_i_1_n_0\,
      Q => \count_usec5_reg_n_0_[1]\
    );
\count_usec5_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \count_usec5[2]_i_1_n_0\,
      Q => count_usec5(2)
    );
ed_scl: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_1
     port map (
      AR(0) => \^ar\(0),
      E(0) => next_state,
      Q(4) => \state_reg_n_0_[6]\,
      Q(3) => \state_reg_n_0_[5]\,
      Q(2) => \state_reg_n_0_[4]\,
      Q(1) => \state_reg_n_0_[3]\,
      Q(0) => \state_reg_n_0_[2]\,
      cnt_bit => cnt_bit,
      \cnt_bit_reg[0]\ => \next_state[2]_i_2__0_n_0\,
      count_usec5(0) => count_usec5(2),
      ff_cur_reg_0 => ed_scl_n_2,
      ff_cur_reg_1 => ed_scl_n_5,
      ff_old_reg_0 => ff_old_reg,
      \next_state_reg[0]\ => \next_state__3_n_0\,
      \next_state_reg[0]_0\ => \next_state[6]_i_3_n_0\,
      \next_state_reg[0]_1\ => ed_start_n_0,
      \next_state_reg[0]_2\ => \cnt_bit_reg_n_0_[0]\,
      \next_state_reg[0]_3\ => \cnt_bit_reg_n_0_[1]\,
      \next_state_reg[0]_4\ => \cnt_bit_reg_n_0_[2]\,
      \next_state_reg[0]_5\ => \next_state[6]_i_7_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      scl => \^scl\,
      sda_INST_0_i_1 => sda_INST_0_i_4_n_0,
      sda_INST_0_i_1_0 => sda_tristate_oe_i_6_n_0,
      sda_INST_0_i_1_1 => sda_INST_0_i_1,
      sda_INST_0_i_1_2 => \count_usec5_reg_n_0_[0]\,
      sda_INST_0_i_1_3 => \count_usec5_reg_n_0_[1]\,
      sda_INST_0_i_1_4 => sda_tristate_oe_i_10_n_0,
      sda_INST_0_i_1_5 => sda_INST_0_i_6_n_0,
      sda_tristate_oe_reg => ed_scl_n_1,
      sda_tristate_oe_reg_0 => sda_tristate_oe_i_2_n_0,
      sda_tristate_oe_reg_1 => sda_tristate_oe_i_3_n_0,
      sda_tristate_oe_reg_2 => sda_tristate_oe_i_4_n_0,
      sda_tristate_oe_reg_3 => sda_tristate_oe_reg_n_0,
      sda_tristate_oe_reg_4 => \next_state[6]_i_6_n_0\,
      stop_flag_reg => stop_flag_i_2_n_0,
      stop_flag_reg_0 => stop_flag_reg_n_0
    );
ed_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_2
     port map (
      AR(0) => \^ar\(0),
      Q(1) => \state_reg_n_0_[1]\,
      Q(0) => \state_reg_n_0_[0]\,
      ff_cur_reg_0 => ff_cur_reg,
      \next_state_reg[0]\ => \next_state[2]_i_2__0_n_0\,
      \next_state_reg[0]_0\ => ed_scl_n_5,
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[1]\ => ed_start_n_0
    );
\next_state[0]_i_1__0__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \next_state[0]_i_2__0_n_0\,
      I1 => \state_reg_n_0_[6]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[4]\,
      O => \next_state[0]_i_1__0__0_n_0\
    );
\next_state[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEEEE9"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \state_reg_n_0_[1]\,
      O => \next_state[0]_i_2__0_n_0\
    );
\next_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[6]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \next_state[2]_i_2__0_n_0\,
      O => \next_state[1]_i_1__1_n_0\
    );
\next_state[2]_i_1__0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[6]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[4]\,
      I5 => \next_state[2]_i_2__0_n_0\,
      O => \next_state[2]_i_1__0__0_n_0\
    );
\next_state[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[5]\,
      O => \next_state[2]_i_2__0_n_0\
    );
\next_state[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01100000"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[5]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \state_reg_n_0_[4]\,
      I4 => \next_state[6]_i_6_n_0\,
      O => \next_state[3]_i_1__0_n_0\
    );
\next_state[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \next_state[6]_i_6_n_0\,
      I4 => \state_reg_n_0_[3]\,
      I5 => stop_flag_reg_n_0,
      O => \next_state[4]_i_1__0_n_0\
    );
\next_state[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \next_state[6]_i_6_n_0\,
      I4 => \state_reg_n_0_[3]\,
      I5 => stop_flag_reg_n_0,
      O => \next_state[5]_i_1__0_n_0\
    );
\next_state[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[3]\,
      I4 => \next_state[6]_i_6_n_0\,
      O => \next_state[6]_i_2_n_0\
    );
\next_state[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \count_usec5_reg_n_0_[1]\,
      I1 => \count_usec5_reg_n_0_[0]\,
      I2 => count_usec5(2),
      O => \next_state[6]_i_3_n_0\
    );
\next_state[6]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[6]\,
      O => \next_state[6]_i_6_n_0\
    );
\next_state[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \state_reg_n_0_[4]\,
      O => \next_state[6]_i_7_n_0\
    );
\next_state__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[6]\,
      O => \next_state__1_n_0\
    );
\next_state__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[6]\,
      O => \next_state__2_n_0\
    );
\next_state__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \next_state__1_n_0\,
      I4 => \next_state__2_n_0\,
      O => \next_state__3_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      D => \next_state[0]_i_1__0__0_n_0\,
      PRE => \^ar\(0),
      Q => \next_state_reg_n_0_[0]\
    );
\next_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[1]_i_1__1_n_0\,
      Q => \next_state_reg_n_0_[1]\
    );
\next_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[2]_i_1__0__0_n_0\,
      Q => \next_state_reg_n_0_[2]\
    );
\next_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[3]_i_1__0_n_0\,
      Q => \next_state_reg_n_0_[3]\
    );
\next_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[4]_i_1__0_n_0\,
      Q => \next_state_reg_n_0_[4]\
    );
\next_state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[5]_i_1__0_n_0\,
      Q => \next_state_reg_n_0_[5]\
    );
\next_state_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[6]_i_2_n_0\,
      Q => \next_state_reg_n_0_[6]\
    );
scl_e_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FFFFF0F00020"
    )
        port map (
      I0 => \next_state[6]_i_6_n_0\,
      I1 => \state_reg_n_0_[4]\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \next_state[2]_i_2__0_n_0\,
      I4 => scl_e_i_2_n_0,
      I5 => scl_e_reg_n_0,
      O => scl_e_i_1_n_0
    );
scl_e_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001404"
    )
        port map (
      I0 => \state_reg_n_0_[1]\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[6]\,
      I3 => \next_state[6]_i_3_n_0\,
      I4 => sda_tristate_oe_i_10_n_0,
      O => scl_e_i_2_n_0
    );
scl_e_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => scl_e_i_1_n_0,
      Q => scl_e_reg_n_0
    );
scl_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => usec_clk_n_3,
      PRE => \^ar\(0),
      Q => \^scl\
    );
sda_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sda_tristate_oe_reg_n_0,
      I1 => sda_INST_0_i_1,
      O => sda
    );
sda_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01001600"
    )
        port map (
      I0 => \state_reg_n_0_[4]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \next_state[6]_i_6_n_0\,
      I4 => \state_reg_n_0_[3]\,
      O => sda_INST_0_i_4_n_0
    );
sda_INST_0_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => sda_INST_0_i_6_n_0
    );
sda_tristate_oe_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \state_reg_n_0_[5]\,
      I1 => \state_reg_n_0_[3]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => \state_reg_n_0_[2]\,
      O => sda_tristate_oe_i_10_n_0
    );
sda_tristate_oe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000C0000000"
    )
        port map (
      I0 => sda_tristate_oe_i_7_n_0,
      I1 => \cnt_bit_reg_n_0_[0]\,
      I2 => \cnt_bit_reg_n_0_[2]\,
      I3 => Q(4),
      I4 => \state_reg_n_0_[4]\,
      I5 => \cnt_bit_reg_n_0_[1]\,
      O => sda_tristate_oe_i_2_n_0
    );
sda_tristate_oe_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \cnt_bit_reg_n_0_[2]\,
      I3 => sda_tristate_oe_i_8_n_0,
      O => sda_tristate_oe_i_3_n_0
    );
sda_tristate_oe_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAEAAAEAAAEA"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \cnt_bit_reg_n_0_[1]\,
      I3 => \cnt_bit_reg_n_0_[0]\,
      I4 => \state_reg_n_0_[6]\,
      I5 => \next_state[6]_i_3_n_0\,
      O => sda_tristate_oe_i_4_n_0
    );
sda_tristate_oe_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00030320"
    )
        port map (
      I0 => \next_state[6]_i_3_n_0\,
      I1 => sda_tristate_oe_i_10_n_0,
      I2 => \state_reg_n_0_[6]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => sda_tristate_oe_i_6_n_0
    );
sda_tristate_oe_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(6),
      I1 => Q(2),
      I2 => \cnt_bit_reg_n_0_[0]\,
      I3 => Q(5),
      I4 => \cnt_bit_reg_n_0_[2]\,
      I5 => Q(1),
      O => sda_tristate_oe_i_7_n_0
    );
sda_tristate_oe_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100000001000"
    )
        port map (
      I0 => \cnt_bit_reg_n_0_[0]\,
      I1 => \cnt_bit_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[4]\,
      I3 => Q(0),
      I4 => \cnt_bit_reg_n_0_[2]\,
      I5 => Q(3),
      O => sda_tristate_oe_i_8_n_0
    );
sda_tristate_oe_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => ed_scl_n_1,
      Q => sda_tristate_oe_reg_n_0
    );
\state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \next_state_reg_n_0_[0]\,
      PRE => \^ar\(0),
      Q => \state_reg_n_0_[0]\
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[1]\,
      Q => \state_reg_n_0_[1]\
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[2]\,
      Q => \state_reg_n_0_[2]\
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[3]\,
      Q => \state_reg_n_0_[3]\
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[4]\,
      Q => \state_reg_n_0_[4]\
    );
\state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[5]\,
      Q => \state_reg_n_0_[5]\
    );
\state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[6]\,
      Q => \state_reg_n_0_[6]\
    );
stop_flag_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \state_reg_n_0_[3]\,
      I1 => \next_state[6]_i_6_n_0\,
      I2 => \state_reg_n_0_[5]\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \state_reg_n_0_[4]\,
      O => stop_flag_i_2_n_0
    );
stop_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => ed_scl_n_2,
      Q => stop_flag_reg_n_0
    );
usec_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec_3
     port map (
      AR(0) => \^ar\(0),
      count_usec5(0) => count_usec5(2),
      ff_old_reg => usec_clk_n_3,
      p_0_in(1 downto 0) => \ed/p_0_in\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => \^scl\,
      scl_reg => scl_e_reg_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_lcd_send_byte is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    scl : out STD_LOGIC;
    busy : out STD_LOGIC;
    \state_reg[2]_0\ : out STD_LOGIC;
    \slv_reg1_reg[1]\ : out STD_LOGIC;
    busy_reg_0 : out STD_LOGIC;
    ff_old_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    sda : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    busy_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    busy_reg_2 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    send_byte : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rs_byte_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    init_flag_reg : in STD_LOGIC;
    init_flag_reg_0 : in STD_LOGIC;
    sda_INST_0_i_1 : in STD_LOGIC;
    \cnt_data_reg[10]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \cnt_data_reg[5]\ : in STD_LOGIC;
    \cnt_data_reg[6]\ : in STD_LOGIC;
    \next_state_reg[0]_0\ : in STD_LOGIC;
    \next_state_reg[0]_1\ : in STD_LOGIC;
    \cnt_data_reg[10]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \data_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s00_axi_rdata[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_lcd_send_byte;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_lcd_send_byte is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^busy\ : STD_LOGIC;
  signal comm_start_i_1_n_0 : STD_LOGIC;
  signal comm_start_reg_n_0 : STD_LOGIC;
  signal count_usec_reg : STD_LOGIC_VECTOR ( 21 downto 3 );
  signal \count_usec_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_usec_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_usec_reg_n_0_[2]\ : STD_LOGIC;
  signal data : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal data0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_n_0_[7]\ : STD_LOGIC;
  signal ed_start_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_10_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_11_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_6_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_7_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_8_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_9_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[5]\ : STD_LOGIC;
  signal rs_byte_i_2_n_0 : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal usec_clk_n_0 : STD_LOGIC;
  signal usec_clk_n_1 : STD_LOGIC;
  signal usec_clk_n_10 : STD_LOGIC;
  signal usec_clk_n_11 : STD_LOGIC;
  signal usec_clk_n_12 : STD_LOGIC;
  signal usec_clk_n_13 : STD_LOGIC;
  signal usec_clk_n_14 : STD_LOGIC;
  signal usec_clk_n_15 : STD_LOGIC;
  signal usec_clk_n_16 : STD_LOGIC;
  signal usec_clk_n_17 : STD_LOGIC;
  signal usec_clk_n_18 : STD_LOGIC;
  signal usec_clk_n_19 : STD_LOGIC;
  signal usec_clk_n_2 : STD_LOGIC;
  signal usec_clk_n_20 : STD_LOGIC;
  signal usec_clk_n_21 : STD_LOGIC;
  signal usec_clk_n_22 : STD_LOGIC;
  signal usec_clk_n_3 : STD_LOGIC;
  signal usec_clk_n_4 : STD_LOGIC;
  signal usec_clk_n_5 : STD_LOGIC;
  signal usec_clk_n_6 : STD_LOGIC;
  signal usec_clk_n_7 : STD_LOGIC;
  signal usec_clk_n_8 : STD_LOGIC;
  signal usec_clk_n_9 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_data[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_data[10]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_data[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_data[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_data[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_data[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_data[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_data[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \next_state[5]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \next_state[5]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \next_state[5]_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of rs_byte_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of send_byte_i_1 : label is "soft_lutpair12";
begin
  AR(0) <= \^ar\(0);
  busy <= \^busy\;
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => ed_start_n_0,
      Q => \^busy\
    );
\cnt_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[10]\(0),
      O => D(0)
    );
\cnt_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000470000"
    )
        port map (
      I0 => init_flag_reg,
      I1 => \^busy\,
      I2 => send_byte,
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => busy_reg_1(0)
    );
\cnt_data[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \cnt_data_reg[10]_0\,
      I1 => \cnt_data_reg[10]\(9),
      I2 => \cnt_data_reg[10]\(10),
      I3 => \^busy\,
      O => D(10)
    );
\cnt_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \cnt_data_reg[10]\(1),
      I1 => \cnt_data_reg[10]\(0),
      I2 => \^busy\,
      O => D(1)
    );
\cnt_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[10]\(0),
      I2 => \cnt_data_reg[10]\(1),
      I3 => \cnt_data_reg[10]\(2),
      O => D(2)
    );
\cnt_data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[10]\(0),
      I2 => \cnt_data_reg[10]\(2),
      I3 => \cnt_data_reg[10]\(1),
      I4 => \cnt_data_reg[10]\(3),
      O => D(3)
    );
\cnt_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[10]\(1),
      I2 => \cnt_data_reg[10]\(2),
      I3 => \cnt_data_reg[10]\(0),
      I4 => \cnt_data_reg[10]\(3),
      I5 => \cnt_data_reg[10]\(4),
      O => D(4)
    );
\cnt_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[5]\,
      I2 => \cnt_data_reg[10]\(5),
      O => D(5)
    );
\cnt_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[6]\,
      I2 => \cnt_data_reg[10]\(6),
      O => D(6)
    );
\cnt_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4510"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[6]\,
      I2 => \cnt_data_reg[10]\(6),
      I3 => \cnt_data_reg[10]\(7),
      O => D(7)
    );
\cnt_data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[10]\(6),
      I2 => \cnt_data_reg[6]\,
      I3 => \cnt_data_reg[10]\(7),
      I4 => \cnt_data_reg[10]\(8),
      O => D(8)
    );
\cnt_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555500400000"
    )
        port map (
      I0 => \^busy\,
      I1 => \cnt_data_reg[10]\(8),
      I2 => \cnt_data_reg[10]\(7),
      I3 => \cnt_data_reg[6]\,
      I4 => \cnt_data_reg[10]\(6),
      I5 => \cnt_data_reg[10]\(9),
      O => D(9)
    );
comm_start_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => comm_start_reg_n_0,
      I1 => \data[7]_i_3_n_0\,
      I2 => data0,
      O => comm_start_i_1_n_0
    );
comm_start_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => comm_start_i_1_n_0,
      Q => comm_start_reg_n_0
    );
\count_usec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_4,
      Q => \count_usec_reg_n_0_[0]\
    );
\count_usec_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_10,
      Q => count_usec_reg(10)
    );
\count_usec_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_9,
      Q => count_usec_reg(11)
    );
\count_usec_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_16,
      Q => count_usec_reg(12)
    );
\count_usec_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_15,
      Q => count_usec_reg(13)
    );
\count_usec_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_14,
      Q => count_usec_reg(14)
    );
\count_usec_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_13,
      Q => count_usec_reg(15)
    );
\count_usec_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_20,
      Q => count_usec_reg(16)
    );
\count_usec_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_19,
      Q => count_usec_reg(17)
    );
\count_usec_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_18,
      Q => count_usec_reg(18)
    );
\count_usec_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_17,
      Q => count_usec_reg(19)
    );
\count_usec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_3,
      Q => \count_usec_reg_n_0_[1]\
    );
\count_usec_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_22,
      Q => count_usec_reg(20)
    );
\count_usec_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_21,
      Q => count_usec_reg(21)
    );
\count_usec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_2,
      Q => \count_usec_reg_n_0_[2]\
    );
\count_usec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_1,
      Q => count_usec_reg(3)
    );
\count_usec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_8,
      Q => count_usec_reg(4)
    );
\count_usec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_7,
      Q => count_usec_reg(5)
    );
\count_usec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_6,
      Q => count_usec_reg(6)
    );
\count_usec_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_5,
      Q => count_usec_reg(7)
    );
\count_usec_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_12,
      Q => count_usec_reg(8)
    );
\count_usec_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clk_n_0,
      CLR => \^ar\(0),
      D => usec_clk_n_11,
      Q => count_usec_reg(9)
    );
\data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => data2(0),
      I1 => state(4),
      I2 => state(3),
      I3 => state(2),
      I4 => state(1),
      I5 => state(5),
      O => data0_in(0)
    );
\data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(4),
      O => data0_in(2)
    );
\data[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => state(4),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(5),
      O => data0_in(3)
    );
\data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => \next_state[5]_i_5_n_0\,
      I1 => data2(1),
      I2 => state(1),
      I3 => state(2),
      I4 => \data_reg[7]_0\(0),
      O => data0_in(4)
    );
\data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => \next_state[5]_i_5_n_0\,
      I1 => data2(2),
      I2 => state(1),
      I3 => state(2),
      I4 => \data_reg[7]_0\(1),
      O => data0_in(5)
    );
\data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => \next_state[5]_i_5_n_0\,
      I1 => data2(3),
      I2 => state(1),
      I3 => state(2),
      I4 => \data_reg[7]_0\(2),
      O => data0_in(6)
    );
\data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0,
      I1 => \data[7]_i_3_n_0\,
      O => data
    );
\data[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => \next_state[5]_i_5_n_0\,
      I1 => data2(4),
      I2 => state(1),
      I3 => state(2),
      I4 => \data_reg[7]_0\(3),
      O => data0_in(7)
    );
\data[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFEED"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => state(5),
      I4 => state(4),
      I5 => state(2),
      O => \data[7]_i_3_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => data,
      CLR => \^ar\(0),
      D => data0_in(0),
      Q => \data_reg_n_0_[0]\
    );
\data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => data,
      CLR => \^ar\(0),
      D => data0_in(2),
      Q => \data_reg_n_0_[2]\
    );
\data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => data,
      CLR => \^ar\(0),
      D => data0_in(3),
      Q => \data_reg_n_0_[3]\
    );
\data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => data,
      CLR => \^ar\(0),
      D => data0_in(4),
      Q => \data_reg_n_0_[4]\
    );
\data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => data,
      CLR => \^ar\(0),
      D => data0_in(5),
      Q => \data_reg_n_0_[5]\
    );
\data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => data,
      CLR => \^ar\(0),
      D => data0_in(6),
      Q => \data_reg_n_0_[6]\
    );
\data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => data,
      CLR => \^ar\(0),
      D => data0_in(7),
      Q => \data_reg_n_0_[7]\
    );
ed_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
     port map (
      AR(0) => \^ar\(0),
      D(0) => \next_state[1]_i_1__0_n_0\,
      E(0) => next_state,
      Q(3) => state(5),
      Q(2 downto 0) => state(2 downto 0),
      busy_reg => \^busy\,
      data0 => data0,
      ff_cur_reg_0 => ed_start_n_0,
      \next_state_reg[0]\ => \next_state[5]_i_5_n_0\,
      \next_state_reg[0]_0\ => \next_state[5]_i_6_n_0\,
      \next_state_reg[0]_1\ => \next_state[5]_i_7_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      send_byte => send_byte
    );
init_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000020"
    )
        port map (
      I0 => \^busy\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => init_flag_reg,
      I5 => init_flag_reg_0,
      O => busy_reg_0
    );
master: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_I2C_master
     port map (
      AR(0) => \^ar\(0),
      Q(6) => \data_reg_n_0_[7]\,
      Q(5) => \data_reg_n_0_[6]\,
      Q(4) => \data_reg_n_0_[5]\,
      Q(3) => \data_reg_n_0_[4]\,
      Q(2) => \data_reg_n_0_[3]\,
      Q(1) => \data_reg_n_0_[2]\,
      Q(0) => \data_reg_n_0_[0]\,
      ff_cur_reg => comm_start_reg_n_0,
      ff_old_reg => ff_old_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      scl => scl,
      sda => sda,
      sda_INST_0_i_1 => sda_INST_0_i_1
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFEE9"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(4),
      I3 => state(3),
      I4 => state(5),
      I5 => state(1),
      O => \next_state[0]_i_1_n_0\
    );
\next_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => state(5),
      I1 => state(0),
      I2 => state(4),
      I3 => state(3),
      I4 => state(2),
      I5 => state(1),
      O => \next_state[1]_i_1__0_n_0\
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => state(2),
      I1 => state(4),
      I2 => state(5),
      I3 => state(3),
      I4 => state(0),
      I5 => state(1),
      O => \next_state[2]_i_1_n_0\
    );
\next_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000200020"
    )
        port map (
      I0 => \^busy\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \next_state_reg[0]_0\,
      I5 => \next_state_reg[0]_1\,
      O => busy_reg_2
    );
\next_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => state(3),
      I1 => state(5),
      I2 => state(4),
      I3 => state(2),
      I4 => state(0),
      I5 => state(1),
      O => \next_state[3]_i_1_n_0\
    );
\next_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => state(4),
      I1 => state(5),
      I2 => state(2),
      I3 => state(3),
      I4 => state(0),
      I5 => state(1),
      O => \next_state[4]_i_1_n_0\
    );
\next_state[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_usec_reg(20),
      I1 => count_usec_reg(19),
      I2 => count_usec_reg(18),
      I3 => count_usec_reg(15),
      O => \next_state[5]_i_10_n_0\
    );
\next_state[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_usec_reg(17),
      I1 => count_usec_reg(11),
      I2 => count_usec_reg(8),
      I3 => count_usec_reg(12),
      I4 => count_usec_reg(10),
      I5 => count_usec_reg(14),
      O => \next_state[5]_i_11_n_0\
    );
\next_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(5),
      I3 => state(4),
      I4 => state(0),
      I5 => state(1),
      O => \next_state[5]_i_2_n_0\
    );
\next_state[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \next_state[5]_i_8_n_0\,
      I1 => \next_state[5]_i_9_n_0\,
      I2 => \next_state[5]_i_10_n_0\,
      I3 => \next_state[5]_i_11_n_0\,
      O => data0
    );
\next_state[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(4),
      I1 => state(5),
      I2 => state(3),
      O => \next_state[5]_i_5_n_0\
    );
\next_state[5]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(5),
      I3 => state(4),
      O => \next_state[5]_i_6_n_0\
    );
\next_state[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => state(4),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      O => \next_state[5]_i_7_n_0\
    );
\next_state[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => count_usec_reg(3),
      I1 => count_usec_reg(4),
      I2 => count_usec_reg(5),
      I3 => count_usec_reg(7),
      I4 => count_usec_reg(6),
      O => \next_state[5]_i_8_n_0\
    );
\next_state[5]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_usec_reg(13),
      I1 => count_usec_reg(9),
      I2 => count_usec_reg(21),
      I3 => count_usec_reg(16),
      O => \next_state[5]_i_9_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      D => \next_state[0]_i_1_n_0\,
      PRE => \^ar\(0),
      Q => \next_state_reg_n_0_[0]\
    );
\next_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[1]_i_1__0_n_0\,
      Q => \next_state_reg_n_0_[1]\
    );
\next_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[2]_i_1_n_0\,
      Q => \next_state_reg_n_0_[2]\
    );
\next_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[3]_i_1_n_0\,
      Q => \next_state_reg_n_0_[3]\
    );
\next_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[4]_i_1_n_0\,
      Q => \next_state_reg_n_0_[4]\
    );
\next_state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^ar\(0),
      D => \next_state[5]_i_2_n_0\,
      Q => \next_state_reg_n_0_[5]\
    );
rs_byte_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rs_byte_reg(1),
      I1 => rs_byte_i_2_n_0,
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(0),
      I5 => data2(0),
      O => \slv_reg1_reg[1]\
    );
rs_byte_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^busy\,
      I1 => send_byte,
      O => rs_byte_i_2_n_0
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_0_sn_1,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[0]_0\(0),
      I1 => \^busy\,
      I2 => sel0(1),
      I3 => rs_byte_reg(0),
      I4 => sel0(0),
      I5 => \s00_axi_rdata[0]_1\(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\send_buffer_byte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000038"
    )
        port map (
      I0 => init_flag_reg,
      I1 => Q(1),
      I2 => Q(2),
      I3 => send_byte,
      I4 => \^busy\,
      I5 => Q(0),
      O => E(0)
    );
send_byte_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF009F06"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => \^busy\,
      I3 => send_byte,
      I4 => Q(0),
      O => \state_reg[2]_0\
    );
\state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \next_state_reg_n_0_[0]\,
      PRE => \^ar\(0),
      Q => state(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[1]\,
      Q => state(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[2]\,
      Q => state(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[3]\,
      Q => state(3)
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[4]\,
      Q => state(4)
    );
\state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \next_state_reg_n_0_[5]\,
      Q => state(5)
    );
usec_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_usec
     port map (
      AR(0) => \^ar\(0),
      O(3) => usec_clk_n_1,
      O(2) => usec_clk_n_2,
      O(1) => usec_clk_n_3,
      O(0) => usec_clk_n_4,
      count_usec_reg(18 downto 0) => count_usec_reg(21 downto 3),
      \count_usec_reg[11]\(3) => usec_clk_n_9,
      \count_usec_reg[11]\(2) => usec_clk_n_10,
      \count_usec_reg[11]\(1) => usec_clk_n_11,
      \count_usec_reg[11]\(0) => usec_clk_n_12,
      \count_usec_reg[15]\(3) => usec_clk_n_13,
      \count_usec_reg[15]\(2) => usec_clk_n_14,
      \count_usec_reg[15]\(1) => usec_clk_n_15,
      \count_usec_reg[15]\(0) => usec_clk_n_16,
      \count_usec_reg[19]\(3) => usec_clk_n_17,
      \count_usec_reg[19]\(2) => usec_clk_n_18,
      \count_usec_reg[19]\(1) => usec_clk_n_19,
      \count_usec_reg[19]\(0) => usec_clk_n_20,
      \count_usec_reg[21]\(1) => usec_clk_n_21,
      \count_usec_reg[21]\(0) => usec_clk_n_22,
      \count_usec_reg[3]_0\ => \count_usec_reg_n_0_[2]\,
      \count_usec_reg[3]_1\ => \count_usec_reg_n_0_[0]\,
      \count_usec_reg[7]\(3) => usec_clk_n_5,
      \count_usec_reg[7]\(2) => usec_clk_n_6,
      \count_usec_reg[7]\(1) => usec_clk_n_7,
      \count_usec_reg[7]\(0) => usec_clk_n_8,
      count_usec_reg_0_sp_1 => comm_start_reg_n_0,
      count_usec_reg_3_sp_1 => \count_usec_reg_n_0_[1]\,
      ff_old_reg => usec_clk_n_0,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_txtlcd_top is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    scl : out STD_LOGIC;
    ff_old_reg : out STD_LOGIC;
    sda : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    sda_INST_0_i_1 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \send_buffer_byte_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_txtlcd_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_txtlcd_top is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal busy : STD_LOGIC;
  signal \cnt_data[10]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_data[5]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_data[9]_i_2_n_0\ : STD_LOGIC;
  signal cnt_data_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt_data_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 3 );
  signal \cnt_sysclk[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[16]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[16]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[16]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[20]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[20]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[20]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[24]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[24]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[24]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[28]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[28]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[28]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt_sysclk_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_sysclk_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sysclk_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sysclk_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sysclk_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sysclk_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sysclk_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sysclk_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_sysclk_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal count_clk_e : STD_LOGIC;
  signal count_clk_e_i_1_n_0 : STD_LOGIC;
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ed_send_n_0 : STD_LOGIC;
  signal init_flag_reg_n_0 : STD_LOGIC;
  signal next_state1 : STD_LOGIC;
  signal \next_state1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \next_state1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \next_state1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \next_state1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \next_state1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \next_state1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \next_state1_carry__0_n_0\ : STD_LOGIC;
  signal \next_state1_carry__0_n_1\ : STD_LOGIC;
  signal \next_state1_carry__0_n_2\ : STD_LOGIC;
  signal \next_state1_carry__0_n_3\ : STD_LOGIC;
  signal \next_state1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \next_state1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \next_state1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \next_state1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \next_state1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \next_state1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \next_state1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \next_state1_carry__1_n_0\ : STD_LOGIC;
  signal \next_state1_carry__1_n_1\ : STD_LOGIC;
  signal \next_state1_carry__1_n_2\ : STD_LOGIC;
  signal \next_state1_carry__1_n_3\ : STD_LOGIC;
  signal \next_state1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \next_state1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \next_state1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \next_state1_carry__2_n_2\ : STD_LOGIC;
  signal \next_state1_carry__2_n_3\ : STD_LOGIC;
  signal next_state1_carry_i_1_n_0 : STD_LOGIC;
  signal next_state1_carry_i_2_n_0 : STD_LOGIC;
  signal next_state1_carry_i_3_n_0 : STD_LOGIC;
  signal next_state1_carry_i_4_n_0 : STD_LOGIC;
  signal next_state1_carry_i_5_n_0 : STD_LOGIC;
  signal next_state1_carry_i_6_n_0 : STD_LOGIC;
  signal next_state1_carry_n_0 : STD_LOGIC;
  signal next_state1_carry_n_1 : STD_LOGIC;
  signal next_state1_carry_n_2 : STD_LOGIC;
  signal next_state1_carry_n_3 : STD_LOGIC;
  signal \next_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal \send_buffer_byte[0]_i_1_n_0\ : STD_LOGIC;
  signal \send_buffer_byte[1]_i_1_n_0\ : STD_LOGIC;
  signal \send_buffer_byte[2]_i_1_n_0\ : STD_LOGIC;
  signal \send_buffer_byte[3]_i_1_n_0\ : STD_LOGIC;
  signal \send_buffer_byte[4]_i_1_n_0\ : STD_LOGIC;
  signal \send_buffer_byte[5]_i_1_n_0\ : STD_LOGIC;
  signal \send_buffer_byte[6]_i_1_n_0\ : STD_LOGIC;
  signal \send_buffer_byte[7]_i_2_n_0\ : STD_LOGIC;
  signal \send_buffer_byte[7]_i_3_n_0\ : STD_LOGIC;
  signal \send_buffer_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal \send_buffer_byte_reg_n_0_[5]\ : STD_LOGIC;
  signal \send_buffer_byte_reg_n_0_[6]\ : STD_LOGIC;
  signal \send_buffer_byte_reg_n_0_[7]\ : STD_LOGIC;
  signal send_byte : STD_LOGIC;
  signal send_byte_a_n_10 : STD_LOGIC;
  signal send_byte_a_n_11 : STD_LOGIC;
  signal send_byte_a_n_12 : STD_LOGIC;
  signal send_byte_a_n_13 : STD_LOGIC;
  signal send_byte_a_n_14 : STD_LOGIC;
  signal send_byte_a_n_15 : STD_LOGIC;
  signal send_byte_a_n_19 : STD_LOGIC;
  signal send_byte_a_n_20 : STD_LOGIC;
  signal send_byte_a_n_21 : STD_LOGIC;
  signal send_byte_a_n_3 : STD_LOGIC;
  signal send_byte_a_n_4 : STD_LOGIC;
  signal send_byte_a_n_5 : STD_LOGIC;
  signal send_byte_a_n_8 : STD_LOGIC;
  signal send_byte_a_n_9 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_sysclk_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_next_state1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_next_state1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_next_state1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of next_state1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \next_state1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \next_state1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \next_state1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \next_state[0]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \next_state[1]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \next_state[2]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \next_state[2]_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \next_state[2]_i_7\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \send_buffer_byte[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \send_buffer_byte[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \send_buffer_byte[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \send_buffer_byte[7]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \send_buffer_byte[7]_i_3\ : label is "soft_lutpair19";
begin
  SR(0) <= \^sr\(0);
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
\cnt_data[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \cnt_data_reg__0\(8),
      I1 => \cnt_data_reg__0\(7),
      I2 => \cnt_data[9]_i_2_n_0\,
      I3 => \cnt_data_reg__0\(6),
      O => \cnt_data[10]_i_3_n_0\
    );
\cnt_data[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \cnt_data_reg__0\(3),
      I1 => cnt_data_reg(0),
      I2 => cnt_data_reg(2),
      I3 => cnt_data_reg(1),
      I4 => \cnt_data_reg__0\(4),
      O => \cnt_data[5]_i_2_n_0\
    );
\cnt_data[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_data_reg__0\(4),
      I1 => cnt_data_reg(1),
      I2 => cnt_data_reg(2),
      I3 => cnt_data_reg(0),
      I4 => \cnt_data_reg__0\(3),
      I5 => \cnt_data_reg__0\(5),
      O => \cnt_data[9]_i_2_n_0\
    );
\cnt_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => \p_0_in__1\(0),
      Q => cnt_data_reg(0)
    );
\cnt_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => \p_0_in__1\(10),
      Q => \cnt_data_reg__0\(10)
    );
\cnt_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => \p_0_in__1\(1),
      Q => cnt_data_reg(1)
    );
\cnt_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => send_byte_a_n_15,
      Q => cnt_data_reg(2)
    );
\cnt_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => send_byte_a_n_14,
      Q => \cnt_data_reg__0\(3)
    );
\cnt_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => send_byte_a_n_13,
      Q => \cnt_data_reg__0\(4)
    );
\cnt_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => send_byte_a_n_12,
      Q => \cnt_data_reg__0\(5)
    );
\cnt_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => send_byte_a_n_11,
      Q => \cnt_data_reg__0\(6)
    );
\cnt_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => send_byte_a_n_10,
      Q => \cnt_data_reg__0\(7)
    );
\cnt_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => send_byte_a_n_9,
      Q => \cnt_data_reg__0\(8)
    );
\cnt_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_20,
      CLR => \^sr\(0),
      D => send_byte_a_n_8,
      Q => \cnt_data_reg__0\(9)
    );
\cnt_sysclk[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(3),
      O => \cnt_sysclk[0]_i_2_n_0\
    );
\cnt_sysclk[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(2),
      O => \cnt_sysclk[0]_i_3_n_0\
    );
\cnt_sysclk[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(1),
      O => \cnt_sysclk[0]_i_4_n_0\
    );
\cnt_sysclk[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => count_clk_e,
      O => \cnt_sysclk[0]_i_5_n_0\
    );
\cnt_sysclk[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(15),
      O => \cnt_sysclk[12]_i_2_n_0\
    );
\cnt_sysclk[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(14),
      O => \cnt_sysclk[12]_i_3_n_0\
    );
\cnt_sysclk[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(13),
      O => \cnt_sysclk[12]_i_4_n_0\
    );
\cnt_sysclk[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(12),
      O => \cnt_sysclk[12]_i_5_n_0\
    );
\cnt_sysclk[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(19),
      O => \cnt_sysclk[16]_i_2_n_0\
    );
\cnt_sysclk[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(18),
      O => \cnt_sysclk[16]_i_3_n_0\
    );
\cnt_sysclk[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(17),
      O => \cnt_sysclk[16]_i_4_n_0\
    );
\cnt_sysclk[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(16),
      O => \cnt_sysclk[16]_i_5_n_0\
    );
\cnt_sysclk[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(23),
      O => \cnt_sysclk[20]_i_2_n_0\
    );
\cnt_sysclk[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(22),
      O => \cnt_sysclk[20]_i_3_n_0\
    );
\cnt_sysclk[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(21),
      O => \cnt_sysclk[20]_i_4_n_0\
    );
\cnt_sysclk[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(20),
      O => \cnt_sysclk[20]_i_5_n_0\
    );
\cnt_sysclk[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(27),
      O => \cnt_sysclk[24]_i_2_n_0\
    );
\cnt_sysclk[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(26),
      O => \cnt_sysclk[24]_i_3_n_0\
    );
\cnt_sysclk[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(25),
      O => \cnt_sysclk[24]_i_4_n_0\
    );
\cnt_sysclk[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(24),
      O => \cnt_sysclk[24]_i_5_n_0\
    );
\cnt_sysclk[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(31),
      O => \cnt_sysclk[28]_i_2_n_0\
    );
\cnt_sysclk[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(30),
      O => \cnt_sysclk[28]_i_3_n_0\
    );
\cnt_sysclk[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(29),
      O => \cnt_sysclk[28]_i_4_n_0\
    );
\cnt_sysclk[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(28),
      O => \cnt_sysclk[28]_i_5_n_0\
    );
\cnt_sysclk[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(7),
      O => \cnt_sysclk[4]_i_2_n_0\
    );
\cnt_sysclk[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(6),
      O => \cnt_sysclk[4]_i_3_n_0\
    );
\cnt_sysclk[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(5),
      O => \cnt_sysclk[4]_i_4_n_0\
    );
\cnt_sysclk[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(4),
      O => \cnt_sysclk[4]_i_5_n_0\
    );
\cnt_sysclk[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(11),
      O => \cnt_sysclk[8]_i_2_n_0\
    );
\cnt_sysclk[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(10),
      O => \cnt_sysclk[8]_i_3_n_0\
    );
\cnt_sysclk[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(9),
      O => \cnt_sysclk[8]_i_4_n_0\
    );
\cnt_sysclk[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_clk_e,
      I1 => cnt_sysclk_reg(8),
      O => \cnt_sysclk[8]_i_5_n_0\
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[0]_i_1_n_7\,
      Q => cnt_sysclk_reg(0)
    );
\cnt_sysclk_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_sysclk_reg[0]_i_1_n_0\,
      CO(2) => \cnt_sysclk_reg[0]_i_1_n_1\,
      CO(1) => \cnt_sysclk_reg[0]_i_1_n_2\,
      CO(0) => \cnt_sysclk_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => count_clk_e,
      O(3) => \cnt_sysclk_reg[0]_i_1_n_4\,
      O(2) => \cnt_sysclk_reg[0]_i_1_n_5\,
      O(1) => \cnt_sysclk_reg[0]_i_1_n_6\,
      O(0) => \cnt_sysclk_reg[0]_i_1_n_7\,
      S(3) => \cnt_sysclk[0]_i_2_n_0\,
      S(2) => \cnt_sysclk[0]_i_3_n_0\,
      S(1) => \cnt_sysclk[0]_i_4_n_0\,
      S(0) => \cnt_sysclk[0]_i_5_n_0\
    );
\cnt_sysclk_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[8]_i_1_n_5\,
      Q => cnt_sysclk_reg(10)
    );
\cnt_sysclk_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[8]_i_1_n_4\,
      Q => cnt_sysclk_reg(11)
    );
\cnt_sysclk_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[12]_i_1_n_7\,
      Q => cnt_sysclk_reg(12)
    );
\cnt_sysclk_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk_reg[8]_i_1_n_0\,
      CO(3) => \cnt_sysclk_reg[12]_i_1_n_0\,
      CO(2) => \cnt_sysclk_reg[12]_i_1_n_1\,
      CO(1) => \cnt_sysclk_reg[12]_i_1_n_2\,
      CO(0) => \cnt_sysclk_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_sysclk_reg[12]_i_1_n_4\,
      O(2) => \cnt_sysclk_reg[12]_i_1_n_5\,
      O(1) => \cnt_sysclk_reg[12]_i_1_n_6\,
      O(0) => \cnt_sysclk_reg[12]_i_1_n_7\,
      S(3) => \cnt_sysclk[12]_i_2_n_0\,
      S(2) => \cnt_sysclk[12]_i_3_n_0\,
      S(1) => \cnt_sysclk[12]_i_4_n_0\,
      S(0) => \cnt_sysclk[12]_i_5_n_0\
    );
\cnt_sysclk_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[12]_i_1_n_6\,
      Q => cnt_sysclk_reg(13)
    );
\cnt_sysclk_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[12]_i_1_n_5\,
      Q => cnt_sysclk_reg(14)
    );
\cnt_sysclk_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[12]_i_1_n_4\,
      Q => cnt_sysclk_reg(15)
    );
\cnt_sysclk_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[16]_i_1_n_7\,
      Q => cnt_sysclk_reg(16)
    );
\cnt_sysclk_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk_reg[12]_i_1_n_0\,
      CO(3) => \cnt_sysclk_reg[16]_i_1_n_0\,
      CO(2) => \cnt_sysclk_reg[16]_i_1_n_1\,
      CO(1) => \cnt_sysclk_reg[16]_i_1_n_2\,
      CO(0) => \cnt_sysclk_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_sysclk_reg[16]_i_1_n_4\,
      O(2) => \cnt_sysclk_reg[16]_i_1_n_5\,
      O(1) => \cnt_sysclk_reg[16]_i_1_n_6\,
      O(0) => \cnt_sysclk_reg[16]_i_1_n_7\,
      S(3) => \cnt_sysclk[16]_i_2_n_0\,
      S(2) => \cnt_sysclk[16]_i_3_n_0\,
      S(1) => \cnt_sysclk[16]_i_4_n_0\,
      S(0) => \cnt_sysclk[16]_i_5_n_0\
    );
\cnt_sysclk_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[16]_i_1_n_6\,
      Q => cnt_sysclk_reg(17)
    );
\cnt_sysclk_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[16]_i_1_n_5\,
      Q => cnt_sysclk_reg(18)
    );
\cnt_sysclk_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[16]_i_1_n_4\,
      Q => cnt_sysclk_reg(19)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[0]_i_1_n_6\,
      Q => cnt_sysclk_reg(1)
    );
\cnt_sysclk_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[20]_i_1_n_7\,
      Q => cnt_sysclk_reg(20)
    );
\cnt_sysclk_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk_reg[16]_i_1_n_0\,
      CO(3) => \cnt_sysclk_reg[20]_i_1_n_0\,
      CO(2) => \cnt_sysclk_reg[20]_i_1_n_1\,
      CO(1) => \cnt_sysclk_reg[20]_i_1_n_2\,
      CO(0) => \cnt_sysclk_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_sysclk_reg[20]_i_1_n_4\,
      O(2) => \cnt_sysclk_reg[20]_i_1_n_5\,
      O(1) => \cnt_sysclk_reg[20]_i_1_n_6\,
      O(0) => \cnt_sysclk_reg[20]_i_1_n_7\,
      S(3) => \cnt_sysclk[20]_i_2_n_0\,
      S(2) => \cnt_sysclk[20]_i_3_n_0\,
      S(1) => \cnt_sysclk[20]_i_4_n_0\,
      S(0) => \cnt_sysclk[20]_i_5_n_0\
    );
\cnt_sysclk_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[20]_i_1_n_6\,
      Q => cnt_sysclk_reg(21)
    );
\cnt_sysclk_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[20]_i_1_n_5\,
      Q => cnt_sysclk_reg(22)
    );
\cnt_sysclk_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[20]_i_1_n_4\,
      Q => cnt_sysclk_reg(23)
    );
\cnt_sysclk_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[24]_i_1_n_7\,
      Q => cnt_sysclk_reg(24)
    );
\cnt_sysclk_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk_reg[20]_i_1_n_0\,
      CO(3) => \cnt_sysclk_reg[24]_i_1_n_0\,
      CO(2) => \cnt_sysclk_reg[24]_i_1_n_1\,
      CO(1) => \cnt_sysclk_reg[24]_i_1_n_2\,
      CO(0) => \cnt_sysclk_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_sysclk_reg[24]_i_1_n_4\,
      O(2) => \cnt_sysclk_reg[24]_i_1_n_5\,
      O(1) => \cnt_sysclk_reg[24]_i_1_n_6\,
      O(0) => \cnt_sysclk_reg[24]_i_1_n_7\,
      S(3) => \cnt_sysclk[24]_i_2_n_0\,
      S(2) => \cnt_sysclk[24]_i_3_n_0\,
      S(1) => \cnt_sysclk[24]_i_4_n_0\,
      S(0) => \cnt_sysclk[24]_i_5_n_0\
    );
\cnt_sysclk_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[24]_i_1_n_6\,
      Q => cnt_sysclk_reg(25)
    );
\cnt_sysclk_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[24]_i_1_n_5\,
      Q => cnt_sysclk_reg(26)
    );
\cnt_sysclk_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[24]_i_1_n_4\,
      Q => cnt_sysclk_reg(27)
    );
\cnt_sysclk_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[28]_i_1_n_7\,
      Q => cnt_sysclk_reg(28)
    );
\cnt_sysclk_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_sysclk_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_sysclk_reg[28]_i_1_n_1\,
      CO(1) => \cnt_sysclk_reg[28]_i_1_n_2\,
      CO(0) => \cnt_sysclk_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_sysclk_reg[28]_i_1_n_4\,
      O(2) => \cnt_sysclk_reg[28]_i_1_n_5\,
      O(1) => \cnt_sysclk_reg[28]_i_1_n_6\,
      O(0) => \cnt_sysclk_reg[28]_i_1_n_7\,
      S(3) => \cnt_sysclk[28]_i_2_n_0\,
      S(2) => \cnt_sysclk[28]_i_3_n_0\,
      S(1) => \cnt_sysclk[28]_i_4_n_0\,
      S(0) => \cnt_sysclk[28]_i_5_n_0\
    );
\cnt_sysclk_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[28]_i_1_n_6\,
      Q => cnt_sysclk_reg(29)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[0]_i_1_n_5\,
      Q => cnt_sysclk_reg(2)
    );
\cnt_sysclk_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[28]_i_1_n_5\,
      Q => cnt_sysclk_reg(30)
    );
\cnt_sysclk_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[28]_i_1_n_4\,
      Q => cnt_sysclk_reg(31)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[0]_i_1_n_4\,
      Q => cnt_sysclk_reg(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[4]_i_1_n_7\,
      Q => cnt_sysclk_reg(4)
    );
\cnt_sysclk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk_reg[0]_i_1_n_0\,
      CO(3) => \cnt_sysclk_reg[4]_i_1_n_0\,
      CO(2) => \cnt_sysclk_reg[4]_i_1_n_1\,
      CO(1) => \cnt_sysclk_reg[4]_i_1_n_2\,
      CO(0) => \cnt_sysclk_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_sysclk_reg[4]_i_1_n_4\,
      O(2) => \cnt_sysclk_reg[4]_i_1_n_5\,
      O(1) => \cnt_sysclk_reg[4]_i_1_n_6\,
      O(0) => \cnt_sysclk_reg[4]_i_1_n_7\,
      S(3) => \cnt_sysclk[4]_i_2_n_0\,
      S(2) => \cnt_sysclk[4]_i_3_n_0\,
      S(1) => \cnt_sysclk[4]_i_4_n_0\,
      S(0) => \cnt_sysclk[4]_i_5_n_0\
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[4]_i_1_n_6\,
      Q => cnt_sysclk_reg(5)
    );
\cnt_sysclk_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[4]_i_1_n_5\,
      Q => cnt_sysclk_reg(6)
    );
\cnt_sysclk_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[4]_i_1_n_4\,
      Q => cnt_sysclk_reg(7)
    );
\cnt_sysclk_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[8]_i_1_n_7\,
      Q => cnt_sysclk_reg(8)
    );
\cnt_sysclk_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk_reg[4]_i_1_n_0\,
      CO(3) => \cnt_sysclk_reg[8]_i_1_n_0\,
      CO(2) => \cnt_sysclk_reg[8]_i_1_n_1\,
      CO(1) => \cnt_sysclk_reg[8]_i_1_n_2\,
      CO(0) => \cnt_sysclk_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_sysclk_reg[8]_i_1_n_4\,
      O(2) => \cnt_sysclk_reg[8]_i_1_n_5\,
      O(1) => \cnt_sysclk_reg[8]_i_1_n_6\,
      O(0) => \cnt_sysclk_reg[8]_i_1_n_7\,
      S(3) => \cnt_sysclk[8]_i_2_n_0\,
      S(2) => \cnt_sysclk[8]_i_3_n_0\,
      S(1) => \cnt_sysclk[8]_i_4_n_0\,
      S(0) => \cnt_sysclk[8]_i_5_n_0\
    );
\cnt_sysclk_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[8]_i_1_n_6\,
      Q => cnt_sysclk_reg(9)
    );
count_clk_e_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => next_state1,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      I4 => init_flag_reg_n_0,
      I5 => count_clk_e,
      O => count_clk_e_i_1_n_0
    );
count_clk_e_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => count_clk_e_i_1_n_0,
      Q => count_clk_e
    );
ed_send: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
     port map (
      AR(0) => \^sr\(0),
      Q(0) => Q(0),
      busy => busy,
      \next_state[2]_i_4_0\ => init_flag_reg_n_0,
      \next_state_reg[0]\(2 downto 0) => state(2 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      \state_reg[0]\ => ed_send_n_0
    );
init_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => send_byte_a_n_5,
      Q => init_flag_reg_n_0
    );
next_state1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => next_state1_carry_n_0,
      CO(2) => next_state1_carry_n_1,
      CO(1) => next_state1_carry_n_2,
      CO(0) => next_state1_carry_n_3,
      CYINIT => next_state1_carry_i_1_n_0,
      DI(3) => next_state1_carry_i_2_n_0,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => NLW_next_state1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => next_state1_carry_i_3_n_0,
      S(2) => next_state1_carry_i_4_n_0,
      S(1) => next_state1_carry_i_5_n_0,
      S(0) => next_state1_carry_i_6_n_0
    );
\next_state1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => next_state1_carry_n_0,
      CO(3) => \next_state1_carry__0_n_0\,
      CO(2) => \next_state1_carry__0_n_1\,
      CO(1) => \next_state1_carry__0_n_2\,
      CO(0) => \next_state1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \next_state1_carry__0_i_1_n_0\,
      DI(2) => '0',
      DI(1) => \next_state1_carry__0_i_2_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_next_state1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \next_state1_carry__0_i_3_n_0\,
      S(2) => \next_state1_carry__0_i_4_n_0\,
      S(1) => \next_state1_carry__0_i_5_n_0\,
      S(0) => \next_state1_carry__0_i_6_n_0\
    );
\next_state1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(17),
      O => \next_state1_carry__0_i_1_n_0\
    );
\next_state1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(12),
      I1 => cnt_sysclk_reg(13),
      O => \next_state1_carry__0_i_2_n_0\
    );
\next_state1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(17),
      I1 => cnt_sysclk_reg(16),
      O => \next_state1_carry__0_i_3_n_0\
    );
\next_state1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(14),
      I1 => cnt_sysclk_reg(15),
      O => \next_state1_carry__0_i_4_n_0\
    );
\next_state1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(12),
      I1 => cnt_sysclk_reg(13),
      O => \next_state1_carry__0_i_5_n_0\
    );
\next_state1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(10),
      I1 => cnt_sysclk_reg(11),
      O => \next_state1_carry__0_i_6_n_0\
    );
\next_state1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state1_carry__0_n_0\,
      CO(3) => \next_state1_carry__1_n_0\,
      CO(2) => \next_state1_carry__1_n_1\,
      CO(1) => \next_state1_carry__1_n_2\,
      CO(0) => \next_state1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \next_state1_carry__1_i_1_n_0\,
      DI(1) => \next_state1_carry__1_i_2_n_0\,
      DI(0) => \next_state1_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_next_state1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \next_state1_carry__1_i_4_n_0\,
      S(2) => \next_state1_carry__1_i_5_n_0\,
      S(1) => \next_state1_carry__1_i_6_n_0\,
      S(0) => \next_state1_carry__1_i_7_n_0\
    );
\next_state1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(22),
      I1 => cnt_sysclk_reg(23),
      O => \next_state1_carry__1_i_1_n_0\
    );
\next_state1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_sysclk_reg(21),
      I1 => cnt_sysclk_reg(20),
      O => \next_state1_carry__1_i_2_n_0\
    );
\next_state1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(19),
      O => \next_state1_carry__1_i_3_n_0\
    );
\next_state1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(24),
      I1 => cnt_sysclk_reg(25),
      O => \next_state1_carry__1_i_4_n_0\
    );
\next_state1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(22),
      I1 => cnt_sysclk_reg(23),
      O => \next_state1_carry__1_i_5_n_0\
    );
\next_state1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(20),
      I1 => cnt_sysclk_reg(21),
      O => \next_state1_carry__1_i_6_n_0\
    );
\next_state1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(19),
      I1 => cnt_sysclk_reg(18),
      O => \next_state1_carry__1_i_7_n_0\
    );
\next_state1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_state1_carry__1_n_0\,
      CO(3) => \NLW_next_state1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => next_state1,
      CO(1) => \next_state1_carry__2_n_2\,
      CO(0) => \next_state1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => cnt_sysclk_reg(31),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_next_state1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \next_state1_carry__2_i_1_n_0\,
      S(1) => \next_state1_carry__2_i_2_n_0\,
      S(0) => \next_state1_carry__2_i_3_n_0\
    );
\next_state1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(30),
      I1 => cnt_sysclk_reg(31),
      O => \next_state1_carry__2_i_1_n_0\
    );
\next_state1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(28),
      I1 => cnt_sysclk_reg(29),
      O => \next_state1_carry__2_i_2_n_0\
    );
\next_state1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(26),
      I1 => cnt_sysclk_reg(27),
      O => \next_state1_carry__2_i_3_n_0\
    );
next_state1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => cnt_sysclk_reg(1),
      O => next_state1_carry_i_1_n_0
    );
next_state1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(9),
      O => next_state1_carry_i_2_n_0
    );
next_state1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(9),
      I1 => cnt_sysclk_reg(8),
      O => next_state1_carry_i_3_n_0
    );
next_state1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(6),
      I1 => cnt_sysclk_reg(7),
      O => next_state1_carry_i_4_n_0
    );
next_state1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(4),
      I1 => cnt_sysclk_reg(5),
      O => next_state1_carry_i_5_n_0
    );
next_state1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      O => next_state1_carry_i_6_n_0
    );
\next_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABAAABA8A8AAA8"
    )
        port map (
      I0 => \next_state[0]_i_2_n_0\,
      I1 => send_byte_a_n_21,
      I2 => ed_send_n_0,
      I3 => \next_state[2]_i_5_n_0\,
      I4 => next_state1,
      I5 => \next_state_reg_n_0_[0]\,
      O => \next_state[0]_i_1__0_n_0\
    );
\next_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => \next_state[0]_i_2_n_0\
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1F1F1F1E0E0F0E0"
    )
        port map (
      I0 => send_byte_a_n_21,
      I1 => ed_send_n_0,
      I2 => \next_state[1]_i_2_n_0\,
      I3 => state(0),
      I4 => next_state1,
      I5 => \next_state_reg_n_0_[1]\,
      O => \next_state[1]_i_1_n_0\
    );
\next_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => init_flag_reg_n_0,
      I1 => state(1),
      I2 => state(2),
      O => \next_state[1]_i_2_n_0\
    );
\next_state[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABAAABA8A8AAA8"
    )
        port map (
      I0 => \next_state[2]_i_2_n_0\,
      I1 => send_byte_a_n_21,
      I2 => ed_send_n_0,
      I3 => \next_state[2]_i_5_n_0\,
      I4 => next_state1,
      I5 => \next_state_reg_n_0_[2]\,
      O => \next_state[2]_i_1__0_n_0\
    );
\next_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => init_flag_reg_n_0,
      I1 => state(1),
      I2 => state(2),
      O => \next_state[2]_i_2_n_0\
    );
\next_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => init_flag_reg_n_0,
      O => \next_state[2]_i_5_n_0\
    );
\next_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => cnt_data_reg(2),
      I1 => cnt_data_reg(1),
      I2 => \cnt_data_reg__0\(5),
      I3 => \cnt_data_reg__0\(9),
      I4 => \cnt_data_reg__0\(8),
      I5 => \cnt_data_reg__0\(10),
      O => \next_state[2]_i_6_n_0\
    );
\next_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \cnt_data_reg__0\(7),
      I1 => \cnt_data_reg__0\(6),
      I2 => \cnt_data_reg__0\(4),
      I3 => \cnt_data_reg__0\(3),
      O => \next_state[2]_i_7_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \next_state[0]_i_1__0_n_0\,
      PRE => \^sr\(0),
      Q => \next_state_reg_n_0_[0]\
    );
\next_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state[1]_i_1_n_0\,
      Q => \next_state_reg_n_0_[1]\
    );
\next_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state[2]_i_1__0_n_0\,
      Q => \next_state_reg_n_0_[2]\
    );
rs_byte_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => send_byte_a_n_4,
      Q => data2(0)
    );
\send_buffer_byte[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C3AA"
    )
        port map (
      I0 => \send_buffer_byte_reg[7]_0\(0),
      I1 => cnt_data_reg(0),
      I2 => cnt_data_reg(1),
      I3 => state(1),
      O => \send_buffer_byte[0]_i_1_n_0\
    );
\send_buffer_byte[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABFFAB00"
    )
        port map (
      I0 => cnt_data_reg(0),
      I1 => cnt_data_reg(2),
      I2 => cnt_data_reg(1),
      I3 => state(1),
      I4 => \send_buffer_byte_reg[7]_0\(1),
      O => \send_buffer_byte[1]_i_1_n_0\
    );
\send_buffer_byte[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CACACA0A"
    )
        port map (
      I0 => \send_buffer_byte_reg[7]_0\(2),
      I1 => cnt_data_reg(0),
      I2 => state(1),
      I3 => cnt_data_reg(1),
      I4 => cnt_data_reg(2),
      O => \send_buffer_byte[2]_i_1_n_0\
    );
\send_buffer_byte[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_data_reg(1),
      I1 => state(1),
      I2 => \send_buffer_byte_reg[7]_0\(3),
      O => \send_buffer_byte[3]_i_1_n_0\
    );
\send_buffer_byte[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => cnt_data_reg(1),
      I1 => cnt_data_reg(2),
      I2 => state(1),
      I3 => \send_buffer_byte_reg[7]_0\(4),
      O => \send_buffer_byte[4]_i_1_n_0\
    );
\send_buffer_byte[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FF0700"
    )
        port map (
      I0 => cnt_data_reg(1),
      I1 => cnt_data_reg(0),
      I2 => cnt_data_reg(2),
      I3 => state(1),
      I4 => \send_buffer_byte_reg[7]_0\(5),
      O => \send_buffer_byte[5]_i_1_n_0\
    );
\send_buffer_byte[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(2),
      I1 => \send_buffer_byte_reg[7]_0\(6),
      O => \send_buffer_byte[6]_i_1_n_0\
    );
\send_buffer_byte[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(2),
      I1 => \send_buffer_byte_reg[7]_0\(7),
      O => \send_buffer_byte[7]_i_2_n_0\
    );
\send_buffer_byte[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \cnt_data_reg__0\(3),
      I1 => \cnt_data_reg__0\(4),
      I2 => \cnt_data_reg__0\(6),
      I3 => \cnt_data_reg__0\(7),
      I4 => \next_state[2]_i_6_n_0\,
      O => \send_buffer_byte[7]_i_3_n_0\
    );
\send_buffer_byte_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_19,
      CLR => \^sr\(0),
      D => \send_buffer_byte[0]_i_1_n_0\,
      Q => data2(4)
    );
\send_buffer_byte_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_19,
      CLR => \^sr\(0),
      D => \send_buffer_byte[1]_i_1_n_0\,
      Q => data2(5)
    );
\send_buffer_byte_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_19,
      CLR => \^sr\(0),
      D => \send_buffer_byte[2]_i_1_n_0\,
      Q => data2(6)
    );
\send_buffer_byte_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_19,
      CLR => \^sr\(0),
      D => \send_buffer_byte[3]_i_1_n_0\,
      Q => data2(7)
    );
\send_buffer_byte_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_19,
      CLR => \^sr\(0),
      D => \send_buffer_byte[4]_i_1_n_0\,
      Q => \send_buffer_byte_reg_n_0_[4]\
    );
\send_buffer_byte_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_19,
      CLR => \^sr\(0),
      D => \send_buffer_byte[5]_i_1_n_0\,
      Q => \send_buffer_byte_reg_n_0_[5]\
    );
\send_buffer_byte_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_19,
      CLR => \^sr\(0),
      D => \send_buffer_byte[6]_i_1_n_0\,
      Q => \send_buffer_byte_reg_n_0_[6]\
    );
\send_buffer_byte_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => send_byte_a_n_19,
      CLR => \^sr\(0),
      D => \send_buffer_byte[7]_i_2_n_0\,
      Q => \send_buffer_byte_reg_n_0_[7]\
    );
send_byte_a: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_lcd_send_byte
     port map (
      AR(0) => \^sr\(0),
      D(10) => \p_0_in__1\(10),
      D(9) => send_byte_a_n_8,
      D(8) => send_byte_a_n_9,
      D(7) => send_byte_a_n_10,
      D(6) => send_byte_a_n_11,
      D(5) => send_byte_a_n_12,
      D(4) => send_byte_a_n_13,
      D(3) => send_byte_a_n_14,
      D(2) => send_byte_a_n_15,
      D(1 downto 0) => \p_0_in__1\(1 downto 0),
      E(0) => send_byte_a_n_19,
      Q(2 downto 0) => state(2 downto 0),
      busy => busy,
      busy_reg_0 => send_byte_a_n_5,
      busy_reg_1(0) => send_byte_a_n_20,
      busy_reg_2 => send_byte_a_n_21,
      \cnt_data_reg[10]\(10 downto 3) => \cnt_data_reg__0\(10 downto 3),
      \cnt_data_reg[10]\(2 downto 0) => cnt_data_reg(2 downto 0),
      \cnt_data_reg[10]_0\ => \cnt_data[10]_i_3_n_0\,
      \cnt_data_reg[5]\ => \cnt_data[5]_i_2_n_0\,
      \cnt_data_reg[6]\ => \cnt_data[9]_i_2_n_0\,
      data2(4 downto 1) => data2(7 downto 4),
      data2(0) => data2(0),
      \data_reg[7]_0\(3) => \send_buffer_byte_reg_n_0_[7]\,
      \data_reg[7]_0\(2) => \send_buffer_byte_reg_n_0_[6]\,
      \data_reg[7]_0\(1) => \send_buffer_byte_reg_n_0_[5]\,
      \data_reg[7]_0\(0) => \send_buffer_byte_reg_n_0_[4]\,
      ff_old_reg => ff_old_reg,
      init_flag_reg => \send_buffer_byte[7]_i_3_n_0\,
      init_flag_reg_0 => init_flag_reg_n_0,
      \next_state_reg[0]_0\ => \next_state[2]_i_6_n_0\,
      \next_state_reg[0]_1\ => \next_state[2]_i_7_n_0\,
      rs_byte_reg(1 downto 0) => Q(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(0) => s00_axi_rdata(0),
      \s00_axi_rdata[0]_0\(0) => \s00_axi_rdata[0]_0\(0),
      \s00_axi_rdata[0]_1\(0) => \send_buffer_byte_reg[7]_0\(0),
      s00_axi_rdata_0_sp_1 => s00_axi_rdata_0_sn_1,
      scl => scl,
      sda => sda,
      sda_INST_0_i_1 => sda_INST_0_i_1,
      sel0(2 downto 0) => sel0(2 downto 0),
      send_byte => send_byte,
      \slv_reg1_reg[1]\ => send_byte_a_n_4,
      \state_reg[2]_0\ => send_byte_a_n_3
    );
send_byte_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => send_byte_a_n_3,
      Q => send_byte
    );
\state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \next_state_reg_n_0_[0]\,
      PRE => \^sr\(0),
      Q => state(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state_reg_n_0_[1]\,
      Q => state(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state_reg_n_0_[2]\,
      Q => state(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_iic_cntr_slave_lite_v1_0_S00_AXI is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    scl : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    ff_old_reg : out STD_LOGIC;
    sda : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    sda_INST_0_i_1 : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_iic_cntr_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_iic_cntr_slave_lite_v1_0_S00_AXI is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal rs : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair24";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_4\ : label is "soft_lutpair26";
begin
  AR(0) <= \^ar\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF8888FFFF"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF0000"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_rready,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => \^ar\(0)
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => \^ar\(0)
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => \^ar\(0)
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => \^ar\(0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => s00_axi_aresetn,
      I3 => state_read(0),
      I4 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => s00_axi_aresetn,
      I3 => state_read(0),
      I4 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => s00_axi_aresetn,
      I3 => state_read(0),
      I4 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2FFAFAFAF"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(1),
      I3 => \^axi_rvalid_reg_0\,
      I4 => s00_axi_rready,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => \^ar\(0)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => state_write(1),
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => \^ar\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => \^ar\(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => \^ar\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCCCF4F"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(0),
      I3 => s00_axi_wvalid,
      I4 => state_write(1),
      O => axi_awready_i_1_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^axi_awready_reg_0\,
      R => \^ar\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAF2AA22F2AAF2AA"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      I2 => s00_axi_wvalid,
      I3 => state_write(1),
      I4 => \axi_awready0__0\,
      I5 => state_write(0),
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => \^ar\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000FF00FF80FF80"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(0),
      I3 => \^axi_rvalid_reg_0\,
      I4 => s00_axi_rready,
      I5 => state_read(1),
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => \^ar\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => \^ar\(0)
    );
iic_lcd: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_txtlcd_top
     port map (
      Q(1) => rs,
      Q(0) => \slv_reg1_reg_n_0_[0]\,
      SR(0) => \^ar\(0),
      ff_old_reg => ff_old_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(0) => s00_axi_rdata(0),
      \s00_axi_rdata[0]_0\(0) => slv_reg3(0),
      s00_axi_rdata_0_sp_1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      scl => scl,
      sda => sda,
      sda_INST_0_i_1 => sda_INST_0_i_1,
      sel0(2 downto 0) => sel0(2 downto 0),
      \send_buffer_byte_reg[7]_0\(7 downto 0) => slv_reg0(7 downto 0)
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(0),
      I1 => sel0(1),
      I2 => slv_reg5(0),
      I3 => sel0(0),
      I4 => slv_reg4(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10),
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[10]\,
      I3 => sel0(0),
      I4 => slv_reg0(10),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(10),
      I1 => sel0(1),
      I2 => slv_reg5(10),
      I3 => sel0(0),
      I4 => slv_reg4(10),
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(11),
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[11]\,
      I3 => sel0(0),
      I4 => slv_reg0(11),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(11),
      I1 => sel0(1),
      I2 => slv_reg5(11),
      I3 => sel0(0),
      I4 => slv_reg4(11),
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(12),
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[12]\,
      I3 => sel0(0),
      I4 => slv_reg0(12),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => slv_reg6(12),
      I1 => sel0(1),
      I2 => slv_reg5(12),
      I3 => sel0(0),
      I4 => slv_reg4(12),
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(13),
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[13]\,
      I3 => sel0(0),
      I4 => slv_reg0(13),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(13),
      I1 => sel0(1),
      I2 => slv_reg5(13),
      I3 => sel0(0),
      I4 => slv_reg4(13),
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[14]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(14),
      S => sel0(2)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[14]\,
      I3 => sel0(0),
      I4 => slv_reg0(14),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(14),
      I1 => sel0(1),
      I2 => slv_reg5(14),
      I3 => sel0(0),
      I4 => slv_reg4(14),
      O => \s00_axi_rdata[14]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[15]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(15),
      S => sel0(2)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[15]\,
      I3 => sel0(0),
      I4 => slv_reg0(15),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(15),
      I1 => sel0(1),
      I2 => slv_reg5(15),
      I3 => sel0(0),
      I4 => slv_reg4(15),
      O => \s00_axi_rdata[15]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(16),
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[16]\,
      I3 => sel0(0),
      I4 => slv_reg0(16),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(16),
      I1 => sel0(1),
      I2 => slv_reg5(16),
      I3 => sel0(0),
      I4 => slv_reg4(16),
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(17),
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[17]\,
      I3 => sel0(0),
      I4 => slv_reg0(17),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(17),
      I1 => sel0(1),
      I2 => slv_reg5(17),
      I3 => sel0(0),
      I4 => slv_reg4(17),
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(18),
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[18]\,
      I3 => sel0(0),
      I4 => slv_reg0(18),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(18),
      I1 => sel0(1),
      I2 => slv_reg5(18),
      I3 => sel0(0),
      I4 => slv_reg4(18),
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(19),
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[19]\,
      I3 => sel0(0),
      I4 => slv_reg0(19),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(19),
      I1 => sel0(1),
      I2 => slv_reg5(19),
      I3 => sel0(0),
      I4 => slv_reg4(19),
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => sel0(1),
      I2 => rs,
      I3 => sel0(0),
      I4 => slv_reg0(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(1),
      I1 => sel0(1),
      I2 => slv_reg5(1),
      I3 => sel0(0),
      I4 => slv_reg4(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(20),
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[20]\,
      I3 => sel0(0),
      I4 => slv_reg0(20),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(20),
      I1 => sel0(1),
      I2 => slv_reg5(20),
      I3 => sel0(0),
      I4 => slv_reg4(20),
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(21),
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[21]\,
      I3 => sel0(0),
      I4 => slv_reg0(21),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(21),
      I1 => sel0(1),
      I2 => slv_reg5(21),
      I3 => sel0(0),
      I4 => slv_reg4(21),
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[22]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(22),
      S => sel0(2)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[22]\,
      I3 => sel0(0),
      I4 => slv_reg0(22),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(22),
      I1 => sel0(1),
      I2 => slv_reg5(22),
      I3 => sel0(0),
      I4 => slv_reg4(22),
      O => \s00_axi_rdata[22]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[23]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(23),
      S => sel0(2)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[23]\,
      I3 => sel0(0),
      I4 => slv_reg0(23),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(23),
      I1 => sel0(1),
      I2 => slv_reg5(23),
      I3 => sel0(0),
      I4 => slv_reg4(23),
      O => \s00_axi_rdata[23]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[24]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(24),
      S => sel0(2)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[24]\,
      I3 => sel0(0),
      I4 => slv_reg0(24),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(24),
      I1 => sel0(1),
      I2 => slv_reg5(24),
      I3 => sel0(0),
      I4 => slv_reg4(24),
      O => \s00_axi_rdata[24]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[25]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(25),
      S => sel0(2)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[25]\,
      I3 => sel0(0),
      I4 => slv_reg0(25),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(25),
      I1 => sel0(1),
      I2 => slv_reg5(25),
      I3 => sel0(0),
      I4 => slv_reg4(25),
      O => \s00_axi_rdata[25]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[26]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(26),
      S => sel0(2)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[26]\,
      I3 => sel0(0),
      I4 => slv_reg0(26),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(26),
      I1 => sel0(1),
      I2 => slv_reg5(26),
      I3 => sel0(0),
      I4 => slv_reg4(26),
      O => \s00_axi_rdata[26]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[27]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(27),
      S => sel0(2)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[27]\,
      I3 => sel0(0),
      I4 => slv_reg0(27),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(27),
      I1 => sel0(1),
      I2 => slv_reg5(27),
      I3 => sel0(0),
      I4 => slv_reg4(27),
      O => \s00_axi_rdata[27]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[28]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(28),
      S => sel0(2)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[28]\,
      I3 => sel0(0),
      I4 => slv_reg0(28),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(28),
      I1 => sel0(1),
      I2 => slv_reg5(28),
      I3 => sel0(0),
      I4 => slv_reg4(28),
      O => \s00_axi_rdata[28]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[29]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(29),
      S => sel0(2)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[29]\,
      I3 => sel0(0),
      I4 => slv_reg0(29),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(29),
      I1 => sel0(1),
      I2 => slv_reg5(29),
      I3 => sel0(0),
      I4 => slv_reg4(29),
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[2]\,
      I3 => sel0(0),
      I4 => slv_reg0(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => slv_reg6(2),
      I1 => sel0(1),
      I2 => slv_reg5(2),
      I3 => sel0(0),
      I4 => slv_reg4(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(30),
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[30]\,
      I3 => sel0(0),
      I4 => slv_reg0(30),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(30),
      I1 => sel0(1),
      I2 => slv_reg5(30),
      I3 => sel0(0),
      I4 => slv_reg4(30),
      O => \s00_axi_rdata[30]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[31]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(31),
      S => sel0(2)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[31]\,
      I3 => sel0(0),
      I4 => slv_reg0(31),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(31),
      I1 => sel0(1),
      I2 => slv_reg5(31),
      I3 => sel0(0),
      I4 => slv_reg4(31),
      O => \s00_axi_rdata[31]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[3]\,
      I3 => sel0(0),
      I4 => slv_reg0(3),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(3),
      I1 => sel0(1),
      I2 => slv_reg5(3),
      I3 => sel0(0),
      I4 => slv_reg4(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[4]\,
      I3 => sel0(0),
      I4 => slv_reg0(4),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => slv_reg6(4),
      I1 => sel0(1),
      I2 => slv_reg5(4),
      I3 => sel0(0),
      I4 => slv_reg4(4),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[5]\,
      I3 => sel0(0),
      I4 => slv_reg0(5),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => slv_reg6(5),
      I1 => sel0(1),
      I2 => slv_reg5(5),
      I3 => sel0(0),
      I4 => slv_reg4(5),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[6]\,
      I3 => sel0(0),
      I4 => slv_reg0(6),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(6),
      I1 => sel0(1),
      I2 => slv_reg5(6),
      I3 => sel0(0),
      I4 => slv_reg4(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[7]\,
      I3 => sel0(0),
      I4 => slv_reg0(7),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(7),
      I1 => sel0(1),
      I2 => slv_reg5(7),
      I3 => sel0(0),
      I4 => slv_reg4(7),
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(8),
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[8]\,
      I3 => sel0(0),
      I4 => slv_reg0(8),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => slv_reg6(8),
      I1 => sel0(1),
      I2 => slv_reg5(8),
      I3 => sel0(0),
      I4 => slv_reg4(8),
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(9),
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[9]\,
      I3 => sel0(0),
      I4 => slv_reg0(9),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => slv_reg6(9),
      I1 => sel0(1),
      I2 => slv_reg5(9),
      I3 => sel0(0),
      I4 => slv_reg4(9),
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001510000"
    )
        port map (
      I0 => \slv_reg1[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wvalid,
      I5 => \slv_reg1[31]_i_4_n_0\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => \^ar\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => \^ar\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => \^ar\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => \^ar\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => \^ar\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => \^ar\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => \^ar\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => \^ar\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => \^ar\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => \^ar\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => \^ar\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => \^ar\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => \^ar\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => \^ar\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => \^ar\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => \^ar\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => \^ar\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => \^ar\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => \^ar\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => \^ar\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => \^ar\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => \^ar\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => \^ar\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => \^ar\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => \^ar\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => \^ar\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => \^ar\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => \^ar\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => \^ar\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => \^ar\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => \^ar\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => \^ar\(0)
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008A80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \slv_reg1[31]_i_3_n_0\,
      I5 => \slv_reg1[31]_i_4_n_0\,
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[31]_i_3_n_0\
    );
\slv_reg1[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg1[31]_i_4_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg1[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => rs,
      R => \^ar\(0)
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => \^ar\(0)
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => \^ar\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A800000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(0),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \slv_reg1[31]_i_3_n_0\,
      I5 => \slv_reg1[31]_i_4_n_0\,
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => \^ar\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => \^ar\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => \^ar\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => \^ar\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => \^ar\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => \^ar\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => \^ar\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => \^ar\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => \^ar\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => \^ar\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => \^ar\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => \^ar\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => \^ar\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => \^ar\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => \^ar\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => \^ar\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => \^ar\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => \^ar\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => \^ar\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => \^ar\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => \^ar\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => \^ar\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => \^ar\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => \^ar\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => \^ar\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => \^ar\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => \^ar\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => \^ar\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => \^ar\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => \^ar\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => \^ar\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => \^ar\(0)
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151000000000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => s00_axi_wvalid,
      I5 => \slv_reg1[31]_i_4_n_0\,
      O => \slv_reg4[31]_i_2_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg4[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => \^ar\(0)
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => \^ar\(0)
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => \^ar\(0)
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => \^ar\(0)
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => \^ar\(0)
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => \^ar\(0)
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => \^ar\(0)
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => \^ar\(0)
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => \^ar\(0)
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => \^ar\(0)
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => \^ar\(0)
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => \^ar\(0)
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => \^ar\(0)
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => \^ar\(0)
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => \^ar\(0)
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => \^ar\(0)
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => \^ar\(0)
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => \^ar\(0)
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => \^ar\(0)
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => \^ar\(0)
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => \^ar\(0)
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => \^ar\(0)
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => \^ar\(0)
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => \^ar\(0)
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => \^ar\(0)
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => \^ar\(0)
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => \^ar\(0)
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => \^ar\(0)
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => \^ar\(0)
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => \^ar\(0)
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => \^ar\(0)
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => \^ar\(0)
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg5[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg5[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg5[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404000000000000"
    )
        port map (
      I0 => \slv_reg1[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => \slv_reg1[31]_i_4_n_0\,
      I5 => s00_axi_wvalid,
      O => \slv_reg5[31]_i_2_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg5[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => \^ar\(0)
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => \^ar\(0)
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => \^ar\(0)
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => \^ar\(0)
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => \^ar\(0)
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => \^ar\(0)
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => \^ar\(0)
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => \^ar\(0)
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => \^ar\(0)
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => \^ar\(0)
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => \^ar\(0)
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => \^ar\(0)
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => \^ar\(0)
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => \^ar\(0)
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => \^ar\(0)
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => \^ar\(0)
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => \^ar\(0)
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => \^ar\(0)
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => \^ar\(0)
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => \^ar\(0)
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => \^ar\(0)
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => \^ar\(0)
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => \^ar\(0)
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => \^ar\(0)
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => \^ar\(0)
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => \^ar\(0)
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => \^ar\(0)
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => \^ar\(0)
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => \^ar\(0)
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => \^ar\(0)
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => \^ar\(0)
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => \^ar\(0)
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D00000000000000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_awaddr(0),
      I3 => \slv_reg1[31]_i_3_n_0\,
      I4 => \slv_reg1[31]_i_4_n_0\,
      I5 => s00_axi_wvalid,
      O => \slv_reg6[31]_i_2_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg6[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => \^ar\(0)
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => \^ar\(0)
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => \^ar\(0)
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => \^ar\(0)
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => \^ar\(0)
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => \^ar\(0)
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => \^ar\(0)
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => \^ar\(0)
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => \^ar\(0)
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => \^ar\(0)
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => \^ar\(0)
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => \^ar\(0)
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => \^ar\(0)
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => \^ar\(0)
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => \^ar\(0)
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => \^ar\(0)
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => \^ar\(0)
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => \^ar\(0)
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => \^ar\(0)
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => \^ar\(0)
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => \^ar\(0)
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => \^ar\(0)
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => \^ar\(0)
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => \^ar\(0)
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => \^ar\(0)
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => \^ar\(0)
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => \^ar\(0)
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => \^ar\(0)
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => \^ar\(0)
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => \^ar\(0)
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => \^ar\(0)
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => \^ar\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_iic_cntr is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    scl : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    ff_old_reg : out STD_LOGIC;
    sda : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    sda_INST_0_i_1 : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_iic_cntr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_iic_cntr is
begin
myip_iic_cntr_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_iic_cntr_slave_lite_v1_0_S00_AXI
     port map (
      AR(0) => SR(0),
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      ff_old_reg => ff_old_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl => scl,
      sda => sda,
      sda_INST_0_i_1 => sda_INST_0_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    scl : out STD_LOGIC;
    sda : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_multiwatch_lcd_myip_iic_cntr_1_0,myip_iic_cntr,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_iic_cntr,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_7 : STD_LOGIC;
  signal sda_INST_0_i_1_n_0 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_iic_cntr
     port map (
      SR(0) => inst_n_0,
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      ff_old_reg => inst_n_7,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      scl => scl,
      sda => sda,
      sda_INST_0_i_1 => sda_INST_0_i_1_n_0
    );
sda_INST_0_i_1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => inst_n_7,
      PRE => inst_n_0,
      Q => sda_INST_0_i_1_n_0
    );
end STRUCTURE;
