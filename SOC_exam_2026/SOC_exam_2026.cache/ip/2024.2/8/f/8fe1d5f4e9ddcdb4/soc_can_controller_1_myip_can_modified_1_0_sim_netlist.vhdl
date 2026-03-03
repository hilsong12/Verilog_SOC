-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Feb  6 12:13:39 2026
-- Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_can_controller_1_myip_can_modified_1_0_sim_netlist.vhdl
-- Design      : soc_can_controller_1_myip_can_modified_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_bit_timing is
  port (
    can_rx_reg : out STD_LOGIC;
    s00_axi_aresetn_0 : out STD_LOGIC;
    sample_en : out STD_LOGIC;
    rx_sync_2 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aresetn : in STD_LOGIC;
    tq_tick : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_bit_timing;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_bit_timing is
  signal \^can_rx_reg\ : STD_LOGIC;
  signal \^sample_en\ : STD_LOGIC;
  signal tq_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \tq_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \tq_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \tq_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \tq_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \tq_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \tq_cnt[4]_i_3_n_0\ : STD_LOGIC;
begin
  can_rx_reg <= \^can_rx_reg\;
  sample_en <= \^sample_en\;
\FSM_sequential_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => tq_cnt(4),
      I1 => tq_cnt(0),
      I2 => tq_tick,
      I3 => tq_cnt(3),
      I4 => tq_cnt(1),
      I5 => tq_cnt(2),
      O => \^sample_en\
    );
can_rx_reg_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rx_sync_2,
      PRE => AR(0),
      Q => \^can_rx_reg\
    );
\data_shift[63]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^sample_en\,
      I1 => s00_axi_aresetn,
      O => s00_axi_aresetn_0
    );
\tq_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000133"
    )
        port map (
      I0 => tq_cnt(2),
      I1 => \tq_cnt[4]_i_3_n_0\,
      I2 => tq_cnt(3),
      I3 => tq_cnt(4),
      I4 => tq_cnt(0),
      O => \tq_cnt[0]_i_1_n_0\
    );
\tq_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000013301330000"
    )
        port map (
      I0 => tq_cnt(2),
      I1 => \tq_cnt[4]_i_3_n_0\,
      I2 => tq_cnt(3),
      I3 => tq_cnt(4),
      I4 => tq_cnt(1),
      I5 => tq_cnt(0),
      O => \tq_cnt[1]_i_1_n_0\
    );
\tq_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006A0000006A006A"
    )
        port map (
      I0 => tq_cnt(2),
      I1 => tq_cnt(1),
      I2 => tq_cnt(0),
      I3 => tq_cnt(4),
      I4 => rx_sync_2,
      I5 => \^can_rx_reg\,
      O => \tq_cnt[2]_i_1_n_0\
    );
\tq_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111111110000000"
    )
        port map (
      I0 => \tq_cnt[4]_i_3_n_0\,
      I1 => tq_cnt(4),
      I2 => tq_cnt(2),
      I3 => tq_cnt(1),
      I4 => tq_cnt(0),
      I5 => tq_cnt(3),
      O => \tq_cnt[3]_i_1_n_0\
    );
\tq_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000040404"
    )
        port map (
      I0 => \tq_cnt[4]_i_3_n_0\,
      I1 => tq_cnt(4),
      I2 => tq_cnt(3),
      I3 => tq_cnt(0),
      I4 => tq_cnt(1),
      I5 => tq_cnt(2),
      O => \tq_cnt[4]_i_2_n_0\
    );
\tq_cnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^can_rx_reg\,
      I1 => rx_sync_2,
      O => \tq_cnt[4]_i_3_n_0\
    );
\tq_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \tq_cnt[0]_i_1_n_0\,
      Q => tq_cnt(0)
    );
\tq_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \tq_cnt[1]_i_1_n_0\,
      Q => tq_cnt(1)
    );
\tq_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \tq_cnt[2]_i_1_n_0\,
      Q => tq_cnt(2)
    );
\tq_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \tq_cnt[3]_i_1_n_0\,
      Q => tq_cnt(3)
    );
\tq_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \tq_cnt[4]_i_2_n_0\,
      Q => tq_cnt(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_prescaler is
  port (
    tq_tick : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_sync_2 : in STD_LOGIC;
    can_rx_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_prescaler;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_prescaler is
  signal \sys_clk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \sys_clk_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \sys_clk_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \sys_clk_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \sys_clk_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \sys_clk_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \^tq_tick\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sys_clk_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sys_clk_cnt[2]_i_1\ : label is "soft_lutpair0";
begin
  tq_tick <= \^tq_tick\;
\sys_clk_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sys_clk_cnt_reg_n_0_[2]\,
      I1 => \sys_clk_cnt_reg_n_0_[0]\,
      O => \sys_clk_cnt[0]_i_1_n_0\
    );
\sys_clk_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \sys_clk_cnt_reg_n_0_[1]\,
      I1 => \sys_clk_cnt_reg_n_0_[0]\,
      I2 => \sys_clk_cnt_reg_n_0_[2]\,
      O => \sys_clk_cnt[1]_i_1_n_0\
    );
\sys_clk_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \sys_clk_cnt_reg_n_0_[1]\,
      I1 => \sys_clk_cnt_reg_n_0_[0]\,
      I2 => \sys_clk_cnt_reg_n_0_[2]\,
      O => \sys_clk_cnt[2]_i_1_n_0\
    );
\sys_clk_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \sys_clk_cnt[0]_i_1_n_0\,
      Q => \sys_clk_cnt_reg_n_0_[0]\
    );
\sys_clk_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \sys_clk_cnt[1]_i_1_n_0\,
      Q => \sys_clk_cnt_reg_n_0_[1]\
    );
\sys_clk_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \sys_clk_cnt[2]_i_1_n_0\,
      Q => \sys_clk_cnt_reg_n_0_[2]\
    );
\tq_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^tq_tick\,
      I1 => rx_sync_2,
      I2 => can_rx_reg,
      O => E(0)
    );
tq_tick_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \sys_clk_cnt_reg_n_0_[2]\,
      Q => \^tq_tick\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_rx_core is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_valid_w : out STD_LOGIC;
    ack_signal_core : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rx_id_reg[10]_0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \rx_data_reg[63]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    rx_sync_2 : in STD_LOGIC;
    sample_en : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    slv_reg1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_rx_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_rx_core is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_5__0_n_0\ : STD_LOGIC;
  signal ack_out_i_1_n_0 : STD_LOGIC;
  signal \^ack_signal_core\ : STD_LOGIC;
  signal bit_cnt : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal bit_cnt1 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \bit_cnt[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_10__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_6__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_7__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_8__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_9_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal data_shift : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \data_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[23]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[32]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[33]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[34]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[35]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[36]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[37]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[38]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[39]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[39]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[40]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[41]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[42]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[43]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[44]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[45]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[46]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[47]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[47]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[48]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[49]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[50]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[51]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[52]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[53]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[54]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[55]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[55]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[56]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[56]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[57]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[57]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[58]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[58]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[59]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[59]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[60]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[60]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[61]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[61]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[62]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[62]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[63]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[63]_i_2_n_0\ : STD_LOGIC;
  signal \data_shift[63]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_shift[63]_i_4_n_0\ : STD_LOGIC;
  signal \data_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_shift[9]_i_1_n_0\ : STD_LOGIC;
  signal \dlc_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \dlc_shift[0]_i_2_n_0\ : STD_LOGIC;
  signal \dlc_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \dlc_shift[1]_i_2_n_0\ : STD_LOGIC;
  signal \dlc_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \dlc_shift[2]_i_2_n_0\ : STD_LOGIC;
  signal \dlc_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \dlc_shift[3]_i_2_n_0\ : STD_LOGIC;
  signal \dlc_shift[3]_i_3_n_0\ : STD_LOGIC;
  signal \dlc_shift_reg_n_0_[0]\ : STD_LOGIC;
  signal id_shift : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \id_shift[0]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[10]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[10]_i_2_n_0\ : STD_LOGIC;
  signal \id_shift[10]_i_3_n_0\ : STD_LOGIC;
  signal \id_shift[1]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[2]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[3]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[4]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[4]_i_2_n_0\ : STD_LOGIC;
  signal \id_shift[5]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[6]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[6]_i_2_n_0\ : STD_LOGIC;
  signal \id_shift[7]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[7]_i_2_n_0\ : STD_LOGIC;
  signal \id_shift[7]_i_3_n_0\ : STD_LOGIC;
  signal \id_shift[8]_i_1_n_0\ : STD_LOGIC;
  signal \id_shift[9]_i_1_n_0\ : STD_LOGIC;
  signal \last_bit_val__0\ : STD_LOGIC;
  signal \last_bit_val_i_1__0_n_0\ : STD_LOGIC;
  signal rx_done_tick_i_1_n_0 : STD_LOGIC;
  signal \rx_id[10]_i_1_n_0\ : STD_LOGIC;
  signal \^rx_valid_w\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \stuff_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \stuff_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \stuff_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \stuff_cnt_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_5__0\ : label is "soft_lutpair13";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDE:0010,DLC:0011,ID:0001,EOF:1001,IDLE:0000,CRCDEL:0110,ACKDEL:1000,CRC:0101,ACK:0111,DATA:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDE:0010,DLC:0011,ID:0001,EOF:1001,IDLE:0000,CRCDEL:0110,ACKDEL:1000,CRC:0101,ACK:0111,DATA:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDE:0010,DLC:0011,ID:0001,EOF:1001,IDLE:0000,CRCDEL:0110,ACKDEL:1000,CRC:0101,ACK:0111,DATA:0100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "IDE:0010,DLC:0011,ID:0001,EOF:1001,IDLE:0000,CRCDEL:0110,ACKDEL:1000,CRC:0101,ACK:0111,DATA:0100";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_2__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_2__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_5__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bit_cnt[5]_i_2__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_5__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_7__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_shift[23]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_shift[31]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_shift[39]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_shift[47]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_shift[55]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \data_shift[56]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_shift[57]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_shift[58]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_shift[59]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_shift[60]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_shift[61]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_shift[62]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_shift[63]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_shift[63]_i_3__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \id_shift[10]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \id_shift[7]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \id_shift[7]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \stuff_cnt[0]_i_2__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \stuff_cnt[2]_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \stuff_cnt[2]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \stuff_cnt[2]_i_4\ : label is "soft_lutpair15";
begin
  AR(0) <= \^ar\(0);
  ack_signal_core <= \^ack_signal_core\;
  rx_valid_w <= \^rx_valid_w\;
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000FFFF"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \FSM_sequential_state[0]_i_2__0_n_0\,
      I4 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => bit_cnt1(2),
      I1 => rx_sync_2,
      I2 => bit_cnt1(1),
      I3 => bit_cnt1(3),
      O => \FSM_sequential_state[0]_i_2__0_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(3),
      O => \state__1\(1)
    );
\FSM_sequential_state[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1444"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \state__1\(2)
    );
\FSM_sequential_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"544F000000000000"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \FSM_sequential_state[3]_i_3__0_n_0\,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state[3]_i_4__0_n_0\,
      I5 => sample_en,
      O => \FSM_sequential_state[3]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(3),
      O => \state__1\(3)
    );
\FSM_sequential_state[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \bit_cnt[3]_i_6_n_0\,
      O => \FSM_sequential_state[3]_i_3__0_n_0\
    );
\FSM_sequential_state[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFAFFFBFFFB"
    )
        port map (
      I0 => \state__0\(3),
      I1 => rx_sync_2,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state[3]_i_3__0_n_0\,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[3]_i_4__0_n_0\
    );
\FSM_sequential_state[3]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \stuff_cnt_reg_n_0_[1]\,
      I1 => \stuff_cnt_reg_n_0_[0]\,
      I2 => \stuff_cnt_reg_n_0_[2]\,
      O => \FSM_sequential_state[3]_i_5__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \state__1\(1),
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \state__1\(2),
      Q => \state__0\(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state[3]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \state__1\(3),
      Q => \state__0\(3)
    );
ack_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7F00000202"
    )
        port map (
      I0 => sample_en,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(3),
      I4 => \state__0\(0),
      I5 => \^ack_signal_core\,
      O => ack_out_i_1_n_0
    );
ack_out_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ack_out_i_1_n_0,
      PRE => \^ar\(0),
      Q => \^ack_signal_core\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\bit_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFD5FFFD"
    )
        port map (
      I0 => \bit_cnt[0]_i_2__0_n_0\,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \bit_cnt[0]_i_3__0_n_0\,
      I5 => \bit_cnt[0]_i_4_n_0\,
      O => bit_cnt(0)
    );
\bit_cnt[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => bit_cnt1(3),
      I1 => bit_cnt1(1),
      I2 => rx_sync_2,
      I3 => bit_cnt1(2),
      I4 => \state__0\(1),
      O => \bit_cnt[0]_i_2__0_n_0\
    );
\bit_cnt[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[5]\,
      I2 => \bit_cnt_reg_n_0_[6]\,
      I3 => \bit_cnt_reg_n_0_[4]\,
      I4 => \bit_cnt_reg_n_0_[3]\,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[0]_i_3__0_n_0\
    );
\bit_cnt[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \state__0\(3),
      O => \bit_cnt[0]_i_4_n_0\
    );
\bit_cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05FF0001000105FF"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \bit_cnt_reg_n_0_[1]\,
      O => bit_cnt(1)
    );
\bit_cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F00700000000"
    )
        port map (
      I0 => \bit_cnt[2]_i_2_n_0\,
      I1 => \bit_cnt[3]_i_6_n_0\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \bit_cnt[6]_i_5__0_n_0\,
      O => bit_cnt(2)
    );
\bit_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      O => \bit_cnt[2]_i_2_n_0\
    );
\bit_cnt[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0D0C0D0CFF0C0D"
    )
        port map (
      I0 => \bit_cnt[3]_i_2__0_n_0\,
      I1 => \bit_cnt[3]_i_3__0_n_0\,
      I2 => \state__0\(3),
      I3 => \bit_cnt[3]_i_4_n_0\,
      I4 => \bit_cnt[3]_i_5_n_0\,
      I5 => \bit_cnt[3]_i_6_n_0\,
      O => bit_cnt(3)
    );
\bit_cnt[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CBC00B0"
    )
        port map (
      I0 => \bit_cnt[6]_i_3__0_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \bit_cnt[3]_i_6_n_0\,
      O => \bit_cnt[3]_i_2__0_n_0\
    );
\bit_cnt[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101C101010101"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => rx_sync_2,
      I5 => \bit_cnt[0]_i_3__0_n_0\,
      O => \bit_cnt[3]_i_3__0_n_0\
    );
\bit_cnt[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[3]_i_4_n_0\
    );
\bit_cnt[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      O => \bit_cnt[3]_i_5_n_0\
    );
\bit_cnt[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[6]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[3]_i_6_n_0\
    );
\bit_cnt[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82A080A082A082A0"
    )
        port map (
      I0 => \bit_cnt[6]_i_5__0_n_0\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt[4]_i_2__0_n_0\,
      I4 => \bit_cnt[4]_i_3__0_n_0\,
      I5 => \bit_cnt[4]_i_4_n_0\,
      O => bit_cnt(4)
    );
\bit_cnt[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[4]_i_2__0_n_0\
    );
\bit_cnt[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF155"
    )
        port map (
      I0 => \bit_cnt[4]_i_5__0_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \bit_cnt_reg_n_0_[6]\,
      I5 => \bit_cnt_reg_n_0_[5]\,
      O => \bit_cnt[4]_i_3__0_n_0\
    );
\bit_cnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFFFFFFFF57FF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => bit_cnt1(2),
      I2 => bit_cnt1(3),
      I3 => \state__0\(0),
      I4 => rx_sync_2,
      I5 => bit_cnt1(1),
      O => \bit_cnt[4]_i_4_n_0\
    );
\bit_cnt[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000101"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[4]\,
      I4 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[4]_i_5__0_n_0\
    );
\bit_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5522552000000000"
    )
        port map (
      I0 => \bit_cnt[5]_i_2__0_n_0\,
      I1 => \bit_cnt[5]_i_3__0_n_0\,
      I2 => \state__0\(0),
      I3 => \bit_cnt_reg_n_0_[5]\,
      I4 => \bit_cnt_reg_n_0_[6]\,
      I5 => \bit_cnt[6]_i_5__0_n_0\,
      O => bit_cnt(5)
    );
\bit_cnt[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[4]\,
      I4 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[5]_i_2__0_n_0\
    );
\bit_cnt[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF56"
    )
        port map (
      I0 => bit_cnt1(2),
      I1 => bit_cnt1(1),
      I2 => rx_sync_2,
      I3 => \bit_cnt[0]_i_2__0_n_0\,
      I4 => \bit_cnt_reg_n_0_[6]\,
      I5 => \state__0\(2),
      O => \bit_cnt[5]_i_3__0_n_0\
    );
\bit_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000000000000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \bit_cnt[6]_i_3__0_n_0\,
      I3 => \bit_cnt[6]_i_4__0_n_0\,
      I4 => sample_en,
      I5 => s00_axi_aresetn,
      O => \bit_cnt[6]_i_1_n_0\
    );
\bit_cnt[6]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFAE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[6]_i_10__0_n_0\
    );
\bit_cnt[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0800080AAAAAAAA"
    )
        port map (
      I0 => \bit_cnt[6]_i_5__0_n_0\,
      I1 => \bit_cnt[6]_i_6__0_n_0\,
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      I4 => \bit_cnt[6]_i_3__0_n_0\,
      I5 => \bit_cnt[6]_i_7__0_n_0\,
      O => bit_cnt(6)
    );
\bit_cnt[6]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \bit_cnt[6]_i_8__0_n_0\,
      I1 => \bit_cnt_reg_n_0_[4]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[6]_i_3__0_n_0\
    );
\bit_cnt[6]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000303030311"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \state__0\(3),
      I2 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => \bit_cnt[6]_i_4__0_n_0\
    );
\bit_cnt[6]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \bit_cnt[6]_i_5__0_n_0\
    );
\bit_cnt[6]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => bit_cnt1(3),
      I1 => \bit_cnt[6]_i_9_n_0\,
      I2 => \bit_cnt[6]_i_8__0_n_0\,
      I3 => \bit_cnt_reg_n_0_[4]\,
      I4 => \state__0\(1),
      I5 => \bit_cnt[6]_i_10__0_n_0\,
      O => \bit_cnt[6]_i_6__0_n_0\
    );
\bit_cnt[6]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0004FFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt[4]_i_2__0_n_0\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \bit_cnt_reg_n_0_[6]\,
      O => \bit_cnt[6]_i_7__0_n_0\
    );
\bit_cnt[6]_i_8__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[6]\,
      I1 => \bit_cnt_reg_n_0_[5]\,
      O => \bit_cnt[6]_i_8__0_n_0\
    );
\bit_cnt[6]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bit_cnt1(1),
      I1 => rx_sync_2,
      I2 => bit_cnt1(2),
      O => \bit_cnt[6]_i_9_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1_n_0\,
      D => bit_cnt(0),
      Q => \bit_cnt_reg_n_0_[0]\,
      R => '0'
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1_n_0\,
      D => bit_cnt(1),
      Q => \bit_cnt_reg_n_0_[1]\,
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1_n_0\,
      D => bit_cnt(2),
      Q => \bit_cnt_reg_n_0_[2]\,
      R => '0'
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1_n_0\,
      D => bit_cnt(3),
      Q => \bit_cnt_reg_n_0_[3]\,
      R => '0'
    );
\bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1_n_0\,
      D => bit_cnt(4),
      Q => \bit_cnt_reg_n_0_[4]\,
      R => '0'
    );
\bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1_n_0\,
      D => bit_cnt(5),
      Q => \bit_cnt_reg_n_0_[5]\,
      R => '0'
    );
\bit_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1_n_0\,
      D => bit_cnt(6),
      Q => \bit_cnt_reg_n_0_[6]\,
      R => '0'
    );
\data_shift[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[56]_i_2_n_0\,
      I2 => \bit_cnt[3]_i_6_n_0\,
      I3 => data_shift(0),
      O => \data_shift[0]_i_1_n_0\
    );
\data_shift[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[10]_i_2_n_0\,
      I2 => \data_shift[58]_i_2_n_0\,
      I3 => data_shift(10),
      O => \data_shift[10]_i_1_n_0\
    );
\data_shift[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[10]_i_2_n_0\,
      I2 => \data_shift[59]_i_2_n_0\,
      I3 => data_shift(11),
      O => \data_shift[11]_i_1_n_0\
    );
\data_shift[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[10]_i_2_n_0\,
      I2 => \data_shift[60]_i_2_n_0\,
      I3 => data_shift(12),
      O => \data_shift[12]_i_1_n_0\
    );
\data_shift[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[10]_i_2_n_0\,
      I2 => \data_shift[61]_i_2_n_0\,
      I3 => data_shift(13),
      O => \data_shift[13]_i_1_n_0\
    );
\data_shift[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[10]_i_2_n_0\,
      I2 => \data_shift[62]_i_2_n_0\,
      I3 => data_shift(14),
      O => \data_shift[14]_i_1_n_0\
    );
\data_shift[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[10]_i_2_n_0\,
      I2 => \data_shift[63]_i_2_n_0\,
      I3 => data_shift(15),
      O => \data_shift[15]_i_1_n_0\
    );
\data_shift[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[56]_i_2_n_0\,
      I2 => \data_shift[23]_i_2_n_0\,
      I3 => data_shift(16),
      O => \data_shift[16]_i_1_n_0\
    );
\data_shift[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[57]_i_2_n_0\,
      I2 => \data_shift[23]_i_2_n_0\,
      I3 => data_shift(17),
      O => \data_shift[17]_i_1_n_0\
    );
\data_shift[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[58]_i_2_n_0\,
      I2 => \data_shift[23]_i_2_n_0\,
      I3 => data_shift(18),
      O => \data_shift[18]_i_1_n_0\
    );
\data_shift[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[59]_i_2_n_0\,
      I2 => \data_shift[23]_i_2_n_0\,
      I3 => data_shift(19),
      O => \data_shift[19]_i_1_n_0\
    );
\data_shift[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[57]_i_2_n_0\,
      I2 => \bit_cnt[3]_i_6_n_0\,
      I3 => data_shift(1),
      O => \data_shift[1]_i_1_n_0\
    );
\data_shift[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[60]_i_2_n_0\,
      I2 => \data_shift[23]_i_2_n_0\,
      I3 => data_shift(20),
      O => \data_shift[20]_i_1_n_0\
    );
\data_shift[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[61]_i_2_n_0\,
      I2 => \data_shift[23]_i_2_n_0\,
      I3 => data_shift(21),
      O => \data_shift[21]_i_1_n_0\
    );
\data_shift[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[62]_i_2_n_0\,
      I2 => \data_shift[23]_i_2_n_0\,
      I3 => data_shift(22),
      O => \data_shift[22]_i_1_n_0\
    );
\data_shift[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_2_n_0\,
      I2 => \data_shift[23]_i_2_n_0\,
      I3 => data_shift(23),
      O => \data_shift[23]_i_1_n_0\
    );
\data_shift[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[6]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      O => \data_shift[23]_i_2_n_0\
    );
\data_shift[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[56]_i_2_n_0\,
      I2 => \data_shift[31]_i_2_n_0\,
      I3 => data_shift(24),
      O => \data_shift[24]_i_1_n_0\
    );
\data_shift[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[57]_i_2_n_0\,
      I2 => \data_shift[31]_i_2_n_0\,
      I3 => data_shift(25),
      O => \data_shift[25]_i_1_n_0\
    );
\data_shift[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[58]_i_2_n_0\,
      I2 => \data_shift[31]_i_2_n_0\,
      I3 => data_shift(26),
      O => \data_shift[26]_i_1_n_0\
    );
\data_shift[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[59]_i_2_n_0\,
      I2 => \data_shift[31]_i_2_n_0\,
      I3 => data_shift(27),
      O => \data_shift[27]_i_1_n_0\
    );
\data_shift[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[60]_i_2_n_0\,
      I2 => \data_shift[31]_i_2_n_0\,
      I3 => data_shift(28),
      O => \data_shift[28]_i_1_n_0\
    );
\data_shift[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[61]_i_2_n_0\,
      I2 => \data_shift[31]_i_2_n_0\,
      I3 => data_shift(29),
      O => \data_shift[29]_i_1_n_0\
    );
\data_shift[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[58]_i_2_n_0\,
      I2 => \bit_cnt[3]_i_6_n_0\,
      I3 => data_shift(2),
      O => \data_shift[2]_i_1_n_0\
    );
\data_shift[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[62]_i_2_n_0\,
      I2 => \data_shift[31]_i_2_n_0\,
      I3 => data_shift(30),
      O => \data_shift[30]_i_1_n_0\
    );
\data_shift[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_2_n_0\,
      I2 => \data_shift[31]_i_2_n_0\,
      I3 => data_shift(31),
      O => \data_shift[31]_i_1_n_0\
    );
\data_shift[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[6]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      O => \data_shift[31]_i_2_n_0\
    );
\data_shift[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[56]_i_2_n_0\,
      I2 => \data_shift[39]_i_2_n_0\,
      I3 => data_shift(32),
      O => \data_shift[32]_i_1_n_0\
    );
\data_shift[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[57]_i_2_n_0\,
      I2 => \data_shift[39]_i_2_n_0\,
      I3 => data_shift(33),
      O => \data_shift[33]_i_1_n_0\
    );
\data_shift[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[58]_i_2_n_0\,
      I2 => \data_shift[39]_i_2_n_0\,
      I3 => data_shift(34),
      O => \data_shift[34]_i_1_n_0\
    );
\data_shift[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[59]_i_2_n_0\,
      I2 => \data_shift[39]_i_2_n_0\,
      I3 => data_shift(35),
      O => \data_shift[35]_i_1_n_0\
    );
\data_shift[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[60]_i_2_n_0\,
      I2 => \data_shift[39]_i_2_n_0\,
      I3 => data_shift(36),
      O => \data_shift[36]_i_1_n_0\
    );
\data_shift[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[61]_i_2_n_0\,
      I2 => \data_shift[39]_i_2_n_0\,
      I3 => data_shift(37),
      O => \data_shift[37]_i_1_n_0\
    );
\data_shift[38]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[62]_i_2_n_0\,
      I2 => \data_shift[39]_i_2_n_0\,
      I3 => data_shift(38),
      O => \data_shift[38]_i_1_n_0\
    );
\data_shift[39]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_2_n_0\,
      I2 => \data_shift[39]_i_2_n_0\,
      I3 => data_shift(39),
      O => \data_shift[39]_i_1_n_0\
    );
\data_shift[39]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[4]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[5]\,
      I3 => \bit_cnt_reg_n_0_[6]\,
      O => \data_shift[39]_i_2_n_0\
    );
\data_shift[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[59]_i_2_n_0\,
      I2 => \bit_cnt[3]_i_6_n_0\,
      I3 => data_shift(3),
      O => \data_shift[3]_i_1_n_0\
    );
\data_shift[40]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[56]_i_2_n_0\,
      I2 => \data_shift[47]_i_2_n_0\,
      I3 => data_shift(40),
      O => \data_shift[40]_i_1_n_0\
    );
\data_shift[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[57]_i_2_n_0\,
      I2 => \data_shift[47]_i_2_n_0\,
      I3 => data_shift(41),
      O => \data_shift[41]_i_1_n_0\
    );
\data_shift[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[58]_i_2_n_0\,
      I2 => \data_shift[47]_i_2_n_0\,
      I3 => data_shift(42),
      O => \data_shift[42]_i_1_n_0\
    );
\data_shift[43]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[59]_i_2_n_0\,
      I2 => \data_shift[47]_i_2_n_0\,
      I3 => data_shift(43),
      O => \data_shift[43]_i_1_n_0\
    );
\data_shift[44]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[60]_i_2_n_0\,
      I2 => \data_shift[47]_i_2_n_0\,
      I3 => data_shift(44),
      O => \data_shift[44]_i_1_n_0\
    );
\data_shift[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[61]_i_2_n_0\,
      I2 => \data_shift[47]_i_2_n_0\,
      I3 => data_shift(45),
      O => \data_shift[45]_i_1_n_0\
    );
\data_shift[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[62]_i_2_n_0\,
      I2 => \data_shift[47]_i_2_n_0\,
      I3 => data_shift(46),
      O => \data_shift[46]_i_1_n_0\
    );
\data_shift[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_2_n_0\,
      I2 => \data_shift[47]_i_2_n_0\,
      I3 => data_shift(47),
      O => \data_shift[47]_i_1_n_0\
    );
\data_shift[47]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[6]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      O => \data_shift[47]_i_2_n_0\
    );
\data_shift[48]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[56]_i_2_n_0\,
      I2 => \data_shift[55]_i_2_n_0\,
      I3 => data_shift(48),
      O => \data_shift[48]_i_1_n_0\
    );
\data_shift[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[57]_i_2_n_0\,
      I2 => \data_shift[55]_i_2_n_0\,
      I3 => data_shift(49),
      O => \data_shift[49]_i_1_n_0\
    );
\data_shift[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[60]_i_2_n_0\,
      I2 => \bit_cnt[3]_i_6_n_0\,
      I3 => data_shift(4),
      O => \data_shift[4]_i_1_n_0\
    );
\data_shift[50]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[58]_i_2_n_0\,
      I2 => \data_shift[55]_i_2_n_0\,
      I3 => data_shift(50),
      O => \data_shift[50]_i_1_n_0\
    );
\data_shift[51]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[59]_i_2_n_0\,
      I2 => \data_shift[55]_i_2_n_0\,
      I3 => data_shift(51),
      O => \data_shift[51]_i_1_n_0\
    );
\data_shift[52]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[60]_i_2_n_0\,
      I2 => \data_shift[55]_i_2_n_0\,
      I3 => data_shift(52),
      O => \data_shift[52]_i_1_n_0\
    );
\data_shift[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[61]_i_2_n_0\,
      I2 => \data_shift[55]_i_2_n_0\,
      I3 => data_shift(53),
      O => \data_shift[53]_i_1_n_0\
    );
\data_shift[54]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[62]_i_2_n_0\,
      I2 => \data_shift[55]_i_2_n_0\,
      I3 => data_shift(54),
      O => \data_shift[54]_i_1_n_0\
    );
\data_shift[55]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_2_n_0\,
      I2 => \data_shift[55]_i_2_n_0\,
      I3 => data_shift(55),
      O => \data_shift[55]_i_1_n_0\
    );
\data_shift[55]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[6]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      O => \data_shift[55]_i_2_n_0\
    );
\data_shift[56]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_3__0_n_0\,
      I2 => \data_shift[56]_i_2_n_0\,
      I3 => data_shift(56),
      O => \data_shift[56]_i_1_n_0\
    );
\data_shift[56]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \data_shift[63]_i_4_n_0\,
      O => \data_shift[56]_i_2_n_0\
    );
\data_shift[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_3__0_n_0\,
      I2 => \data_shift[57]_i_2_n_0\,
      I3 => data_shift(57),
      O => \data_shift[57]_i_1_n_0\
    );
\data_shift[57]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \data_shift[63]_i_4_n_0\,
      O => \data_shift[57]_i_2_n_0\
    );
\data_shift[58]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_3__0_n_0\,
      I2 => \data_shift[58]_i_2_n_0\,
      I3 => data_shift(58),
      O => \data_shift[58]_i_1_n_0\
    );
\data_shift[58]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I4 => \data_shift[63]_i_4_n_0\,
      O => \data_shift[58]_i_2_n_0\
    );
\data_shift[59]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_3__0_n_0\,
      I2 => \data_shift[59]_i_2_n_0\,
      I3 => data_shift(59),
      O => \data_shift[59]_i_1_n_0\
    );
\data_shift[59]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \data_shift[63]_i_4_n_0\,
      O => \data_shift[59]_i_2_n_0\
    );
\data_shift[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[61]_i_2_n_0\,
      I2 => \bit_cnt[3]_i_6_n_0\,
      I3 => data_shift(5),
      O => \data_shift[5]_i_1_n_0\
    );
\data_shift[60]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_3__0_n_0\,
      I2 => \data_shift[60]_i_2_n_0\,
      I3 => data_shift(60),
      O => \data_shift[60]_i_1_n_0\
    );
\data_shift[60]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I4 => \data_shift[63]_i_4_n_0\,
      O => \data_shift[60]_i_2_n_0\
    );
\data_shift[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_3__0_n_0\,
      I2 => \data_shift[61]_i_2_n_0\,
      I3 => data_shift(61),
      O => \data_shift[61]_i_1_n_0\
    );
\data_shift[61]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \data_shift[63]_i_4_n_0\,
      O => \data_shift[61]_i_2_n_0\
    );
\data_shift[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_3__0_n_0\,
      I2 => \data_shift[62]_i_2_n_0\,
      I3 => data_shift(62),
      O => \data_shift[62]_i_1_n_0\
    );
\data_shift[62]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I4 => \data_shift[63]_i_4_n_0\,
      O => \data_shift[62]_i_2_n_0\
    );
\data_shift[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \data_shift[63]_i_2_n_0\,
      I2 => \data_shift[63]_i_3__0_n_0\,
      I3 => data_shift(63),
      O => \data_shift[63]_i_1_n_0\
    );
\data_shift[63]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[3]_i_5__0_n_0\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \data_shift[63]_i_4_n_0\,
      O => \data_shift[63]_i_2_n_0\
    );
\data_shift[63]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[6]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      O => \data_shift[63]_i_3__0_n_0\
    );
\data_shift[63]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF7FF"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => sample_en,
      I2 => \state__0\(3),
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \data_shift[63]_i_4_n_0\
    );
\data_shift[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \bit_cnt[3]_i_6_n_0\,
      I2 => \data_shift[62]_i_2_n_0\,
      I3 => data_shift(6),
      O => \data_shift[6]_i_1_n_0\
    );
\data_shift[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \bit_cnt[3]_i_6_n_0\,
      I2 => \data_shift[63]_i_2_n_0\,
      I3 => data_shift(7),
      O => \data_shift[7]_i_1_n_0\
    );
\data_shift[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[10]_i_2_n_0\,
      I2 => \data_shift[56]_i_2_n_0\,
      I3 => data_shift(8),
      O => \data_shift[8]_i_1_n_0\
    );
\data_shift[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[10]_i_2_n_0\,
      I2 => \data_shift[57]_i_2_n_0\,
      I3 => data_shift(9),
      O => \data_shift[9]_i_1_n_0\
    );
\data_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[0]_i_1_n_0\,
      Q => data_shift(0),
      R => '0'
    );
\data_shift_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[10]_i_1_n_0\,
      Q => data_shift(10),
      R => '0'
    );
\data_shift_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[11]_i_1_n_0\,
      Q => data_shift(11),
      R => '0'
    );
\data_shift_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[12]_i_1_n_0\,
      Q => data_shift(12),
      R => '0'
    );
\data_shift_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[13]_i_1_n_0\,
      Q => data_shift(13),
      R => '0'
    );
\data_shift_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[14]_i_1_n_0\,
      Q => data_shift(14),
      R => '0'
    );
\data_shift_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[15]_i_1_n_0\,
      Q => data_shift(15),
      R => '0'
    );
\data_shift_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[16]_i_1_n_0\,
      Q => data_shift(16),
      R => '0'
    );
\data_shift_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[17]_i_1_n_0\,
      Q => data_shift(17),
      R => '0'
    );
\data_shift_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[18]_i_1_n_0\,
      Q => data_shift(18),
      R => '0'
    );
\data_shift_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[19]_i_1_n_0\,
      Q => data_shift(19),
      R => '0'
    );
\data_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[1]_i_1_n_0\,
      Q => data_shift(1),
      R => '0'
    );
\data_shift_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[20]_i_1_n_0\,
      Q => data_shift(20),
      R => '0'
    );
\data_shift_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[21]_i_1_n_0\,
      Q => data_shift(21),
      R => '0'
    );
\data_shift_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[22]_i_1_n_0\,
      Q => data_shift(22),
      R => '0'
    );
\data_shift_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[23]_i_1_n_0\,
      Q => data_shift(23),
      R => '0'
    );
\data_shift_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[24]_i_1_n_0\,
      Q => data_shift(24),
      R => '0'
    );
\data_shift_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[25]_i_1_n_0\,
      Q => data_shift(25),
      R => '0'
    );
\data_shift_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[26]_i_1_n_0\,
      Q => data_shift(26),
      R => '0'
    );
\data_shift_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[27]_i_1_n_0\,
      Q => data_shift(27),
      R => '0'
    );
\data_shift_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[28]_i_1_n_0\,
      Q => data_shift(28),
      R => '0'
    );
\data_shift_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[29]_i_1_n_0\,
      Q => data_shift(29),
      R => '0'
    );
\data_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[2]_i_1_n_0\,
      Q => data_shift(2),
      R => '0'
    );
\data_shift_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[30]_i_1_n_0\,
      Q => data_shift(30),
      R => '0'
    );
\data_shift_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[31]_i_1_n_0\,
      Q => data_shift(31),
      R => '0'
    );
\data_shift_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[32]_i_1_n_0\,
      Q => data_shift(32),
      R => '0'
    );
\data_shift_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[33]_i_1_n_0\,
      Q => data_shift(33),
      R => '0'
    );
\data_shift_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[34]_i_1_n_0\,
      Q => data_shift(34),
      R => '0'
    );
\data_shift_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[35]_i_1_n_0\,
      Q => data_shift(35),
      R => '0'
    );
\data_shift_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[36]_i_1_n_0\,
      Q => data_shift(36),
      R => '0'
    );
\data_shift_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[37]_i_1_n_0\,
      Q => data_shift(37),
      R => '0'
    );
\data_shift_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[38]_i_1_n_0\,
      Q => data_shift(38),
      R => '0'
    );
\data_shift_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[39]_i_1_n_0\,
      Q => data_shift(39),
      R => '0'
    );
\data_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[3]_i_1_n_0\,
      Q => data_shift(3),
      R => '0'
    );
\data_shift_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[40]_i_1_n_0\,
      Q => data_shift(40),
      R => '0'
    );
\data_shift_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[41]_i_1_n_0\,
      Q => data_shift(41),
      R => '0'
    );
\data_shift_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[42]_i_1_n_0\,
      Q => data_shift(42),
      R => '0'
    );
\data_shift_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[43]_i_1_n_0\,
      Q => data_shift(43),
      R => '0'
    );
\data_shift_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[44]_i_1_n_0\,
      Q => data_shift(44),
      R => '0'
    );
\data_shift_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[45]_i_1_n_0\,
      Q => data_shift(45),
      R => '0'
    );
\data_shift_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[46]_i_1_n_0\,
      Q => data_shift(46),
      R => '0'
    );
\data_shift_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[47]_i_1_n_0\,
      Q => data_shift(47),
      R => '0'
    );
\data_shift_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[48]_i_1_n_0\,
      Q => data_shift(48),
      R => '0'
    );
\data_shift_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[49]_i_1_n_0\,
      Q => data_shift(49),
      R => '0'
    );
\data_shift_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[4]_i_1_n_0\,
      Q => data_shift(4),
      R => '0'
    );
\data_shift_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[50]_i_1_n_0\,
      Q => data_shift(50),
      R => '0'
    );
\data_shift_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[51]_i_1_n_0\,
      Q => data_shift(51),
      R => '0'
    );
\data_shift_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[52]_i_1_n_0\,
      Q => data_shift(52),
      R => '0'
    );
\data_shift_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[53]_i_1_n_0\,
      Q => data_shift(53),
      R => '0'
    );
\data_shift_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[54]_i_1_n_0\,
      Q => data_shift(54),
      R => '0'
    );
\data_shift_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[55]_i_1_n_0\,
      Q => data_shift(55),
      R => '0'
    );
\data_shift_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[56]_i_1_n_0\,
      Q => data_shift(56),
      R => '0'
    );
\data_shift_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[57]_i_1_n_0\,
      Q => data_shift(57),
      R => '0'
    );
\data_shift_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[58]_i_1_n_0\,
      Q => data_shift(58),
      R => '0'
    );
\data_shift_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[59]_i_1_n_0\,
      Q => data_shift(59),
      R => '0'
    );
\data_shift_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[5]_i_1_n_0\,
      Q => data_shift(5),
      R => '0'
    );
\data_shift_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[60]_i_1_n_0\,
      Q => data_shift(60),
      R => '0'
    );
\data_shift_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[61]_i_1_n_0\,
      Q => data_shift(61),
      R => '0'
    );
\data_shift_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[62]_i_1_n_0\,
      Q => data_shift(62),
      R => '0'
    );
\data_shift_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[63]_i_1_n_0\,
      Q => data_shift(63),
      R => '0'
    );
\data_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[6]_i_1_n_0\,
      Q => data_shift(6),
      R => '0'
    );
\data_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[7]_i_1_n_0\,
      Q => data_shift(7),
      R => '0'
    );
\data_shift_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[8]_i_1_n_0\,
      Q => data_shift(8),
      R => '0'
    );
\data_shift_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \data_shift[9]_i_1_n_0\,
      Q => data_shift(9),
      R => '0'
    );
\dlc_shift[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \bit_cnt[3]_i_6_n_0\,
      I2 => \dlc_shift[0]_i_2_n_0\,
      I3 => \dlc_shift[3]_i_3_n_0\,
      I4 => \dlc_shift_reg_n_0_[0]\,
      O => \dlc_shift[0]_i_1_n_0\
    );
\dlc_shift[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010100010101"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \stuff_cnt_reg_n_0_[2]\,
      I4 => \stuff_cnt_reg_n_0_[0]\,
      I5 => \stuff_cnt_reg_n_0_[1]\,
      O => \dlc_shift[0]_i_2_n_0\
    );
\dlc_shift[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF0800"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \dlc_shift[3]_i_3_n_0\,
      I2 => \dlc_shift[1]_i_2_n_0\,
      I3 => \bit_cnt[3]_i_6_n_0\,
      I4 => bit_cnt1(1),
      O => \dlc_shift[1]_i_1_n_0\
    );
\dlc_shift[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFEFEFEFEFEFEF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \stuff_cnt_reg_n_0_[1]\,
      I4 => \stuff_cnt_reg_n_0_[0]\,
      I5 => \stuff_cnt_reg_n_0_[2]\,
      O => \dlc_shift[1]_i_2_n_0\
    );
\dlc_shift[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \dlc_shift[3]_i_3_n_0\,
      I2 => \dlc_shift[2]_i_2_n_0\,
      I3 => \bit_cnt[3]_i_6_n_0\,
      I4 => bit_cnt1(2),
      O => \dlc_shift[2]_i_1_n_0\
    );
\dlc_shift[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F70000"
    )
        port map (
      I0 => \stuff_cnt_reg_n_0_[2]\,
      I1 => \stuff_cnt_reg_n_0_[0]\,
      I2 => \stuff_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \dlc_shift[2]_i_2_n_0\
    );
\dlc_shift[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \bit_cnt[3]_i_6_n_0\,
      I2 => \dlc_shift[3]_i_2_n_0\,
      I3 => \dlc_shift[3]_i_3_n_0\,
      I4 => bit_cnt1(3),
      O => \dlc_shift[3]_i_1_n_0\
    );
\dlc_shift[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044400000000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \stuff_cnt_reg_n_0_[2]\,
      I3 => \stuff_cnt_reg_n_0_[0]\,
      I4 => \stuff_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[0]\,
      O => \dlc_shift[3]_i_2_n_0\
    );
\dlc_shift[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => sample_en,
      I2 => \state__0\(2),
      I3 => \state__0\(3),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \dlc_shift[3]_i_3_n_0\
    );
\dlc_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \dlc_shift[0]_i_1_n_0\,
      Q => \dlc_shift_reg_n_0_[0]\,
      R => '0'
    );
\dlc_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \dlc_shift[1]_i_1_n_0\,
      Q => bit_cnt1(1),
      R => '0'
    );
\dlc_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \dlc_shift[2]_i_1_n_0\,
      Q => bit_cnt1(2),
      R => '0'
    );
\dlc_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \dlc_shift[3]_i_1_n_0\,
      Q => bit_cnt1(3),
      R => '0'
    );
\id_shift[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \dlc_shift[0]_i_2_n_0\,
      I2 => \id_shift[7]_i_3_n_0\,
      I3 => id_shift(0),
      O => \id_shift[0]_i_1_n_0\
    );
\id_shift[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \dlc_shift[2]_i_2_n_0\,
      I2 => \id_shift[10]_i_2_n_0\,
      I3 => \id_shift[10]_i_3_n_0\,
      I4 => id_shift(10),
      O => \id_shift[10]_i_1_n_0\
    );
\id_shift[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[4]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[5]\,
      I3 => \bit_cnt_reg_n_0_[6]\,
      O => \id_shift[10]_i_2_n_0\
    );
\id_shift[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => sample_en,
      I2 => \state__0\(0),
      I3 => \state__0\(3),
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => \id_shift[10]_i_3_n_0\
    );
\id_shift[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \dlc_shift[1]_i_2_n_0\,
      I2 => \bit_cnt[3]_i_6_n_0\,
      I3 => \id_shift[10]_i_3_n_0\,
      I4 => id_shift(1),
      O => \id_shift[1]_i_1_n_0\
    );
\id_shift[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \dlc_shift[2]_i_2_n_0\,
      I2 => \id_shift[7]_i_3_n_0\,
      I3 => id_shift(2),
      O => \id_shift[2]_i_1_n_0\
    );
\id_shift[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \bit_cnt[3]_i_6_n_0\,
      I2 => \dlc_shift[3]_i_2_n_0\,
      I3 => \id_shift[10]_i_3_n_0\,
      I4 => id_shift(3),
      O => \id_shift[3]_i_1_n_0\
    );
\id_shift[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[7]_i_3_n_0\,
      I2 => \id_shift[4]_i_2_n_0\,
      I3 => id_shift(4),
      O => \id_shift[4]_i_1_n_0\
    );
\id_shift[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF08FFFFFFFF"
    )
        port map (
      I0 => \stuff_cnt_reg_n_0_[2]\,
      I1 => \stuff_cnt_reg_n_0_[0]\,
      I2 => \stuff_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \id_shift[4]_i_2_n_0\
    );
\id_shift[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[7]_i_3_n_0\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \id_shift[7]_i_2_n_0\,
      I5 => id_shift(5),
      O => \id_shift[5]_i_1_n_0\
    );
\id_shift[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[7]_i_3_n_0\,
      I2 => \id_shift[6]_i_2_n_0\,
      I3 => id_shift(6),
      O => \id_shift[6]_i_1_n_0\
    );
\id_shift[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF08FFFFFFFFFF"
    )
        port map (
      I0 => \stuff_cnt_reg_n_0_[2]\,
      I1 => \stuff_cnt_reg_n_0_[0]\,
      I2 => \stuff_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \bit_cnt_reg_n_0_[1]\,
      O => \id_shift[6]_i_2_n_0\
    );
\id_shift[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \id_shift[7]_i_2_n_0\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \id_shift[7]_i_3_n_0\,
      I5 => id_shift(7),
      O => \id_shift[7]_i_1_n_0\
    );
\id_shift[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FF"
    )
        port map (
      I0 => \stuff_cnt_reg_n_0_[2]\,
      I1 => \stuff_cnt_reg_n_0_[0]\,
      I2 => \stuff_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \id_shift[7]_i_2_n_0\
    );
\id_shift[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[4]\,
      I2 => \bit_cnt_reg_n_0_[6]\,
      I3 => \bit_cnt_reg_n_0_[5]\,
      I4 => \id_shift[10]_i_3_n_0\,
      O => \id_shift[7]_i_3_n_0\
    );
\id_shift[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \dlc_shift[0]_i_2_n_0\,
      I2 => \id_shift[10]_i_2_n_0\,
      I3 => \id_shift[10]_i_3_n_0\,
      I4 => id_shift(8),
      O => \id_shift[8]_i_1_n_0\
    );
\id_shift[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => rx_sync_2,
      I1 => \dlc_shift[1]_i_2_n_0\,
      I2 => \id_shift[10]_i_2_n_0\,
      I3 => \id_shift[10]_i_3_n_0\,
      I4 => id_shift(9),
      O => \id_shift[9]_i_1_n_0\
    );
\id_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[0]_i_1_n_0\,
      Q => id_shift(0),
      R => '0'
    );
\id_shift_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[10]_i_1_n_0\,
      Q => id_shift(10),
      R => '0'
    );
\id_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[1]_i_1_n_0\,
      Q => id_shift(1),
      R => '0'
    );
\id_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[2]_i_1_n_0\,
      Q => id_shift(2),
      R => '0'
    );
\id_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[3]_i_1_n_0\,
      Q => id_shift(3),
      R => '0'
    );
\id_shift_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[4]_i_1_n_0\,
      Q => id_shift(4),
      R => '0'
    );
\id_shift_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[5]_i_1_n_0\,
      Q => id_shift(5),
      R => '0'
    );
\id_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[6]_i_1_n_0\,
      Q => id_shift(6),
      R => '0'
    );
\id_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[7]_i_1_n_0\,
      Q => id_shift(7),
      R => '0'
    );
\id_shift_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[8]_i_1_n_0\,
      Q => id_shift(8),
      R => '0'
    );
\id_shift_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \id_shift[9]_i_1_n_0\,
      Q => id_shift(9),
      R => '0'
    );
\last_bit_val_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDD88888880"
    )
        port map (
      I0 => \stuff_cnt[2]_i_4_n_0\,
      I1 => rx_sync_2,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => \last_bit_val__0\,
      O => \last_bit_val_i_1__0_n_0\
    );
last_bit_val_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \last_bit_val_i_1__0_n_0\,
      PRE => \^ar\(0),
      Q => \last_bit_val__0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(0),
      Q => \rx_data_reg[63]_0\(0)
    );
\rx_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(10),
      Q => \rx_data_reg[63]_0\(10)
    );
\rx_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(11),
      Q => \rx_data_reg[63]_0\(11)
    );
\rx_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(12),
      Q => \rx_data_reg[63]_0\(12)
    );
\rx_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(13),
      Q => \rx_data_reg[63]_0\(13)
    );
\rx_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(14),
      Q => \rx_data_reg[63]_0\(14)
    );
\rx_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(15),
      Q => \rx_data_reg[63]_0\(15)
    );
\rx_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(16),
      Q => \rx_data_reg[63]_0\(16)
    );
\rx_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(17),
      Q => \rx_data_reg[63]_0\(17)
    );
\rx_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(18),
      Q => \rx_data_reg[63]_0\(18)
    );
\rx_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(19),
      Q => \rx_data_reg[63]_0\(19)
    );
\rx_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(1),
      Q => \rx_data_reg[63]_0\(1)
    );
\rx_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(20),
      Q => \rx_data_reg[63]_0\(20)
    );
\rx_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(21),
      Q => \rx_data_reg[63]_0\(21)
    );
\rx_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(22),
      Q => \rx_data_reg[63]_0\(22)
    );
\rx_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(23),
      Q => \rx_data_reg[63]_0\(23)
    );
\rx_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(24),
      Q => \rx_data_reg[63]_0\(24)
    );
\rx_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(25),
      Q => \rx_data_reg[63]_0\(25)
    );
\rx_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(26),
      Q => \rx_data_reg[63]_0\(26)
    );
\rx_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(27),
      Q => \rx_data_reg[63]_0\(27)
    );
\rx_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(28),
      Q => \rx_data_reg[63]_0\(28)
    );
\rx_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(29),
      Q => \rx_data_reg[63]_0\(29)
    );
\rx_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(2),
      Q => \rx_data_reg[63]_0\(2)
    );
\rx_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(30),
      Q => \rx_data_reg[63]_0\(30)
    );
\rx_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(31),
      Q => \rx_data_reg[63]_0\(31)
    );
\rx_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(32),
      Q => \rx_data_reg[63]_0\(32)
    );
\rx_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(33),
      Q => \rx_data_reg[63]_0\(33)
    );
\rx_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(34),
      Q => \rx_data_reg[63]_0\(34)
    );
\rx_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(35),
      Q => \rx_data_reg[63]_0\(35)
    );
\rx_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(36),
      Q => \rx_data_reg[63]_0\(36)
    );
\rx_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(37),
      Q => \rx_data_reg[63]_0\(37)
    );
\rx_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(38),
      Q => \rx_data_reg[63]_0\(38)
    );
\rx_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(39),
      Q => \rx_data_reg[63]_0\(39)
    );
\rx_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(3),
      Q => \rx_data_reg[63]_0\(3)
    );
\rx_data_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(40),
      Q => \rx_data_reg[63]_0\(40)
    );
\rx_data_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(41),
      Q => \rx_data_reg[63]_0\(41)
    );
\rx_data_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(42),
      Q => \rx_data_reg[63]_0\(42)
    );
\rx_data_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(43),
      Q => \rx_data_reg[63]_0\(43)
    );
\rx_data_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(44),
      Q => \rx_data_reg[63]_0\(44)
    );
\rx_data_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(45),
      Q => \rx_data_reg[63]_0\(45)
    );
\rx_data_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(46),
      Q => \rx_data_reg[63]_0\(46)
    );
\rx_data_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(47),
      Q => \rx_data_reg[63]_0\(47)
    );
\rx_data_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(48),
      Q => \rx_data_reg[63]_0\(48)
    );
\rx_data_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(49),
      Q => \rx_data_reg[63]_0\(49)
    );
\rx_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(4),
      Q => \rx_data_reg[63]_0\(4)
    );
\rx_data_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(50),
      Q => \rx_data_reg[63]_0\(50)
    );
\rx_data_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(51),
      Q => \rx_data_reg[63]_0\(51)
    );
\rx_data_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(52),
      Q => \rx_data_reg[63]_0\(52)
    );
\rx_data_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(53),
      Q => \rx_data_reg[63]_0\(53)
    );
\rx_data_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(54),
      Q => \rx_data_reg[63]_0\(54)
    );
\rx_data_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(55),
      Q => \rx_data_reg[63]_0\(55)
    );
\rx_data_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(56),
      Q => \rx_data_reg[63]_0\(56)
    );
\rx_data_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(57),
      Q => \rx_data_reg[63]_0\(57)
    );
\rx_data_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(58),
      Q => \rx_data_reg[63]_0\(58)
    );
\rx_data_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(59),
      Q => \rx_data_reg[63]_0\(59)
    );
\rx_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(5),
      Q => \rx_data_reg[63]_0\(5)
    );
\rx_data_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(60),
      Q => \rx_data_reg[63]_0\(60)
    );
\rx_data_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(61),
      Q => \rx_data_reg[63]_0\(61)
    );
\rx_data_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(62),
      Q => \rx_data_reg[63]_0\(62)
    );
\rx_data_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(63),
      Q => \rx_data_reg[63]_0\(63)
    );
\rx_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(6),
      Q => \rx_data_reg[63]_0\(6)
    );
\rx_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(7),
      Q => \rx_data_reg[63]_0\(7)
    );
\rx_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(8),
      Q => \rx_data_reg[63]_0\(8)
    );
\rx_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => data_shift(9),
      Q => \rx_data_reg[63]_0\(9)
    );
\rx_dlc_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => \dlc_shift_reg_n_0_[0]\,
      Q => \rx_id_reg[10]_0\(0)
    );
\rx_dlc_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => bit_cnt1(1),
      Q => \rx_id_reg[10]_0\(1)
    );
\rx_dlc_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => bit_cnt1(2),
      Q => \rx_id_reg[10]_0\(2)
    );
\rx_dlc_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => bit_cnt1(3),
      Q => \rx_id_reg[10]_0\(3)
    );
rx_done_tick_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40000000"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => sample_en,
      I5 => \^rx_valid_w\,
      O => rx_done_tick_i_1_n_0
    );
rx_done_tick_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => rx_done_tick_i_1_n_0,
      Q => \^rx_valid_w\
    );
\rx_id[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => sample_en,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(3),
      O => \rx_id[10]_i_1_n_0\
    );
\rx_id_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(0),
      Q => \rx_id_reg[10]_0\(4)
    );
\rx_id_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(10),
      Q => \rx_id_reg[10]_0\(14)
    );
\rx_id_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(1),
      Q => \rx_id_reg[10]_0\(5)
    );
\rx_id_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(2),
      Q => \rx_id_reg[10]_0\(6)
    );
\rx_id_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(3),
      Q => \rx_id_reg[10]_0\(7)
    );
\rx_id_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(4),
      Q => \rx_id_reg[10]_0\(8)
    );
\rx_id_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(5),
      Q => \rx_id_reg[10]_0\(9)
    );
\rx_id_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(6),
      Q => \rx_id_reg[10]_0\(10)
    );
\rx_id_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(7),
      Q => \rx_id_reg[10]_0\(11)
    );
\rx_id_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(8),
      Q => \rx_id_reg[10]_0\(12)
    );
\rx_id_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \rx_id[10]_i_1_n_0\,
      CLR => \^ar\(0),
      D => id_shift(9),
      Q => \rx_id_reg[10]_0\(13)
    );
\slv_reg5[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rx_valid_w\,
      I1 => slv_reg1(0),
      O => E(0)
    );
\stuff_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8FFFFAAAA0000"
    )
        port map (
      I0 => \stuff_cnt[0]_i_2__0_n_0\,
      I1 => \stuff_cnt[0]_i_3_n_0\,
      I2 => \last_bit_val__0\,
      I3 => rx_sync_2,
      I4 => \stuff_cnt[2]_i_4_n_0\,
      I5 => \stuff_cnt_reg_n_0_[0]\,
      O => \stuff_cnt[0]_i_1__0_n_0\
    );
\stuff_cnt[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555551"
    )
        port map (
      I0 => \state__0\(3),
      I1 => rx_sync_2,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      O => \stuff_cnt[0]_i_2__0_n_0\
    );
\stuff_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01010101FF010101"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \stuff_cnt_reg_n_0_[2]\,
      I4 => \stuff_cnt_reg_n_0_[0]\,
      I5 => \stuff_cnt_reg_n_0_[1]\,
      O => \stuff_cnt[0]_i_3_n_0\
    );
\stuff_cnt[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202FFFF00080000"
    )
        port map (
      I0 => \stuff_cnt[2]_i_2__0_n_0\,
      I1 => \stuff_cnt_reg_n_0_[0]\,
      I2 => \stuff_cnt[2]_i_3_n_0\,
      I3 => \stuff_cnt_reg_n_0_[2]\,
      I4 => \stuff_cnt[2]_i_4_n_0\,
      I5 => \stuff_cnt_reg_n_0_[1]\,
      O => \stuff_cnt[1]_i_1__0_n_0\
    );
\stuff_cnt[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022FFFF00800000"
    )
        port map (
      I0 => \stuff_cnt[2]_i_2__0_n_0\,
      I1 => \stuff_cnt_reg_n_0_[0]\,
      I2 => \stuff_cnt_reg_n_0_[1]\,
      I3 => \stuff_cnt[2]_i_3_n_0\,
      I4 => \stuff_cnt[2]_i_4_n_0\,
      I5 => \stuff_cnt_reg_n_0_[2]\,
      O => \stuff_cnt[2]_i_1__0_n_0\
    );
\stuff_cnt[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \last_bit_val__0\,
      I2 => rx_sync_2,
      O => \stuff_cnt[2]_i_2__0_n_0\
    );
\stuff_cnt[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      O => \stuff_cnt[2]_i_3_n_0\
    );
\stuff_cnt[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"002A"
    )
        port map (
      I0 => sample_en,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      O => \stuff_cnt[2]_i_4_n_0\
    );
\stuff_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \stuff_cnt[0]_i_1__0_n_0\,
      Q => \stuff_cnt_reg_n_0_[0]\
    );
\stuff_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \stuff_cnt[1]_i_1__0_n_0\,
      Q => \stuff_cnt_reg_n_0_[1]\
    );
\stuff_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \stuff_cnt[2]_i_1__0_n_0\,
      Q => \stuff_cnt_reg_n_0_[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_tx_core is
  port (
    tx_done_w : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    can_tx_port : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_shift_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    sample_en : in STD_LOGIC;
    \crc_reg_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    rx_sync_2 : in STD_LOGIC;
    ack_signal_core : in STD_LOGIC;
    \data_shift_reg[63]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_tx_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_tx_core is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[3]_i_9_n_0\ : STD_LOGIC;
  signal ack_captured_i_1_n_0 : STD_LOGIC;
  signal ack_captured_reg_n_0 : STD_LOGIC;
  signal \ack_fail_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \ack_fail_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \ack_fail_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \ack_fail_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \ack_fail_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \ack_fail_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \ack_fail_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \ack_fail_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_10_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_11_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_12_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_13_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_7_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_8_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_9__0_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal can_tx_i_1_n_0 : STD_LOGIC;
  signal can_tx_i_2_n_0 : STD_LOGIC;
  signal can_tx_i_3_n_0 : STD_LOGIC;
  signal can_tx_i_4_n_0 : STD_LOGIC;
  signal can_tx_i_5_n_0 : STD_LOGIC;
  signal \crc_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \crc_reg[14]_i_3_n_0\ : STD_LOGIC;
  signal \crc_reg[14]_i_4_n_0\ : STD_LOGIC;
  signal \crc_reg[14]_i_5_n_0\ : STD_LOGIC;
  signal \crc_reg[14]_i_6_n_0\ : STD_LOGIC;
  signal \crc_reg[14]_i_7_n_0\ : STD_LOGIC;
  signal \crc_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \crc_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \crc_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \crc_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \crc_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \crc_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \data_shift[63]_i_1__0_n_0\ : STD_LOGIC;
  signal \data_shift[63]_i_3_n_0\ : STD_LOGIC;
  signal \data_shift__0\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal last_bit_val_i_10_n_0 : STD_LOGIC;
  signal last_bit_val_i_11_n_0 : STD_LOGIC;
  signal last_bit_val_i_12_n_0 : STD_LOGIC;
  signal last_bit_val_i_13_n_0 : STD_LOGIC;
  signal last_bit_val_i_1_n_0 : STD_LOGIC;
  signal last_bit_val_i_2_n_0 : STD_LOGIC;
  signal last_bit_val_i_3_n_0 : STD_LOGIC;
  signal last_bit_val_i_4_n_0 : STD_LOGIC;
  signal last_bit_val_i_5_n_0 : STD_LOGIC;
  signal last_bit_val_i_7_n_0 : STD_LOGIC;
  signal last_bit_val_reg_i_6_n_0 : STD_LOGIC;
  signal last_bit_val_reg_i_8_n_0 : STD_LOGIC;
  signal last_bit_val_reg_i_9_n_0 : STD_LOGIC;
  signal last_bit_val_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \stuff_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \stuff_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \stuff_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_10_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_11_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_24_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_25_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_26_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_27_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_28_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_29_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_30_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_31_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_32_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_33_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_34_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_35_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_36_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_37_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_38_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_39_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_5_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_6_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_7_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_8_n_0\ : STD_LOGIC;
  signal \stuff_cnt[2]_i_9_n_0\ : STD_LOGIC;
  signal \stuff_cnt__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \stuff_cnt_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_15_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_16_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_17_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_18_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_19_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_20_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_21_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_22_n_0\ : STD_LOGIC;
  signal \stuff_cnt_reg[2]_i_23_n_0\ : STD_LOGIC;
  signal tx_busy_i_1_n_0 : STD_LOGIC;
  signal tx_busy_i_2_n_0 : STD_LOGIC;
  signal tx_busy_i_3_n_0 : STD_LOGIC;
  signal tx_done_tick_i_1_n_0 : STD_LOGIC;
  signal tx_signal_core : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_6\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_sequential_state[3]_i_9\ : label is "soft_lutpair34";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:1000,iSTATE7:0110,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:1000,iSTATE7:0110,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:1000,iSTATE7:0110,iSTATE8:0101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[3]\ : label is "iSTATE:0100,iSTATE0:0011,iSTATE1:0010,iSTATE2:0001,iSTATE3:0000,iSTATE4:1001,iSTATE5:0111,iSTATE6:1000,iSTATE7:0110,iSTATE8:0101";
  attribute SOFT_HLUTNM of \ack_fail_cnt[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ack_fail_cnt[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \ack_fail_cnt[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ack_fail_cnt[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \ack_fail_cnt[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ack_fail_cnt[6]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \ack_fail_cnt[6]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_2__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_3\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_4__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_5\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \bit_cnt[5]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_10\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_12\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_13\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_7\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_9__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of can_tx_i_3 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of can_tx_i_4 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of can_tx_i_5 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \crc_reg[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \crc_reg[11]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \crc_reg[12]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \crc_reg[13]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \crc_reg[14]_i_5\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \crc_reg[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \crc_reg[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \crc_reg[3]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \crc_reg[3]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \crc_reg[3]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \crc_reg[3]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \crc_reg[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \crc_reg[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \crc_reg[6]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \crc_reg[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \crc_reg[8]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \crc_reg[9]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of last_bit_val_i_4 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \stuff_cnt[0]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \stuff_cnt[0]_i_3__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \stuff_cnt[0]_i_4\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \stuff_cnt[0]_i_6\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \stuff_cnt[0]_i_7\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \stuff_cnt[2]_i_3__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \stuff_cnt[2]_i_4__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \stuff_cnt[2]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of tx_busy_i_3 : label is "soft_lutpair24";
begin
  D(0) <= \^d\(0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000202000FFFFFF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \FSM_sequential_state[0]_i_3_n_0\,
      I4 => \state__0\(3),
      I5 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(3),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_sync_2,
      I1 => ack_captured_reg_n_0,
      O => \FSM_sequential_state[0]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(3),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1320"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(3),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBBBBAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_3_n_0\,
      I1 => \FSM_sequential_state[3]_i_4_n_0\,
      I2 => \state__0\(3),
      I3 => \state__0\(1),
      I4 => \state__0\(2),
      I5 => sample_en,
      O => \FSM_sequential_state[3]_i_1__0_n_0\
    );
\FSM_sequential_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F800F8000800F80"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(3),
      I4 => rx_sync_2,
      I5 => ack_captured_reg_n_0,
      O => \FSM_sequential_state[3]_i_2_n_0\
    );
\FSM_sequential_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \crc_reg_reg[0]_0\,
      I1 => \state__0\(3),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      O => \FSM_sequential_state[3]_i_3_n_0\
    );
\FSM_sequential_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"747F303F444F303F"
    )
        port map (
      I0 => \bit_cnt[4]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \FSM_sequential_state[3]_i_6_n_0\,
      I3 => \FSM_sequential_state[3]_i_7_n_0\,
      I4 => \state__0\(3),
      I5 => \FSM_sequential_state[3]_i_8_n_0\,
      O => \FSM_sequential_state[3]_i_4_n_0\
    );
\FSM_sequential_state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => \FSM_sequential_state[3]_i_6_n_0\
    );
\FSM_sequential_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[5]\,
      I2 => \bit_cnt_reg_n_0_[4]\,
      I3 => \bit_cnt_reg_n_0_[6]\,
      I4 => \FSM_sequential_state[3]_i_9_n_0\,
      I5 => \bit_cnt[3]_i_3_n_0\,
      O => \FSM_sequential_state[3]_i_7_n_0\
    );
\FSM_sequential_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2A2A2A2A2AAA"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => \ack_fail_cnt_reg_n_0_[6]\,
      I2 => \ack_fail_cnt_reg_n_0_[5]\,
      I3 => \ack_fail_cnt_reg_n_0_[4]\,
      I4 => \ack_fail_cnt_reg_n_0_[2]\,
      I5 => \ack_fail_cnt_reg_n_0_[3]\,
      O => \FSM_sequential_state[3]_i_8_n_0\
    );
\FSM_sequential_state[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5515"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \stuff_cnt__0\(2),
      I2 => \stuff_cnt__0\(0),
      I3 => \stuff_cnt__0\(1),
      O => \FSM_sequential_state[3]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state[3]_i_1__0_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state[3]_i_1__0_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state[3]_i_1__0_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2)
    );
\FSM_sequential_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \FSM_sequential_state[3]_i_1__0_n_0\,
      CLR => AR(0),
      D => \FSM_sequential_state[3]_i_2_n_0\,
      Q => \state__0\(3)
    );
ack_captured_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFE00002004"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(3),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => rx_sync_2,
      I5 => ack_captured_reg_n_0,
      O => ack_captured_i_1_n_0
    );
ack_captured_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ack_captured_i_1_n_0,
      Q => ack_captured_reg_n_0
    );
\ack_fail_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ack_fail_cnt[6]_i_3_n_0\,
      I1 => \ack_fail_cnt_reg_n_0_[0]\,
      O => \ack_fail_cnt[0]_i_1_n_0\
    );
\ack_fail_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \ack_fail_cnt[6]_i_3_n_0\,
      I1 => \ack_fail_cnt_reg_n_0_[1]\,
      I2 => \ack_fail_cnt_reg_n_0_[0]\,
      O => \ack_fail_cnt[1]_i_1_n_0\
    );
\ack_fail_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \ack_fail_cnt[6]_i_3_n_0\,
      I1 => \ack_fail_cnt_reg_n_0_[0]\,
      I2 => \ack_fail_cnt_reg_n_0_[1]\,
      I3 => \ack_fail_cnt_reg_n_0_[2]\,
      O => \ack_fail_cnt[2]_i_1_n_0\
    );
\ack_fail_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \ack_fail_cnt[6]_i_3_n_0\,
      I1 => \ack_fail_cnt_reg_n_0_[1]\,
      I2 => \ack_fail_cnt_reg_n_0_[0]\,
      I3 => \ack_fail_cnt_reg_n_0_[2]\,
      I4 => \ack_fail_cnt_reg_n_0_[3]\,
      O => \ack_fail_cnt[3]_i_1_n_0\
    );
\ack_fail_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \ack_fail_cnt[6]_i_3_n_0\,
      I1 => \ack_fail_cnt_reg_n_0_[2]\,
      I2 => \ack_fail_cnt_reg_n_0_[0]\,
      I3 => \ack_fail_cnt_reg_n_0_[1]\,
      I4 => \ack_fail_cnt_reg_n_0_[3]\,
      I5 => \ack_fail_cnt_reg_n_0_[4]\,
      O => \ack_fail_cnt[4]_i_1_n_0\
    );
\ack_fail_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \ack_fail_cnt[6]_i_3_n_0\,
      I1 => \ack_fail_cnt[5]_i_2_n_0\,
      I2 => \ack_fail_cnt_reg_n_0_[5]\,
      O => \ack_fail_cnt[5]_i_1_n_0\
    );
\ack_fail_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \ack_fail_cnt_reg_n_0_[3]\,
      I1 => \ack_fail_cnt_reg_n_0_[1]\,
      I2 => \ack_fail_cnt_reg_n_0_[0]\,
      I3 => \ack_fail_cnt_reg_n_0_[2]\,
      I4 => \ack_fail_cnt_reg_n_0_[4]\,
      O => \ack_fail_cnt[5]_i_2_n_0\
    );
\ack_fail_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00030001"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => sample_en,
      O => \ack_fail_cnt[6]_i_1_n_0\
    );
\ack_fail_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \ack_fail_cnt[6]_i_3_n_0\,
      I1 => \ack_fail_cnt[6]_i_4_n_0\,
      I2 => \ack_fail_cnt_reg_n_0_[6]\,
      O => \ack_fail_cnt[6]_i_2_n_0\
    );
\ack_fail_cnt[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \FSM_sequential_state[3]_i_8_n_0\,
      I1 => \state__0\(3),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      O => \ack_fail_cnt[6]_i_3_n_0\
    );
\ack_fail_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \ack_fail_cnt_reg_n_0_[5]\,
      I1 => \ack_fail_cnt_reg_n_0_[4]\,
      I2 => \ack_fail_cnt_reg_n_0_[2]\,
      I3 => \ack_fail_cnt_reg_n_0_[0]\,
      I4 => \ack_fail_cnt_reg_n_0_[1]\,
      I5 => \ack_fail_cnt_reg_n_0_[3]\,
      O => \ack_fail_cnt[6]_i_4_n_0\
    );
\ack_fail_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ack_fail_cnt[6]_i_1_n_0\,
      CLR => AR(0),
      D => \ack_fail_cnt[0]_i_1_n_0\,
      Q => \ack_fail_cnt_reg_n_0_[0]\
    );
\ack_fail_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ack_fail_cnt[6]_i_1_n_0\,
      CLR => AR(0),
      D => \ack_fail_cnt[1]_i_1_n_0\,
      Q => \ack_fail_cnt_reg_n_0_[1]\
    );
\ack_fail_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ack_fail_cnt[6]_i_1_n_0\,
      CLR => AR(0),
      D => \ack_fail_cnt[2]_i_1_n_0\,
      Q => \ack_fail_cnt_reg_n_0_[2]\
    );
\ack_fail_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ack_fail_cnt[6]_i_1_n_0\,
      CLR => AR(0),
      D => \ack_fail_cnt[3]_i_1_n_0\,
      Q => \ack_fail_cnt_reg_n_0_[3]\
    );
\ack_fail_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ack_fail_cnt[6]_i_1_n_0\,
      CLR => AR(0),
      D => \ack_fail_cnt[4]_i_1_n_0\,
      Q => \ack_fail_cnt_reg_n_0_[4]\
    );
\ack_fail_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ack_fail_cnt[6]_i_1_n_0\,
      CLR => AR(0),
      D => \ack_fail_cnt[5]_i_1_n_0\,
      Q => \ack_fail_cnt_reg_n_0_[5]\
    );
\ack_fail_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \ack_fail_cnt[6]_i_1_n_0\,
      CLR => AR(0),
      D => \ack_fail_cnt[6]_i_2_n_0\,
      Q => \ack_fail_cnt_reg_n_0_[6]\
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500454055505550"
    )
        port map (
      I0 => \bit_cnt[0]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \bit_cnt[0]_i_3_n_0\,
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => \bit_cnt[2]_i_3_n_0\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => \bit_cnt[0]_i_2_n_0\
    );
\bit_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[6]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[4]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[0]_i_3_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3C3C3C3C3D7C3FF"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \state__0\(2),
      I4 => \state__0\(3),
      I5 => \state__0\(1),
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBAAFBAAAAFB"
    )
        port map (
      I0 => \bit_cnt[2]_i_2__0_n_0\,
      I1 => \bit_cnt[2]_i_3_n_0\,
      I2 => \state__0\(1),
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      O => \bit_cnt[2]_i_2__0_n_0\
    );
\bit_cnt[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(2),
      O => \bit_cnt[2]_i_3_n_0\
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF0101010101FF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(3),
      I2 => \state__0\(2),
      I3 => \bit_cnt[3]_i_2_n_0\,
      I4 => \bit_cnt_reg_n_0_[3]\,
      I5 => \bit_cnt[3]_i_3_n_0\,
      O => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000100000001F1F"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt[6]_i_13_n_0\,
      I2 => \state__0\(1),
      I3 => Q(0),
      I4 => \state__0\(2),
      I5 => \state__0\(0),
      O => \bit_cnt[3]_i_2_n_0\
    );
\bit_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[3]_i_3_n_0\
    );
\bit_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000FFFF30007500"
    )
        port map (
      I0 => \bit_cnt[4]_i_2_n_0\,
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => \bit_cnt[4]_i_3_n_0\,
      I3 => \bit_cnt[6]_i_7_n_0\,
      I4 => \bit_cnt[4]_i_4__0_n_0\,
      I5 => \bit_cnt[4]_i_5_n_0\,
      O => \bit_cnt[4]_i_1_n_0\
    );
\bit_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \bit_cnt[6]_i_13_n_0\,
      O => \bit_cnt[4]_i_2_n_0\
    );
\bit_cnt[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0041004100000041"
    )
        port map (
      I0 => \bit_cnt[0]_i_3_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[4]_i_3_n_0\
    );
\bit_cnt[4]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[4]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[4]_i_4__0_n_0\
    );
\bit_cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBF8C8C8"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \bit_cnt[6]_i_13_n_0\,
      O => \bit_cnt[4]_i_5_n_0\
    );
\bit_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F8F888F8C"
    )
        port map (
      I0 => \bit_cnt[5]_i_2_n_0\,
      I1 => \bit_cnt[6]_i_7_n_0\,
      I2 => \bit_cnt[5]_i_3_n_0\,
      I3 => \bit_cnt[6]_i_10_n_0\,
      I4 => \bit_cnt[5]_i_4_n_0\,
      I5 => \bit_cnt[6]_i_9__0_n_0\,
      O => \bit_cnt[5]_i_1_n_0\
    );
\bit_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8888AAAA88888"
    )
        port map (
      I0 => \bit_cnt[4]_i_2_n_0\,
      I1 => \bit_cnt[3]_i_3_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => \bit_cnt[5]_i_2_n_0\
    );
\bit_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \bit_cnt_reg_n_0_[4]\,
      I5 => \bit_cnt_reg_n_0_[5]\,
      O => \bit_cnt[5]_i_3_n_0\
    );
\bit_cnt[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00015555"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[6]\,
      I1 => \bit_cnt[3]_i_3_n_0\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[4]\,
      I4 => \bit_cnt_reg_n_0_[5]\,
      O => \bit_cnt[5]_i_4_n_0\
    );
\bit_cnt[6]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(3),
      O => \bit_cnt[6]_i_10_n_0\
    );
\bit_cnt[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[4]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \bit_cnt_reg_n_0_[5]\,
      O => \bit_cnt[6]_i_11_n_0\
    );
\bit_cnt[6]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      O => \bit_cnt[6]_i_12_n_0\
    );
\bit_cnt[6]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[6]\,
      I1 => \bit_cnt_reg_n_0_[4]\,
      I2 => \bit_cnt_reg_n_0_[5]\,
      O => \bit_cnt[6]_i_13_n_0\
    );
\bit_cnt[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E00000"
    )
        port map (
      I0 => \bit_cnt[6]_i_3_n_0\,
      I1 => \bit_cnt[6]_i_4_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \bit_cnt[6]_i_5_n_0\,
      I4 => sample_en,
      O => \bit_cnt[6]_i_1__0_n_0\
    );
\bit_cnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FF44FF444F44444"
    )
        port map (
      I0 => \bit_cnt[6]_i_6_n_0\,
      I1 => \bit_cnt[6]_i_7_n_0\,
      I2 => \bit_cnt_reg_n_0_[6]\,
      I3 => \bit_cnt[6]_i_8_n_0\,
      I4 => \bit_cnt[6]_i_9__0_n_0\,
      I5 => \bit_cnt[6]_i_10_n_0\,
      O => \bit_cnt[6]_i_2_n_0\
    );
\bit_cnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000000105F0"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \FSM_sequential_state[0]_i_3_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(3),
      I5 => \stuff_cnt[0]_i_4_n_0\,
      O => \bit_cnt[6]_i_3_n_0\
    );
\bit_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C00040C0C"
    )
        port map (
      I0 => \stuff_cnt[0]_i_4_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \bit_cnt[4]_i_2_n_0\,
      I4 => \state__0\(2),
      I5 => \state__0\(3),
      O => \bit_cnt[6]_i_4_n_0\
    );
\bit_cnt[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      O => \bit_cnt[6]_i_5_n_0\
    );
\bit_cnt[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDD9D909D9D"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[6]\,
      I1 => \bit_cnt[6]_i_8_n_0\,
      I2 => \bit_cnt[6]_i_11_n_0\,
      I3 => \bit_cnt[6]_i_12_n_0\,
      I4 => Q(3),
      I5 => \bit_cnt[6]_i_13_n_0\,
      O => \bit_cnt[6]_i_6_n_0\
    );
\bit_cnt[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \bit_cnt[6]_i_7_n_0\
    );
\bit_cnt[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \bit_cnt_reg_n_0_[4]\,
      I5 => \bit_cnt_reg_n_0_[5]\,
      O => \bit_cnt[6]_i_8_n_0\
    );
\bit_cnt[6]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \bit_cnt[6]_i_9__0_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1__0_n_0\,
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\,
      R => '0'
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1__0_n_0\,
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\,
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1__0_n_0\,
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\,
      R => '0'
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1__0_n_0\,
      D => \bit_cnt[3]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[3]\,
      R => '0'
    );
\bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1__0_n_0\,
      D => \bit_cnt[4]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[4]\,
      R => '0'
    );
\bit_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1__0_n_0\,
      D => \bit_cnt[5]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[5]\,
      R => '0'
    );
\bit_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \bit_cnt[6]_i_1__0_n_0\,
      D => \bit_cnt[6]_i_2_n_0\,
      Q => \bit_cnt_reg_n_0_[6]\,
      R => '0'
    );
can_tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0DFFFFFF0D0000"
    )
        port map (
      I0 => last_bit_val_i_3_n_0,
      I1 => can_tx_i_2_n_0,
      I2 => \state__0\(3),
      I3 => can_tx_i_3_n_0,
      I4 => can_tx_i_4_n_0,
      I5 => tx_signal_core,
      O => can_tx_i_1_n_0
    );
can_tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF740074"
    )
        port map (
      I0 => last_bit_val_reg_n_0,
      I1 => \stuff_cnt[0]_i_4_n_0\,
      I2 => \stuff_cnt[2]_i_8_n_0\,
      I3 => \state__0\(1),
      I4 => can_tx_i_5_n_0,
      I5 => \state__0\(0),
      O => can_tx_i_2_n_0
    );
can_tx_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1011"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(3),
      I3 => \state__0\(0),
      O => can_tx_i_3_n_0
    );
can_tx_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03FF0001"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => \state__0\(3),
      I4 => sample_en,
      O => can_tx_i_4_n_0
    );
can_tx_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF1000"
    )
        port map (
      I0 => last_bit_val_reg_n_0,
      I1 => \stuff_cnt__0\(1),
      I2 => \stuff_cnt__0\(0),
      I3 => \stuff_cnt__0\(2),
      I4 => \stuff_cnt[2]_i_7_n_0\,
      O => can_tx_i_5_n_0
    );
can_tx_port_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tx_signal_core,
      I1 => ack_signal_core,
      O => can_tx_port
    );
can_tx_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => can_tx_i_1_n_0,
      PRE => AR(0),
      Q => tx_signal_core
    );
\crc_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \crc_reg[14]_i_4_n_0\,
      I1 => \state__0\(1),
      I2 => \crc_reg[14]_i_5_n_0\,
      I3 => \state__0\(2),
      O => \crc_reg[0]_i_1_n_0\
    );
\crc_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA556060"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[9]\,
      I1 => \crc_reg[14]_i_4_n_0\,
      I2 => \state__0\(1),
      I3 => \crc_reg[14]_i_5_n_0\,
      I4 => \state__0\(2),
      O => \crc_reg[10]_i_1_n_0\
    );
\crc_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[10]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \crc_reg[11]_i_1_n_0\
    );
\crc_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[11]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \crc_reg[12]_i_1_n_0\
    );
\crc_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[12]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \crc_reg[13]_i_1_n_0\
    );
\crc_reg[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303033200000002"
    )
        port map (
      I0 => \crc_reg_reg[0]_0\,
      I1 => \state__0\(3),
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => \crc_reg[14]_i_3_n_0\,
      O => \crc_reg[14]_i_1_n_0\
    );
\crc_reg[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA556060"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[13]\,
      I1 => \crc_reg[14]_i_4_n_0\,
      I2 => \state__0\(1),
      I3 => \crc_reg[14]_i_5_n_0\,
      I4 => \state__0\(2),
      O => \crc_reg[14]_i_2_n_0\
    );
\crc_reg[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA02AAAAAAAAAAAA"
    )
        port map (
      I0 => sample_en,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \stuff_cnt__0\(1),
      I4 => \stuff_cnt__0\(0),
      I5 => \stuff_cnt__0\(2),
      O => \crc_reg[14]_i_3_n_0\
    );
\crc_reg[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C553C553C55"
    )
        port map (
      I0 => \crc_reg[3]_i_3_n_0\,
      I1 => p_0_in,
      I2 => \crc_reg[14]_i_6_n_0\,
      I3 => \state__0\(2),
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => \crc_reg[14]_i_4_n_0\
    );
\crc_reg[14]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in,
      I1 => \stuff_cnt[2]_i_8_n_0\,
      O => \crc_reg[14]_i_5_n_0\
    );
\crc_reg[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \crc_reg[14]_i_7_n_0\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[5]\,
      I3 => \bit_cnt_reg_n_0_[4]\,
      I4 => \bit_cnt_reg_n_0_[6]\,
      I5 => \bit_cnt_reg_n_0_[2]\,
      O => \crc_reg[14]_i_6_n_0\
    );
\crc_reg[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => Q(1),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => Q(0),
      O => \crc_reg[14]_i_7_n_0\
    );
\crc_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[0]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \crc_reg[1]_i_1_n_0\
    );
\crc_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[1]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \crc_reg[2]_i_1_n_0\
    );
\crc_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0A0C050305F30"
    )
        port map (
      I0 => \crc_reg[3]_i_2_n_0\,
      I1 => \crc_reg[3]_i_3_n_0\,
      I2 => \crc_reg[3]_i_4_n_0\,
      I3 => \crc_reg[3]_i_5_n_0\,
      I4 => \crc_reg[14]_i_5_n_0\,
      I5 => \crc_reg_reg_n_0_[2]\,
      O => \crc_reg[3]_i_1_n_0\
    );
\crc_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in,
      I1 => \crc_reg[14]_i_6_n_0\,
      O => \crc_reg[3]_i_2_n_0\
    );
\crc_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in,
      I1 => \stuff_cnt[2]_i_7_n_0\,
      O => \crc_reg[3]_i_3_n_0\
    );
\crc_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => \crc_reg[3]_i_4_n_0\
    );
\crc_reg[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => \crc_reg[3]_i_5_n_0\
    );
\crc_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA556060"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[3]\,
      I1 => \crc_reg[14]_i_4_n_0\,
      I2 => \state__0\(1),
      I3 => \crc_reg[14]_i_5_n_0\,
      I4 => \state__0\(2),
      O => \crc_reg[4]_i_1_n_0\
    );
\crc_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[4]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \crc_reg[5]_i_1_n_0\
    );
\crc_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[5]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \crc_reg[6]_i_1_n_0\
    );
\crc_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA556060"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[6]\,
      I1 => \crc_reg[14]_i_4_n_0\,
      I2 => \state__0\(1),
      I3 => \crc_reg[14]_i_5_n_0\,
      I4 => \state__0\(2),
      O => \crc_reg[7]_i_1_n_0\
    );
\crc_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA556060"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[7]\,
      I1 => \crc_reg[14]_i_4_n_0\,
      I2 => \state__0\(1),
      I3 => \crc_reg[14]_i_5_n_0\,
      I4 => \state__0\(2),
      O => \crc_reg[8]_i_1_n_0\
    );
\crc_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[8]\,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \crc_reg[9]_i_1_n_0\
    );
\crc_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[0]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[0]\
    );
\crc_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[10]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[10]\
    );
\crc_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[11]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[11]\
    );
\crc_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[12]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[12]\
    );
\crc_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[13]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[13]\
    );
\crc_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[14]_i_2_n_0\,
      Q => p_0_in
    );
\crc_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[1]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[1]\
    );
\crc_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[2]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[2]\
    );
\crc_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[3]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[3]\
    );
\crc_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[4]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[4]\
    );
\crc_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[5]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[5]\
    );
\crc_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[6]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[6]\
    );
\crc_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[7]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[7]\
    );
\crc_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[8]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[8]\
    );
\crc_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \crc_reg[14]_i_1_n_0\,
      CLR => AR(0),
      D => \crc_reg[9]_i_1_n_0\,
      Q => \crc_reg_reg_n_0_[9]\
    );
\data_shift[63]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \bit_cnt[3]_i_3_n_0\,
      I2 => \bit_cnt[6]_i_7_n_0\,
      I3 => \state__0\(2),
      I4 => \data_shift_reg[0]_0\,
      I5 => \data_shift[63]_i_3_n_0\,
      O => \data_shift[63]_i_1__0_n_0\
    );
\data_shift[63]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \stuff_cnt[0]_i_4_n_0\,
      I1 => \state__0\(3),
      I2 => \bit_cnt_reg_n_0_[6]\,
      I3 => \bit_cnt_reg_n_0_[4]\,
      I4 => \bit_cnt_reg_n_0_[5]\,
      I5 => \bit_cnt_reg_n_0_[3]\,
      O => \data_shift[63]_i_3_n_0\
    );
\data_shift_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(0),
      Q => \data_shift__0\(0),
      R => '0'
    );
\data_shift_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(10),
      Q => \data_shift__0\(10),
      R => '0'
    );
\data_shift_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(11),
      Q => \data_shift__0\(11),
      R => '0'
    );
\data_shift_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(12),
      Q => \data_shift__0\(12),
      R => '0'
    );
\data_shift_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(13),
      Q => \data_shift__0\(13),
      R => '0'
    );
\data_shift_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(14),
      Q => \data_shift__0\(14),
      R => '0'
    );
\data_shift_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(15),
      Q => \data_shift__0\(15),
      R => '0'
    );
\data_shift_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(16),
      Q => \data_shift__0\(16),
      R => '0'
    );
\data_shift_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(17),
      Q => \data_shift__0\(17),
      R => '0'
    );
\data_shift_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(18),
      Q => \data_shift__0\(18),
      R => '0'
    );
\data_shift_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(19),
      Q => \data_shift__0\(19),
      R => '0'
    );
\data_shift_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(1),
      Q => \data_shift__0\(1),
      R => '0'
    );
\data_shift_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(20),
      Q => \data_shift__0\(20),
      R => '0'
    );
\data_shift_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(21),
      Q => \data_shift__0\(21),
      R => '0'
    );
\data_shift_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(22),
      Q => \data_shift__0\(22),
      R => '0'
    );
\data_shift_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(23),
      Q => \data_shift__0\(23),
      R => '0'
    );
\data_shift_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(24),
      Q => \data_shift__0\(24),
      R => '0'
    );
\data_shift_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(25),
      Q => \data_shift__0\(25),
      R => '0'
    );
\data_shift_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(26),
      Q => \data_shift__0\(26),
      R => '0'
    );
\data_shift_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(27),
      Q => \data_shift__0\(27),
      R => '0'
    );
\data_shift_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(28),
      Q => \data_shift__0\(28),
      R => '0'
    );
\data_shift_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(29),
      Q => \data_shift__0\(29),
      R => '0'
    );
\data_shift_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(2),
      Q => \data_shift__0\(2),
      R => '0'
    );
\data_shift_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(30),
      Q => \data_shift__0\(30),
      R => '0'
    );
\data_shift_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(31),
      Q => \data_shift__0\(31),
      R => '0'
    );
\data_shift_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(32),
      Q => \data_shift__0\(32),
      R => '0'
    );
\data_shift_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(33),
      Q => \data_shift__0\(33),
      R => '0'
    );
\data_shift_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(34),
      Q => \data_shift__0\(34),
      R => '0'
    );
\data_shift_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(35),
      Q => \data_shift__0\(35),
      R => '0'
    );
\data_shift_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(36),
      Q => \data_shift__0\(36),
      R => '0'
    );
\data_shift_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(37),
      Q => \data_shift__0\(37),
      R => '0'
    );
\data_shift_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(38),
      Q => \data_shift__0\(38),
      R => '0'
    );
\data_shift_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(39),
      Q => \data_shift__0\(39),
      R => '0'
    );
\data_shift_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(3),
      Q => \data_shift__0\(3),
      R => '0'
    );
\data_shift_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(40),
      Q => \data_shift__0\(40),
      R => '0'
    );
\data_shift_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(41),
      Q => \data_shift__0\(41),
      R => '0'
    );
\data_shift_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(42),
      Q => \data_shift__0\(42),
      R => '0'
    );
\data_shift_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(43),
      Q => \data_shift__0\(43),
      R => '0'
    );
\data_shift_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(44),
      Q => \data_shift__0\(44),
      R => '0'
    );
\data_shift_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(45),
      Q => \data_shift__0\(45),
      R => '0'
    );
\data_shift_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(46),
      Q => \data_shift__0\(46),
      R => '0'
    );
\data_shift_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(47),
      Q => \data_shift__0\(47),
      R => '0'
    );
\data_shift_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(48),
      Q => \data_shift__0\(48),
      R => '0'
    );
\data_shift_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(49),
      Q => \data_shift__0\(49),
      R => '0'
    );
\data_shift_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(4),
      Q => \data_shift__0\(4),
      R => '0'
    );
\data_shift_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(50),
      Q => \data_shift__0\(50),
      R => '0'
    );
\data_shift_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(51),
      Q => \data_shift__0\(51),
      R => '0'
    );
\data_shift_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(52),
      Q => \data_shift__0\(52),
      R => '0'
    );
\data_shift_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(53),
      Q => \data_shift__0\(53),
      R => '0'
    );
\data_shift_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(54),
      Q => \data_shift__0\(54),
      R => '0'
    );
\data_shift_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(55),
      Q => \data_shift__0\(55),
      R => '0'
    );
\data_shift_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(56),
      Q => \data_shift__0\(56),
      R => '0'
    );
\data_shift_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(57),
      Q => \data_shift__0\(57),
      R => '0'
    );
\data_shift_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(58),
      Q => \data_shift__0\(58),
      R => '0'
    );
\data_shift_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(59),
      Q => \data_shift__0\(59),
      R => '0'
    );
\data_shift_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(5),
      Q => \data_shift__0\(5),
      R => '0'
    );
\data_shift_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(60),
      Q => \data_shift__0\(60),
      R => '0'
    );
\data_shift_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(61),
      Q => \data_shift__0\(61),
      R => '0'
    );
\data_shift_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(62),
      Q => \data_shift__0\(62),
      R => '0'
    );
\data_shift_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(63),
      Q => \data_shift__0\(63),
      R => '0'
    );
\data_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(6),
      Q => \data_shift__0\(6),
      R => '0'
    );
\data_shift_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(7),
      Q => \data_shift__0\(7),
      R => '0'
    );
\data_shift_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(8),
      Q => \data_shift__0\(8),
      R => '0'
    );
\data_shift_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \data_shift[63]_i_1__0_n_0\,
      D => \data_shift_reg[63]_0\(9),
      Q => \data_shift__0\(9),
      R => '0'
    );
last_bit_val_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"454545FF45454500"
    )
        port map (
      I0 => \state__0\(3),
      I1 => last_bit_val_i_2_n_0,
      I2 => last_bit_val_i_3_n_0,
      I3 => \FSM_sequential_state[3]_i_3_n_0\,
      I4 => last_bit_val_i_4_n_0,
      I5 => last_bit_val_reg_n_0,
      O => last_bit_val_i_1_n_0
    );
last_bit_val_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[3]\,
      I1 => \crc_reg_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \crc_reg_reg_n_0_[1]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \crc_reg_reg_n_0_[0]\,
      O => last_bit_val_i_10_n_0
    );
last_bit_val_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[7]\,
      I1 => \crc_reg_reg_n_0_[6]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \crc_reg_reg_n_0_[5]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \crc_reg_reg_n_0_[4]\,
      O => last_bit_val_i_11_n_0
    );
last_bit_val_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \crc_reg_reg_n_0_[11]\,
      I1 => \crc_reg_reg_n_0_[10]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \crc_reg_reg_n_0_[9]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \crc_reg_reg_n_0_[8]\,
      O => last_bit_val_i_12_n_0
    );
last_bit_val_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_0_in,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \crc_reg_reg_n_0_[13]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \crc_reg_reg_n_0_[12]\,
      O => last_bit_val_i_13_n_0
    );
last_bit_val_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
        port map (
      I0 => last_bit_val_i_5_n_0,
      I1 => \state__0\(2),
      I2 => \stuff_cnt[2]_i_8_n_0\,
      I3 => \stuff_cnt[0]_i_4_n_0\,
      I4 => last_bit_val_reg_n_0,
      I5 => \state__0\(0),
      O => last_bit_val_i_2_n_0
    );
last_bit_val_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008BFFFFFF"
    )
        port map (
      I0 => last_bit_val_reg_n_0,
      I1 => \stuff_cnt[0]_i_4_n_0\,
      I2 => last_bit_val_reg_i_6_n_0,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => last_bit_val_i_7_n_0,
      O => last_bit_val_i_3_n_0
    );
last_bit_val_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002A00A8"
    )
        port map (
      I0 => sample_en,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(3),
      I4 => \state__0\(2),
      O => last_bit_val_i_4_n_0
    );
last_bit_val_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74FF7400"
    )
        port map (
      I0 => last_bit_val_reg_n_0,
      I1 => \stuff_cnt[0]_i_4_n_0\,
      I2 => \stuff_cnt[2]_i_7_n_0\,
      I3 => \state__0\(1),
      I4 => \crc_reg_reg[0]_0\,
      O => last_bit_val_i_5_n_0
    );
last_bit_val_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBAAAAA00000000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => last_bit_val_reg_n_0,
      I2 => \stuff_cnt[0]_i_4_n_0\,
      I3 => \crc_reg[14]_i_6_n_0\,
      I4 => \state__0\(0),
      I5 => \state__0\(1),
      O => last_bit_val_i_7_n_0
    );
last_bit_val_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => last_bit_val_i_1_n_0,
      PRE => AR(0),
      Q => last_bit_val_reg_n_0
    );
last_bit_val_reg_i_6: unisim.vcomponents.MUXF8
     port map (
      I0 => last_bit_val_reg_i_8_n_0,
      I1 => last_bit_val_reg_i_9_n_0,
      O => last_bit_val_reg_i_6_n_0,
      S => \bit_cnt_reg_n_0_[3]\
    );
last_bit_val_reg_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => last_bit_val_i_10_n_0,
      I1 => last_bit_val_i_11_n_0,
      O => last_bit_val_reg_i_8_n_0,
      S => \bit_cnt_reg_n_0_[2]\
    );
last_bit_val_reg_i_9: unisim.vcomponents.MUXF7
     port map (
      I0 => last_bit_val_i_12_n_0,
      I1 => last_bit_val_i_13_n_0,
      O => last_bit_val_reg_i_9_n_0,
      S => \bit_cnt_reg_n_0_[2]\
    );
\stuff_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF54FFFFFF550000"
    )
        port map (
      I0 => \stuff_cnt[0]_i_2_n_0\,
      I1 => \stuff_cnt[0]_i_3__0_n_0\,
      I2 => \stuff_cnt[0]_i_4_n_0\,
      I3 => \stuff_cnt[0]_i_5_n_0\,
      I4 => \stuff_cnt[2]_i_4__0_n_0\,
      I5 => \stuff_cnt__0\(0),
      O => \stuff_cnt[0]_i_1_n_0\
    );
\stuff_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      I3 => \state__0\(3),
      O => \stuff_cnt[0]_i_2_n_0\
    );
\stuff_cnt[0]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_bit_val_reg_n_0,
      I1 => \stuff_cnt[2]_i_8_n_0\,
      O => \stuff_cnt[0]_i_3__0_n_0\
    );
\stuff_cnt[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \stuff_cnt__0\(1),
      I1 => \stuff_cnt__0\(0),
      I2 => \stuff_cnt__0\(2),
      O => \stuff_cnt[0]_i_4_n_0\
    );
\stuff_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBAA0000"
    )
        port map (
      I0 => \stuff_cnt[0]_i_6_n_0\,
      I1 => \state__0\(2),
      I2 => \stuff_cnt[2]_i_6_n_0\,
      I3 => \stuff_cnt[2]_i_5_n_0\,
      I4 => \stuff_cnt[0]_i_7_n_0\,
      I5 => \stuff_cnt[0]_i_8_n_0\,
      O => \stuff_cnt[0]_i_5_n_0\
    );
\stuff_cnt[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => \stuff_cnt__0\(2),
      I1 => \stuff_cnt__0\(1),
      I2 => \stuff_cnt__0\(0),
      O => \stuff_cnt[0]_i_6_n_0\
    );
\stuff_cnt[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(3),
      O => \stuff_cnt[0]_i_7_n_0\
    );
\stuff_cnt[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BE000000"
    )
        port map (
      I0 => \stuff_cnt[0]_i_6_n_0\,
      I1 => last_bit_val_reg_n_0,
      I2 => \stuff_cnt[2]_i_7_n_0\,
      I3 => \state__0\(1),
      I4 => \bit_cnt[2]_i_3_n_0\,
      I5 => \state__0\(0),
      O => \stuff_cnt[0]_i_8_n_0\
    );
\stuff_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404FFFF00400000"
    )
        port map (
      I0 => \stuff_cnt[2]_i_2_n_0\,
      I1 => \stuff_cnt[2]_i_3__0_n_0\,
      I2 => \stuff_cnt__0\(0),
      I3 => \stuff_cnt__0\(2),
      I4 => \stuff_cnt[2]_i_4__0_n_0\,
      I5 => \stuff_cnt__0\(1),
      O => \stuff_cnt[1]_i_1_n_0\
    );
\stuff_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044FFFF40000000"
    )
        port map (
      I0 => \stuff_cnt[2]_i_2_n_0\,
      I1 => \stuff_cnt[2]_i_3__0_n_0\,
      I2 => \stuff_cnt__0\(1),
      I3 => \stuff_cnt__0\(0),
      I4 => \stuff_cnt[2]_i_4__0_n_0\,
      I5 => \stuff_cnt__0\(2),
      O => \stuff_cnt[2]_i_1_n_0\
    );
\stuff_cnt[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => Q(5),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => Q(4),
      O => \stuff_cnt[2]_i_10_n_0\
    );
\stuff_cnt[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555557F7FFFF57F7"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => Q(12),
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => Q(13),
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => Q(14),
      O => \stuff_cnt[2]_i_11_n_0\
    );
\stuff_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFBBBFEEEBBBB"
    )
        port map (
      I0 => \state__0\(3),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \stuff_cnt[2]_i_5_n_0\,
      I4 => \state__0\(1),
      I5 => \stuff_cnt[2]_i_6_n_0\,
      O => \stuff_cnt[2]_i_2_n_0\
    );
\stuff_cnt[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(51),
      I1 => \data_shift__0\(50),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(49),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(48),
      O => \stuff_cnt[2]_i_24_n_0\
    );
\stuff_cnt[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(55),
      I1 => \data_shift__0\(54),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(53),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(52),
      O => \stuff_cnt[2]_i_25_n_0\
    );
\stuff_cnt[2]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(59),
      I1 => \data_shift__0\(58),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(57),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(56),
      O => \stuff_cnt[2]_i_26_n_0\
    );
\stuff_cnt[2]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(63),
      I1 => \data_shift__0\(62),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(61),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(60),
      O => \stuff_cnt[2]_i_27_n_0\
    );
\stuff_cnt[2]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(35),
      I1 => \data_shift__0\(34),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(33),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(32),
      O => \stuff_cnt[2]_i_28_n_0\
    );
\stuff_cnt[2]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(39),
      I1 => \data_shift__0\(38),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(37),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(36),
      O => \stuff_cnt[2]_i_29_n_0\
    );
\stuff_cnt[2]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(43),
      I1 => \data_shift__0\(42),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(41),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(40),
      O => \stuff_cnt[2]_i_30_n_0\
    );
\stuff_cnt[2]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(47),
      I1 => \data_shift__0\(46),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(45),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(44),
      O => \stuff_cnt[2]_i_31_n_0\
    );
\stuff_cnt[2]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(19),
      I1 => \data_shift__0\(18),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(17),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(16),
      O => \stuff_cnt[2]_i_32_n_0\
    );
\stuff_cnt[2]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(23),
      I1 => \data_shift__0\(22),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(21),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(20),
      O => \stuff_cnt[2]_i_33_n_0\
    );
\stuff_cnt[2]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(27),
      I1 => \data_shift__0\(26),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(25),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(24),
      O => \stuff_cnt[2]_i_34_n_0\
    );
\stuff_cnt[2]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(31),
      I1 => \data_shift__0\(30),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(29),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(28),
      O => \stuff_cnt[2]_i_35_n_0\
    );
\stuff_cnt[2]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(3),
      I1 => \data_shift__0\(2),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(1),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(0),
      O => \stuff_cnt[2]_i_36_n_0\
    );
\stuff_cnt[2]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(7),
      I1 => \data_shift__0\(6),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(5),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(4),
      O => \stuff_cnt[2]_i_37_n_0\
    );
\stuff_cnt[2]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(11),
      I1 => \data_shift__0\(10),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(9),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(8),
      O => \stuff_cnt[2]_i_38_n_0\
    );
\stuff_cnt[2]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \data_shift__0\(15),
      I1 => \data_shift__0\(14),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \data_shift__0\(13),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \data_shift__0\(12),
      O => \stuff_cnt[2]_i_39_n_0\
    );
\stuff_cnt[2]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF99A5"
    )
        port map (
      I0 => last_bit_val_reg_n_0,
      I1 => \stuff_cnt[2]_i_7_n_0\,
      I2 => \stuff_cnt[2]_i_8_n_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \stuff_cnt[2]_i_3__0_n_0\
    );
\stuff_cnt[2]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"13330001"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(3),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => sample_en,
      O => \stuff_cnt[2]_i_4__0_n_0\
    );
\stuff_cnt[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \crc_reg[14]_i_6_n_0\,
      I1 => last_bit_val_reg_n_0,
      I2 => \state__0\(1),
      O => \stuff_cnt[2]_i_5_n_0\
    );
\stuff_cnt[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => last_bit_val_reg_n_0,
      I1 => last_bit_val_reg_i_6_n_0,
      O => \stuff_cnt[2]_i_6_n_0\
    );
\stuff_cnt[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4540FFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \stuff_cnt[2]_i_9_n_0\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \stuff_cnt[2]_i_10_n_0\,
      I4 => \stuff_cnt[2]_i_11_n_0\,
      O => \stuff_cnt[2]_i_7_n_0\
    );
\stuff_cnt[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \stuff_cnt_reg[2]_i_12_n_0\,
      I1 => \stuff_cnt_reg[2]_i_13_n_0\,
      I2 => \bit_cnt_reg_n_0_[5]\,
      I3 => \stuff_cnt_reg[2]_i_14_n_0\,
      I4 => \bit_cnt_reg_n_0_[4]\,
      I5 => \stuff_cnt_reg[2]_i_15_n_0\,
      O => \stuff_cnt[2]_i_8_n_0\
    );
\stuff_cnt[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => Q(9),
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => Q(8),
      O => \stuff_cnt[2]_i_9_n_0\
    );
\stuff_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \stuff_cnt[0]_i_1_n_0\,
      Q => \stuff_cnt__0\(0)
    );
\stuff_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \stuff_cnt[1]_i_1_n_0\,
      Q => \stuff_cnt__0\(1)
    );
\stuff_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \stuff_cnt[2]_i_1_n_0\,
      Q => \stuff_cnt__0\(2)
    );
\stuff_cnt_reg[2]_i_12\: unisim.vcomponents.MUXF8
     port map (
      I0 => \stuff_cnt_reg[2]_i_16_n_0\,
      I1 => \stuff_cnt_reg[2]_i_17_n_0\,
      O => \stuff_cnt_reg[2]_i_12_n_0\,
      S => \bit_cnt_reg_n_0_[3]\
    );
\stuff_cnt_reg[2]_i_13\: unisim.vcomponents.MUXF8
     port map (
      I0 => \stuff_cnt_reg[2]_i_18_n_0\,
      I1 => \stuff_cnt_reg[2]_i_19_n_0\,
      O => \stuff_cnt_reg[2]_i_13_n_0\,
      S => \bit_cnt_reg_n_0_[3]\
    );
\stuff_cnt_reg[2]_i_14\: unisim.vcomponents.MUXF8
     port map (
      I0 => \stuff_cnt_reg[2]_i_20_n_0\,
      I1 => \stuff_cnt_reg[2]_i_21_n_0\,
      O => \stuff_cnt_reg[2]_i_14_n_0\,
      S => \bit_cnt_reg_n_0_[3]\
    );
\stuff_cnt_reg[2]_i_15\: unisim.vcomponents.MUXF8
     port map (
      I0 => \stuff_cnt_reg[2]_i_22_n_0\,
      I1 => \stuff_cnt_reg[2]_i_23_n_0\,
      O => \stuff_cnt_reg[2]_i_15_n_0\,
      S => \bit_cnt_reg_n_0_[3]\
    );
\stuff_cnt_reg[2]_i_16\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stuff_cnt[2]_i_24_n_0\,
      I1 => \stuff_cnt[2]_i_25_n_0\,
      O => \stuff_cnt_reg[2]_i_16_n_0\,
      S => \bit_cnt_reg_n_0_[2]\
    );
\stuff_cnt_reg[2]_i_17\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stuff_cnt[2]_i_26_n_0\,
      I1 => \stuff_cnt[2]_i_27_n_0\,
      O => \stuff_cnt_reg[2]_i_17_n_0\,
      S => \bit_cnt_reg_n_0_[2]\
    );
\stuff_cnt_reg[2]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stuff_cnt[2]_i_28_n_0\,
      I1 => \stuff_cnt[2]_i_29_n_0\,
      O => \stuff_cnt_reg[2]_i_18_n_0\,
      S => \bit_cnt_reg_n_0_[2]\
    );
\stuff_cnt_reg[2]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stuff_cnt[2]_i_30_n_0\,
      I1 => \stuff_cnt[2]_i_31_n_0\,
      O => \stuff_cnt_reg[2]_i_19_n_0\,
      S => \bit_cnt_reg_n_0_[2]\
    );
\stuff_cnt_reg[2]_i_20\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stuff_cnt[2]_i_32_n_0\,
      I1 => \stuff_cnt[2]_i_33_n_0\,
      O => \stuff_cnt_reg[2]_i_20_n_0\,
      S => \bit_cnt_reg_n_0_[2]\
    );
\stuff_cnt_reg[2]_i_21\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stuff_cnt[2]_i_34_n_0\,
      I1 => \stuff_cnt[2]_i_35_n_0\,
      O => \stuff_cnt_reg[2]_i_21_n_0\,
      S => \bit_cnt_reg_n_0_[2]\
    );
\stuff_cnt_reg[2]_i_22\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stuff_cnt[2]_i_36_n_0\,
      I1 => \stuff_cnt[2]_i_37_n_0\,
      O => \stuff_cnt_reg[2]_i_22_n_0\,
      S => \bit_cnt_reg_n_0_[2]\
    );
\stuff_cnt_reg[2]_i_23\: unisim.vcomponents.MUXF7
     port map (
      I0 => \stuff_cnt[2]_i_38_n_0\,
      I1 => \stuff_cnt[2]_i_39_n_0\,
      O => \stuff_cnt_reg[2]_i_23_n_0\,
      S => \bit_cnt_reg_n_0_[2]\
    );
tx_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF007FFFFF0000"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_3_n_0\,
      I1 => tx_busy_i_2_n_0,
      I2 => tx_busy_i_3_n_0,
      I3 => tx_done_tick_i_1_n_0,
      I4 => \FSM_sequential_state[3]_i_3_n_0\,
      I5 => \^d\(0),
      O => tx_busy_i_1_n_0
    );
tx_busy_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
        port map (
      I0 => \ack_fail_cnt_reg_n_0_[3]\,
      I1 => \ack_fail_cnt_reg_n_0_[2]\,
      I2 => \ack_fail_cnt_reg_n_0_[4]\,
      I3 => \ack_fail_cnt_reg_n_0_[5]\,
      I4 => \ack_fail_cnt_reg_n_0_[6]\,
      O => tx_busy_i_2_n_0
    );
tx_busy_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => sample_en,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(3),
      O => tx_busy_i_3_n_0
    );
tx_busy_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => tx_busy_i_1_n_0,
      Q => \^d\(0)
    );
tx_done_tick_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => sample_en,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \state__0\(3),
      I5 => \bit_cnt[4]_i_2_n_0\,
      O => tx_done_tick_i_1_n_0
    );
tx_done_tick_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => tx_done_tick_i_1_n_0,
      Q => tx_done_w
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAN_Controller is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_done_w : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_valid_w : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    can_tx_port : out STD_LOGIC;
    \rx_id_reg[10]\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    \rx_data_reg[63]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    can_rx_port : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \crc_reg_reg[0]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 14 downto 0 );
    slv_reg1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_shift_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAN_Controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAN_Controller is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_signal_core : STD_LOGIC;
  signal can_rx_reg : STD_LOGIC;
  signal rx_sync_1 : STD_LOGIC;
  signal rx_sync_2 : STD_LOGIC;
  signal sample_en : STD_LOGIC;
  signal tq_tick : STD_LOGIC;
  signal u_pre_n_1 : STD_LOGIC;
  signal u_tim_n_1 : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
rx_sync_1_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => can_rx_port,
      PRE => \^sr\(0),
      Q => rx_sync_1
    );
rx_sync_2_reg: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => rx_sync_1,
      PRE => \^sr\(0),
      Q => rx_sync_2
    );
u_pre: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_prescaler
     port map (
      AR(0) => \^sr\(0),
      E(0) => u_pre_n_1,
      can_rx_reg => can_rx_reg,
      rx_sync_2 => rx_sync_2,
      s00_axi_aclk => s00_axi_aclk,
      tq_tick => tq_tick
    );
u_rx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_rx_core
     port map (
      AR(0) => \^sr\(0),
      E(0) => E(0),
      ack_signal_core => ack_signal_core,
      \rx_data_reg[63]_0\(63 downto 0) => \rx_data_reg[63]\(63 downto 0),
      \rx_id_reg[10]_0\(14 downto 0) => \rx_id_reg[10]\(14 downto 0),
      rx_sync_2 => rx_sync_2,
      rx_valid_w => rx_valid_w,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sample_en => sample_en,
      slv_reg1(0) => slv_reg1(0)
    );
u_tim: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_bit_timing
     port map (
      AR(0) => \^sr\(0),
      E(0) => u_pre_n_1,
      can_rx_reg => can_rx_reg,
      rx_sync_2 => rx_sync_2,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => u_tim_n_1,
      sample_en => sample_en,
      tq_tick => tq_tick
    );
u_tx: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_can_tx_core
     port map (
      AR(0) => \^sr\(0),
      D(0) => D(0),
      Q(14 downto 0) => Q(14 downto 0),
      ack_signal_core => ack_signal_core,
      can_tx_port => can_tx_port,
      \crc_reg_reg[0]_0\ => \crc_reg_reg[0]\,
      \data_shift_reg[0]_0\ => u_tim_n_1,
      \data_shift_reg[63]_0\(63 downto 0) => \data_shift_reg[63]\(63 downto 0),
      rx_sync_2 => rx_sync_2,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sample_en => sample_en,
      tx_done_w => tx_done_w
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    can_tx_port : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    can_rx_port : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified_slave_lite_v1_0_S00_AXI is
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
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal rx_data_w : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal rx_dlc_w : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_id_w : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal rx_valid_w : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
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
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
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
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
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
  signal slv_reg1 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \slv_reg1[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[2]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal slv_reg5_0 : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tx_busy_w : STD_LOGIC;
  signal tx_done_w : STD_LOGIC;
  signal u_can_inst_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair49";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair50";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF8888FFFF"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF0000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
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
      R => u_can_inst_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => u_can_inst_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFAAFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
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
      I1 => s00_axi_awvalid,
      I2 => \^axi_awready_reg_0\,
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
      R => u_can_inst_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => u_can_inst_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => state_read(0),
      I3 => s00_axi_aresetn,
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
      I2 => state_read(0),
      I3 => s00_axi_aresetn,
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
      I2 => state_read(0),
      I3 => s00_axi_aresetn,
      I4 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
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
      R => u_can_inst_n_0
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
      R => u_can_inst_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => u_can_inst_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => u_can_inst_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F2F2B3F3"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => state_write(0),
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => state_write(1),
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => u_can_inst_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF3434C3FF0000"
    )
        port map (
      I0 => axi_bvalid_i_2_n_0,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_wvalid,
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
      R => u_can_inst_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF0000FFFF8080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(1),
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => u_can_inst_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(0),
      I1 => state_write(1),
      I2 => \^axi_wready_reg_0\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^axi_wready_reg_0\,
      R => u_can_inst_n_0
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
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
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10),
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg2(10),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[10]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg2(11),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[11]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg2(12),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[12]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg2(13),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[13]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg2(14),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[14]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => \slv_reg2_reg_n_0_[15]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[15]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg4(15),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => \slv_reg2_reg_n_0_[16]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[16]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg4(16),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => \slv_reg2_reg_n_0_[17]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[17]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg4(17),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => \slv_reg2_reg_n_0_[18]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[18]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg4(18),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => \slv_reg2_reg_n_0_[19]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[19]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg4(19),
      I4 => sel0(0),
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[1]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
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
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(20),
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => \slv_reg2_reg_n_0_[20]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[20]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg4(20),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => \slv_reg2_reg_n_0_[21]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[21]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg4(21),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => \slv_reg2_reg_n_0_[22]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[22]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg4(22),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => \slv_reg2_reg_n_0_[23]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[23]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg4(23),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => \slv_reg2_reg_n_0_[24]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[24]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg4(24),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => \slv_reg2_reg_n_0_[25]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[25]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg4(25),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => \slv_reg2_reg_n_0_[26]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[26]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg4(26),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => \slv_reg2_reg_n_0_[27]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[27]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg4(27),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => \slv_reg2_reg_n_0_[28]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[28]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg4(28),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => \slv_reg2_reg_n_0_[29]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[29]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg4(29),
      I4 => sel0(0),
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => slv_reg1(2),
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
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
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[30]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(30),
      S => sel0(2)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => \slv_reg2_reg_n_0_[30]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[30]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => slv_reg4(30),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => \slv_reg2_reg_n_0_[31]\,
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[31]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg4(31),
      I4 => sel0(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[3]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
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
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg2(4),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[4]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
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
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg2(5),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[5]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
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
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg2(6),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[6]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
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
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg2(7),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[7]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg2(8),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[8]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg2(9),
      I2 => sel0(1),
      I3 => \slv_reg0_reg_n_0_[9]\,
      I4 => sel0(0),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
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
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wdata(0),
      I4 => \slv_reg0_reg_n_0_[0]\,
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \slv_reg0[31]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => \^axi_wready_reg_0\,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg0[0]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[0]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => u_can_inst_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => u_can_inst_n_0
    );
\slv_reg1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => tx_done_w,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wdata(1),
      I4 => \slv_reg1_reg_n_0_[1]\,
      O => \slv_reg1[1]_i_1_n_0\
    );
\slv_reg1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => rx_valid_w,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_wdata(2),
      I4 => slv_reg1(2),
      O => \slv_reg1[2]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => tx_busy_w,
      Q => \slv_reg1_reg_n_0_[0]\,
      R => u_can_inst_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1[1]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[1]\,
      R => u_can_inst_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1[2]_i_1_n_0\,
      Q => slv_reg1(2),
      R => u_can_inst_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => s00_axi_awvalid,
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_wvalid,
      I5 => \^axi_wready_reg_0\,
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => u_can_inst_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => u_can_inst_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => u_can_inst_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => u_can_inst_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => u_can_inst_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg4[31]_i_2_n_0\,
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg4[31]_i_2_n_0\,
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg4[31]_i_2_n_0\,
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[4]\,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => \^axi_wready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => s00_axi_awvalid,
      O => \slv_reg4[31]_i_2_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg4[31]_i_2_n_0\,
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => u_can_inst_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_dlc_w(0),
      Q => slv_reg5(0),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(6),
      Q => slv_reg5(10),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(7),
      Q => slv_reg5(11),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(8),
      Q => slv_reg5(12),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(9),
      Q => slv_reg5(13),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(10),
      Q => slv_reg5(14),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_dlc_w(1),
      Q => slv_reg5(1),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_dlc_w(2),
      Q => slv_reg5(2),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_dlc_w(3),
      Q => slv_reg5(3),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(0),
      Q => slv_reg5(4),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(1),
      Q => slv_reg5(5),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(2),
      Q => slv_reg5(6),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(3),
      Q => slv_reg5(7),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(4),
      Q => slv_reg5(8),
      R => u_can_inst_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_id_w(5),
      Q => slv_reg5(9),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(0),
      Q => slv_reg6(0),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(10),
      Q => slv_reg6(10),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(11),
      Q => slv_reg6(11),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(12),
      Q => slv_reg6(12),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(13),
      Q => slv_reg6(13),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(14),
      Q => slv_reg6(14),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(15),
      Q => slv_reg6(15),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(16),
      Q => slv_reg6(16),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(17),
      Q => slv_reg6(17),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(18),
      Q => slv_reg6(18),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(19),
      Q => slv_reg6(19),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(1),
      Q => slv_reg6(1),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(20),
      Q => slv_reg6(20),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(21),
      Q => slv_reg6(21),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(22),
      Q => slv_reg6(22),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(23),
      Q => slv_reg6(23),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(24),
      Q => slv_reg6(24),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(25),
      Q => slv_reg6(25),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(26),
      Q => slv_reg6(26),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(27),
      Q => slv_reg6(27),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(28),
      Q => slv_reg6(28),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(29),
      Q => slv_reg6(29),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(2),
      Q => slv_reg6(2),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(30),
      Q => slv_reg6(30),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(31),
      Q => slv_reg6(31),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(3),
      Q => slv_reg6(3),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(4),
      Q => slv_reg6(4),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(5),
      Q => slv_reg6(5),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(6),
      Q => slv_reg6(6),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(7),
      Q => slv_reg6(7),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(8),
      Q => slv_reg6(8),
      R => u_can_inst_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(9),
      Q => slv_reg6(9),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(32),
      Q => slv_reg7(0),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(42),
      Q => slv_reg7(10),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(43),
      Q => slv_reg7(11),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(44),
      Q => slv_reg7(12),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(45),
      Q => slv_reg7(13),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(46),
      Q => slv_reg7(14),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(47),
      Q => slv_reg7(15),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(48),
      Q => slv_reg7(16),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(49),
      Q => slv_reg7(17),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(50),
      Q => slv_reg7(18),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(51),
      Q => slv_reg7(19),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(33),
      Q => slv_reg7(1),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(52),
      Q => slv_reg7(20),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(53),
      Q => slv_reg7(21),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(54),
      Q => slv_reg7(22),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(55),
      Q => slv_reg7(23),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(56),
      Q => slv_reg7(24),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(57),
      Q => slv_reg7(25),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(58),
      Q => slv_reg7(26),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(59),
      Q => slv_reg7(27),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(60),
      Q => slv_reg7(28),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(61),
      Q => slv_reg7(29),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(34),
      Q => slv_reg7(2),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(62),
      Q => slv_reg7(30),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(63),
      Q => slv_reg7(31),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(35),
      Q => slv_reg7(3),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(36),
      Q => slv_reg7(4),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(37),
      Q => slv_reg7(5),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(38),
      Q => slv_reg7(6),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(39),
      Q => slv_reg7(7),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(40),
      Q => slv_reg7(8),
      R => u_can_inst_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg5_0,
      D => rx_data_w(41),
      Q => slv_reg7(9),
      R => u_can_inst_n_0
    );
u_can_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CAN_Controller
     port map (
      D(0) => tx_busy_w,
      E(0) => slv_reg5_0,
      Q(14 downto 0) => slv_reg2(14 downto 0),
      SR(0) => u_can_inst_n_0,
      can_rx_port => can_rx_port,
      can_tx_port => can_tx_port,
      \crc_reg_reg[0]\ => \slv_reg0_reg_n_0_[0]\,
      \data_shift_reg[63]\(63 downto 32) => slv_reg4(31 downto 0),
      \data_shift_reg[63]\(31 downto 0) => slv_reg3(31 downto 0),
      \rx_data_reg[63]\(63 downto 0) => rx_data_w(63 downto 0),
      \rx_id_reg[10]\(14 downto 4) => rx_id_w(10 downto 0),
      \rx_id_reg[10]\(3 downto 0) => rx_dlc_w(3 downto 0),
      rx_valid_w => rx_valid_w,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      slv_reg1(0) => slv_reg1(2),
      tx_done_w => tx_done_w
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    can_tx_port : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    can_rx_port : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified is
begin
myip_can_modified_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wready_reg_0 => axi_wready_reg,
      can_rx_port => can_rx_port,
      can_tx_port => can_tx_port,
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
    can_rx_port : in STD_LOGIC;
    can_tx_port : out STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_can_controller_1_myip_can_modified_1_0,myip_can_modified,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_can_modified,Vivado 2024.2";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_can_modified
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      axi_wready_reg => s00_axi_wready,
      can_rx_port => can_rx_port,
      can_tx_port => can_tx_port,
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
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
