-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Jan 29 08:10:42 2026
-- Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/user12/data/work/SOC_exam_2026/SOC_exam_2026.gen/sources_1/bd/soc_multiwatch_lcd/ip/soc_multiwatch_lcd_myip_watch_0_0/soc_multiwatch_lcd_myip_watch_0_0_sim_netlist.vhdl
-- Design      : soc_multiwatch_lcd_myip_watch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_multiwatch_lcd_myip_watch_0_0_edge_detector_n is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \cnt_sysclk_reg[28]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ff_old_reg_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ff_old_reg_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \hour_reg[0]\ : in STD_LOGIC;
    \hour_reg[0]_0\ : in STD_LOGIC;
    \hour_reg[0]_1\ : in STD_LOGIC;
    \hour_reg[0]_2\ : in STD_LOGIC;
    \hour_reg[0]_3\ : in STD_LOGIC;
    \min_reg[0]\ : in STD_LOGIC;
    cnt_sysclk0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \sec_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \hour_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \hour_reg[4]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \hour_reg[3]\ : in STD_LOGIC;
    \hour_reg[4]_0\ : in STD_LOGIC;
    \min_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \min_reg[5]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \min_reg[3]\ : in STD_LOGIC;
    \min_reg[4]\ : in STD_LOGIC;
    \min_reg[5]_0\ : in STD_LOGIC;
    \sec_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sec_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \sec_reg[3]\ : in STD_LOGIC;
    \sec_reg[4]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_multiwatch_lcd_myip_watch_0_0_edge_detector_n : entity is "edge_detector_n";
end soc_multiwatch_lcd_myip_watch_0_0_edge_detector_n;

architecture STRUCTURE of soc_multiwatch_lcd_myip_watch_0_0_edge_detector_n is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \hour[4]_i_2_n_0\ : STD_LOGIC;
  signal load_pedge : STD_LOGIC;
  signal \min[5]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hour[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hour[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hour[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \min[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \min[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sec[6]_i_1\ : label is "soft_lutpair2";
begin
  AR(0) <= \^ar\(0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\cnt_sysclk[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000015"
    )
        port map (
      I0 => \hour_reg[0]\,
      I1 => \hour_reg[0]_0\,
      I2 => \hour_reg[0]_1\,
      I3 => \hour_reg[0]_2\,
      I4 => load_pedge,
      I5 => \sec_reg[0]\(0),
      O => D(0)
    );
\cnt_sysclk[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(9),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(10)
    );
\cnt_sysclk[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(10),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(11)
    );
\cnt_sysclk[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(11),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(12)
    );
\cnt_sysclk[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(12),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(13)
    );
\cnt_sysclk[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(13),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(14)
    );
\cnt_sysclk[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(14),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(15)
    );
\cnt_sysclk[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(15),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(16)
    );
\cnt_sysclk[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(16),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(17)
    );
\cnt_sysclk[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(17),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(18)
    );
\cnt_sysclk[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(18),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(19)
    );
\cnt_sysclk[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(0),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(1)
    );
\cnt_sysclk[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(19),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(20)
    );
\cnt_sysclk[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(20),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(21)
    );
\cnt_sysclk[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(21),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(22)
    );
\cnt_sysclk[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(22),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(23)
    );
\cnt_sysclk[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(23),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(24)
    );
\cnt_sysclk[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(24),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(25)
    );
\cnt_sysclk[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(25),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(26)
    );
\cnt_sysclk[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(26),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(27)
    );
\cnt_sysclk[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(27),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(28)
    );
\cnt_sysclk[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(28),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(29)
    );
\cnt_sysclk[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(1),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(2)
    );
\cnt_sysclk[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(29),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(30)
    );
\cnt_sysclk[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(30),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(31)
    );
\cnt_sysclk[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => load_pedge
    );
\cnt_sysclk[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(2),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(3)
    );
\cnt_sysclk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(3),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(4)
    );
\cnt_sysclk[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(4),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(5)
    );
\cnt_sysclk[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(5),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(6)
    );
\cnt_sysclk[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(6),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(7)
    );
\cnt_sysclk[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(7),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(8)
    );
\cnt_sysclk[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000222"
    )
        port map (
      I0 => cnt_sysclk0(8),
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => D(9)
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
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\hour[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \hour_reg[7]\(0),
      I3 => \hour_reg[4]\(0),
      I4 => \hour[4]_i_2_n_0\,
      O => ff_old_reg_0(0)
    );
\hour[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060FF6060606060"
    )
        port map (
      I0 => \hour_reg[4]\(1),
      I1 => \hour_reg[4]\(0),
      I2 => \hour[4]_i_2_n_0\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \hour_reg[7]\(1),
      O => ff_old_reg_0(1)
    );
\hour[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6A006A006A00"
    )
        port map (
      I0 => \hour_reg[4]\(2),
      I1 => \hour_reg[4]\(1),
      I2 => \hour_reg[4]\(0),
      I3 => \hour[4]_i_2_n_0\,
      I4 => load_pedge,
      I5 => \hour_reg[7]\(2),
      O => ff_old_reg_0(2)
    );
\hour[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060FF6060606060"
    )
        port map (
      I0 => \hour_reg[4]\(3),
      I1 => \hour_reg[3]\,
      I2 => \hour[4]_i_2_n_0\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \hour_reg[7]\(3),
      O => ff_old_reg_0(3)
    );
\hour[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF488848884888"
    )
        port map (
      I0 => \hour_reg[4]\(4),
      I1 => \hour[4]_i_2_n_0\,
      I2 => \hour_reg[3]\,
      I3 => \hour_reg[4]\(3),
      I4 => load_pedge,
      I5 => \hour_reg[7]\(4),
      O => ff_old_reg_0(4)
    );
\hour[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0007000000070007"
    )
        port map (
      I0 => \hour_reg[4]\(3),
      I1 => \hour_reg[4]\(4),
      I2 => \hour_reg[4]\(5),
      I3 => \hour_reg[4]_0\,
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \hour[4]_i_2_n_0\
    );
\hour[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \hour_reg[7]\(5),
      O => ff_old_reg_0(5)
    );
\hour[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \hour_reg[7]\(6),
      O => ff_old_reg_0(6)
    );
\hour[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEA0000"
    )
        port map (
      I0 => \hour_reg[0]\,
      I1 => \hour_reg[0]_0\,
      I2 => \hour_reg[0]_1\,
      I3 => \hour_reg[0]_2\,
      I4 => \hour_reg[0]_3\,
      I5 => load_pedge,
      O => E(0)
    );
\hour[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \hour_reg[7]\(7),
      O => ff_old_reg_0(7)
    );
\min[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2020"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \min_reg[7]\(0),
      I3 => \min_reg[5]\(0),
      I4 => \min[5]_i_3_n_0\,
      O => ff_old_reg_1(0)
    );
\min[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060FF6060606060"
    )
        port map (
      I0 => \min_reg[5]\(1),
      I1 => \min_reg[5]\(0),
      I2 => \min[5]_i_3_n_0\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \min_reg[7]\(1),
      O => ff_old_reg_1(1)
    );
\min[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6A006A006A00"
    )
        port map (
      I0 => \min_reg[5]\(2),
      I1 => \min_reg[5]\(1),
      I2 => \min_reg[5]\(0),
      I3 => \min[5]_i_3_n_0\,
      I4 => load_pedge,
      I5 => \min_reg[7]\(2),
      O => ff_old_reg_1(2)
    );
\min[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6A006A006A00"
    )
        port map (
      I0 => \min_reg[5]\(3),
      I1 => \min_reg[5]\(2),
      I2 => \min_reg[3]\,
      I3 => \min[5]_i_3_n_0\,
      I4 => load_pedge,
      I5 => \min_reg[7]\(3),
      O => ff_old_reg_1(3)
    );
\min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6060FF6060606060"
    )
        port map (
      I0 => \min_reg[5]\(4),
      I1 => \min_reg[4]\,
      I2 => \min[5]_i_3_n_0\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \min_reg[7]\(4),
      O => ff_old_reg_1(4)
    );
\min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6A006A006A00"
    )
        port map (
      I0 => \min_reg[5]\(5),
      I1 => \min_reg[5]\(4),
      I2 => \min_reg[4]\,
      I3 => \min[5]_i_3_n_0\,
      I4 => load_pedge,
      I5 => \min_reg[7]\(5),
      O => ff_old_reg_1(5)
    );
\min[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000101"
    )
        port map (
      I0 => \min_reg[5]_0\,
      I1 => \min_reg[5]\(6),
      I2 => \min_reg[5]\(7),
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => \min[5]_i_3_n_0\
    );
\min[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \min_reg[7]\(6),
      O => ff_old_reg_1(6)
    );
\min[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA888"
    )
        port map (
      I0 => \min_reg[0]\,
      I1 => \hour_reg[0]\,
      I2 => \hour_reg[0]_0\,
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_2\,
      I5 => load_pedge,
      O => \sec_reg[7]\(0)
    );
\min[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \min_reg[7]\(7),
      O => ff_old_reg_1(7)
    );
\sec[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03AA0303"
    )
        port map (
      I0 => \sec_reg[7]_0\(0),
      I1 => \sec_reg[5]\(0),
      I2 => \min_reg[0]\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => ff_old_reg_2(0)
    );
\sec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606FF0606060006"
    )
        port map (
      I0 => \sec_reg[5]\(1),
      I1 => \sec_reg[5]\(0),
      I2 => \min_reg[0]\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \sec_reg[7]_0\(1),
      O => ff_old_reg_2(1)
    );
\sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF006A0000006A"
    )
        port map (
      I0 => \sec_reg[5]\(2),
      I1 => \sec_reg[5]\(1),
      I2 => \sec_reg[5]\(0),
      I3 => \min_reg[0]\,
      I4 => load_pedge,
      I5 => \sec_reg[7]_0\(2),
      O => ff_old_reg_2(2)
    );
\sec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF006A0000006A"
    )
        port map (
      I0 => \sec_reg[5]\(3),
      I1 => \sec_reg[5]\(2),
      I2 => \sec_reg[3]\,
      I3 => \min_reg[0]\,
      I4 => load_pedge,
      I5 => \sec_reg[7]_0\(3),
      O => ff_old_reg_2(3)
    );
\sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606FF0606060006"
    )
        port map (
      I0 => \sec_reg[5]\(4),
      I1 => \sec_reg[4]\,
      I2 => \min_reg[0]\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \sec_reg[7]_0\(4),
      O => ff_old_reg_2(4)
    );
\sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF006A0000006A"
    )
        port map (
      I0 => \sec_reg[5]\(5),
      I1 => \sec_reg[5]\(4),
      I2 => \sec_reg[4]\,
      I3 => \min_reg[0]\,
      I4 => load_pedge,
      I5 => \sec_reg[7]_0\(5),
      O => ff_old_reg_2(5)
    );
\sec[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \sec_reg[7]_0\(6),
      O => ff_old_reg_2(6)
    );
\sec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => load_pedge,
      I1 => \sec_reg[0]\(2),
      I2 => \sec_reg[0]\(1),
      I3 => \hour_reg[0]_1\,
      I4 => \hour_reg[0]_0\,
      I5 => \hour_reg[0]\,
      O => \cnt_sysclk_reg[28]\(0)
    );
\sec[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \sec_reg[7]_0\(7),
      O => ff_old_reg_2(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_multiwatch_lcd_myip_watch_0_0_watch is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \hour_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \min_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sec_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rdata_1_sp_1 : in STD_LOGIC;
    s00_axi_rdata_2_sp_1 : in STD_LOGIC;
    s00_axi_rdata_3_sp_1 : in STD_LOGIC;
    s00_axi_rdata_4_sp_1 : in STD_LOGIC;
    s00_axi_rdata_5_sp_1 : in STD_LOGIC;
    s00_axi_rdata_6_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[7]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_multiwatch_lcd_myip_watch_0_0_watch : entity is "watch";
end soc_multiwatch_lcd_myip_watch_0_0_watch;

architecture STRUCTURE of soc_multiwatch_lcd_myip_watch_0_0_watch is
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
  signal \cnt_sysclk[31]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_12_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[31]_i_9_n_0\ : STD_LOGIC;
  signal ed_load_n_1 : STD_LOGIC;
  signal ed_load_n_10 : STD_LOGIC;
  signal ed_load_n_11 : STD_LOGIC;
  signal ed_load_n_12 : STD_LOGIC;
  signal ed_load_n_13 : STD_LOGIC;
  signal ed_load_n_14 : STD_LOGIC;
  signal ed_load_n_15 : STD_LOGIC;
  signal ed_load_n_16 : STD_LOGIC;
  signal ed_load_n_17 : STD_LOGIC;
  signal ed_load_n_18 : STD_LOGIC;
  signal ed_load_n_19 : STD_LOGIC;
  signal ed_load_n_2 : STD_LOGIC;
  signal ed_load_n_20 : STD_LOGIC;
  signal ed_load_n_21 : STD_LOGIC;
  signal ed_load_n_22 : STD_LOGIC;
  signal ed_load_n_23 : STD_LOGIC;
  signal ed_load_n_24 : STD_LOGIC;
  signal ed_load_n_25 : STD_LOGIC;
  signal ed_load_n_26 : STD_LOGIC;
  signal ed_load_n_27 : STD_LOGIC;
  signal ed_load_n_28 : STD_LOGIC;
  signal ed_load_n_29 : STD_LOGIC;
  signal ed_load_n_3 : STD_LOGIC;
  signal ed_load_n_30 : STD_LOGIC;
  signal ed_load_n_31 : STD_LOGIC;
  signal ed_load_n_32 : STD_LOGIC;
  signal ed_load_n_33 : STD_LOGIC;
  signal ed_load_n_34 : STD_LOGIC;
  signal ed_load_n_35 : STD_LOGIC;
  signal ed_load_n_36 : STD_LOGIC;
  signal ed_load_n_37 : STD_LOGIC;
  signal ed_load_n_38 : STD_LOGIC;
  signal ed_load_n_39 : STD_LOGIC;
  signal ed_load_n_4 : STD_LOGIC;
  signal ed_load_n_40 : STD_LOGIC;
  signal ed_load_n_41 : STD_LOGIC;
  signal ed_load_n_42 : STD_LOGIC;
  signal ed_load_n_43 : STD_LOGIC;
  signal ed_load_n_44 : STD_LOGIC;
  signal ed_load_n_45 : STD_LOGIC;
  signal ed_load_n_46 : STD_LOGIC;
  signal ed_load_n_47 : STD_LOGIC;
  signal ed_load_n_48 : STD_LOGIC;
  signal ed_load_n_49 : STD_LOGIC;
  signal ed_load_n_5 : STD_LOGIC;
  signal ed_load_n_50 : STD_LOGIC;
  signal ed_load_n_51 : STD_LOGIC;
  signal ed_load_n_6 : STD_LOGIC;
  signal ed_load_n_7 : STD_LOGIC;
  signal ed_load_n_8 : STD_LOGIC;
  signal ed_load_n_9 : STD_LOGIC;
  signal hour : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \hour[4]_i_3_n_0\ : STD_LOGIC;
  signal \hour[4]_i_4_n_0\ : STD_LOGIC;
  signal \hour[7]_i_3_n_0\ : STD_LOGIC;
  signal min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \min[3]_i_2_n_0\ : STD_LOGIC;
  signal \min[5]_i_2_n_0\ : STD_LOGIC;
  signal \min[5]_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_1_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_2_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_3_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_4_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_5_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_6_sn_1 : STD_LOGIC;
  signal sec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sec[3]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt_sysclk0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \min[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \min[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sec[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sec[5]_i_2\ : label is "soft_lutpair3";
begin
  SR(0) <= \^sr\(0);
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
  s00_axi_rdata_1_sn_1 <= s00_axi_rdata_1_sp_1;
  s00_axi_rdata_2_sn_1 <= s00_axi_rdata_2_sp_1;
  s00_axi_rdata_3_sn_1 <= s00_axi_rdata_3_sp_1;
  s00_axi_rdata_4_sn_1 <= s00_axi_rdata_4_sp_1;
  s00_axi_rdata_5_sn_1 <= s00_axi_rdata_5_sp_1;
  s00_axi_rdata_6_sn_1 <= s00_axi_rdata_6_sp_1;
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
\cnt_sysclk[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(10),
      I1 => cnt_sysclk(11),
      O => \cnt_sysclk[31]_i_10_n_0\
    );
\cnt_sysclk[31]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_sysclk(9),
      I1 => cnt_sysclk(8),
      I2 => cnt_sysclk(12),
      O => \cnt_sysclk[31]_i_11_n_0\
    );
\cnt_sysclk[31]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => cnt_sysclk(18),
      I1 => cnt_sysclk(13),
      I2 => cnt_sysclk(14),
      I3 => cnt_sysclk(16),
      I4 => cnt_sysclk(15),
      O => \cnt_sysclk[31]_i_12_n_0\
    );
\cnt_sysclk[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
        port map (
      I0 => cnt_sysclk(31),
      I1 => cnt_sysclk(26),
      I2 => cnt_sysclk(25),
      I3 => cnt_sysclk(30),
      I4 => cnt_sysclk(29),
      O => \cnt_sysclk[31]_i_2_n_0\
    );
\cnt_sysclk[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_sysclk(21),
      I1 => cnt_sysclk(22),
      I2 => cnt_sysclk(26),
      I3 => cnt_sysclk(20),
      I4 => cnt_sysclk(24),
      I5 => cnt_sysclk(23),
      O => \cnt_sysclk[31]_i_3_n_0\
    );
\cnt_sysclk[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEAAAAAAAAA"
    )
        port map (
      I0 => \cnt_sysclk[31]_i_7_n_0\,
      I1 => \cnt_sysclk[31]_i_8_n_0\,
      I2 => \cnt_sysclk[31]_i_9_n_0\,
      I3 => \cnt_sysclk[31]_i_10_n_0\,
      I4 => \cnt_sysclk[31]_i_11_n_0\,
      I5 => \cnt_sysclk[31]_i_12_n_0\,
      O => \cnt_sysclk[31]_i_4_n_0\
    );
\cnt_sysclk[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(27),
      I1 => cnt_sysclk(28),
      O => \cnt_sysclk[31]_i_5_n_0\
    );
\cnt_sysclk[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => cnt_sysclk(17),
      I1 => cnt_sysclk(18),
      I2 => cnt_sysclk(19),
      O => \cnt_sysclk[31]_i_7_n_0\
    );
\cnt_sysclk[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt_sysclk(7),
      I1 => cnt_sysclk(6),
      I2 => cnt_sysclk(5),
      I3 => cnt_sysclk(4),
      O => \cnt_sysclk[31]_i_8_n_0\
    );
\cnt_sysclk[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt_sysclk(1),
      I1 => cnt_sysclk(0),
      I2 => cnt_sysclk(3),
      I3 => cnt_sysclk(2),
      O => \cnt_sysclk[31]_i_9_n_0\
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_34,
      Q => cnt_sysclk(0)
    );
\cnt_sysclk_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_24,
      Q => cnt_sysclk(10)
    );
\cnt_sysclk_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_23,
      Q => cnt_sysclk(11)
    );
\cnt_sysclk_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_22,
      Q => cnt_sysclk(12)
    );
\cnt_sysclk_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_21,
      Q => cnt_sysclk(13)
    );
\cnt_sysclk_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_20,
      Q => cnt_sysclk(14)
    );
\cnt_sysclk_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_19,
      Q => cnt_sysclk(15)
    );
\cnt_sysclk_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_18,
      Q => cnt_sysclk(16)
    );
\cnt_sysclk_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_17,
      Q => cnt_sysclk(17)
    );
\cnt_sysclk_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_16,
      Q => cnt_sysclk(18)
    );
\cnt_sysclk_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_15,
      Q => cnt_sysclk(19)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_33,
      Q => cnt_sysclk(1)
    );
\cnt_sysclk_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_14,
      Q => cnt_sysclk(20)
    );
\cnt_sysclk_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_13,
      Q => cnt_sysclk(21)
    );
\cnt_sysclk_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_12,
      Q => cnt_sysclk(22)
    );
\cnt_sysclk_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_11,
      Q => cnt_sysclk(23)
    );
\cnt_sysclk_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_10,
      Q => cnt_sysclk(24)
    );
\cnt_sysclk_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_9,
      Q => cnt_sysclk(25)
    );
\cnt_sysclk_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_8,
      Q => cnt_sysclk(26)
    );
\cnt_sysclk_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_7,
      Q => cnt_sysclk(27)
    );
\cnt_sysclk_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_6,
      Q => cnt_sysclk(28)
    );
\cnt_sysclk_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_5,
      Q => cnt_sysclk(29)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_32,
      Q => cnt_sysclk(2)
    );
\cnt_sysclk_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_4,
      Q => cnt_sysclk(30)
    );
\cnt_sysclk_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_3,
      Q => cnt_sysclk(31)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_31,
      Q => cnt_sysclk(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_30,
      Q => cnt_sysclk(4)
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_29,
      Q => cnt_sysclk(5)
    );
\cnt_sysclk_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_28,
      Q => cnt_sysclk(6)
    );
\cnt_sysclk_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_27,
      Q => cnt_sysclk(7)
    );
\cnt_sysclk_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_26,
      Q => cnt_sysclk(8)
    );
\cnt_sysclk_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_load_n_25,
      Q => cnt_sysclk(9)
    );
ed_load: entity work.soc_multiwatch_lcd_myip_watch_0_0_edge_detector_n
     port map (
      AR(0) => \^sr\(0),
      D(31) => ed_load_n_3,
      D(30) => ed_load_n_4,
      D(29) => ed_load_n_5,
      D(28) => ed_load_n_6,
      D(27) => ed_load_n_7,
      D(26) => ed_load_n_8,
      D(25) => ed_load_n_9,
      D(24) => ed_load_n_10,
      D(23) => ed_load_n_11,
      D(22) => ed_load_n_12,
      D(21) => ed_load_n_13,
      D(20) => ed_load_n_14,
      D(19) => ed_load_n_15,
      D(18) => ed_load_n_16,
      D(17) => ed_load_n_17,
      D(16) => ed_load_n_18,
      D(15) => ed_load_n_19,
      D(14) => ed_load_n_20,
      D(13) => ed_load_n_21,
      D(12) => ed_load_n_22,
      D(11) => ed_load_n_23,
      D(10) => ed_load_n_24,
      D(9) => ed_load_n_25,
      D(8) => ed_load_n_26,
      D(7) => ed_load_n_27,
      D(6) => ed_load_n_28,
      D(5) => ed_load_n_29,
      D(4) => ed_load_n_30,
      D(3) => ed_load_n_31,
      D(2) => ed_load_n_32,
      D(1) => ed_load_n_33,
      D(0) => ed_load_n_34,
      E(0) => ed_load_n_1,
      Q(0) => Q(0),
      cnt_sysclk0(30 downto 0) => cnt_sysclk0(31 downto 1),
      \cnt_sysclk_reg[28]\(0) => ed_load_n_35,
      ff_old_reg_0(7) => ed_load_n_36,
      ff_old_reg_0(6) => ed_load_n_37,
      ff_old_reg_0(5) => ed_load_n_38,
      ff_old_reg_0(4) => ed_load_n_39,
      ff_old_reg_0(3) => ed_load_n_40,
      ff_old_reg_0(2) => ed_load_n_41,
      ff_old_reg_0(1) => ed_load_n_42,
      ff_old_reg_0(0) => ed_load_n_43,
      ff_old_reg_1(7) => ed_load_n_44,
      ff_old_reg_1(6) => ed_load_n_45,
      ff_old_reg_1(5) => ed_load_n_46,
      ff_old_reg_1(4) => ed_load_n_47,
      ff_old_reg_1(3) => ed_load_n_48,
      ff_old_reg_1(2) => ed_load_n_49,
      ff_old_reg_1(1) => ed_load_n_50,
      ff_old_reg_1(0) => ed_load_n_51,
      ff_old_reg_2(7 downto 0) => p_1_in(7 downto 0),
      \hour_reg[0]\ => \cnt_sysclk[31]_i_2_n_0\,
      \hour_reg[0]_0\ => \cnt_sysclk[31]_i_3_n_0\,
      \hour_reg[0]_1\ => \cnt_sysclk[31]_i_4_n_0\,
      \hour_reg[0]_2\ => \cnt_sysclk[31]_i_5_n_0\,
      \hour_reg[0]_3\ => \hour[7]_i_3_n_0\,
      \hour_reg[3]\ => \hour[4]_i_3_n_0\,
      \hour_reg[4]\(5) => hour(7),
      \hour_reg[4]\(4 downto 0) => hour(4 downto 0),
      \hour_reg[4]_0\ => \hour[4]_i_4_n_0\,
      \hour_reg[7]\(7 downto 0) => \hour_reg[7]_0\(7 downto 0),
      \min_reg[0]\ => \sec[5]_i_3_n_0\,
      \min_reg[3]\ => \min[3]_i_2_n_0\,
      \min_reg[4]\ => \min[5]_i_2_n_0\,
      \min_reg[5]\(7 downto 0) => min(7 downto 0),
      \min_reg[5]_0\ => \min[5]_i_4_n_0\,
      \min_reg[7]\(7 downto 0) => \min_reg[7]_0\(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \sec_reg[0]\(2 downto 1) => cnt_sysclk(28 downto 27),
      \sec_reg[0]\(0) => cnt_sysclk(0),
      \sec_reg[3]\ => \sec[3]_i_2_n_0\,
      \sec_reg[4]\ => \sec[5]_i_2_n_0\,
      \sec_reg[5]\(5 downto 0) => sec(5 downto 0),
      \sec_reg[7]\(0) => ed_load_n_2,
      \sec_reg[7]_0\(7 downto 0) => \sec_reg[7]_0\(7 downto 0)
    );
\hour[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => hour(2),
      I1 => hour(0),
      I2 => hour(1),
      O => \hour[4]_i_3_n_0\
    );
\hour[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => hour(6),
      I1 => hour(5),
      I2 => hour(1),
      I3 => hour(2),
      I4 => hour(4),
      I5 => hour(0),
      O => \hour[4]_i_4_n_0\
    );
\hour[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFE00"
    )
        port map (
      I0 => \min[5]_i_4_n_0\,
      I1 => min(6),
      I2 => min(7),
      I3 => \sec[5]_i_4_n_0\,
      I4 => sec(6),
      I5 => sec(7),
      O => \hour[7]_i_3_n_0\
    );
\hour_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_1,
      CLR => \^sr\(0),
      D => ed_load_n_43,
      Q => hour(0)
    );
\hour_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_1,
      CLR => \^sr\(0),
      D => ed_load_n_42,
      Q => hour(1)
    );
\hour_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_1,
      CLR => \^sr\(0),
      D => ed_load_n_41,
      Q => hour(2)
    );
\hour_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_1,
      CLR => \^sr\(0),
      D => ed_load_n_40,
      Q => hour(3)
    );
\hour_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_1,
      CLR => \^sr\(0),
      D => ed_load_n_39,
      Q => hour(4)
    );
\hour_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_1,
      CLR => \^sr\(0),
      D => ed_load_n_38,
      Q => hour(5)
    );
\hour_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_1,
      CLR => \^sr\(0),
      D => ed_load_n_37,
      Q => hour(6)
    );
\hour_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_1,
      CLR => \^sr\(0),
      D => ed_load_n_36,
      Q => hour(7)
    );
\min[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => min(1),
      I1 => min(0),
      O => \min[3]_i_2_n_0\
    );
\min[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => min(3),
      I1 => min(1),
      I2 => min(0),
      I3 => min(2),
      O => \min[5]_i_2_n_0\
    );
\min[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080008000"
    )
        port map (
      I0 => min(4),
      I1 => min(3),
      I2 => min(5),
      I3 => min(2),
      I4 => min(0),
      I5 => min(1),
      O => \min[5]_i_4_n_0\
    );
\min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_2,
      CLR => \^sr\(0),
      D => ed_load_n_51,
      Q => min(0)
    );
\min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_2,
      CLR => \^sr\(0),
      D => ed_load_n_50,
      Q => min(1)
    );
\min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_2,
      CLR => \^sr\(0),
      D => ed_load_n_49,
      Q => min(2)
    );
\min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_2,
      CLR => \^sr\(0),
      D => ed_load_n_48,
      Q => min(3)
    );
\min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_2,
      CLR => \^sr\(0),
      D => ed_load_n_47,
      Q => min(4)
    );
\min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_2,
      CLR => \^sr\(0),
      D => ed_load_n_46,
      Q => min(5)
    );
\min_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_2,
      CLR => \^sr\(0),
      D => ed_load_n_45,
      Q => min(6)
    );
\min_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_2,
      CLR => \^sr\(0),
      D => ed_load_n_44,
      Q => min(7)
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_0_sn_1,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => min(0),
      I1 => \s00_axi_rdata[7]\(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => hour(0),
      I5 => sec(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_1_sn_1,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => min(1),
      I1 => \s00_axi_rdata[7]\(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => hour(1),
      I5 => sec(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_2_sn_1,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => min(2),
      I1 => \s00_axi_rdata[7]\(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => hour(2),
      I5 => sec(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_3_sn_1,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => min(3),
      I1 => \s00_axi_rdata[7]\(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => hour(3),
      I5 => sec(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_4_sn_1,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => min(4),
      I1 => \s00_axi_rdata[7]\(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => hour(4),
      I5 => sec(4),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_5_sn_1,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => min(5),
      I1 => \s00_axi_rdata[7]\(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => hour(5),
      I5 => sec(5),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => s00_axi_rdata_6_sn_1,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => min(6),
      I1 => \s00_axi_rdata[7]\(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => hour(6),
      I5 => sec(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => min(7),
      I1 => \s00_axi_rdata[7]\(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => hour(7),
      I5 => sec(7),
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\sec[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sec(1),
      I1 => sec(0),
      O => \sec[3]_i_2_n_0\
    );
\sec[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sec(3),
      I1 => sec(1),
      I2 => sec(0),
      I3 => sec(2),
      O => \sec[5]_i_2_n_0\
    );
\sec[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sec(7),
      I1 => sec(6),
      I2 => \sec[5]_i_4_n_0\,
      O => \sec[5]_i_3_n_0\
    );
\sec[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080008000"
    )
        port map (
      I0 => sec(4),
      I1 => sec(3),
      I2 => sec(5),
      I3 => sec(2),
      I4 => sec(0),
      I5 => sec(1),
      O => \sec[5]_i_4_n_0\
    );
\sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_35,
      CLR => \^sr\(0),
      D => p_1_in(0),
      Q => sec(0)
    );
\sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_35,
      CLR => \^sr\(0),
      D => p_1_in(1),
      Q => sec(1)
    );
\sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_35,
      CLR => \^sr\(0),
      D => p_1_in(2),
      Q => sec(2)
    );
\sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_35,
      CLR => \^sr\(0),
      D => p_1_in(3),
      Q => sec(3)
    );
\sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_35,
      CLR => \^sr\(0),
      D => p_1_in(4),
      Q => sec(4)
    );
\sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_35,
      CLR => \^sr\(0),
      D => p_1_in(5),
      Q => sec(5)
    );
\sec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_35,
      CLR => \^sr\(0),
      D => p_1_in(6),
      Q => sec(6)
    );
\sec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_load_n_35,
      CLR => \^sr\(0),
      D => p_1_in(7),
      Q => sec(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_multiwatch_lcd_myip_watch_0_0_myip_watch_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_multiwatch_lcd_myip_watch_0_0_myip_watch_slave_lite_v1_0_S00_AXI : entity is "myip_watch_slave_lite_v1_0_S00_AXI";
end soc_multiwatch_lcd_myip_watch_0_0_myip_watch_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of soc_multiwatch_lcd_myip_watch_0_0_myip_watch_slave_lite_v1_0_S00_AXI is
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
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
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
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
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
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal watch_inst_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_4\ : label is "soft_lutpair8";
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
      R => watch_inst_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => watch_inst_n_0
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
      R => watch_inst_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => watch_inst_n_0
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
      R => watch_inst_n_0
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
      R => watch_inst_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => watch_inst_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => watch_inst_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFCCCF4F"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => state_write(0),
      I3 => s00_axi_wvalid,
      I4 => state_write(1),
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => watch_inst_n_0
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
      R => watch_inst_n_0
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
      R => watch_inst_n_0
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
      R => watch_inst_n_0
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => slv_reg3(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(0),
      I5 => slv_reg2(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg3(10),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(10),
      I5 => slv_reg2(10),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg3(11),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(11),
      I5 => slv_reg2(11),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg3(12),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(12),
      I5 => slv_reg2(12),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg3(13),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(13),
      I5 => slv_reg2(13),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg3(14),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(14),
      I5 => slv_reg2(14),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg3(15),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(15),
      I5 => slv_reg2(15),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg3(16),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(16),
      I5 => slv_reg2(16),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg3(17),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(17),
      I5 => slv_reg2(17),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg3(18),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(18),
      I5 => slv_reg2(18),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg3(19),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(19),
      I5 => slv_reg2(19),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg3(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(1),
      I5 => slv_reg2(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg3(20),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(20),
      I5 => slv_reg2(20),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg3(21),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(21),
      I5 => slv_reg2(21),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg3(22),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(22),
      I5 => slv_reg2(22),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg3(23),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(23),
      I5 => slv_reg2(23),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg3(24),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(24),
      I5 => slv_reg2(24),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg3(25),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(25),
      I5 => slv_reg2(25),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg3(26),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(26),
      I5 => slv_reg2(26),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg3(27),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(27),
      I5 => slv_reg2(27),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg3(28),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(28),
      I5 => slv_reg2(28),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg3(29),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(29),
      I5 => slv_reg2(29),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg3(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(2),
      I5 => slv_reg2(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg3(30),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(30),
      I5 => slv_reg2(30),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg3(31),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(31),
      I5 => slv_reg2(31),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg3(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(3),
      I5 => slv_reg2(3),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg3(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(4),
      I5 => slv_reg2(4),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg3(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(5),
      I5 => slv_reg2(5),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg3(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(6),
      I5 => slv_reg2(6),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg3(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(7),
      I5 => slv_reg2(7),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg3(8),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(8),
      I5 => slv_reg2(8),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg3(9),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => slv_reg0(9),
      I5 => slv_reg2(9),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
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
      INIT => X"0001110100000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_4_n_0\,
      I1 => \slv_reg3[31]_i_3_n_0\,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      I5 => s00_axi_wvalid,
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
      R => watch_inst_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => watch_inst_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => watch_inst_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => watch_inst_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => watch_inst_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => watch_inst_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => watch_inst_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => watch_inst_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => watch_inst_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => watch_inst_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => watch_inst_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => watch_inst_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => watch_inst_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => watch_inst_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => watch_inst_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => watch_inst_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => watch_inst_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => watch_inst_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => watch_inst_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => watch_inst_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => watch_inst_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => watch_inst_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => watch_inst_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => watch_inst_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => watch_inst_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => watch_inst_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => watch_inst_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => watch_inst_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => watch_inst_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => watch_inst_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => watch_inst_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => watch_inst_n_0
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
      I4 => \slv_reg3[31]_i_3_n_0\,
      I5 => \slv_reg3[31]_i_4_n_0\,
      O => \slv_reg1[31]_i_2_n_0\
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
      Q => slv_reg1(0),
      R => watch_inst_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => watch_inst_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => watch_inst_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => watch_inst_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => watch_inst_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => watch_inst_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => watch_inst_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => watch_inst_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => watch_inst_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => watch_inst_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => watch_inst_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => watch_inst_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => watch_inst_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => watch_inst_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => watch_inst_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => watch_inst_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => watch_inst_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => watch_inst_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => watch_inst_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => watch_inst_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => watch_inst_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => watch_inst_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => watch_inst_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => watch_inst_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => watch_inst_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => watch_inst_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => watch_inst_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => watch_inst_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => watch_inst_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => watch_inst_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => watch_inst_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => watch_inst_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0151000000000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_4_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => \slv_reg3[31]_i_3_n_0\,
      I5 => s00_axi_wvalid,
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg2[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => watch_inst_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => watch_inst_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => watch_inst_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => watch_inst_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => watch_inst_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => watch_inst_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => watch_inst_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => watch_inst_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => watch_inst_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => watch_inst_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => watch_inst_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => watch_inst_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => watch_inst_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => watch_inst_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => watch_inst_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => watch_inst_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => watch_inst_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => watch_inst_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => watch_inst_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => watch_inst_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => watch_inst_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => watch_inst_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => watch_inst_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => watch_inst_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => watch_inst_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => watch_inst_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => watch_inst_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => watch_inst_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => watch_inst_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => watch_inst_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => watch_inst_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => watch_inst_n_0
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
      I4 => \slv_reg3[31]_i_3_n_0\,
      I5 => \slv_reg3[31]_i_4_n_0\,
      O => \slv_reg3[31]_i_2_n_0\
    );
\slv_reg3[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg3[31]_i_3_n_0\
    );
\slv_reg3[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg3[31]_i_4_n_0\
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
      R => watch_inst_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => watch_inst_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => watch_inst_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => watch_inst_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => watch_inst_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => watch_inst_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => watch_inst_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => watch_inst_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => watch_inst_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => watch_inst_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => watch_inst_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => watch_inst_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => watch_inst_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => watch_inst_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => watch_inst_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => watch_inst_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => watch_inst_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => watch_inst_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => watch_inst_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => watch_inst_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => watch_inst_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => watch_inst_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => watch_inst_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => watch_inst_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => watch_inst_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => watch_inst_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => watch_inst_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => watch_inst_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => watch_inst_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => watch_inst_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => watch_inst_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => watch_inst_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808000000000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(0),
      I4 => \slv_reg3[31]_i_4_n_0\,
      I5 => s00_axi_wvalid,
      O => \slv_reg7[31]_i_2_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \slv_reg7[31]_i_2_n_0\,
      I1 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => watch_inst_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => watch_inst_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => watch_inst_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => watch_inst_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => watch_inst_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => watch_inst_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => watch_inst_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => watch_inst_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => watch_inst_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => watch_inst_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => watch_inst_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => watch_inst_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => watch_inst_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => watch_inst_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => watch_inst_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => watch_inst_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => watch_inst_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => watch_inst_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => watch_inst_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => watch_inst_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => watch_inst_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => watch_inst_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => watch_inst_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => watch_inst_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => watch_inst_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => watch_inst_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => watch_inst_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => watch_inst_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => watch_inst_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => watch_inst_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => watch_inst_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => watch_inst_n_0
    );
watch_inst: entity work.soc_multiwatch_lcd_myip_watch_0_0_watch
     port map (
      Q(0) => slv_reg3(0),
      SR(0) => watch_inst_n_0,
      \hour_reg[7]_0\(7 downto 0) => slv_reg0(7 downto 0),
      \min_reg[7]_0\(7 downto 0) => slv_reg1(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(7 downto 0) => s00_axi_rdata(7 downto 0),
      \s00_axi_rdata[7]\(7 downto 0) => slv_reg7(7 downto 0),
      \s00_axi_rdata[7]_0\ => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      s00_axi_rdata_0_sp_1 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      s00_axi_rdata_1_sp_1 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      s00_axi_rdata_2_sp_1 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      s00_axi_rdata_3_sp_1 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      s00_axi_rdata_4_sp_1 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      s00_axi_rdata_5_sp_1 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      s00_axi_rdata_6_sp_1 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      \sec_reg[7]_0\(7 downto 0) => slv_reg2(7 downto 0),
      sel0(2 downto 0) => sel0(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_multiwatch_lcd_myip_watch_0_0_myip_watch is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_multiwatch_lcd_myip_watch_0_0_myip_watch : entity is "myip_watch";
end soc_multiwatch_lcd_myip_watch_0_0_myip_watch;

architecture STRUCTURE of soc_multiwatch_lcd_myip_watch_0_0_myip_watch is
begin
myip_watch_slave_lite_v1_0_S00_AXI_inst: entity work.soc_multiwatch_lcd_myip_watch_0_0_myip_watch_slave_lite_v1_0_S00_AXI
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
entity soc_multiwatch_lcd_myip_watch_0_0 is
  port (
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
  attribute NotValidForBitStream of soc_multiwatch_lcd_myip_watch_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_multiwatch_lcd_myip_watch_0_0 : entity is "soc_multiwatch_lcd_myip_watch_0_0,myip_watch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_multiwatch_lcd_myip_watch_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of soc_multiwatch_lcd_myip_watch_0_0 : entity is "myip_watch,Vivado 2024.2";
end soc_multiwatch_lcd_myip_watch_0_0;

architecture STRUCTURE of soc_multiwatch_lcd_myip_watch_0_0 is
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
inst: entity work.soc_multiwatch_lcd_myip_watch_0_0_myip_watch
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
