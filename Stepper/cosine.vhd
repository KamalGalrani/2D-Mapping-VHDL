--------------------------------------------------------------------------------
--
--   FileName:        cosine.vhd
--   Dependencies:    UPDOWNcounterANDswitch.vhd
--   Design Software: Quartus II Version 9.0 Build 184 04/29/2009 SJ Web Edition
--
--   Version History
--   Version 1.0 8/21/2009 Curtis Wynia
--     Initial Public Release
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   theta - input/argument of cosine function
--   cos   - value of cosine function
--
--   This sinusoid lookup table is only a quarter of the symmetric sinusoid it
--   represents. It has also been distorted to match the motor.
--
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;
--------------------------------------------
ENTITY cosine IS
    PORT
    (
      theta  :IN  STD_LOGIC_VECTOR (5 DOWNTO 0);
      cosine :OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
    );
END cosine;
--------------------------------------------
ARCHITECTURE arx OF cosine IS
  SIGNAL cos :INTEGER RANGE 0 TO 255;
BEGIN
  cosine <= CONV_STD_LOGIC_VECTOR(cos, 8);
  WITH CONV_INTEGER(theta) SELECT
    cos <= 255 WHEN 0,
           255 WHEN 1,
           255 WHEN 2,
           255 WHEN 3,
           254 WHEN 4,
           254 WHEN 5,
           253 WHEN 6,
           252 WHEN 7,
           252 WHEN 8,
           251 WHEN 9,
           250 WHEN 10,
           248 WHEN 11,
           247 WHEN 12,
           246 WHEN 13,
           244 WHEN 14,
           243 WHEN 15,
           241 WHEN 16,
           239 WHEN 17,
           237 WHEN 18,
           235 WHEN 19,
           233 WHEN 20,
           231 WHEN 21,
           229 WHEN 22,
           226 WHEN 23,
           224 WHEN 24,
           221 WHEN 25,
           218 WHEN 26,
           215 WHEN 27,
           212 WHEN 28,
           209 WHEN 29,
           206 WHEN 30,
           203 WHEN 31,
           199 WHEN 32,
           196 WHEN 33,
           192 WHEN 34,
           188 WHEN 35,
           184 WHEN 36,
           180 WHEN 37,
           176 WHEN 38,
           172 WHEN 39,
           168 WHEN 40,
           163 WHEN 41,
           159 WHEN 42,
           154 WHEN 43,
           149 WHEN 44,
           144 WHEN 45,
           139 WHEN 46,
           134 WHEN 47,
           128 WHEN 48,
           123 WHEN 49,
           117 WHEN 50,
           111 WHEN 51,
           105 WHEN 52,
           98 WHEN 53,
           92 WHEN 54,
           85 WHEN 55,
           78 WHEN 56,
           71 WHEN 57,
           63 WHEN 58,
           55 WHEN 59,
           46 WHEN 60,
           36 WHEN 61,
           25 WHEN 62,
           12 WHEN OTHERS;
END arx;