-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Wed Jan 28 19:21:36 2026
-- Host        : user12-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_multiwatch_lcd_myip_cooktimer_0_0_sim_netlist.vhdl
-- Design      : soc_multiwatch_lcd_myip_cooktimer_0_0
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
    s00_axi_aresetn_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    dcnt_set_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    dcnt_set2_out : out STD_LOGIC;
    \slv_reg2_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sec_reg[0]\ : in STD_LOGIC;
    alarm_reg : in STD_LOGIC;
    \min_reg[0]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    alarm_reg_0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
begin
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
alarm_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555545440000"
    )
        port map (
      I0 => Q(1),
      I1 => alarm_reg,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => alarm_reg_0,
      I5 => \sec_reg[0]\,
      O => \slv_reg2_reg[1]\
    );
alarm_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
dcnt_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5504"
    )
        port map (
      I0 => Q(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => alarm_reg,
      O => dcnt_set2_out
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
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
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\min[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000303030AA3030"
    )
        port map (
      I0 => CO(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => \sec_reg[0]\,
      I4 => alarm_reg,
      I5 => \min_reg[0]\,
      O => E(0)
    );
\sec[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => CO(0),
      I1 => alarm_reg,
      I2 => \sec_reg[0]\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      O => dcnt_set_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cook_timer is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    alarm_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \min_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \sec_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s00_axi_rdata[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s00_axi_rdata[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \s00_axi_rdata[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cook_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cook_timer is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal alarm_i_3_n_0 : STD_LOGIC;
  signal alarm_i_4_n_0 : STD_LOGIC;
  signal alarm_i_5_n_0 : STD_LOGIC;
  signal \^alarm_reg_0\ : STD_LOGIC;
  signal cnt_sysclk0 : STD_LOGIC;
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
  signal \cnt_sysclk1_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_carry__2_n_3\ : STD_LOGIC;
  signal cnt_sysclk1_carry_i_1_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_2_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_3_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_4_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_5_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_i_6_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk1_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk1_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk1_carry_n_3 : STD_LOGIC;
  signal \cnt_sysclk[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[0]_i_7_n_0\ : STD_LOGIC;
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
  signal \cnt_sysclk_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_sysclk_reg[0]_i_2_n_7\ : STD_LOGIC;
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
  signal dcnt_set2_out : STD_LOGIC;
  signal dcnt_set_reg_n_0 : STD_LOGIC;
  signal ed_start_n_1 : STD_LOGIC;
  signal ed_start_n_2 : STD_LOGIC;
  signal ed_start_n_4 : STD_LOGIC;
  signal min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \min[6]_i_2_n_0\ : STD_LOGIC;
  signal \min[7]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
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
  signal sec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \sec[6]_i_2_n_0\ : STD_LOGIC;
  signal \sec[7]_i_3_n_0\ : STD_LOGIC;
  signal NLW_cnt_sysclk1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_sysclk1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of alarm_i_3 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of cnt_sysclk1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk1_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_sysclk_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \sec[6]_i_2\ : label is "soft_lutpair0";
begin
  SR(0) <= \^sr\(0);
  alarm_reg_0 <= \^alarm_reg_0\;
alarm_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => alarm_i_4_n_0,
      I1 => \min[6]_i_2_n_0\,
      I2 => \sec[5]_i_2_n_0\,
      I3 => alarm_i_5_n_0,
      O => alarm_i_3_n_0
    );
alarm_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => min(7),
      I1 => min(6),
      I2 => min(5),
      I3 => min(4),
      O => alarm_i_4_n_0
    );
alarm_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sec(7),
      I1 => sec(6),
      I2 => sec(5),
      I3 => sec(4),
      O => alarm_i_5_n_0
    );
alarm_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_start_n_4,
      Q => \^alarm_reg_0\
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
      DI(2 downto 0) => B"000",
      O(3 downto 0) => NLW_cnt_sysclk1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt_sysclk1_carry_i_3_n_0,
      S(2) => cnt_sysclk1_carry_i_4_n_0,
      S(1) => cnt_sysclk1_carry_i_5_n_0,
      S(0) => cnt_sysclk1_carry_i_6_n_0
    );
\cnt_sysclk1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_sysclk1_carry_n_0,
      CO(3) => \cnt_sysclk1_carry__0_n_0\,
      CO(2) => \cnt_sysclk1_carry__0_n_1\,
      CO(1) => \cnt_sysclk1_carry__0_n_2\,
      CO(0) => \cnt_sysclk1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => cnt_sysclk_reg(17),
      DI(2) => '0',
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
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(12),
      I1 => cnt_sysclk_reg(13),
      O => \cnt_sysclk1_carry__0_i_1_n_0\
    );
\cnt_sysclk1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk_reg(11),
      I1 => cnt_sysclk_reg(10),
      O => \cnt_sysclk1_carry__0_i_2_n_0\
    );
\cnt_sysclk1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(16),
      I1 => cnt_sysclk_reg(17),
      O => \cnt_sysclk1_carry__0_i_3_n_0\
    );
\cnt_sysclk1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(14),
      I1 => cnt_sysclk_reg(15),
      O => \cnt_sysclk1_carry__0_i_4_n_0\
    );
\cnt_sysclk1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(13),
      I1 => cnt_sysclk_reg(12),
      O => \cnt_sysclk1_carry__0_i_5_n_0\
    );
\cnt_sysclk1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(10),
      I1 => cnt_sysclk_reg(11),
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
      DI(3) => cnt_sysclk_reg(25),
      DI(2 downto 1) => B"00",
      DI(0) => cnt_sysclk_reg(19),
      O(3 downto 0) => \NLW_cnt_sysclk1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_sysclk1_carry__1_i_1_n_0\,
      S(2) => \cnt_sysclk1_carry__1_i_2_n_0\,
      S(1) => \cnt_sysclk1_carry__1_i_3_n_0\,
      S(0) => \cnt_sysclk1_carry__1_i_4_n_0\
    );
\cnt_sysclk1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(24),
      I1 => cnt_sysclk_reg(25),
      O => \cnt_sysclk1_carry__1_i_1_n_0\
    );
\cnt_sysclk1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(22),
      I1 => cnt_sysclk_reg(23),
      O => \cnt_sysclk1_carry__1_i_2_n_0\
    );
\cnt_sysclk1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(20),
      I1 => cnt_sysclk_reg(21),
      O => \cnt_sysclk1_carry__1_i_3_n_0\
    );
\cnt_sysclk1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(18),
      I1 => cnt_sysclk_reg(19),
      O => \cnt_sysclk1_carry__1_i_4_n_0\
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
      DI(0) => cnt_sysclk_reg(27),
      O(3 downto 0) => \NLW_cnt_sysclk1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \cnt_sysclk1_carry__2_i_3_n_0\,
      S(1) => \cnt_sysclk1_carry__2_i_4_n_0\,
      S(0) => \cnt_sysclk1_carry__2_i_5_n_0\
    );
\cnt_sysclk1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(30),
      I1 => cnt_sysclk_reg(31),
      O => \cnt_sysclk1_carry__2_i_1_n_0\
    );
\cnt_sysclk1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk_reg(29),
      I1 => cnt_sysclk_reg(28),
      O => \cnt_sysclk1_carry__2_i_2_n_0\
    );
\cnt_sysclk1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(30),
      I1 => cnt_sysclk_reg(31),
      O => \cnt_sysclk1_carry__2_i_3_n_0\
    );
\cnt_sysclk1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(28),
      I1 => cnt_sysclk_reg(29),
      O => \cnt_sysclk1_carry__2_i_4_n_0\
    );
\cnt_sysclk1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(26),
      I1 => cnt_sysclk_reg(27),
      O => \cnt_sysclk1_carry__2_i_5_n_0\
    );
cnt_sysclk1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => cnt_sysclk_reg(1),
      O => cnt_sysclk1_carry_i_1_n_0
    );
cnt_sysclk1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk_reg(9),
      I1 => cnt_sysclk_reg(8),
      O => cnt_sysclk1_carry_i_2_n_0
    );
cnt_sysclk1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(8),
      I1 => cnt_sysclk_reg(9),
      O => cnt_sysclk1_carry_i_3_n_0
    );
cnt_sysclk1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(6),
      I1 => cnt_sysclk_reg(7),
      O => cnt_sysclk1_carry_i_4_n_0
    );
cnt_sysclk1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(4),
      I1 => cnt_sysclk_reg(5),
      O => cnt_sysclk1_carry_i_5_n_0
    );
cnt_sysclk1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      O => cnt_sysclk1_carry_i_6_n_0
    );
\cnt_sysclk[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dcnt_set_reg_n_0,
      I1 => \^alarm_reg_0\,
      O => cnt_sysclk0
    );
\cnt_sysclk[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[0]_i_3_n_0\
    );
\cnt_sysclk[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(3),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[0]_i_4_n_0\
    );
\cnt_sysclk[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[0]_i_5_n_0\
    );
\cnt_sysclk[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(1),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[0]_i_6_n_0\
    );
\cnt_sysclk[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[0]_i_7_n_0\
    );
\cnt_sysclk[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(15),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[12]_i_2_n_0\
    );
\cnt_sysclk[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(14),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[12]_i_3_n_0\
    );
\cnt_sysclk[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(13),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[12]_i_4_n_0\
    );
\cnt_sysclk[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(12),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[12]_i_5_n_0\
    );
\cnt_sysclk[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(19),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[16]_i_2_n_0\
    );
\cnt_sysclk[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(18),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[16]_i_3_n_0\
    );
\cnt_sysclk[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(17),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[16]_i_4_n_0\
    );
\cnt_sysclk[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(16),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[16]_i_5_n_0\
    );
\cnt_sysclk[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(23),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[20]_i_2_n_0\
    );
\cnt_sysclk[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(22),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[20]_i_3_n_0\
    );
\cnt_sysclk[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(21),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[20]_i_4_n_0\
    );
\cnt_sysclk[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(20),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[20]_i_5_n_0\
    );
\cnt_sysclk[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(27),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[24]_i_2_n_0\
    );
\cnt_sysclk[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(26),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[24]_i_3_n_0\
    );
\cnt_sysclk[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(25),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[24]_i_4_n_0\
    );
\cnt_sysclk[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(24),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[24]_i_5_n_0\
    );
\cnt_sysclk[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(31),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[28]_i_2_n_0\
    );
\cnt_sysclk[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(30),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[28]_i_3_n_0\
    );
\cnt_sysclk[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(29),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[28]_i_4_n_0\
    );
\cnt_sysclk[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(28),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[28]_i_5_n_0\
    );
\cnt_sysclk[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(7),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[4]_i_2_n_0\
    );
\cnt_sysclk[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(6),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[4]_i_3_n_0\
    );
\cnt_sysclk[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[4]_i_4_n_0\
    );
\cnt_sysclk[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(4),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[4]_i_5_n_0\
    );
\cnt_sysclk[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(11),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[8]_i_2_n_0\
    );
\cnt_sysclk[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(10),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[8]_i_3_n_0\
    );
\cnt_sysclk[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(9),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[8]_i_4_n_0\
    );
\cnt_sysclk[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk_reg(8),
      I1 => \cnt_sysclk1_carry__2_n_1\,
      O => \cnt_sysclk[8]_i_5_n_0\
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[0]_i_2_n_7\,
      Q => cnt_sysclk_reg(0)
    );
\cnt_sysclk_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_sysclk_reg[0]_i_2_n_0\,
      CO(2) => \cnt_sysclk_reg[0]_i_2_n_1\,
      CO(1) => \cnt_sysclk_reg[0]_i_2_n_2\,
      CO(0) => \cnt_sysclk_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cnt_sysclk[0]_i_3_n_0\,
      O(3) => \cnt_sysclk_reg[0]_i_2_n_4\,
      O(2) => \cnt_sysclk_reg[0]_i_2_n_5\,
      O(1) => \cnt_sysclk_reg[0]_i_2_n_6\,
      O(0) => \cnt_sysclk_reg[0]_i_2_n_7\,
      S(3) => \cnt_sysclk[0]_i_4_n_0\,
      S(2) => \cnt_sysclk[0]_i_5_n_0\,
      S(1) => \cnt_sysclk[0]_i_6_n_0\,
      S(0) => \cnt_sysclk[0]_i_7_n_0\
    );
\cnt_sysclk_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[8]_i_1_n_5\,
      Q => cnt_sysclk_reg(10)
    );
\cnt_sysclk_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[8]_i_1_n_4\,
      Q => cnt_sysclk_reg(11)
    );
\cnt_sysclk_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
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
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[12]_i_1_n_6\,
      Q => cnt_sysclk_reg(13)
    );
\cnt_sysclk_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[12]_i_1_n_5\,
      Q => cnt_sysclk_reg(14)
    );
\cnt_sysclk_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[12]_i_1_n_4\,
      Q => cnt_sysclk_reg(15)
    );
\cnt_sysclk_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
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
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[16]_i_1_n_6\,
      Q => cnt_sysclk_reg(17)
    );
\cnt_sysclk_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[16]_i_1_n_5\,
      Q => cnt_sysclk_reg(18)
    );
\cnt_sysclk_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[16]_i_1_n_4\,
      Q => cnt_sysclk_reg(19)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[0]_i_2_n_6\,
      Q => cnt_sysclk_reg(1)
    );
\cnt_sysclk_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
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
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[20]_i_1_n_6\,
      Q => cnt_sysclk_reg(21)
    );
\cnt_sysclk_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[20]_i_1_n_5\,
      Q => cnt_sysclk_reg(22)
    );
\cnt_sysclk_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[20]_i_1_n_4\,
      Q => cnt_sysclk_reg(23)
    );
\cnt_sysclk_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
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
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[24]_i_1_n_6\,
      Q => cnt_sysclk_reg(25)
    );
\cnt_sysclk_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[24]_i_1_n_5\,
      Q => cnt_sysclk_reg(26)
    );
\cnt_sysclk_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[24]_i_1_n_4\,
      Q => cnt_sysclk_reg(27)
    );
\cnt_sysclk_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
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
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[28]_i_1_n_6\,
      Q => cnt_sysclk_reg(29)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[0]_i_2_n_5\,
      Q => cnt_sysclk_reg(2)
    );
\cnt_sysclk_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[28]_i_1_n_5\,
      Q => cnt_sysclk_reg(30)
    );
\cnt_sysclk_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[28]_i_1_n_4\,
      Q => cnt_sysclk_reg(31)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[0]_i_2_n_4\,
      Q => cnt_sysclk_reg(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[4]_i_1_n_7\,
      Q => cnt_sysclk_reg(4)
    );
\cnt_sysclk_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk_reg[0]_i_2_n_0\,
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
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[4]_i_1_n_6\,
      Q => cnt_sysclk_reg(5)
    );
\cnt_sysclk_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[4]_i_1_n_5\,
      Q => cnt_sysclk_reg(6)
    );
\cnt_sysclk_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[4]_i_1_n_4\,
      Q => cnt_sysclk_reg(7)
    );
\cnt_sysclk_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
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
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk0,
      CLR => \^sr\(0),
      D => \cnt_sysclk_reg[8]_i_1_n_6\,
      Q => cnt_sysclk_reg(9)
    );
dcnt_set_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => dcnt_set2_out,
      Q => dcnt_set_reg_n_0
    );
ed_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
     port map (
      CO(0) => \cnt_sysclk1_carry__2_n_1\,
      E(0) => ed_start_n_1,
      Q(1 downto 0) => Q(1 downto 0),
      alarm_reg => dcnt_set_reg_n_0,
      alarm_reg_0 => alarm_i_3_n_0,
      dcnt_set2_out => dcnt_set2_out,
      dcnt_set_reg(0) => ed_start_n_2,
      \min_reg[0]\ => \sec[6]_i_2_n_0\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^sr\(0),
      \sec_reg[0]\ => \^alarm_reg_0\,
      \slv_reg2_reg[1]\ => ed_start_n_4
    );
\min[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => min(0),
      I1 => dcnt_set_reg_n_0,
      I2 => \^alarm_reg_0\,
      I3 => \min_reg[7]_0\(0),
      O => p_0_in(0)
    );
\min[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF9F0090"
    )
        port map (
      I0 => min(0),
      I1 => min(1),
      I2 => dcnt_set_reg_n_0,
      I3 => \^alarm_reg_0\,
      I4 => \min_reg[7]_0\(1),
      O => p_0_in(1)
    );
\min[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE1FF0000E100"
    )
        port map (
      I0 => min(0),
      I1 => min(1),
      I2 => min(2),
      I3 => dcnt_set_reg_n_0,
      I4 => \^alarm_reg_0\,
      I5 => \min_reg[7]_0\(2),
      O => p_0_in(2)
    );
\min[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => min(3),
      I1 => min(0),
      I2 => min(1),
      I3 => min(2),
      I4 => cnt_sysclk0,
      I5 => \min_reg[7]_0\(3),
      O => p_0_in(3)
    );
\min[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF9F0090"
    )
        port map (
      I0 => min(4),
      I1 => \min[6]_i_2_n_0\,
      I2 => dcnt_set_reg_n_0,
      I3 => \^alarm_reg_0\,
      I4 => \min_reg[7]_0\(4),
      O => p_0_in(4)
    );
\min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA9FF0000A900"
    )
        port map (
      I0 => min(5),
      I1 => \min[6]_i_2_n_0\,
      I2 => min(4),
      I3 => dcnt_set_reg_n_0,
      I4 => \^alarm_reg_0\,
      I5 => \min_reg[7]_0\(5),
      O => p_0_in(5)
    );
\min[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => min(6),
      I1 => min(5),
      I2 => min(4),
      I3 => \min[6]_i_2_n_0\,
      I4 => cnt_sysclk0,
      I5 => \min_reg[7]_0\(6),
      O => p_0_in(6)
    );
\min[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => min(3),
      I1 => min(0),
      I2 => min(1),
      I3 => min(2),
      O => \min[6]_i_2_n_0\
    );
\min[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF9AFF00009A00"
    )
        port map (
      I0 => min(7),
      I1 => min(6),
      I2 => \min[7]_i_3_n_0\,
      I3 => dcnt_set_reg_n_0,
      I4 => \^alarm_reg_0\,
      I5 => \min_reg[7]_0\(7),
      O => p_0_in(7)
    );
\min[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => min(3),
      I1 => min(0),
      I2 => min(1),
      I3 => min(2),
      I4 => min(4),
      I5 => min(5),
      O => \min[7]_i_3_n_0\
    );
\min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_1,
      CLR => \^sr\(0),
      D => p_0_in(0),
      Q => min(0)
    );
\min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_1,
      CLR => \^sr\(0),
      D => p_0_in(1),
      Q => min(1)
    );
\min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_1,
      CLR => \^sr\(0),
      D => p_0_in(2),
      Q => min(2)
    );
\min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_1,
      CLR => \^sr\(0),
      D => p_0_in(3),
      Q => min(3)
    );
\min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_1,
      CLR => \^sr\(0),
      D => p_0_in(4),
      Q => min(4)
    );
\min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_1,
      CLR => \^sr\(0),
      D => p_0_in(5),
      Q => min(5)
    );
\min_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_1,
      CLR => \^sr\(0),
      D => p_0_in(6),
      Q => min(6)
    );
\min_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_1,
      CLR => \^sr\(0),
      D => p_0_in(7),
      Q => min(7)
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
      I0 => sec(0),
      I1 => Q(0),
      I2 => sel0(1),
      I3 => \min_reg[7]_0\(0),
      I4 => sel0(0),
      I5 => \sec_reg[7]_0\(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(0),
      I1 => \s00_axi_rdata[7]_0\(0),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[7]_1\(0),
      I4 => sel0(0),
      I5 => min(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
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
      I0 => sec(1),
      I1 => Q(1),
      I2 => sel0(1),
      I3 => \min_reg[7]_0\(1),
      I4 => sel0(0),
      I5 => \sec_reg[7]_0\(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(1),
      I1 => \s00_axi_rdata[7]_0\(1),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[7]_1\(1),
      I4 => sel0(0),
      I5 => min(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
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
      I0 => sec(2),
      I1 => Q(2),
      I2 => sel0(1),
      I3 => \min_reg[7]_0\(2),
      I4 => sel0(0),
      I5 => \sec_reg[7]_0\(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(2),
      I1 => \s00_axi_rdata[7]_0\(2),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[7]_1\(2),
      I4 => sel0(0),
      I5 => min(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sec(3),
      I1 => Q(3),
      I2 => sel0(1),
      I3 => \min_reg[7]_0\(3),
      I4 => sel0(0),
      I5 => \sec_reg[7]_0\(3),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(3),
      I1 => \s00_axi_rdata[7]_0\(3),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[7]_1\(3),
      I4 => sel0(0),
      I5 => min(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sec(4),
      I1 => Q(4),
      I2 => sel0(1),
      I3 => \min_reg[7]_0\(4),
      I4 => sel0(0),
      I5 => \sec_reg[7]_0\(4),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(4),
      I1 => \s00_axi_rdata[7]_0\(4),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[7]_1\(4),
      I4 => sel0(0),
      I5 => min(4),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sec(5),
      I1 => Q(5),
      I2 => sel0(1),
      I3 => \min_reg[7]_0\(5),
      I4 => sel0(0),
      I5 => \sec_reg[7]_0\(5),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(5),
      I1 => \s00_axi_rdata[7]_0\(5),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[7]_1\(5),
      I4 => sel0(0),
      I5 => min(5),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sec(6),
      I1 => Q(6),
      I2 => sel0(1),
      I3 => \min_reg[7]_0\(6),
      I4 => sel0(0),
      I5 => \sec_reg[7]_0\(6),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(6),
      I1 => \s00_axi_rdata[7]_0\(6),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[7]_1\(6),
      I4 => sel0(0),
      I5 => min(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[7]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => sec(7),
      I1 => Q(7),
      I2 => sel0(1),
      I3 => \min_reg[7]_0\(7),
      I4 => sel0(0),
      I5 => \sec_reg[7]_0\(7),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[7]\(7),
      I1 => \s00_axi_rdata[7]_0\(7),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[7]_1\(7),
      I4 => sel0(0),
      I5 => min(7),
      O => \s00_axi_rdata[7]_INST_0_i_2_n_0\
    );
\sec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => sec(0),
      I1 => dcnt_set_reg_n_0,
      I2 => \^alarm_reg_0\,
      I3 => \sec_reg[7]_0\(0),
      O => p_1_in(0)
    );
\sec[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF9F0090"
    )
        port map (
      I0 => sec(0),
      I1 => sec(1),
      I2 => dcnt_set_reg_n_0,
      I3 => \^alarm_reg_0\,
      I4 => \sec_reg[7]_0\(1),
      O => p_1_in(1)
    );
\sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A802FFFFA8020000"
    )
        port map (
      I0 => \sec[6]_i_2_n_0\,
      I1 => sec(0),
      I2 => sec(1),
      I3 => sec(2),
      I4 => cnt_sysclk0,
      I5 => \sec_reg[7]_0\(2),
      O => p_1_in(2)
    );
\sec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => sec(3),
      I1 => sec(2),
      I2 => sec(0),
      I3 => sec(1),
      I4 => cnt_sysclk0,
      I5 => \sec_reg[7]_0\(3),
      O => p_1_in(3)
    );
\sec[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF6F0060"
    )
        port map (
      I0 => sec(4),
      I1 => \sec[5]_i_2_n_0\,
      I2 => dcnt_set_reg_n_0,
      I3 => \^alarm_reg_0\,
      I4 => \sec_reg[7]_0\(4),
      O => p_1_in(4)
    );
\sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF9AFF00009A00"
    )
        port map (
      I0 => sec(5),
      I1 => sec(4),
      I2 => \sec[5]_i_2_n_0\,
      I3 => dcnt_set_reg_n_0,
      I4 => \^alarm_reg_0\,
      I5 => \sec_reg[7]_0\(5),
      O => p_1_in(5)
    );
\sec[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sec(1),
      I1 => sec(0),
      I2 => sec(3),
      I3 => sec(2),
      O => \sec[5]_i_2_n_0\
    );
\sec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF28FF00002800"
    )
        port map (
      I0 => \sec[6]_i_2_n_0\,
      I1 => \sec[7]_i_3_n_0\,
      I2 => sec(6),
      I3 => dcnt_set_reg_n_0,
      I4 => \^alarm_reg_0\,
      I5 => \sec_reg[7]_0\(6),
      O => p_1_in(6)
    );
\sec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF1F"
    )
        port map (
      I0 => alarm_i_4_n_0,
      I1 => \min[6]_i_2_n_0\,
      I2 => \sec[5]_i_2_n_0\,
      I3 => alarm_i_5_n_0,
      O => \sec[6]_i_2_n_0\
    );
\sec[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFFFFFBAA0000"
    )
        port map (
      I0 => alarm_i_3_n_0,
      I1 => \sec[7]_i_3_n_0\,
      I2 => sec(6),
      I3 => sec(7),
      I4 => cnt_sysclk0,
      I5 => \sec_reg[7]_0\(7),
      O => p_1_in(7)
    );
\sec[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sec(4),
      I1 => sec(1),
      I2 => sec(0),
      I3 => sec(3),
      I4 => sec(2),
      I5 => sec(5),
      O => \sec[7]_i_3_n_0\
    );
\sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_2,
      CLR => \^sr\(0),
      D => p_1_in(0),
      Q => sec(0)
    );
\sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_2,
      CLR => \^sr\(0),
      D => p_1_in(1),
      Q => sec(1)
    );
\sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_2,
      CLR => \^sr\(0),
      D => p_1_in(2),
      Q => sec(2)
    );
\sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_2,
      CLR => \^sr\(0),
      D => p_1_in(3),
      Q => sec(3)
    );
\sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_2,
      CLR => \^sr\(0),
      D => p_1_in(4),
      Q => sec(4)
    );
\sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_2,
      CLR => \^sr\(0),
      D => p_1_in(5),
      Q => sec(5)
    );
\sec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_2,
      CLR => \^sr\(0),
      D => p_1_in(6),
      Q => sec(6)
    );
\sec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_2,
      CLR => \^sr\(0),
      D => p_1_in(7),
      Q => sec(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    alarm_reg : out STD_LOGIC;
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
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer_slave_lite_v1_0_S00_AXI is
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
  signal ctimer_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
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
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_2_n_0\ : STD_LOGIC;
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
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
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
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
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
  signal \slv_reg7[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_3\ : label is "soft_lutpair3";
begin
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
      R => ctimer_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => ctimer_n_0
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
      R => ctimer_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => ctimer_n_0
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
      R => ctimer_n_0
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
      R => ctimer_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => ctimer_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => ctimer_n_0
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
      R => ctimer_n_0
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
      R => ctimer_n_0
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
      R => ctimer_n_0
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
      R => ctimer_n_0
    );
ctimer: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cook_timer
     port map (
      Q(7) => \slv_reg2_reg_n_0_[7]\,
      Q(6) => \slv_reg2_reg_n_0_[6]\,
      Q(5) => \slv_reg2_reg_n_0_[5]\,
      Q(4) => \slv_reg2_reg_n_0_[4]\,
      Q(3) => \slv_reg2_reg_n_0_[3]\,
      Q(2) => \slv_reg2_reg_n_0_[2]\,
      Q(1) => slv_reg2(1),
      Q(0) => \slv_reg2_reg_n_0_[0]\,
      SR(0) => ctimer_n_0,
      alarm_reg_0 => alarm_reg,
      \min_reg[7]_0\(7 downto 0) => slv_reg1(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(7 downto 0) => s00_axi_rdata(7 downto 0),
      \s00_axi_rdata[7]\(7 downto 0) => slv_reg7(7 downto 0),
      \s00_axi_rdata[7]_0\(7 downto 0) => slv_reg6(7 downto 0),
      \s00_axi_rdata[7]_1\(7 downto 0) => slv_reg5(7 downto 0),
      \sec_reg[7]_0\(7 downto 0) => slv_reg0(7 downto 0),
      sel0(2 downto 0) => sel0(2 downto 0)
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[10]\,
      I1 => sel0(1),
      I2 => slv_reg1(10),
      I3 => sel0(0),
      I4 => slv_reg0(10),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(10),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[11]\,
      I1 => sel0(1),
      I2 => slv_reg1(11),
      I3 => sel0(0),
      I4 => slv_reg0(11),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(11),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[12]\,
      I1 => sel0(1),
      I2 => slv_reg1(12),
      I3 => sel0(0),
      I4 => slv_reg0(12),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(12),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[13]\,
      I1 => sel0(1),
      I2 => slv_reg1(13),
      I3 => sel0(0),
      I4 => slv_reg0(13),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(13),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[14]\,
      I1 => sel0(1),
      I2 => slv_reg1(14),
      I3 => sel0(0),
      I4 => slv_reg0(14),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(14),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[15]\,
      I1 => sel0(1),
      I2 => slv_reg1(15),
      I3 => sel0(0),
      I4 => slv_reg0(15),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(15),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[16]\,
      I1 => sel0(1),
      I2 => slv_reg1(16),
      I3 => sel0(0),
      I4 => slv_reg0(16),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(16),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[17]\,
      I1 => sel0(1),
      I2 => slv_reg1(17),
      I3 => sel0(0),
      I4 => slv_reg0(17),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(17),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[18]\,
      I1 => sel0(1),
      I2 => slv_reg1(18),
      I3 => sel0(0),
      I4 => slv_reg0(18),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(18),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[19]\,
      I1 => sel0(1),
      I2 => slv_reg1(19),
      I3 => sel0(0),
      I4 => slv_reg0(19),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(19),
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[20]\,
      I1 => sel0(1),
      I2 => slv_reg1(20),
      I3 => sel0(0),
      I4 => slv_reg0(20),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(20),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[21]\,
      I1 => sel0(1),
      I2 => slv_reg1(21),
      I3 => sel0(0),
      I4 => slv_reg0(21),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(21),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[22]\,
      I1 => sel0(1),
      I2 => slv_reg1(22),
      I3 => sel0(0),
      I4 => slv_reg0(22),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(22),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[23]\,
      I1 => sel0(1),
      I2 => slv_reg1(23),
      I3 => sel0(0),
      I4 => slv_reg0(23),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(23),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[24]\,
      I1 => sel0(1),
      I2 => slv_reg1(24),
      I3 => sel0(0),
      I4 => slv_reg0(24),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(24),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[25]\,
      I1 => sel0(1),
      I2 => slv_reg1(25),
      I3 => sel0(0),
      I4 => slv_reg0(25),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(25),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[26]\,
      I1 => sel0(1),
      I2 => slv_reg1(26),
      I3 => sel0(0),
      I4 => slv_reg0(26),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(26),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[27]\,
      I1 => sel0(1),
      I2 => slv_reg1(27),
      I3 => sel0(0),
      I4 => slv_reg0(27),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(27),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[28]\,
      I1 => sel0(1),
      I2 => slv_reg1(28),
      I3 => sel0(0),
      I4 => slv_reg0(28),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(28),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[29]\,
      I1 => sel0(1),
      I2 => slv_reg1(29),
      I3 => sel0(0),
      I4 => slv_reg0(29),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(29),
      O => \s00_axi_rdata[29]_INST_0_i_2_n_0\
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[30]\,
      I1 => sel0(1),
      I2 => slv_reg1(30),
      I3 => sel0(0),
      I4 => slv_reg0(30),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(30),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[31]\,
      I1 => sel0(1),
      I2 => slv_reg1(31),
      I3 => sel0(0),
      I4 => slv_reg0(31),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(31),
      O => \s00_axi_rdata[31]_INST_0_i_2_n_0\
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[8]\,
      I1 => sel0(1),
      I2 => slv_reg1(8),
      I3 => sel0(0),
      I4 => slv_reg0(8),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(8),
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
      INIT => X"30BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[9]\,
      I1 => sel0(1),
      I2 => slv_reg1(9),
      I3 => sel0(0),
      I4 => slv_reg0(9),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(9),
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000511110005"
    )
        port map (
      I0 => \slv_reg2[31]_i_3_n_0\,
      I1 => s00_axi_awaddr(1),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(2),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => ctimer_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => ctimer_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => ctimer_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => ctimer_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => ctimer_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => ctimer_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => ctimer_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => ctimer_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => ctimer_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => ctimer_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => ctimer_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => ctimer_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => ctimer_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => ctimer_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => ctimer_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => ctimer_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => ctimer_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => ctimer_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => ctimer_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => ctimer_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => ctimer_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => ctimer_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => ctimer_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => ctimer_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => ctimer_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => ctimer_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => ctimer_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => ctimer_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => ctimer_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => ctimer_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => ctimer_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => ctimer_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0000000C0A0A"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => \slv_reg1[31]_i_3_n_0\,
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
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
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => ctimer_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => ctimer_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => ctimer_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => ctimer_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => ctimer_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => ctimer_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => ctimer_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => ctimer_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => ctimer_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => ctimer_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => ctimer_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => ctimer_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => ctimer_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => ctimer_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => ctimer_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => ctimer_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => ctimer_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => ctimer_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => ctimer_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => ctimer_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => ctimer_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => ctimer_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => ctimer_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => ctimer_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => ctimer_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => ctimer_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => ctimer_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => ctimer_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => ctimer_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => ctimer_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => ctimer_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => ctimer_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0000000C0A0A"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => s00_axi_awaddr(1),
      I2 => \slv_reg2[31]_i_3_n_0\,
      I3 => s00_axi_awaddr(2),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg2[31]_i_2_n_0\
    );
\slv_reg2[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg2[31]_i_3_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg2[31]_i_2_n_0\,
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => ctimer_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => ctimer_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => ctimer_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8308800"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awaddr(0),
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \slv_reg1[31]_i_3_n_0\,
      O => \slv_reg5[31]_i_2_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => ctimer_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => ctimer_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => ctimer_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => ctimer_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => ctimer_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => ctimer_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => ctimer_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => ctimer_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => ctimer_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => ctimer_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => ctimer_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => ctimer_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => ctimer_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => ctimer_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => ctimer_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => ctimer_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => ctimer_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => ctimer_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => ctimer_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => ctimer_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => ctimer_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => ctimer_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => ctimer_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => ctimer_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => ctimer_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => ctimer_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => ctimer_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => ctimer_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => ctimer_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => ctimer_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => ctimer_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => ctimer_n_0
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
      INIT => X"000000008A800000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(2),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \slv_reg1[31]_i_3_n_0\,
      I5 => \slv_reg2[31]_i_3_n_0\,
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
      R => ctimer_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => ctimer_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => ctimer_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => ctimer_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => ctimer_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => ctimer_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => ctimer_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => ctimer_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => ctimer_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => ctimer_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => ctimer_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => ctimer_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => ctimer_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => ctimer_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => ctimer_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => ctimer_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => ctimer_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => ctimer_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => ctimer_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => ctimer_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => ctimer_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => ctimer_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => ctimer_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => ctimer_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => ctimer_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => ctimer_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => ctimer_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => ctimer_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => ctimer_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => ctimer_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => ctimer_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => ctimer_n_0
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
      INIT => X"8A80000000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awaddr(2),
      I2 => s00_axi_awvalid,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \slv_reg2[31]_i_3_n_0\,
      I5 => \slv_reg1[31]_i_3_n_0\,
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
      R => ctimer_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => ctimer_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => ctimer_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => ctimer_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => ctimer_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => ctimer_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => ctimer_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => ctimer_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => ctimer_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => ctimer_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => ctimer_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => ctimer_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => ctimer_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => ctimer_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => ctimer_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => ctimer_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => ctimer_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => ctimer_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => ctimer_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => ctimer_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => ctimer_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => ctimer_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => ctimer_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => ctimer_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => ctimer_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => ctimer_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => ctimer_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => ctimer_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => ctimer_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => ctimer_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => ctimer_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => ctimer_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    alarm_reg : out STD_LOGIC;
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
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer is
begin
myip_cooktimer_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer_slave_lite_v1_0_S00_AXI
     port map (
      alarm_reg => alarm_reg,
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
    alarm : out STD_LOGIC;
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_multiwatch_lcd_myip_cooktimer_0_0,myip_cooktimer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_cooktimer,Vivado 2024.2";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_cooktimer
     port map (
      alarm_reg => alarm,
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
