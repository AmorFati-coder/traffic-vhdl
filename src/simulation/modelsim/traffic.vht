-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "08/28/2022 12:06:54"
                                                            
-- Vhdl Test Bench template for design  :  traffic
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY traffic_vhd_tst IS
END traffic_vhd_tst;
ARCHITECTURE traffic_arch OF traffic_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL LED : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL NSEGH : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL NSEGL : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL SWI : STD_LOGIC;
SIGNAL WideSEGH : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL WideSEGL : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT traffic
	PORT (
	CLK : IN STD_LOGIC;
	LED : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	NSEGH : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	NSEGL : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RST : IN STD_LOGIC;
	SWI : IN STD_LOGIC;
	WideSEGH : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	WideSEGL : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : traffic
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	LED => LED,
	NSEGH => NSEGH,
	NSEGL => NSEGL,
	RST => RST,
	SWI => SWI,
	WideSEGH => WideSEGH,
	WideSEGL => WideSEGL
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END traffic_arch;
