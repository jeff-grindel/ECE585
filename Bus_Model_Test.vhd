--Bus Model Test Bench

--TESTBENCH
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bus_Model_Test is
end entity;

architecture behave of Bus_Model_Test is

--declaration of the Behaviral Encoder
COMPONENT Bus_Model is
   port (Addr : in std_logic_vector; 	
		 IHC : in std_logic_vector (0 downto 0);
	     DHC : in std_logic_vector (0 downto 0); 
		 R_W : in std_logic_vector (0 downto 0);
		 C_Type : in std_logic_vector (0 downto 0);
		 Data_In : in std_logic_vector (31 downto 0);
		 Blk_In : in std_logic_vector (255 downto 0);
		
		 Addr_Out: out std_logic_vector; 
		 IHC_Out: out std_logic_vector (0 downto 0); 
	     DHC_Out : out std_logic_vector (0 downto 0);
		 R_W_Out : out std_logic_vector (0 downto 0);
		 C_Type_Out : out std_logic_vector (0 downto 0);
		 Data_Out : out std_logic_vector (31 downto 0);
		 Blk_Out : out std_logic_vector(255 downto 0)); 
end COMPONENT;

--Declaration of test signal Inputs
signal TB_Addr : std_logic_vector (7 downto 0);
signal TB_IHC : std_logic_vector(0 downto 0);	
signal TB_DHC : std_logic_vector(0 downto 0);	
signal TB_R_W : std_logic_vector(0 downto 0);	
signal TB_C_Type : std_logic_vector(0 downto 0);	
signal TB_Data_In : std_logic_vector(31 downto 0);
signal TB_Blk_In: std_logic_vector(255 downto 0);

--Declaration of test signal Outputs	
signal TB_Addr_Out : std_logic_vector (7 downto 0);
signal TB_IHC_Out : std_logic_vector(0 downto 0);	
signal TB_DHC_Out : std_logic_vector(0 downto 0);	
signal TB_R_W_Out : std_logic_vector(0 downto 0);	
signal TB_C_Type_Out : std_logic_vector(0 downto 0);
signal TB_Data_Out : std_logic_vector(31 downto 0);
signal TB_Blk_Out: std_logic_vector(255 downto 0);

begin
	uut: Bus_Model PORT MAP (
			Addr => TB_Addr,
			IHC => TB_IHC,
			DHC => TB_DHC,
			R_W => TB_R_W,
			C_Type => TB_C_Type,
			Data_In => TB_Data_In,
			Blk_In => TB_Blk_In,
			Addr_Out => TB_Addr_Out,
			IHC_Out => TB_IHC_Out,
			DHC_Out => TB_DHC_Out,
			R_W_Out => TB_R_W_Out,
			C_Type_Out => TB_C_Type_Out,
			Data_Out => TB_Data_Out,
			Blk_Out => TB_Blk_Out);
	
	TB_Addr_Proc : process 
	begin
		TB_Addr <= x"00" after 0 ns;
	wait;
	end process TB_Addr_Proc;
	
	TB_IHC_Proc : process
	begin
		TB_IHC <= "1" after 0 ns;
	wait;
	end process TB_IHC_Proc;
	
	TB_DHC_Proc : process
	begin
		TB_DHC <= "0" after 0 ns;
	wait;
	end process TB_DHC_Proc;
	
	TB_Data_In_Proc : process
	begin
		TB_Data_In <= x"91919191" after 0 ns;
	wait;
	end process TB_Data_In_Proc;
	
end architecture behave;	


		
