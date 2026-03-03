-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed Jan 28 19:22:28 2026
-- Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_multiwatch_lcd_myip_stopwatch_0_0_sim_netlist.vhdl
-- Design      : soc_multiwatch_lcd_myip_stopwatch_0_0
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
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \sec_reg[4]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ff_old_reg_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \sec_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \csec_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    start_stop : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    lap_running_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_reg[0]\ : in STD_LOGIC;
    \csec_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \csec_reg[6]_1\ : in STD_LOGIC;
    \csec_reg[4]\ : in STD_LOGIC;
    \sec_reg[2]\ : in STD_LOGIC;
    \sec_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \sec_reg[5]_1\ : in STD_LOGIC;
    cnt_sysclk0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \cnt_sysclk_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \csec[4]_i_3_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_sysclk[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_sysclk[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_sysclk[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_sysclk[13]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_sysclk[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_sysclk[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_sysclk[16]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_sysclk[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_sysclk[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_sysclk[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_sysclk[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_sysclk[20]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_sysclk[21]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_sysclk[22]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_sysclk[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_sysclk[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_sysclk[25]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_sysclk[26]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_sysclk[27]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_sysclk[28]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_sysclk[29]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_sysclk[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_sysclk[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_sysclk[31]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt_sysclk[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt_sysclk[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_sysclk[4]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_sysclk[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_sysclk[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_sysclk[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_sysclk[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_sysclk[9]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \csec[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \csec[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \csec[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \csec[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \csec[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lap_csec[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lap_csec[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \lap_csec[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \lap_csec[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \lap_csec[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \lap_csec[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lap_sec[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \lap_sec[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lap_sec[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \lap_sec[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lap_sec[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sec[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sec[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sec[5]_i_1\ : label is "soft_lutpair0";
begin
  AR(0) <= \^ar\(0);
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\cnt_sysclk[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => CO(0),
      I1 => \cnt_sysclk_reg[0]\(0),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(0)
    );
\cnt_sysclk[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(9),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(10)
    );
\cnt_sysclk[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(10),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(11)
    );
\cnt_sysclk[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(11),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(12)
    );
\cnt_sysclk[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(12),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(13)
    );
\cnt_sysclk[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(13),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(14)
    );
\cnt_sysclk[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(14),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(15)
    );
\cnt_sysclk[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(15),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(16)
    );
\cnt_sysclk[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(16),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(17)
    );
\cnt_sysclk[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(17),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(18)
    );
\cnt_sysclk[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(18),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(19)
    );
\cnt_sysclk[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(0),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(1)
    );
\cnt_sysclk[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(19),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(20)
    );
\cnt_sysclk[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(20),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(21)
    );
\cnt_sysclk[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(21),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(22)
    );
\cnt_sysclk[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(22),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(23)
    );
\cnt_sysclk[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(23),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(24)
    );
\cnt_sysclk[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(24),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(25)
    );
\cnt_sysclk[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(25),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(26)
    );
\cnt_sysclk[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(26),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(27)
    );
\cnt_sysclk[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(27),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(28)
    );
\cnt_sysclk[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(28),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(29)
    );
\cnt_sysclk[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(1),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(2)
    );
\cnt_sysclk[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(29),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(30)
    );
\cnt_sysclk[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => start_stop,
      O => E(0)
    );
\cnt_sysclk[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(30),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(31)
    );
\cnt_sysclk[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(2),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(3)
    );
\cnt_sysclk[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(3),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(4)
    );
\cnt_sysclk[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(4),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(5)
    );
\cnt_sysclk[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(5),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(6)
    );
\cnt_sysclk[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(6),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(7)
    );
\cnt_sysclk[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(7),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(8)
    );
\cnt_sysclk[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => CO(0),
      I1 => cnt_sysclk0(8),
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => ff_old_reg_4(9)
    );
\csec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => \csec_reg[6]_0\(0),
      I1 => \sec_reg[0]\,
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => D(0)
    );
\csec[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14001414"
    )
        port map (
      I0 => \sec_reg[0]\,
      I1 => \csec_reg[6]_0\(0),
      I2 => \csec_reg[6]_0\(1),
      I3 => \^p_0_in\(0),
      I4 => \^p_0_in\(1),
      O => D(1)
    );
\csec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540000015401540"
    )
        port map (
      I0 => \sec_reg[0]\,
      I1 => \csec_reg[6]_0\(0),
      I2 => \csec_reg[6]_0\(1),
      I3 => \csec_reg[6]_0\(2),
      I4 => \^p_0_in\(0),
      I5 => \^p_0_in\(1),
      O => D(2)
    );
\csec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554000"
    )
        port map (
      I0 => \sec_reg[0]\,
      I1 => \csec_reg[6]_0\(1),
      I2 => \csec_reg[6]_0\(0),
      I3 => \csec_reg[6]_0\(2),
      I4 => \csec_reg[6]_0\(3),
      I5 => \csec[4]_i_3_n_0\,
      O => D(3)
    );
\csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554000"
    )
        port map (
      I0 => \sec_reg[0]\,
      I1 => \csec_reg[6]_0\(2),
      I2 => \csec_reg[4]\,
      I3 => \csec_reg[6]_0\(3),
      I4 => \csec_reg[6]_0\(4),
      I5 => \csec[4]_i_3_n_0\,
      O => D(4)
    );
\csec[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => \csec[4]_i_3_n_0\
    );
\csec[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14001414"
    )
        port map (
      I0 => \sec_reg[0]\,
      I1 => \csec_reg[6]_1\,
      I2 => \csec_reg[6]_0\(5),
      I3 => \^p_0_in\(0),
      I4 => \^p_0_in\(1),
      O => D(5)
    );
\csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => CO(0),
      I3 => start_stop,
      O => ff_old_reg_1(0)
    );
\csec[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540000015401540"
    )
        port map (
      I0 => \sec_reg[0]\,
      I1 => \csec_reg[6]_1\,
      I2 => \csec_reg[6]_0\(5),
      I3 => \csec_reg[6]_0\(6),
      I4 => \^p_0_in\(0),
      I5 => \^p_0_in\(1),
      O => D(6)
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => Q(0),
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
\lap_csec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \csec_reg[6]_0\(0),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \csec_reg[6]\(0)
    );
\lap_csec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \csec_reg[6]_0\(1),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \csec_reg[6]\(1)
    );
\lap_csec[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \csec_reg[6]_0\(2),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \csec_reg[6]\(2)
    );
\lap_csec[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \csec_reg[6]_0\(3),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \csec_reg[6]\(3)
    );
\lap_csec[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \csec_reg[6]_0\(4),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \csec_reg[6]\(4)
    );
\lap_csec[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \csec_reg[6]_0\(5),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \csec_reg[6]\(5)
    );
\lap_csec[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \csec_reg[6]_0\(6),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \csec_reg[6]\(6)
    );
lap_running_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB0BBB0000B000"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => start_stop,
      I3 => p_0_in_0(1),
      I4 => p_0_in_0(0),
      I5 => lap_running_reg,
      O => ff_old_reg_0
    );
\lap_sec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sec_reg[5]_0\(0),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \sec_reg[5]\(0)
    );
\lap_sec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sec_reg[5]_0\(1),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \sec_reg[5]\(1)
    );
\lap_sec[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sec_reg[5]_0\(2),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \sec_reg[5]\(2)
    );
\lap_sec[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sec_reg[5]_0\(3),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \sec_reg[5]\(3)
    );
\lap_sec[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sec_reg[5]_0\(4),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \sec_reg[5]\(4)
    );
\lap_sec[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => ff_old_reg_3(0)
    );
\lap_sec[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \sec_reg[5]_0\(5),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      O => \sec_reg[5]\(5)
    );
\sec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => \sec_reg[5]_0\(0),
      I1 => \sec_reg[2]\,
      I2 => \^p_0_in\(0),
      I3 => \^p_0_in\(1),
      O => \sec_reg[4]\(0)
    );
\sec[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14001414"
    )
        port map (
      I0 => \sec_reg[2]\,
      I1 => \sec_reg[5]_0\(0),
      I2 => \sec_reg[5]_0\(1),
      I3 => \^p_0_in\(0),
      I4 => \^p_0_in\(1),
      O => \sec_reg[4]\(1)
    );
\sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540000015401540"
    )
        port map (
      I0 => \sec_reg[2]\,
      I1 => \sec_reg[5]_0\(0),
      I2 => \sec_reg[5]_0\(1),
      I3 => \sec_reg[5]_0\(2),
      I4 => \^p_0_in\(0),
      I5 => \^p_0_in\(1),
      O => \sec_reg[4]\(2)
    );
\sec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015554000"
    )
        port map (
      I0 => \sec_reg[2]\,
      I1 => \sec_reg[5]_0\(1),
      I2 => \sec_reg[5]_0\(0),
      I3 => \sec_reg[5]_0\(2),
      I4 => \sec_reg[5]_0\(3),
      I5 => \csec[4]_i_3_n_0\,
      O => \sec_reg[4]\(3)
    );
\sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000622A6AAA"
    )
        port map (
      I0 => \sec_reg[5]_0\(4),
      I1 => \sec_reg[5]_0\(3),
      I2 => \sec_reg[5]_0\(2),
      I3 => \sec_reg[5]_1\,
      I4 => \sec_reg[5]_0\(5),
      I5 => \csec[4]_i_3_n_0\,
      O => \sec_reg[4]\(4)
    );
\sec[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => CO(0),
      I3 => \sec_reg[0]\,
      I4 => start_stop,
      O => ff_old_reg_2(0)
    );
\sec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000777F8000"
    )
        port map (
      I0 => \sec_reg[5]_0\(4),
      I1 => \sec_reg[5]_0\(3),
      I2 => \sec_reg[5]_0\(2),
      I3 => \sec_reg[5]_1\,
      I4 => \sec_reg[5]_0\(5),
      I5 => \csec[4]_i_3_n_0\,
      O => \sec_reg[4]\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0 is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_1 is
  port (
    ff_old_reg_0 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_stop : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_1 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_1 is
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => p_0_in_0(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in_0(1),
      Q => p_0_in_0(0)
    );
start_stop_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0BB4444"
    )
        port map (
      I0 => p_0_in_0(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => start_stop,
      O => ff_old_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s00_axi_rdata_1_sp_1 : in STD_LOGIC;
    s00_axi_rdata_2_sp_1 : in STD_LOGIC;
    s00_axi_rdata_3_sp_1 : in STD_LOGIC;
    s00_axi_rdata_4_sp_1 : in STD_LOGIC;
    s00_axi_rdata_5_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[6]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt_sysclk : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt_sysclk0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \cnt_sysclk0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__4_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__4_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__5_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__5_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__5_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__6_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__6_n_3\ : STD_LOGIC;
  signal cnt_sysclk0_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk0_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk0_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk0_carry_n_3 : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_n_3\ : STD_LOGIC;
  signal cnt_sysclk1_carry_i_1_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_2_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_3_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_4_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_5_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_6_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_7_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk1_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk1_carry_n_3 : STD_LOGIC;
  signal \csec[4]_i_2_n_0\ : STD_LOGIC;
  signal \csec[6]_i_3_n_0\ : STD_LOGIC;
  signal \csec[6]_i_4_n_0\ : STD_LOGIC;
  signal \csec_reg_n_0_[0]\ : STD_LOGIC;
  signal \csec_reg_n_0_[1]\ : STD_LOGIC;
  signal \csec_reg_n_0_[2]\ : STD_LOGIC;
  signal \csec_reg_n_0_[3]\ : STD_LOGIC;
  signal \csec_reg_n_0_[4]\ : STD_LOGIC;
  signal \csec_reg_n_0_[5]\ : STD_LOGIC;
  signal \csec_reg_n_0_[6]\ : STD_LOGIC;
  signal ed_clear_n_10 : STD_LOGIC;
  signal ed_clear_n_11 : STD_LOGIC;
  signal ed_clear_n_12 : STD_LOGIC;
  signal ed_clear_n_13 : STD_LOGIC;
  signal ed_clear_n_14 : STD_LOGIC;
  signal ed_clear_n_15 : STD_LOGIC;
  signal ed_clear_n_16 : STD_LOGIC;
  signal ed_clear_n_17 : STD_LOGIC;
  signal ed_clear_n_18 : STD_LOGIC;
  signal ed_clear_n_19 : STD_LOGIC;
  signal ed_clear_n_20 : STD_LOGIC;
  signal ed_clear_n_3 : STD_LOGIC;
  signal ed_clear_n_4 : STD_LOGIC;
  signal ed_clear_n_5 : STD_LOGIC;
  signal ed_clear_n_53 : STD_LOGIC;
  signal ed_clear_n_54 : STD_LOGIC;
  signal ed_clear_n_55 : STD_LOGIC;
  signal ed_clear_n_56 : STD_LOGIC;
  signal ed_clear_n_57 : STD_LOGIC;
  signal ed_clear_n_58 : STD_LOGIC;
  signal ed_clear_n_59 : STD_LOGIC;
  signal ed_clear_n_6 : STD_LOGIC;
  signal ed_clear_n_60 : STD_LOGIC;
  signal ed_clear_n_61 : STD_LOGIC;
  signal ed_clear_n_62 : STD_LOGIC;
  signal ed_clear_n_63 : STD_LOGIC;
  signal ed_clear_n_64 : STD_LOGIC;
  signal ed_clear_n_65 : STD_LOGIC;
  signal ed_clear_n_8 : STD_LOGIC;
  signal ed_clear_n_9 : STD_LOGIC;
  signal ed_start_n_0 : STD_LOGIC;
  signal fnd_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \fnd_csec[0]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_csec[1]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_csec[2]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_csec[3]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_csec[4]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_csec[5]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_csec[6]_i_1_n_0\ : STD_LOGIC;
  signal fnd_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \fnd_sec[0]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_sec[1]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_sec[2]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_sec[3]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_sec[4]_i_1_n_0\ : STD_LOGIC;
  signal \fnd_sec[5]_i_1_n_0\ : STD_LOGIC;
  signal lap_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal lap_csec_0 : STD_LOGIC;
  signal lap_running_reg_n_0 : STD_LOGIC;
  signal lap_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_1_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_2_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_3_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_4_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_5_sn_1 : STD_LOGIC;
  signal \sec[3]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \sec_reg_n_0_[0]\ : STD_LOGIC;
  signal \sec_reg_n_0_[1]\ : STD_LOGIC;
  signal \sec_reg_n_0_[2]\ : STD_LOGIC;
  signal \sec_reg_n_0_[3]\ : STD_LOGIC;
  signal \sec_reg_n_0_[4]\ : STD_LOGIC;
  signal \sec_reg_n_0_[5]\ : STD_LOGIC;
  signal start_stop : STD_LOGIC;
  signal \NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cnt_sysclk1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_sysclk1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt_sysclk0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of cnt_sysclk1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \csec[4]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \csec[6]_i_4\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \fnd_csec[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \fnd_csec[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \fnd_csec[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \fnd_csec[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \fnd_csec[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \fnd_csec[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \fnd_csec[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \fnd_sec[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \fnd_sec[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \fnd_sec[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \fnd_sec[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \fnd_sec[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \fnd_sec[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sec[5]_i_3\ : label is "soft_lutpair28";
begin
  SR(0) <= \^sr\(0);
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
  s00_axi_rdata_1_sn_1 <= s00_axi_rdata_1_sp_1;
  s00_axi_rdata_2_sn_1 <= s00_axi_rdata_2_sp_1;
  s00_axi_rdata_3_sn_1 <= s00_axi_rdata_3_sp_1;
  s00_axi_rdata_4_sn_1 <= s00_axi_rdata_4_sp_1;
  s00_axi_rdata_5_sn_1 <= s00_axi_rdata_5_sp_1;
cnt_sysclk0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_sysclk0_carry_n_0,
      CO(2) => cnt_sysclk0_carry_n_1,
      CO(1) => cnt_sysclk0_carry_n_2,
      CO(0) => cnt_sysclk0_carry_n_3,
      CYINIT => cnt_sysclk(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(4 downto 1),
      S(3 downto 0) => cnt_sysclk(4 downto 1)
    );
\cnt_sysclk0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_sysclk0_carry_n_0,
      CO(3) => \cnt_sysclk0_carry__0_n_0\,
      CO(2) => \cnt_sysclk0_carry__0_n_1\,
      CO(1) => \cnt_sysclk0_carry__0_n_2\,
      CO(0) => \cnt_sysclk0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(8 downto 5),
      S(3 downto 0) => cnt_sysclk(8 downto 5)
    );
\cnt_sysclk0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__0_n_0\,
      CO(3) => \cnt_sysclk0_carry__1_n_0\,
      CO(2) => \cnt_sysclk0_carry__1_n_1\,
      CO(1) => \cnt_sysclk0_carry__1_n_2\,
      CO(0) => \cnt_sysclk0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(12 downto 9),
      S(3 downto 0) => cnt_sysclk(12 downto 9)
    );
\cnt_sysclk0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__1_n_0\,
      CO(3) => \cnt_sysclk0_carry__2_n_0\,
      CO(2) => \cnt_sysclk0_carry__2_n_1\,
      CO(1) => \cnt_sysclk0_carry__2_n_2\,
      CO(0) => \cnt_sysclk0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(16 downto 13),
      S(3 downto 0) => cnt_sysclk(16 downto 13)
    );
\cnt_sysclk0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__2_n_0\,
      CO(3) => \cnt_sysclk0_carry__3_n_0\,
      CO(2) => \cnt_sysclk0_carry__3_n_1\,
      CO(1) => \cnt_sysclk0_carry__3_n_2\,
      CO(0) => \cnt_sysclk0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(20 downto 17),
      S(3 downto 0) => cnt_sysclk(20 downto 17)
    );
\cnt_sysclk0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__3_n_0\,
      CO(3) => \cnt_sysclk0_carry__4_n_0\,
      CO(2) => \cnt_sysclk0_carry__4_n_1\,
      CO(1) => \cnt_sysclk0_carry__4_n_2\,
      CO(0) => \cnt_sysclk0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(24 downto 21),
      S(3 downto 0) => cnt_sysclk(24 downto 21)
    );
\cnt_sysclk0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__4_n_0\,
      CO(3) => \cnt_sysclk0_carry__5_n_0\,
      CO(2) => \cnt_sysclk0_carry__5_n_1\,
      CO(1) => \cnt_sysclk0_carry__5_n_2\,
      CO(0) => \cnt_sysclk0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(28 downto 25),
      S(3 downto 0) => cnt_sysclk(28 downto 25)
    );
\cnt_sysclk0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sysclk0_carry__6_n_2\,
      CO(0) => \cnt_sysclk0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_sysclk0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_sysclk0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt_sysclk(31 downto 29)
    );
cnt_sysclk1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_sysclk1_carry_n_0,
      CO(2) => cnt_sysclk1_carry_n_1,
      CO(1) => cnt_sysclk1_carry_n_2,
      CO(0) => cnt_sysclk1_carry_n_3,
      CYINIT => cnt_sysclk1_carry_i_1_n_0,
      DI(3) => cnt_sysclk1_carry_i_2_n_0,
      DI(2) => cnt_sysclk1_carry_i_3_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_cnt_sysclk1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt_sysclk1_carry_i_4_n_0,
      S(2) => cnt_sysclk1_carry_i_5_n_0,
      S(1) => cnt_sysclk1_carry_i_6_n_0,
      S(0) => cnt_sysclk1_carry_i_7_n_0
    );
\cnt_sysclk1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_sysclk1_carry_n_0,
      CO(3) => \cnt_sysclk1_carry__0_n_0\,
      CO(2) => \cnt_sysclk1_carry__0_n_1\,
      CO(1) => \cnt_sysclk1_carry__0_n_2\,
      CO(0) => \cnt_sysclk1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => cnt_sysclk(15),
      DI(1) => \cnt_sysclk1_carry__0_i_1_n_0\,
      DI(0) => \cnt_sysclk1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_cnt_sysclk1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_sysclk1_carry__0_i_3_n_0\,
      S(2) => \cnt_sysclk1_carry__0_i_4_n_0\,
      S(1) => \cnt_sysclk1_carry__0_i_5_n_0\,
      S(0) => \cnt_sysclk1_carry__0_i_6_n_0\
    );
\cnt_sysclk1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(12),
      I1 => cnt_sysclk(13),
      O => \cnt_sysclk1_carry__0_i_1_n_0\
    );
\cnt_sysclk1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(10),
      I1 => cnt_sysclk(11),
      O => \cnt_sysclk1_carry__0_i_2_n_0\
    );
\cnt_sysclk1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(16),
      I1 => cnt_sysclk(17),
      O => \cnt_sysclk1_carry__0_i_3_n_0\
    );
\cnt_sysclk1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(14),
      I1 => cnt_sysclk(15),
      O => \cnt_sysclk1_carry__0_i_4_n_0\
    );
\cnt_sysclk1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(12),
      I1 => cnt_sysclk(13),
      O => \cnt_sysclk1_carry__0_i_5_n_0\
    );
\cnt_sysclk1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(10),
      I1 => cnt_sysclk(11),
      O => \cnt_sysclk1_carry__0_i_6_n_0\
    );
\cnt_sysclk1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk1_carry__0_n_0\,
      CO(3) => \cnt_sysclk1_carry__1_n_0\,
      CO(2) => \cnt_sysclk1_carry__1_n_1\,
      CO(1) => \cnt_sysclk1_carry__1_n_2\,
      CO(0) => \cnt_sysclk1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_sysclk1_carry__1_i_1_n_0\,
      DI(2) => \cnt_sysclk1_carry__1_i_2_n_0\,
      DI(1) => \cnt_sysclk1_carry__1_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_cnt_sysclk1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_sysclk1_carry__1_i_4_n_0\,
      S(2) => \cnt_sysclk1_carry__1_i_5_n_0\,
      S(1) => \cnt_sysclk1_carry__1_i_6_n_0\,
      S(0) => \cnt_sysclk1_carry__1_i_7_n_0\
    );
\cnt_sysclk1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(24),
      I1 => cnt_sysclk(25),
      O => \cnt_sysclk1_carry__1_i_1_n_0\
    );
\cnt_sysclk1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(22),
      I1 => cnt_sysclk(23),
      O => \cnt_sysclk1_carry__1_i_2_n_0\
    );
\cnt_sysclk1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(20),
      I1 => cnt_sysclk(21),
      O => \cnt_sysclk1_carry__1_i_3_n_0\
    );
\cnt_sysclk1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(24),
      I1 => cnt_sysclk(25),
      O => \cnt_sysclk1_carry__1_i_4_n_0\
    );
\cnt_sysclk1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(22),
      I1 => cnt_sysclk(23),
      O => \cnt_sysclk1_carry__1_i_5_n_0\
    );
\cnt_sysclk1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(20),
      I1 => cnt_sysclk(21),
      O => \cnt_sysclk1_carry__1_i_6_n_0\
    );
\cnt_sysclk1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(18),
      I1 => cnt_sysclk(19),
      O => \cnt_sysclk1_carry__1_i_7_n_0\
    );
\cnt_sysclk1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk1_carry__1_n_0\,
      CO(3) => \NLW_cnt_sysclk1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \cnt_sysclk1_carry__2_n_1\,
      CO(1) => \cnt_sysclk1_carry__2_n_2\,
      CO(0) => \cnt_sysclk1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \cnt_sysclk1_carry__2_i_1_n_0\,
      DI(1) => \cnt_sysclk1_carry__2_i_2_n_0\,
      DI(0) => \cnt_sysclk1_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_cnt_sysclk1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \cnt_sysclk1_carry__2_i_4_n_0\,
      S(1) => \cnt_sysclk1_carry__2_i_5_n_0\,
      S(0) => \cnt_sysclk1_carry__2_i_6_n_0\
    );
\cnt_sysclk1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(30),
      I1 => cnt_sysclk(31),
      O => \cnt_sysclk1_carry__2_i_1_n_0\
    );
\cnt_sysclk1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(28),
      I1 => cnt_sysclk(29),
      O => \cnt_sysclk1_carry__2_i_2_n_0\
    );
\cnt_sysclk1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(26),
      I1 => cnt_sysclk(27),
      O => \cnt_sysclk1_carry__2_i_3_n_0\
    );
\cnt_sysclk1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(30),
      I1 => cnt_sysclk(31),
      O => \cnt_sysclk1_carry__2_i_4_n_0\
    );
\cnt_sysclk1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(28),
      I1 => cnt_sysclk(29),
      O => \cnt_sysclk1_carry__2_i_5_n_0\
    );
\cnt_sysclk1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(26),
      I1 => cnt_sysclk(27),
      O => \cnt_sysclk1_carry__2_i_6_n_0\
    );
cnt_sysclk1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(0),
      I1 => cnt_sysclk(1),
      O => cnt_sysclk1_carry_i_1_n_0
    );
cnt_sysclk1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(8),
      I1 => cnt_sysclk(9),
      O => cnt_sysclk1_carry_i_2_n_0
    );
cnt_sysclk1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(6),
      I1 => cnt_sysclk(7),
      O => cnt_sysclk1_carry_i_3_n_0
    );
cnt_sysclk1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(9),
      I1 => cnt_sysclk(8),
      O => cnt_sysclk1_carry_i_4_n_0
    );
cnt_sysclk1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(6),
      I1 => cnt_sysclk(7),
      O => cnt_sysclk1_carry_i_5_n_0
    );
cnt_sysclk1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(4),
      I1 => cnt_sysclk(5),
      O => cnt_sysclk1_carry_i_6_n_0
    );
cnt_sysclk1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(2),
      I1 => cnt_sysclk(3),
      O => cnt_sysclk1_carry_i_7_n_0
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(0),
      Q => cnt_sysclk(0)
    );
\cnt_sysclk_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(10),
      Q => cnt_sysclk(10)
    );
\cnt_sysclk_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(11),
      Q => cnt_sysclk(11)
    );
\cnt_sysclk_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(12),
      Q => cnt_sysclk(12)
    );
\cnt_sysclk_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(13),
      Q => cnt_sysclk(13)
    );
\cnt_sysclk_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(14),
      Q => cnt_sysclk(14)
    );
\cnt_sysclk_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(15),
      Q => cnt_sysclk(15)
    );
\cnt_sysclk_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(16),
      Q => cnt_sysclk(16)
    );
\cnt_sysclk_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(17),
      Q => cnt_sysclk(17)
    );
\cnt_sysclk_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(18),
      Q => cnt_sysclk(18)
    );
\cnt_sysclk_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(19),
      Q => cnt_sysclk(19)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(1),
      Q => cnt_sysclk(1)
    );
\cnt_sysclk_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(20),
      Q => cnt_sysclk(20)
    );
\cnt_sysclk_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(21),
      Q => cnt_sysclk(21)
    );
\cnt_sysclk_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(22),
      Q => cnt_sysclk(22)
    );
\cnt_sysclk_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(23),
      Q => cnt_sysclk(23)
    );
\cnt_sysclk_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(24),
      Q => cnt_sysclk(24)
    );
\cnt_sysclk_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(25),
      Q => cnt_sysclk(25)
    );
\cnt_sysclk_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(26),
      Q => cnt_sysclk(26)
    );
\cnt_sysclk_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(27),
      Q => cnt_sysclk(27)
    );
\cnt_sysclk_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(28),
      Q => cnt_sysclk(28)
    );
\cnt_sysclk_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(29),
      Q => cnt_sysclk(29)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(2),
      Q => cnt_sysclk(2)
    );
\cnt_sysclk_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(30),
      Q => cnt_sysclk(30)
    );
\cnt_sysclk_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(31),
      Q => cnt_sysclk(31)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(3),
      Q => cnt_sysclk(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(4),
      Q => cnt_sysclk(4)
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(5),
      Q => cnt_sysclk(5)
    );
\cnt_sysclk_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(6),
      Q => cnt_sysclk(6)
    );
\cnt_sysclk_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(7),
      Q => cnt_sysclk(7)
    );
\cnt_sysclk_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(8),
      Q => cnt_sysclk(8)
    );
\cnt_sysclk_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => p_1_in(9),
      Q => cnt_sysclk(9)
    );
\csec[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \csec_reg_n_0_[1]\,
      I1 => \csec_reg_n_0_[0]\,
      O => \csec[4]_i_2_n_0\
    );
\csec[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000000"
    )
        port map (
      I0 => \csec_reg_n_0_[5]\,
      I1 => \csec_reg_n_0_[3]\,
      I2 => \csec_reg_n_0_[2]\,
      I3 => \csec[4]_i_2_n_0\,
      I4 => \csec_reg_n_0_[4]\,
      I5 => \csec_reg_n_0_[6]\,
      O => \csec[6]_i_3_n_0\
    );
\csec[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \csec_reg_n_0_[4]\,
      I1 => \csec_reg_n_0_[2]\,
      I2 => \csec_reg_n_0_[0]\,
      I3 => \csec_reg_n_0_[1]\,
      I4 => \csec_reg_n_0_[3]\,
      O => \csec[6]_i_4_n_0\
    );
\csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_14,
      Q => \csec_reg_n_0_[0]\
    );
\csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_13,
      Q => \csec_reg_n_0_[1]\
    );
\csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_12,
      Q => \csec_reg_n_0_[2]\
    );
\csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_11,
      Q => \csec_reg_n_0_[3]\
    );
\csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_10,
      Q => \csec_reg_n_0_[4]\
    );
\csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_9,
      Q => \csec_reg_n_0_[5]\
    );
\csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_8,
      Q => \csec_reg_n_0_[6]\
    );
ed_clear: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
     port map (
      AR(0) => \^sr\(0),
      CO(0) => \cnt_sysclk1_carry__2_n_1\,
      D(6) => ed_clear_n_8,
      D(5) => ed_clear_n_9,
      D(4) => ed_clear_n_10,
      D(3) => ed_clear_n_11,
      D(2) => ed_clear_n_12,
      D(1) => ed_clear_n_13,
      D(0) => ed_clear_n_14,
      E(0) => ed_clear_n_4,
      Q(0) => Q(2),
      cnt_sysclk0(30 downto 0) => cnt_sysclk0(31 downto 1),
      \cnt_sysclk_reg[0]\(0) => cnt_sysclk(0),
      \csec_reg[4]\ => \csec[4]_i_2_n_0\,
      \csec_reg[6]\(6) => ed_clear_n_59,
      \csec_reg[6]\(5) => ed_clear_n_60,
      \csec_reg[6]\(4) => ed_clear_n_61,
      \csec_reg[6]\(3) => ed_clear_n_62,
      \csec_reg[6]\(2) => ed_clear_n_63,
      \csec_reg[6]\(1) => ed_clear_n_64,
      \csec_reg[6]\(0) => ed_clear_n_65,
      \csec_reg[6]_0\(6) => \csec_reg_n_0_[6]\,
      \csec_reg[6]_0\(5) => \csec_reg_n_0_[5]\,
      \csec_reg[6]_0\(4) => \csec_reg_n_0_[4]\,
      \csec_reg[6]_0\(3) => \csec_reg_n_0_[3]\,
      \csec_reg[6]_0\(2) => \csec_reg_n_0_[2]\,
      \csec_reg[6]_0\(1) => \csec_reg_n_0_[1]\,
      \csec_reg[6]_0\(0) => \csec_reg_n_0_[0]\,
      \csec_reg[6]_1\ => \csec[6]_i_4_n_0\,
      ff_old_reg_0 => ed_clear_n_3,
      ff_old_reg_1(0) => ed_clear_n_5,
      ff_old_reg_2(0) => ed_clear_n_6,
      ff_old_reg_3(0) => lap_csec_0,
      ff_old_reg_4(31 downto 0) => p_1_in(31 downto 0),
      lap_running_reg => lap_running_reg_n_0,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \sec_reg[0]\ => \csec[6]_i_3_n_0\,
      \sec_reg[2]\ => \sec[3]_i_2_n_0\,
      \sec_reg[4]\(5) => ed_clear_n_15,
      \sec_reg[4]\(4) => ed_clear_n_16,
      \sec_reg[4]\(3) => ed_clear_n_17,
      \sec_reg[4]\(2) => ed_clear_n_18,
      \sec_reg[4]\(1) => ed_clear_n_19,
      \sec_reg[4]\(0) => ed_clear_n_20,
      \sec_reg[5]\(5) => ed_clear_n_53,
      \sec_reg[5]\(4) => ed_clear_n_54,
      \sec_reg[5]\(3) => ed_clear_n_55,
      \sec_reg[5]\(2) => ed_clear_n_56,
      \sec_reg[5]\(1) => ed_clear_n_57,
      \sec_reg[5]\(0) => ed_clear_n_58,
      \sec_reg[5]_0\(5) => \sec_reg_n_0_[5]\,
      \sec_reg[5]_0\(4) => \sec_reg_n_0_[4]\,
      \sec_reg[5]_0\(3) => \sec_reg_n_0_[3]\,
      \sec_reg[5]_0\(2) => \sec_reg_n_0_[2]\,
      \sec_reg[5]_0\(1) => \sec_reg_n_0_[1]\,
      \sec_reg[5]_0\(0) => \sec_reg_n_0_[0]\,
      \sec_reg[5]_1\ => \sec[5]_i_3_n_0\,
      start_stop => start_stop
    );
ed_lap: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_0
     port map (
      AR(0) => \^sr\(0),
      Q(0) => Q(1),
      p_0_in(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
ed_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_1
     port map (
      AR(0) => \^sr\(0),
      Q(0) => Q(0),
      ff_old_reg_0 => ed_start_n_0,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      start_stop => start_stop
    );
\fnd_csec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_csec(0),
      I1 => \csec_reg_n_0_[0]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_csec[0]_i_1_n_0\
    );
\fnd_csec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_csec(1),
      I1 => \csec_reg_n_0_[1]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_csec[1]_i_1_n_0\
    );
\fnd_csec[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_csec(2),
      I1 => \csec_reg_n_0_[2]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_csec[2]_i_1_n_0\
    );
\fnd_csec[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_csec(3),
      I1 => \csec_reg_n_0_[3]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_csec[3]_i_1_n_0\
    );
\fnd_csec[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_csec(4),
      I1 => \csec_reg_n_0_[4]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_csec[4]_i_1_n_0\
    );
\fnd_csec[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_csec(5),
      I1 => \csec_reg_n_0_[5]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_csec[5]_i_1_n_0\
    );
\fnd_csec[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_csec(6),
      I1 => \csec_reg_n_0_[6]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_csec[6]_i_1_n_0\
    );
\fnd_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_csec[0]_i_1_n_0\,
      Q => fnd_csec(0)
    );
\fnd_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_csec[1]_i_1_n_0\,
      Q => fnd_csec(1)
    );
\fnd_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_csec[2]_i_1_n_0\,
      Q => fnd_csec(2)
    );
\fnd_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_csec[3]_i_1_n_0\,
      Q => fnd_csec(3)
    );
\fnd_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_csec[4]_i_1_n_0\,
      Q => fnd_csec(4)
    );
\fnd_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_csec[5]_i_1_n_0\,
      Q => fnd_csec(5)
    );
\fnd_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_csec[6]_i_1_n_0\,
      Q => fnd_csec(6)
    );
\fnd_sec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_sec(0),
      I1 => \sec_reg_n_0_[0]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_sec[0]_i_1_n_0\
    );
\fnd_sec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_sec(1),
      I1 => \sec_reg_n_0_[1]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_sec[1]_i_1_n_0\
    );
\fnd_sec[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_sec(2),
      I1 => \sec_reg_n_0_[2]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_sec[2]_i_1_n_0\
    );
\fnd_sec[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_sec(3),
      I1 => \sec_reg_n_0_[3]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_sec[3]_i_1_n_0\
    );
\fnd_sec[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_sec(4),
      I1 => \sec_reg_n_0_[4]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_sec[4]_i_1_n_0\
    );
\fnd_sec[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => lap_sec(5),
      I1 => \sec_reg_n_0_[5]\,
      I2 => lap_running_reg_n_0,
      O => \fnd_sec[5]_i_1_n_0\
    );
\fnd_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_sec[0]_i_1_n_0\,
      Q => fnd_sec(0)
    );
\fnd_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_sec[1]_i_1_n_0\,
      Q => fnd_sec(1)
    );
\fnd_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_sec[2]_i_1_n_0\,
      Q => fnd_sec(2)
    );
\fnd_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_sec[3]_i_1_n_0\,
      Q => fnd_sec(3)
    );
\fnd_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_sec[4]_i_1_n_0\,
      Q => fnd_sec(4)
    );
\fnd_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \fnd_sec[5]_i_1_n_0\,
      Q => fnd_sec(5)
    );
\lap_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_65,
      Q => lap_csec(0)
    );
\lap_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_64,
      Q => lap_csec(1)
    );
\lap_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_63,
      Q => lap_csec(2)
    );
\lap_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_62,
      Q => lap_csec(3)
    );
\lap_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_61,
      Q => lap_csec(4)
    );
\lap_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_60,
      Q => lap_csec(5)
    );
\lap_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_59,
      Q => lap_csec(6)
    );
lap_running_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_3,
      Q => lap_running_reg_n_0
    );
\lap_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_58,
      Q => lap_sec(0)
    );
\lap_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_57,
      Q => lap_sec(1)
    );
\lap_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_56,
      Q => lap_sec(2)
    );
\lap_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_55,
      Q => lap_sec(3)
    );
\lap_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_54,
      Q => lap_sec(4)
    );
\lap_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => lap_csec_0,
      CLR => \^sr\(0),
      D => ed_clear_n_53,
      Q => lap_sec(5)
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
      I0 => \s00_axi_rdata[6]\(0),
      I1 => fnd_csec(0),
      I2 => sel0(1),
      I3 => fnd_sec(0),
      I4 => sel0(0),
      I5 => Q(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_1_sn_1,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[6]\(1),
      I1 => fnd_csec(1),
      I2 => sel0(1),
      I3 => fnd_sec(1),
      I4 => sel0(0),
      I5 => Q(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_2_sn_1,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[6]\(2),
      I1 => fnd_csec(2),
      I2 => sel0(1),
      I3 => fnd_sec(2),
      I4 => sel0(0),
      I5 => Q(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_3_sn_1,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[6]\(3),
      I1 => fnd_csec(3),
      I2 => sel0(1),
      I3 => fnd_sec(3),
      I4 => sel0(0),
      I5 => Q(3),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_4_sn_1,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[6]\(4),
      I1 => fnd_csec(4),
      I2 => sel0(1),
      I3 => fnd_sec(4),
      I4 => sel0(0),
      I5 => Q(4),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_5_sn_1,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[6]\(5),
      I1 => fnd_csec(5),
      I2 => sel0(1),
      I3 => fnd_sec(5),
      I4 => sel0(0),
      I5 => Q(5),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \s00_axi_rdata[6]\(6),
      I1 => fnd_csec(6),
      I2 => sel0(1),
      I3 => Q(6),
      I4 => sel0(0),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\sec[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880808000000000"
    )
        port map (
      I0 => \sec_reg_n_0_[4]\,
      I1 => \sec_reg_n_0_[3]\,
      I2 => \sec_reg_n_0_[2]\,
      I3 => \sec_reg_n_0_[0]\,
      I4 => \sec_reg_n_0_[1]\,
      I5 => \sec_reg_n_0_[5]\,
      O => \sec[3]_i_2_n_0\
    );
\sec[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sec_reg_n_0_[1]\,
      I1 => \sec_reg_n_0_[0]\,
      O => \sec[5]_i_3_n_0\
    );
\sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_20,
      Q => \sec_reg_n_0_[0]\
    );
\sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_19,
      Q => \sec_reg_n_0_[1]\
    );
\sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_18,
      Q => \sec_reg_n_0_[2]\
    );
\sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_17,
      Q => \sec_reg_n_0_[3]\
    );
\sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_16,
      Q => \sec_reg_n_0_[4]\
    );
\sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_15,
      Q => \sec_reg_n_0_[5]\
    );
start_stop_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_start_n_0,
      Q => start_stop
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI is
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
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal cp : STD_LOGIC;
  signal nolabel_line354_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
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
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair35";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \slv_reg5[31]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \slv_reg6[31]_i_2\ : label is "soft_lutpair36";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => nolabel_line354_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => nolabel_line354_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFAAFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => state_write(1),
      I4 => state_write(0),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF405500"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => state_write(1),
      I4 => state_write(0),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => nolabel_line354_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => nolabel_line354_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => state_read(0),
      I4 => state_read(1),
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
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => nolabel_line354_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => state_write(1),
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => state_write(1),
      I4 => state_write(0),
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => state_write(1),
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
      R => nolabel_line354_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => nolabel_line354_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => nolabel_line354_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2FFAF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => state_write(1),
      I3 => s00_axi_wvalid,
      I4 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => nolabel_line354_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF992600FFFF2600"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => axi_bvalid_i_2_n_0,
      I3 => s00_axi_wvalid,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_bready,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => nolabel_line354_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => nolabel_line354_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => nolabel_line354_n_0
    );
nolabel_line354: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch
     port map (
      Q(6) => \slv_reg0_reg_n_0_[6]\,
      Q(5) => \slv_reg0_reg_n_0_[5]\,
      Q(4) => \slv_reg0_reg_n_0_[4]\,
      Q(3) => \slv_reg0_reg_n_0_[3]\,
      Q(2) => \slv_reg0_reg_n_0_[2]\,
      Q(1) => cp,
      Q(0) => \slv_reg0_reg_n_0_[0]\,
      SR(0) => nolabel_line354_n_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(6 downto 0) => s00_axi_rdata(6 downto 0),
      \s00_axi_rdata[6]\(6 downto 0) => slv_reg3(6 downto 0),
      \s00_axi_rdata[6]_0\ => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      s00_axi_rdata_0_sp_1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      s00_axi_rdata_1_sp_1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      s00_axi_rdata_2_sp_1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      s00_axi_rdata_3_sp_1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      s00_axi_rdata_4_sp_1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      s00_axi_rdata_5_sp_1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => slv_reg6(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => slv_reg4(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(10),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[10]\,
      I5 => sel0(0),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => slv_reg4(10),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(11),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[11]\,
      I5 => sel0(0),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => slv_reg4(11),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(12),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[12]\,
      I5 => sel0(0),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => slv_reg4(12),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(13),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[13]\,
      I5 => sel0(0),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => slv_reg4(13),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(14),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[14]\,
      I5 => sel0(0),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => slv_reg4(14),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(15),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[15]\,
      I5 => sel0(0),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => slv_reg4(15),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(16),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[16]\,
      I5 => sel0(0),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => slv_reg4(16),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(17),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[17]\,
      I5 => sel0(0),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => slv_reg4(17),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(18),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[18]\,
      I5 => sel0(0),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => slv_reg4(18),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(19),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[19]\,
      I5 => sel0(0),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => slv_reg4(19),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => slv_reg6(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => slv_reg4(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(20),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[20]\,
      I5 => sel0(0),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => slv_reg4(20),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(21),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[21]\,
      I5 => sel0(0),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => slv_reg4(21),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(22),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[22]\,
      I5 => sel0(0),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => slv_reg4(22),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(23),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[23]\,
      I5 => sel0(0),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => slv_reg4(23),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(24),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[24]\,
      I5 => sel0(0),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => slv_reg4(24),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(25),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[25]\,
      I5 => sel0(0),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => slv_reg4(25),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(26),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[26]\,
      I5 => sel0(0),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => slv_reg4(26),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(27),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[27]\,
      I5 => sel0(0),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => slv_reg4(27),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(28),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[28]\,
      I5 => sel0(0),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => slv_reg4(28),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(29),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[29]\,
      I5 => sel0(0),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => slv_reg4(29),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => slv_reg6(2),
      I2 => sel0(1),
      I3 => slv_reg5(2),
      I4 => sel0(0),
      I5 => slv_reg4(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(30),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[30]\,
      I5 => sel0(0),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => slv_reg4(30),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(31),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[31]\,
      I5 => sel0(0),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => slv_reg4(31),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => slv_reg6(3),
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => slv_reg4(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => slv_reg6(4),
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => slv_reg4(4),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => slv_reg6(5),
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => slv_reg4(5),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => slv_reg6(6),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => slv_reg4(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(7),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[7]\,
      I5 => sel0(0),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => slv_reg6(7),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => slv_reg4(7),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(8),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[8]\,
      I5 => sel0(0),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => slv_reg4(8),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => slv_reg3(9),
      I3 => sel0(1),
      I4 => \slv_reg0_reg_n_0_[9]\,
      I5 => sel0(0),
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => slv_reg4(9),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000000000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_awaddr(2),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000000000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_awaddr(2),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000000000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_awaddr(2),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"202A000000000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_awaddr(2),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => cp,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => nolabel_line354_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => nolabel_line354_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700000000000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wstrb(1),
      I5 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700000000000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wstrb(2),
      I5 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700000000000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wstrb(3),
      I5 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700000000000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_wstrb(0),
      I5 => \slv_reg3[31]_i_2_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => nolabel_line354_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => nolabel_line354_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => nolabel_line354_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => nolabel_line354_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => s00_axi_awaddr(1),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      O => \slv_reg5[31]_i_2_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => nolabel_line354_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => nolabel_line354_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \slv_reg6[31]_i_2_n_0\,
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \slv_reg6[31]_i_2_n_0\,
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \slv_reg6[31]_i_2_n_0\,
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      O => \slv_reg6[31]_i_2_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080888000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => s00_axi_awaddr(2),
      I3 => s00_axi_awvalid,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      I5 => \slv_reg6[31]_i_2_n_0\,
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => nolabel_line354_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => nolabel_line354_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_wstrb(2),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_wstrb(3),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000808080000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_2_n_0\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => nolabel_line354_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => nolabel_line354_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch is
begin
myip_stopwatch_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
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
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_multiwatch_lcd_myip_stopwatch_0_0,myip_stopwatch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_stopwatch,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
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
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
