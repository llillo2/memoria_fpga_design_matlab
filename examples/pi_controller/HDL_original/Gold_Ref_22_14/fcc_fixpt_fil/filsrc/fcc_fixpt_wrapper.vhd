
-- ----------------------------------------------
-- File Name: fcc_fixpt_wrapper.vhd
-- Created:   2025-12-01 15:46:38
-- Copyright  2025 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY fcc_fixpt_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(95 DOWNTO 0);
      dout                            : OUT std_logic_vector(119 DOWNTO 0)
);
END fcc_fixpt_wrapper;

ARCHITECTURE rtl of fcc_fixpt_wrapper IS

COMPONENT fcc_fixpt IS 
PORT (
      voutref                         : IN  std_logic_vector(18 DOWNTO 0);
      clk_enable                      : IN  std_logic;
      vout                            : IN  std_logic_vector(18 DOWNTO 0);
      reset                           : IN  std_logic;
      clk                             : IN  std_logic;
      vfc                             : IN  std_logic_vector(19 DOWNTO 0);
      vfcref                          : IN  std_logic_vector(18 DOWNTO 0);
      uv                              : OUT std_logic_vector(18 DOWNTO 0);
      ui                              : OUT std_logic_vector(19 DOWNTO 0);
      d1                              : OUT std_logic_vector(26 DOWNTO 0);
      d2                              : OUT std_logic_vector(26 DOWNTO 0);
      ce_out                          : OUT std_logic
);
END COMPONENT;

  SIGNAL vfcref                           : std_logic_vector(18 DOWNTO 0); -- std19
  SIGNAL vfcref_tmp                       : std_logic_vector(18 DOWNTO 0); -- std19
  SIGNAL vfc                              : std_logic_vector(19 DOWNTO 0); -- std20
  SIGNAL vfc_tmp                          : std_logic_vector(19 DOWNTO 0); -- std20
  SIGNAL voutref                          : std_logic_vector(18 DOWNTO 0); -- std19
  SIGNAL voutref_tmp                      : std_logic_vector(18 DOWNTO 0); -- std19
  SIGNAL vout                             : std_logic_vector(18 DOWNTO 0); -- std19
  SIGNAL vout_tmp                         : std_logic_vector(18 DOWNTO 0); -- std19
  SIGNAL ce_out                           : std_logic; -- boolean
  SIGNAL ce_out_tmp                       : std_logic; -- boolean
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL d1                               : std_logic_vector(26 DOWNTO 0); -- std27
  SIGNAL d1_tmp                           : std_logic_vector(26 DOWNTO 0); -- std27
  SIGNAL zero1                            : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL d2                               : std_logic_vector(26 DOWNTO 0); -- std27
  SIGNAL d2_tmp                           : std_logic_vector(26 DOWNTO 0); -- std27
  SIGNAL zero2                            : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL ui                               : std_logic_vector(19 DOWNTO 0); -- std20
  SIGNAL ui_tmp                           : std_logic_vector(19 DOWNTO 0); -- std20
  SIGNAL zero3                            : std_logic_vector(3 DOWNTO 0); -- std4
  SIGNAL uv                               : std_logic_vector(18 DOWNTO 0); -- std19
  SIGNAL uv_tmp                           : std_logic_vector(18 DOWNTO 0); -- std19
  SIGNAL zero4                            : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL tmpconcat                        : std_logic_vector(119 DOWNTO 0); -- std120

BEGIN

u_fcc_fixpt: fcc_fixpt 
PORT MAP(
        uv                   => uv,
        ui                   => ui,
        voutref              => voutref,
        d1                   => d1,
        d2                   => d2,
        clk_enable           => enb,
        vout                 => vout,
        reset                => reset,
        clk                  => clk,
        vfc                  => vfc,
        ce_out               => ce_out,
        vfcref               => vfcref
);

vfcref <= vfcref_tmp;
vfcref_tmp <= din(18 DOWNTO 0);
vfc <= vfc_tmp;
vfc_tmp <= din(43 DOWNTO 24);
voutref <= voutref_tmp;
voutref_tmp <= din(66 DOWNTO 48);
vout <= vout_tmp;
vout_tmp <= din(90 DOWNTO 72);
ce_out_tmp <= ce_out;

ce_out_tmp <= ce_out;

zero0 <= (others => '0');
d1_tmp <= d1;
d1_tmp <= d1;
zero1 <= (others => '0');
d2_tmp <= d2;
d2_tmp <= d2;
zero2 <= (others => '0');
ui_tmp <= ui;
ui_tmp <= ui;
zero3 <= (others => '0');
uv_tmp <= uv;
uv_tmp <= uv;
zero4 <= (others => '0');
dout <= zero4 & uv_tmp & zero3 & ui_tmp & zero2 & d2_tmp & zero1 & d1_tmp & zero0 & ce_out_tmp;

END;
