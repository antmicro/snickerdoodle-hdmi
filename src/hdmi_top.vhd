-- Copyright (c) 2020 Antmicro
library ieee;
use ieee.std_logic_1164.all;

entity hdmi_top is
  port (
    DDR_0_addr : inout std_logic_vector (14 downto 0);
    DDR_0_ba : inout std_logic_vector (2 downto 0);
    DDR_0_cas_n : inout std_logic;
    DDR_0_ck_n : inout std_logic;
    DDR_0_ck_p : inout std_logic;
    DDR_0_cke : inout std_logic;
    DDR_0_cs_n : inout std_logic;
    DDR_0_dm : inout std_logic_vector (3 downto 0);
    DDR_0_dq : inout std_logic_vector (31 downto 0);
    DDR_0_dqs_n : inout std_logic_vector (3 downto 0);
    DDR_0_dqs_p : inout std_logic_vector (3 downto 0);
    DDR_0_odt : inout std_logic;
    DDR_0_ras_n : inout std_logic;
    DDR_0_reset_n : inout std_logic;
    DDR_0_we_n : inout std_logic;
    FIXED_IO_0_ddr_vrn : inout std_logic;
    FIXED_IO_0_ddr_vrp : inout std_logic;
    FIXED_IO_0_mio : inout std_logic_vector (53 downto 0);
    FIXED_IO_0_ps_clk : inout std_logic;
    FIXED_IO_0_ps_porb : inout std_logic;
    FIXED_IO_0_ps_srstb : inout std_logic;
    HDMI_OUT_CLK_N : out std_logic;
    HDMI_OUT_CLK_P : out std_logic;
    HDMI_OUT_DATA0_N : out std_logic;
    HDMI_OUT_DATA0_P : out std_logic;
    HDMI_OUT_DATA1_N : out std_logic;
    HDMI_OUT_DATA1_P : out std_logic;
    HDMI_OUT_DATA2_N : out std_logic;
    HDMI_OUT_DATA2_P : out std_logic
 );
end hdmi_top;

architecture structure of hdmi_top is
  component snickerdoodle_hdmi is
  port (
    FIXED_IO_0_mio : inout std_logic_vector (53 downto 0);
    FIXED_IO_0_ddr_vrn : inout std_logic;
    FIXED_IO_0_ddr_vrp : inout std_logic;
    FIXED_IO_0_ps_srstb : inout std_logic;
    FIXED_IO_0_ps_clk : inout std_logic;
    FIXED_IO_0_ps_porb : inout std_logic;
    DDR_0_cas_n : inout std_logic;
    DDR_0_cke : inout std_logic;
    DDR_0_ck_n : inout std_logic;
    DDR_0_ck_p : inout std_logic;
    DDR_0_cs_n : inout std_logic;
    DDR_0_reset_n : inout std_logic;
    DDR_0_odt : inout std_logic;
    DDR_0_ras_n : inout std_logic;
    DDR_0_we_n : inout std_logic;
    DDR_0_ba : inout std_logic_vector (2 downto 0);
    DDR_0_addr : inout std_logic_vector (14 downto 0);
    DDR_0_dm : inout std_logic_vector (3 downto 0);
    DDR_0_dq : inout std_logic_vector (31 downto 0);
    DDR_0_dqs_n : inout std_logic_vector (3 downto 0);
    DDR_0_dqs_p : inout std_logic_vector (3 downto 0);
    HDMI_OUT_CLK_P : out std_logic;
    HDMI_OUT_CLK_N : out std_logic;
    HDMI_OUT_DATA2_P : out std_logic;
    HDMI_OUT_DATA2_N : out std_logic;
    HDMI_OUT_DATA1_P : out std_logic;
    HDMI_OUT_DATA1_N : out std_logic;
    HDMI_OUT_DATA0_P : out std_logic;
    HDMI_OUT_DATA0_N : out std_logic
  );
  end component snickerdoodle_hdmi;
begin
  snickerdoodle_hdmi_inst0: component snickerdoodle_hdmi
  port map (
    DDR_0_addr(14 downto 0) => DDR_0_addr(14 downto 0),
    DDR_0_ba(2 downto 0) => DDR_0_ba(2 downto 0),
    DDR_0_cas_n => DDR_0_cas_n,
    DDR_0_ck_n => DDR_0_ck_n,
    DDR_0_ck_p => DDR_0_ck_p,
    DDR_0_cke => DDR_0_cke,
    DDR_0_cs_n => DDR_0_cs_n,
    DDR_0_dm(3 downto 0) => DDR_0_dm(3 downto 0),
    DDR_0_dq(31 downto 0) => DDR_0_dq(31 downto 0),
    DDR_0_dqs_n(3 downto 0) => DDR_0_dqs_n(3 downto 0),
    DDR_0_dqs_p(3 downto 0) => DDR_0_dqs_p(3 downto 0),
    DDR_0_odt => DDR_0_odt,
    DDR_0_ras_n => DDR_0_ras_n,
    DDR_0_reset_n => DDR_0_reset_n,
    DDR_0_we_n => DDR_0_we_n,
    FIXED_IO_0_ddr_vrn => FIXED_IO_0_ddr_vrn,
    FIXED_IO_0_ddr_vrp => FIXED_IO_0_ddr_vrp,
    FIXED_IO_0_mio(53 downto 0) => FIXED_IO_0_mio(53 downto 0),
    FIXED_IO_0_ps_clk => FIXED_IO_0_ps_clk,
    FIXED_IO_0_ps_porb => FIXED_IO_0_ps_porb,
    FIXED_IO_0_ps_srstb => FIXED_IO_0_ps_srstb,
    HDMI_OUT_CLK_N => HDMI_OUT_CLK_N,
    HDMI_OUT_CLK_P => HDMI_OUT_CLK_P,
    HDMI_OUT_DATA0_N => HDMI_OUT_DATA0_N,
    HDMI_OUT_DATA0_P => HDMI_OUT_DATA0_P,
    HDMI_OUT_DATA1_N => HDMI_OUT_DATA1_N,
    HDMI_OUT_DATA1_P => HDMI_OUT_DATA1_P,
    HDMI_OUT_DATA2_N => HDMI_OUT_DATA2_N,
    HDMI_OUT_DATA2_P => HDMI_OUT_DATA2_P
  );
end structure;
