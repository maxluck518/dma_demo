-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Sep 21 19:24:29 2018
-- Host        : ThinkPad running 64-bit Ubuntu 18.04.1 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top reg_access_fifo -prefix
--               reg_access_fifo_ reg_access_fifo_sim_netlist.vhdl
-- Design      : reg_access_fifo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xa7z010clg225-1I
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of reg_access_fifo_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of reg_access_fifo_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of reg_access_fifo_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of reg_access_fifo_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of reg_access_fifo_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of reg_access_fifo_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of reg_access_fifo_xpm_cdc_async_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of reg_access_fifo_xpm_cdc_async_rst : entity is "ASYNC_RST";
end reg_access_fifo_xpm_cdc_async_rst;

architecture STRUCTURE of reg_access_fifo_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_async_rst__3\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_async_rst__3\ : entity is "ASYNC_RST";
end \reg_access_fifo_xpm_cdc_async_rst__3\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_async_rst__3\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_async_rst__4\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_async_rst__4\ : entity is "ASYNC_RST";
end \reg_access_fifo_xpm_cdc_async_rst__4\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_async_rst__4\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_async_rst__5\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_async_rst__5\ : entity is "ASYNC_RST";
end \reg_access_fifo_xpm_cdc_async_rst__5\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_async_rst__5\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_async_rst__6\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_async_rst__6\ : entity is "ASYNC_RST";
end \reg_access_fifo_xpm_cdc_async_rst__6\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_async_rst__6\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_async_rst__7\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_async_rst__7\ : entity is "ASYNC_RST";
end \reg_access_fifo_xpm_cdc_async_rst__7\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_async_rst__7\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of reg_access_fifo_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of reg_access_fifo_xpm_cdc_gray : entity is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of reg_access_fifo_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of reg_access_fifo_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of reg_access_fifo_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of reg_access_fifo_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of reg_access_fifo_xpm_cdc_gray : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of reg_access_fifo_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of reg_access_fifo_xpm_cdc_gray : entity is "GRAY";
end reg_access_fifo_xpm_cdc_gray;

architecture STRUCTURE of reg_access_fifo_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair1";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__3\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__3\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__3\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__3\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__3\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair18";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__4\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__4\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__4\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__4\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__4\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__4\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__4\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__4\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair19";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__5\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__5\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__5\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__5\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__5\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__5\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__5\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__5\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__5\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__5\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair36";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__6\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__6\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__6\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__6\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__6\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__6\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__6\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__6\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__6\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__6\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair37";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__7\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__7\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__7\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__7\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__7\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__7\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__7\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__7\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__7\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__7\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__7\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__7\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__7\ is
  signal async_path : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(0),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(1),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(3),
      Q => async_path(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__parameterized0\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__parameterized0\ is
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_out_bin_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal \dest_out_bin_ff[2]_i_2_n_0\ : STD_LOGIC;
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair11";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(0),
      I2 => \dest_graysync_ff[1]\(2),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => binval(8),
      I5 => \dest_out_bin_ff[1]_i_2_n_0\,
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_out_bin_ff[1]_i_2_n_0\,
      I5 => \dest_graysync_ff[1]\(1),
      O => binval(1)
    );
\dest_out_bin_ff[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      O => \dest_out_bin_ff[1]_i_2_n_0\
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_out_bin_ff[2]_i_2_n_0\,
      I3 => binval(8),
      I4 => \dest_graysync_ff[1]\(3),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(6),
      O => \dest_out_bin_ff[2]_i_2_n_0\
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => binval(8),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(7),
      I5 => \dest_graysync_ff[1]\(6),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(7),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(8),
      O => binval(8)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(8),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(9),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__parameterized0__2\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__parameterized0__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_out_bin_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal \dest_out_bin_ff[2]_i_2_n_0\ : STD_LOGIC;
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair25";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(0),
      I2 => \dest_graysync_ff[1]\(2),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => binval(8),
      I5 => \dest_out_bin_ff[1]_i_2_n_0\,
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_out_bin_ff[1]_i_2_n_0\,
      I5 => \dest_graysync_ff[1]\(1),
      O => binval(1)
    );
\dest_out_bin_ff[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      O => \dest_out_bin_ff[1]_i_2_n_0\
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_out_bin_ff[2]_i_2_n_0\,
      I3 => binval(8),
      I4 => \dest_graysync_ff[1]\(3),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(6),
      O => \dest_out_bin_ff[2]_i_2_n_0\
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => binval(8),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(7),
      I5 => \dest_graysync_ff[1]\(6),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(7),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(8),
      O => binval(8)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(8),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(9),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__parameterized0__3\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__parameterized0__3\ is
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_out_bin_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal \dest_out_bin_ff[2]_i_2_n_0\ : STD_LOGIC;
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair29";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(0),
      I2 => \dest_graysync_ff[1]\(2),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => binval(8),
      I5 => \dest_out_bin_ff[1]_i_2_n_0\,
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_out_bin_ff[1]_i_2_n_0\,
      I5 => \dest_graysync_ff[1]\(1),
      O => binval(1)
    );
\dest_out_bin_ff[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      O => \dest_out_bin_ff[1]_i_2_n_0\
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_out_bin_ff[2]_i_2_n_0\,
      I3 => binval(8),
      I4 => \dest_graysync_ff[1]\(3),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(6),
      O => \dest_out_bin_ff[2]_i_2_n_0\
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => binval(8),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(7),
      I5 => \dest_graysync_ff[1]\(6),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(7),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(8),
      O => binval(8)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(8),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(9),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ : entity is "GRAY";
end \reg_access_fifo_xpm_cdc_gray__parameterized0__4\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_gray__parameterized0__4\ is
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal \dest_out_bin_ff[1]_i_2_n_0\ : STD_LOGIC;
  signal \dest_out_bin_ff[2]_i_2_n_0\ : STD_LOGIC;
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair7";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(0),
      I2 => \dest_graysync_ff[1]\(2),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => binval(8),
      I5 => \dest_out_bin_ff[1]_i_2_n_0\,
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_out_bin_ff[1]_i_2_n_0\,
      I5 => \dest_graysync_ff[1]\(1),
      O => binval(1)
    );
\dest_out_bin_ff[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      O => \dest_out_bin_ff[1]_i_2_n_0\
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_out_bin_ff[2]_i_2_n_0\,
      I3 => binval(8),
      I4 => \dest_graysync_ff[1]\(3),
      I5 => \dest_graysync_ff[1]\(2),
      O => binval(2)
    );
\dest_out_bin_ff[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(6),
      O => \dest_out_bin_ff[2]_i_2_n_0\
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => binval(8),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(6),
      I4 => \dest_graysync_ff[1]\(5),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(4),
      I4 => \dest_graysync_ff[1]\(7),
      I5 => \dest_graysync_ff[1]\(6),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(5),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(7),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(6),
      I3 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(9),
      I1 => \dest_graysync_ff[1]\(8),
      O => binval(8)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(0),
      I1 => src_in_bin(1),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(2),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(3),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(4),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(5),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(6),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(7),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(8),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(9),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of reg_access_fifo_xpm_cdc_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of reg_access_fifo_xpm_cdc_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of reg_access_fifo_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of reg_access_fifo_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of reg_access_fifo_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of reg_access_fifo_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of reg_access_fifo_xpm_cdc_single : entity is "SINGLE";
end reg_access_fifo_xpm_cdc_single;

architecture STRUCTURE of reg_access_fifo_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__3\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__3\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__3\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__3\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__3\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__3\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__4\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__4\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__4\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__4\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__4\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__5\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__5\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__5\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__5\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__5\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__5\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__5\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__6\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__6\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__6\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__6\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__6\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__6\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__6\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__7\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__7\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__7\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__7\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__7\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__7\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__7\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__7\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__7\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__7\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__7\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(3);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__parameterized0\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__parameterized0\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__parameterized0\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__parameterized0\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__parameterized0\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__parameterized0\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__parameterized0\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__parameterized0__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__parameterized0__2\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__parameterized0__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__parameterized0__3\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__parameterized0__3\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__parameterized0__3\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_single__parameterized0__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ : entity is "SINGLE";
end \reg_access_fifo_xpm_cdc_single__parameterized0__4\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_single__parameterized0__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of reg_access_fifo_xpm_cdc_sync_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of reg_access_fifo_xpm_cdc_sync_rst : entity is 5;
  attribute INIT : string;
  attribute INIT of reg_access_fifo_xpm_cdc_sync_rst : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of reg_access_fifo_xpm_cdc_sync_rst : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of reg_access_fifo_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of reg_access_fifo_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of reg_access_fifo_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of reg_access_fifo_xpm_cdc_sync_rst : entity is "SYNC_RST";
end reg_access_fifo_xpm_cdc_sync_rst;

architecture STRUCTURE of reg_access_fifo_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_sync_rst__2\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is 5;
  attribute INIT : string;
  attribute INIT of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_sync_rst__2\ : entity is "SYNC_RST";
end \reg_access_fifo_xpm_cdc_sync_rst__2\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_sync_rst__2\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_sync_rst__3\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is 5;
  attribute INIT : string;
  attribute INIT of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_sync_rst__3\ : entity is "SYNC_RST";
end \reg_access_fifo_xpm_cdc_sync_rst__3\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_sync_rst__3\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_xpm_cdc_sync_rst__4\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is 5;
  attribute INIT : string;
  attribute INIT of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \reg_access_fifo_xpm_cdc_sync_rst__4\ : entity is "SYNC_RST";
end \reg_access_fifo_xpm_cdc_sync_rst__4\;

architecture STRUCTURE of \reg_access_fifo_xpm_cdc_sync_rst__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of reg_access_fifo_blk_mem_gen_prim_wrapper is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => \gc0.count_d1_reg[9]\(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => s_aclk,
      CLKBWRCLK => m_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => s_axi_wdata(30 downto 23),
      DIADI(23 downto 16) => s_axi_wdata(21 downto 14),
      DIADI(15 downto 8) => s_axi_wdata(12 downto 5),
      DIADI(7 downto 4) => s_axi_wdata(3 downto 0),
      DIADI(3 downto 0) => s_axi_wstrb(3 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3) => s_axi_wdata(31),
      DIPADIP(2) => s_axi_wdata(22),
      DIPADIP(1) => s_axi_wdata(13),
      DIPADIP(0) => s_axi_wdata(4),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 24) => D(34 downto 27),
      DOBDO(23 downto 16) => D(25 downto 18),
      DOBDO(15 downto 8) => D(16 downto 9),
      DOBDO(7 downto 0) => D(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => D(35),
      DOPBDOP(2) => D(26),
      DOPBDOP(1) => D(17),
      DOPBDOP(0) => D(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENA_I,
      ENBWREN => ENB_I,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_A,
      RSTRAMB => POR_B,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => E(0),
      WEA(2) => E(0),
      WEA(1) => E(0),
      WEA(0) => E(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_blk_mem_gen_prim_wrapper__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_blk_mem_gen_prim_wrapper__parameterized0\ : entity is "blk_mem_gen_prim_wrapper";
end \reg_access_fifo_blk_mem_gen_prim_wrapper__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_blk_mem_gen_prim_wrapper__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_89\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 5) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 5) => \gc0.count_d1_reg[9]\(9 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => m_aclk,
      CLKBWRCLK => s_aclk,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 24) => m_axi_rdata(31 downto 24),
      DIADI(23 downto 8) => m_axi_rdata(22 downto 7),
      DIADI(7 downto 2) => m_axi_rdata(5 downto 0),
      DIADI(1 downto 0) => m_axi_rresp(1 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000000000000",
      DIPADIP(3) => '0',
      DIPADIP(2) => m_axi_rdata(23),
      DIPADIP(1) => '0',
      DIPADIP(0) => m_axi_rdata(6),
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 24) => D(33 downto 26),
      DOBDO(23 downto 8) => D(24 downto 9),
      DOBDO(7 downto 0) => D(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_89\,
      DOPBDOP(2) => D(25),
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91\,
      DOPBDOP(0) => D(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ENA_I,
      ENBWREN => ENB_I,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => POR_B,
      RSTRAMB => POR_A,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => E(0),
      WEA(2) => E(0),
      WEA(1) => E(0),
      WEA(0) => E(0),
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_compare__parameterized0\ is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    comp2 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_fb_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_compare__parameterized0\ : entity is "compare";
end \reg_access_fifo_compare__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_compare__parameterized0\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(4)
    );
ram_full_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEEEEAAAAFEEE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      I1 => comp1,
      I2 => s_axi_wvalid,
      I3 => comp2,
      I4 => \out\,
      I5 => ram_full_fb_i_reg_0,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_compare__parameterized0_0\ is
  port (
    comp2 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_compare__parameterized0_0\ : entity is "compare";
end \reg_access_fifo_compare__parameterized0_0\;

architecture STRUCTURE of \reg_access_fifo_compare__parameterized0_0\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \dest_out_bin_ff_reg[9]\(2 downto 0),
      S(0) => v1_reg_0(0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \dest_out_bin_ff_reg[9]\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_compare__parameterized0_1\ is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_compare__parameterized0_1\ : entity is "compare";
end \reg_access_fifo_compare__parameterized0_1\;

architecture STRUCTURE of \reg_access_fifo_compare__parameterized0_1\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(4)
    );
\ram_empty_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFEEE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => comp0,
      I2 => \gpregsm1.curr_fwft_state_reg[0]\,
      I3 => comp1,
      I4 => \out\,
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_compare__parameterized0_14\ is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    comp2 : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ram_full_fb_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_compare__parameterized0_14\ : entity is "compare";
end \reg_access_fifo_compare__parameterized0_14\;

architecture STRUCTURE of \reg_access_fifo_compare__parameterized0_14\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(4)
    );
\ram_full_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEEEEAAAAFEEE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      I1 => comp1,
      I2 => m_axi_rvalid,
      I3 => comp2,
      I4 => \out\,
      I5 => ram_full_fb_i_reg_0,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_compare__parameterized0_15\ is
  port (
    comp2 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_compare__parameterized0_15\ : entity is "compare";
end \reg_access_fifo_compare__parameterized0_15\;

architecture STRUCTURE of \reg_access_fifo_compare__parameterized0_15\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \dest_out_bin_ff_reg[9]\(2 downto 0),
      S(0) => v1_reg_0(0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \dest_out_bin_ff_reg[9]\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_compare__parameterized0_19\ is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_compare__parameterized0_19\ : entity is "compare";
end \reg_access_fifo_compare__parameterized0_19\;

architecture STRUCTURE of \reg_access_fifo_compare__parameterized0_19\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(4)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFEEE"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => comp0,
      I2 => \gpregsm1.curr_fwft_state_reg[0]\,
      I3 => comp1,
      I4 => \out\,
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_compare__parameterized0_2\ is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_compare__parameterized0_2\ : entity is "compare";
end \reg_access_fifo_compare__parameterized0_2\;

architecture STRUCTURE of \reg_access_fifo_compare__parameterized0_2\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \dest_out_bin_ff_reg[9]\(2 downto 0),
      S(0) => v1_reg_0(0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \dest_out_bin_ff_reg[9]\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_compare__parameterized0_20\ is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_compare__parameterized0_20\ : entity is "compare";
end \reg_access_fifo_compare__parameterized0_20\;

architecture STRUCTURE of \reg_access_fifo_compare__parameterized0_20\ is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \dest_out_bin_ff_reg[9]\(2 downto 0),
      S(0) => v1_reg_0(0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \dest_out_bin_ff_reg[9]\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_dmem is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 34 downto 0 );
    s_aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC
  );
end reg_access_fifo_dmem;

architecture STRUCTURE of reg_access_fifo_dmem is
  signal p_0_out : STD_LOGIC_VECTOR ( 34 downto 0 );
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_30_34_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_15_30_34_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_24_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_30_34 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_11 : label is "";
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => DI(1 downto 0),
      DIB(1 downto 0) => DI(3 downto 2),
      DIC(1 downto 0) => DI(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(1 downto 0),
      DOB(1 downto 0) => p_0_out(3 downto 2),
      DOC(1 downto 0) => p_0_out(5 downto 4),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => DI(13 downto 12),
      DIB(1 downto 0) => DI(15 downto 14),
      DIC(1 downto 0) => DI(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(13 downto 12),
      DOB(1 downto 0) => p_0_out(15 downto 14),
      DOC(1 downto 0) => p_0_out(17 downto 16),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => DI(19 downto 18),
      DIB(1 downto 0) => DI(21 downto 20),
      DIC(1 downto 0) => DI(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(19 downto 18),
      DOB(1 downto 0) => p_0_out(21 downto 20),
      DOC(1 downto 0) => p_0_out(23 downto 22),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => DI(25 downto 24),
      DIB(1 downto 0) => DI(27 downto 26),
      DIC(1 downto 0) => DI(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(25 downto 24),
      DOB(1 downto 0) => p_0_out(27 downto 26),
      DOC(1 downto 0) => p_0_out(29 downto 28),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_30_34: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => DI(31 downto 30),
      DIB(1 downto 0) => DI(33 downto 32),
      DIC(1) => '0',
      DIC(0) => DI(34),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(31 downto 30),
      DOB(1 downto 0) => p_0_out(33 downto 32),
      DOC(1) => NLW_RAM_reg_0_15_30_34_DOC_UNCONNECTED(1),
      DOC(0) => p_0_out(34),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_30_34_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => DI(7 downto 6),
      DIB(1 downto 0) => DI(9 downto 8),
      DIC(1 downto 0) => DI(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => p_0_out(7 downto 6),
      DOB(1 downto 0) => p_0_out(9 downto 8),
      DOC(1 downto 0) => p_0_out(11 downto 10),
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(0),
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(10),
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(11),
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(12),
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(13),
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(14),
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(15),
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(16),
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(17),
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(18),
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(19),
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(1),
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(20),
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(21),
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(22),
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(23),
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(24),
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(25),
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(26),
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(27),
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(28),
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(29),
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(2),
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(30),
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(31),
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(32),
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(33),
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(34),
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(3),
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(4),
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(5),
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(6),
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(7),
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(8),
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => p_0_out(9),
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_dmem_24 is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 34 downto 0 );
    s_aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    I71 : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_dmem_24 : entity is "dmem";
end reg_access_fifo_dmem_24;

architecture STRUCTURE of reg_access_fifo_dmem_24 is
  signal RAM_reg_0_15_0_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_0_5_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_12_17_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_18_23_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_24_29_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_30_34_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_30_34_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_30_34_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_30_34_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_30_34_n_5 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_2 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_3 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_4 : STD_LOGIC;
  signal RAM_reg_0_15_6_11_n_5 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_30_34_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_RAM_reg_0_15_30_34_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_24_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_30_34 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_15_6_11 : label is "";
begin
RAM_reg_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => I71(1 downto 0),
      DIB(1 downto 0) => I71(3 downto 2),
      DIC(1 downto 0) => I71(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_0_5_n_0,
      DOA(0) => RAM_reg_0_15_0_5_n_1,
      DOB(1) => RAM_reg_0_15_0_5_n_2,
      DOB(0) => RAM_reg_0_15_0_5_n_3,
      DOC(1) => RAM_reg_0_15_0_5_n_4,
      DOC(0) => RAM_reg_0_15_0_5_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => I71(13 downto 12),
      DIB(1 downto 0) => I71(15 downto 14),
      DIC(1 downto 0) => I71(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_12_17_n_0,
      DOA(0) => RAM_reg_0_15_12_17_n_1,
      DOB(1) => RAM_reg_0_15_12_17_n_2,
      DOB(0) => RAM_reg_0_15_12_17_n_3,
      DOC(1) => RAM_reg_0_15_12_17_n_4,
      DOC(0) => RAM_reg_0_15_12_17_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => I71(19 downto 18),
      DIB(1 downto 0) => I71(21 downto 20),
      DIC(1 downto 0) => I71(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_18_23_n_0,
      DOA(0) => RAM_reg_0_15_18_23_n_1,
      DOB(1) => RAM_reg_0_15_18_23_n_2,
      DOB(0) => RAM_reg_0_15_18_23_n_3,
      DOC(1) => RAM_reg_0_15_18_23_n_4,
      DOC(0) => RAM_reg_0_15_18_23_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => I71(25 downto 24),
      DIB(1 downto 0) => I71(27 downto 26),
      DIC(1 downto 0) => I71(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_24_29_n_0,
      DOA(0) => RAM_reg_0_15_24_29_n_1,
      DOB(1) => RAM_reg_0_15_24_29_n_2,
      DOB(0) => RAM_reg_0_15_24_29_n_3,
      DOC(1) => RAM_reg_0_15_24_29_n_4,
      DOC(0) => RAM_reg_0_15_24_29_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_30_34: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => I71(31 downto 30),
      DIB(1 downto 0) => I71(33 downto 32),
      DIC(1) => '0',
      DIC(0) => I71(34),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_30_34_n_0,
      DOA(0) => RAM_reg_0_15_30_34_n_1,
      DOB(1) => RAM_reg_0_15_30_34_n_2,
      DOB(0) => RAM_reg_0_15_30_34_n_3,
      DOC(1) => NLW_RAM_reg_0_15_30_34_DOC_UNCONNECTED(1),
      DOC(0) => RAM_reg_0_15_30_34_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_30_34_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
RAM_reg_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      DIA(1 downto 0) => I71(7 downto 6),
      DIB(1 downto 0) => I71(9 downto 8),
      DIC(1 downto 0) => I71(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1) => RAM_reg_0_15_6_11_n_0,
      DOA(0) => RAM_reg_0_15_6_11_n_1,
      DOB(1) => RAM_reg_0_15_6_11_n_2,
      DOB(0) => RAM_reg_0_15_6_11_n_3,
      DOC(1) => RAM_reg_0_15_6_11_n_4,
      DOC(0) => RAM_reg_0_15_6_11_n_5,
      DOD(1 downto 0) => NLW_RAM_reg_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => s_aclk,
      WE => ram_full_fb_i_reg(0)
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_0_5_n_1,
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_6_11_n_5,
      Q => dout_i(10),
      R => '0'
    );
\gpr1.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_6_11_n_4,
      Q => dout_i(11),
      R => '0'
    );
\gpr1.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_12_17_n_1,
      Q => dout_i(12),
      R => '0'
    );
\gpr1.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_12_17_n_0,
      Q => dout_i(13),
      R => '0'
    );
\gpr1.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_12_17_n_3,
      Q => dout_i(14),
      R => '0'
    );
\gpr1.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_12_17_n_2,
      Q => dout_i(15),
      R => '0'
    );
\gpr1.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_12_17_n_5,
      Q => dout_i(16),
      R => '0'
    );
\gpr1.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_12_17_n_4,
      Q => dout_i(17),
      R => '0'
    );
\gpr1.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_18_23_n_1,
      Q => dout_i(18),
      R => '0'
    );
\gpr1.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_18_23_n_0,
      Q => dout_i(19),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_0_5_n_0,
      Q => dout_i(1),
      R => '0'
    );
\gpr1.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_18_23_n_3,
      Q => dout_i(20),
      R => '0'
    );
\gpr1.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_18_23_n_2,
      Q => dout_i(21),
      R => '0'
    );
\gpr1.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_18_23_n_5,
      Q => dout_i(22),
      R => '0'
    );
\gpr1.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_18_23_n_4,
      Q => dout_i(23),
      R => '0'
    );
\gpr1.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_24_29_n_1,
      Q => dout_i(24),
      R => '0'
    );
\gpr1.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_24_29_n_0,
      Q => dout_i(25),
      R => '0'
    );
\gpr1.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_24_29_n_3,
      Q => dout_i(26),
      R => '0'
    );
\gpr1.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_24_29_n_2,
      Q => dout_i(27),
      R => '0'
    );
\gpr1.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_24_29_n_5,
      Q => dout_i(28),
      R => '0'
    );
\gpr1.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_24_29_n_4,
      Q => dout_i(29),
      R => '0'
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_0_5_n_3,
      Q => dout_i(2),
      R => '0'
    );
\gpr1.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_30_34_n_1,
      Q => dout_i(30),
      R => '0'
    );
\gpr1.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_30_34_n_0,
      Q => dout_i(31),
      R => '0'
    );
\gpr1.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_30_34_n_3,
      Q => dout_i(32),
      R => '0'
    );
\gpr1.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_30_34_n_2,
      Q => dout_i(33),
      R => '0'
    );
\gpr1.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_30_34_n_5,
      Q => dout_i(34),
      R => '0'
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_0_5_n_2,
      Q => dout_i(3),
      R => '0'
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_0_5_n_5,
      Q => dout_i(4),
      R => '0'
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_0_5_n_4,
      Q => dout_i(5),
      R => '0'
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_6_11_n_1,
      Q => dout_i(6),
      R => '0'
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_6_11_n_0,
      Q => dout_i(7),
      R => '0'
    );
\gpr1.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_6_11_n_3,
      Q => dout_i(8),
      R => '0'
    );
\gpr1.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \gpregsm1.curr_fwft_state_reg[1]\(0),
      D => RAM_reg_0_15_6_11_n_2,
      Q => dout_i(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_dmem__parameterized0\ is
  port (
    dout_i : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_aclk : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I56 : in STD_LOGIC;
    count_d2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_dmem__parameterized0\ : entity is "dmem";
end \reg_access_fifo_dmem__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_dmem__parameterized0\ is
  signal RAM_reg_0_15_0_0_n_0 : STD_LOGIC;
  signal RAM_reg_0_15_1_1_n_0 : STD_LOGIC;
  signal NLW_RAM_reg_0_15_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_15_1_1_SPO_UNCONNECTED : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_0_0 : label is "RAM16X1D";
  attribute XILINX_LEGACY_PRIM of RAM_reg_0_15_1_1 : label is "RAM16X1D";
begin
RAM_reg_0_15_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => count_d2(0),
      A1 => count_d2(1),
      A2 => count_d2(2),
      A3 => count_d2(3),
      A4 => '0',
      D => m_axi_bresp(0),
      DPO => RAM_reg_0_15_0_0_n_0,
      DPRA0 => count_d1(0),
      DPRA1 => count_d1(1),
      DPRA2 => count_d1(2),
      DPRA3 => count_d1(3),
      DPRA4 => '0',
      SPO => NLW_RAM_reg_0_15_0_0_SPO_UNCONNECTED,
      WCLK => m_aclk,
      WE => I56
    );
RAM_reg_0_15_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => count_d2(0),
      A1 => count_d2(1),
      A2 => count_d2(2),
      A3 => count_d2(3),
      A4 => '0',
      D => m_axi_bresp(1),
      DPO => RAM_reg_0_15_1_1_n_0,
      DPRA0 => count_d1(0),
      DPRA1 => count_d1(1),
      DPRA2 => count_d1(2),
      DPRA3 => count_d1(3),
      DPRA4 => '0',
      SPO => NLW_RAM_reg_0_15_1_1_SPO_UNCONNECTED,
      WCLK => m_aclk,
      WE => I56
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => RAM_reg_0_15_0_0_n_0,
      Q => dout_i(0),
      R => '0'
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => RAM_reg_0_15_1_1_n_0,
      Q => dout_i(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC
  );
end reg_access_fifo_rd_bin_cntr;

architecture STRUCTURE of reg_access_fifo_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair38";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__0\(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__0\(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__0\(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__0\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(0),
      Q => \src_gray_ff_reg[3]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(1),
      Q => \src_gray_ff_reg[3]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(2),
      Q => \src_gray_ff_reg[3]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(3),
      Q => \src_gray_ff_reg[3]\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__0\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__0\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__0\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_bin_cntr_29 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_rd_bin_cntr_29 : entity is "rd_bin_cntr";
end reg_access_fifo_rd_bin_cntr_29;

architecture STRUCTURE of reg_access_fifo_rd_bin_cntr_29 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__2\ : label is "soft_lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc0.count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__6\(0)
    );
\gc0.count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__6\(1)
    );
\gc0.count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__6\(2)
    );
\gc0.count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__6\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(0),
      Q => \src_gray_ff_reg[3]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(1),
      Q => \src_gray_ff_reg[3]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(2),
      Q => \src_gray_ff_reg[3]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(3),
      Q => \src_gray_ff_reg[3]\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__6\(0),
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__6\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__6\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__6\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_bin_cntr_9 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_rd_bin_cntr_9 : entity is "rd_bin_cntr";
end reg_access_fifo_rd_bin_cntr_9;

architecture STRUCTURE of reg_access_fifo_rd_bin_cntr_9 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__1\ : label is "soft_lutpair20";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\gc0.count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__4\(0)
    );
\gc0.count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__4\(1)
    );
\gc0.count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__4\(2)
    );
\gc0.count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__4\(3)
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(0),
      Q => \src_gray_ff_reg[3]\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(1),
      Q => \src_gray_ff_reg[3]\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(2),
      Q => \src_gray_ff_reg[3]\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \^q\(3),
      Q => \src_gray_ff_reg[3]\(3)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__4\(0),
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__4\(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__4\(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => \plusOp__4\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_rd_bin_cntr__parameterized0\ is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_rd_bin_cntr__parameterized0\ : entity is "rd_bin_cntr";
end \reg_access_fifo_rd_bin_cntr__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_rd_bin_cntr__parameterized0\ is
  signal \^device_7series.no_bmm_info.sdp.simple_prim36.ram\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gc0.count[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \gc0.count[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \plusOp__7\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gc0.count[6]_i_2__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gc0.count[9]_i_1__0\ : label is "soft_lutpair30";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) <= \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(9 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\gc0.count[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => \plusOp__7\(0)
    );
\gc0.count[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \plusOp__7\(1)
    );
\gc0.count[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => \^q\(0),
      O => \plusOp__7\(2)
    );
\gc0.count[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(1),
      I3 => \^q\(1),
      O => \plusOp__7\(3)
    );
\gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(0),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \plusOp__7\(4)
    );
\gc0.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => rd_pntr_plus1(0),
      I3 => rd_pntr_plus1(1),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \plusOp__7\(5)
    );
\gc0.count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \gc0.count[6]_i_2__0_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \plusOp__7\(6)
    );
\gc0.count[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \gc0.count[6]_i_2__0_n_0\
    );
\gc0.count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gc0.count[9]_i_2__0_n_0\,
      I2 => \^q\(5),
      O => \plusOp__7\(7)
    );
\gc0.count[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gc0.count[9]_i_2__0_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => \plusOp__7\(8)
    );
\gc0.count[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \gc0.count[9]_i_2__0_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => \plusOp__7\(9)
    );
\gc0.count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => rd_pntr_plus1(0),
      I3 => rd_pntr_plus1(1),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \gc0.count[9]_i_2__0_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => rd_pntr_plus1(0),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => rd_pntr_plus1(1),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(9),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(0),
      Q => rd_pntr_plus1(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(1),
      Q => rd_pntr_plus1(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(2),
      Q => \^q\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(3),
      Q => \^q\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(4),
      Q => \^q\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(5),
      Q => \^q\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(6),
      Q => \^q\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(7),
      Q => \^q\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(8),
      Q => \^q\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__7\(9),
      Q => \^q\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gmux.gm[0].gm1.m1_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => WR_PNTR_RD(0),
      I3 => WR_PNTR_RD(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(1),
      I1 => WR_PNTR_RD(1),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(0),
      I3 => WR_PNTR_RD(0),
      O => v1_reg_0(0)
    );
\gmux.gm[1].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(3),
      I1 => WR_PNTR_RD(3),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(2),
      I3 => WR_PNTR_RD(2),
      O => v1_reg_0(1)
    );
\gmux.gm[2].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(5),
      I1 => WR_PNTR_RD(5),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(4),
      I3 => WR_PNTR_RD(4),
      O => v1_reg_0(2)
    );
\gmux.gm[3].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(7),
      I1 => WR_PNTR_RD(7),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(6),
      I3 => WR_PNTR_RD(6),
      O => v1_reg_0(3)
    );
\gmux.gm[4].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(9),
      I1 => WR_PNTR_RD(9),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(8),
      I3 => WR_PNTR_RD(8),
      O => v1_reg_0(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_rd_bin_cntr__parameterized0_18\ is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_rd_bin_cntr__parameterized0_18\ : entity is "rd_bin_cntr";
end \reg_access_fifo_rd_bin_cntr__parameterized0_18\;

architecture STRUCTURE of \reg_access_fifo_rd_bin_cntr__parameterized0_18\ is
  signal \^device_7series.no_bmm_info.sdp.simple_prim36.ram\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gc0.count[6]_i_2_n_0\ : STD_LOGIC;
  signal \gc0.count[9]_i_2_n_0\ : STD_LOGIC;
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gc0.count[6]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gc0.count[9]_i_1\ : label is "soft_lutpair12";
begin
  \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) <= \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(9 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => \plusOp__3\(0)
    );
\gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \plusOp__3\(1)
    );
\gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => \^q\(0),
      O => \plusOp__3\(2)
    );
\gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(1),
      I3 => \^q\(1),
      O => \plusOp__3\(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(0),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \plusOp__3\(4)
    );
\gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => rd_pntr_plus1(0),
      I3 => rd_pntr_plus1(1),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \plusOp__3\(5)
    );
\gc0.count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \gc0.count[6]_i_2_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \plusOp__3\(6)
    );
\gc0.count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => \gc0.count[6]_i_2_n_0\
    );
\gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gc0.count[9]_i_2_n_0\,
      I2 => \^q\(5),
      O => \plusOp__3\(7)
    );
\gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gc0.count[9]_i_2_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => \plusOp__3\(8)
    );
\gc0.count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \gc0.count[9]_i_2_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => \plusOp__3\(9)
    );
\gc0.count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => rd_pntr_plus1(0),
      I3 => rd_pntr_plus1(1),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \gc0.count[9]_i_2_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(0),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => rd_pntr_plus1(1),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_d1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(9),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(0),
      Q => rd_pntr_plus1(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(1),
      Q => rd_pntr_plus1(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(2),
      Q => \^q\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(3),
      Q => \^q\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(4),
      Q => \^q\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(5),
      Q => \^q\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(6),
      Q => \^q\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(7),
      Q => \^q\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(8),
      Q => \^q\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gc0.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__3\(9),
      Q => \^q\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => WR_PNTR_RD(0),
      I3 => WR_PNTR_RD(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(1),
      I1 => WR_PNTR_RD(1),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(0),
      I3 => WR_PNTR_RD(0),
      O => v1_reg_0(0)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(3),
      I1 => WR_PNTR_RD(3),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(2),
      I3 => WR_PNTR_RD(2),
      O => v1_reg_0(1)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(5),
      I1 => WR_PNTR_RD(5),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(4),
      I3 => WR_PNTR_RD(4),
      O => v1_reg_0(2)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(7),
      I1 => WR_PNTR_RD(7),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(6),
      I3 => WR_PNTR_RD(6),
      O => v1_reg_0(3)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(9),
      I1 => WR_PNTR_RD(9),
      I2 => \^device_7series.no_bmm_info.sdp.simple_prim36.ram\(8),
      I3 => WR_PNTR_RD(8),
      O => v1_reg_0(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_fwft is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    ram_empty_fb_i_reg_0 : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_rd_fwft;

architecture STRUCTURE of reg_access_fifo_rd_fwft is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
\aempty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEF8000"
    )
        port map (
      I0 => ram_empty_fb_i_reg_0,
      I1 => s_axi_bready,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => aempty_fwft_i
    );
\empty_fwft_fb_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => s_axi_bready,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => s_axi_bready,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_i
    );
\gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_bready,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg_0,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => s_axi_bready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_bready,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg_0,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(0),
      Q => user_valid
    );
ram_empty_i_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_bready,
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg_0,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => ram_empty_fb_i_reg
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => s_axi_bvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_fwft_27 is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[34]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_rd_fwft_27 : entity is "rd_fwft";
end reg_access_fifo_rd_fwft_27;

architecture STRUCTURE of reg_access_fifo_rd_fwft_27 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\aempty_fwft_fb_i_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEF8000"
    )
        port map (
      I0 => \out\,
      I1 => m_axi_arready,
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => aempty_fwft_i
    );
\empty_fwft_fb_i_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_arready,
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_arready,
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_i
    );
\gc0.count_d1[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_arready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => E(0)
    );
\goreg_dm.dout_i[34]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_arready,
      O => \goreg_dm.dout_i_reg[34]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => m_axi_arready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_arready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(0),
      Q => user_valid
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axi_arvalid
    );
\ram_empty_i_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_arready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_fwft_7 is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[34]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_rd_fwft_7 : entity is "rd_fwft";
end reg_access_fifo_rd_fwft_7;

architecture STRUCTURE of reg_access_fifo_rd_fwft_7 is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\aempty_fwft_fb_i_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8E0C0F0"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \out\,
      I2 => aempty_fwft_fb_i,
      I3 => curr_fwft_state(1),
      I4 => curr_fwft_state(0),
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => aempty_fwft_i
    );
\empty_fwft_fb_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88EA"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(0),
      I2 => m_axi_awready,
      I3 => curr_fwft_state(1),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_fb_i
    );
\empty_fwft_fb_o_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88EA"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(0),
      I2 => m_axi_awready,
      I3 => curr_fwft_state(1),
      O => empty_fwft_fb_o_i0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_fb_o_i
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => empty_fwft_i
    );
\gc0.count_d1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_awready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => E(0)
    );
\goreg_dm.dout_i[34]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_awready,
      O => \goreg_dm.dout_i_reg[34]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => m_axi_awready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_awready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(1),
      Q => curr_fwft_state(1)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      D => next_fwft_state(0),
      Q => user_valid
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axi_awvalid
    );
\ram_empty_i_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DF0000000000DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_awready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      I4 => WR_PNTR_RD(0),
      I5 => Q(0),
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_rd_fwft__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_rd_fwft__parameterized0\ : entity is "rd_fwft";
end \reg_access_fifo_rd_fwft__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_rd_fwft__parameterized0\ is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal \aempty_fwft_fb_i_i_1__1_n_0\ : STD_LOGIC;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal \empty_fwft_fb_i_i_1__1_n_0\ : STD_LOGIC;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000000DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => m_axi_wready,
      I2 => curr_fwft_state(1),
      I3 => \out\,
      I4 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I5 => ENB_dly_D,
      O => ENB_I
    );
\aempty_fwft_fb_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFEFFECCCCCCC"
    )
        port map (
      I0 => \out\,
      I1 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I2 => m_axi_wready,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      I5 => aempty_fwft_fb_i,
      O => \aempty_fwft_fb_i_i_1__1_n_0\
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \aempty_fwft_fb_i_i_1__1_n_0\,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \aempty_fwft_fb_i_i_1__1_n_0\,
      Q => aempty_fwft_i,
      R => '0'
    );
\empty_fwft_fb_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAAFEFA"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => m_axi_wready,
      I2 => empty_fwft_fb_i,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      O => \empty_fwft_fb_i_i_1__1_n_0\
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \empty_fwft_fb_i_i_1__1_n_0\,
      Q => empty_fwft_fb_i,
      R => '0'
    );
\empty_fwft_fb_o_i_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_wready,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \empty_fwft_fb_i_i_1__1_n_0\,
      Q => empty_fwft_i,
      R => '0'
    );
\gc0.count_d1[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_wready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => \gc0.count_d1_reg[9]\(0)
    );
\goreg_bm.dout_i[35]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => m_axi_wready,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => m_axi_wready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => m_axi_wready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => m_axi_wvalid
    );
\ram_empty_i_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => m_axi_wready,
      I2 => curr_fwft_state(1),
      O => ram_empty_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_rd_fwft__parameterized0_16\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc0.count_d1_reg[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    ram_empty_fb_i_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    ENA_dly_D : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_rd_fwft__parameterized0_16\ : entity is "rd_fwft";
end \reg_access_fifo_rd_fwft__parameterized0_16\;

architecture STRUCTURE of \reg_access_fifo_rd_fwft__parameterized0_16\ is
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_fb_i_i_1_n_0 : STD_LOGIC;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_i_i_1_n_0 : STD_LOGIC;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000000DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => s_axi_rready,
      I2 => curr_fwft_state(1),
      I3 => \out\,
      I4 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I5 => ENA_dly_D,
      O => ENB_I
    );
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFEFFECCCCCCC"
    )
        port map (
      I0 => \out\,
      I1 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I2 => s_axi_rready,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      I5 => aempty_fwft_fb_i,
      O => aempty_fwft_fb_i_i_1_n_0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_fb_i_i_1_n_0,
      Q => aempty_fwft_fb_i,
      R => '0'
    );
aempty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => aempty_fwft_fb_i_i_1_n_0,
      Q => aempty_fwft_i,
      R => '0'
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAAFEFA"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => s_axi_rready,
      I2 => empty_fwft_fb_i,
      I3 => curr_fwft_state(0),
      I4 => curr_fwft_state(1),
      O => empty_fwft_fb_i_i_1_n_0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_i_i_1_n_0,
      Q => empty_fwft_fb_i,
      R => '0'
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => s_axi_rready,
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
empty_fwft_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => empty_fwft_fb_i_i_1_n_0,
      Q => empty_fwft_i,
      R => '0'
    );
\gc0.count_d1[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_rready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => \gc0.count_d1_reg[9]\(0)
    );
\goreg_bm.dout_i[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => s_axi_rready,
      O => E(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => s_axi_rready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => s_axi_rready,
      I2 => curr_fwft_state(0),
      I3 => \out\,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => next_fwft_state(0),
      Q => user_valid,
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\
    );
ram_empty_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => s_axi_rready,
      I2 => curr_fwft_state(1),
      O => ram_empty_fb_i_reg
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => empty_fwft_i,
      O => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC
  );
end reg_access_fifo_rd_status_flags_as;

architecture STRUCTURE of reg_access_fifo_rd_status_flags_as is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_status_flags_as_28 is
  port (
    \out\ : out STD_LOGIC;
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_rd_status_flags_as_28 : entity is "rd_status_flags_as";
end reg_access_fifo_rd_status_flags_as_28;

architecture STRUCTURE of reg_access_fifo_rd_status_flags_as_28 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_status_flags_as_8 is
  port (
    \out\ : out STD_LOGIC;
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_rd_status_flags_as_8 : entity is "rd_status_flags_as";
end reg_access_fifo_rd_status_flags_as_8;

architecture STRUCTURE of reg_access_fifo_rd_status_flags_as_8 is
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => ram_empty_fb_i
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \dest_out_bin_ff_reg[2]\,
      PRE => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_wr_bin_cntr;

architecture STRUCTURE of reg_access_fifo_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gic0.gc0.count_d2_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__2\ : label is "soft_lutpair39";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) <= \^gic0.gc0.count_d2_reg[3]_0\(3 downto 0);
\gic0.gc0.count[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__5\(0)
    );
\gic0.gc0.count[1]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__5\(1)
    );
\gic0.gc0.count[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__5\(2)
    );
\gic0.gc0.count[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__5\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => AR(0),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(0),
      Q => \src_gray_ff_reg[3]\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(1),
      Q => \src_gray_ff_reg[3]\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(2),
      Q => \src_gray_ff_reg[3]\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(3),
      Q => \src_gray_ff_reg[3]\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__5\(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__5\(1),
      PRE => AR(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__5\(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__5\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_bin_cntr_26 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_wr_bin_cntr_26 : entity is "wr_bin_cntr";
end reg_access_fifo_wr_bin_cntr_26;

architecture STRUCTURE of reg_access_fifo_wr_bin_cntr_26 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gic0.gc0.count_d2_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__0\ : label is "soft_lutpair3";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) <= \^gic0.gc0.count_d2_reg[3]_0\(3 downto 0);
\gic0.gc0.count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__1\(0)
    );
\gic0.gc0.count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \plusOp__1\(1)
    );
\gic0.gc0.count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \plusOp__1\(2)
    );
\gic0.gc0.count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \plusOp__1\(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => AR(0),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(0),
      Q => \src_gray_ff_reg[3]\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(1),
      Q => \src_gray_ff_reg[3]\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(2),
      Q => \src_gray_ff_reg[3]\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(3),
      Q => \src_gray_ff_reg[3]\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__1\(1),
      PRE => AR(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__1\(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_bin_cntr_6 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_wr_bin_cntr_6 : entity is "wr_bin_cntr";
end reg_access_fifo_wr_bin_cntr_6;

architecture STRUCTURE of reg_access_fifo_wr_bin_cntr_6 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gic0.gc0.count_d2_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1\ : label is "soft_lutpair21";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) <= \^gic0.gc0.count_d2_reg[3]_0\(3 downto 0);
\gic0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gic0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gic0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gic0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      PRE => AR(0),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(0)
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(1),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(1)
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(2),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(2)
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(3),
      Q => \^gic0.gc0.count_d2_reg[3]_0\(3)
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(0),
      Q => \src_gray_ff_reg[3]\(0)
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(1),
      Q => \src_gray_ff_reg[3]\(1)
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(2),
      Q => \src_gray_ff_reg[3]\(2)
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^gic0.gc0.count_d2_reg[3]_0\(3),
      Q => \src_gray_ff_reg[3]\(3)
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(0),
      Q => \^q\(0)
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => plusOp(1),
      PRE => AR(0),
      Q => \^q\(1)
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      CLR => AR(0),
      D => plusOp(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_wr_bin_cntr__parameterized0\ is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc0.count_d2_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_wr_bin_cntr__parameterized0\ : entity is "wr_bin_cntr";
end \reg_access_fifo_wr_bin_cntr__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_wr_bin_cntr__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gic0.gc0.count[6]_i_2_n_0\ : STD_LOGIC;
  signal \gic0.gc0.count[9]_i_2_n_0\ : STD_LOGIC;
  signal \^gic0.gc0.count_d2_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gic0.gc0.count[4]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gic0.gc0.count[6]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gic0.gc0.count[8]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gic0.gc0.count[9]_i_1\ : label is "soft_lutpair33";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \gic0.gc0.count_d2_reg[9]_0\(9 downto 0) <= \^gic0.gc0.count_d2_reg[9]_0\(9 downto 0);
\gic0.gc0.count[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      O => \plusOp__2\(0)
    );
\gic0.gc0.count[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \plusOp__2\(1)
    );
\gic0.gc0.count[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => wr_pntr_plus2(0),
      I2 => \^q\(0),
      O => \plusOp__2\(2)
    );
\gic0.gc0.count[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(1),
      I3 => \^q\(1),
      O => \plusOp__2\(3)
    );
\gic0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_pntr_plus2(1),
      I2 => wr_pntr_plus2(0),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \plusOp__2\(4)
    );
\gic0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(1),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \plusOp__2\(5)
    );
\gic0.gc0.count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \gic0.gc0.count[6]_i_2_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \plusOp__2\(6)
    );
\gic0.gc0.count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \gic0.gc0.count[6]_i_2_n_0\
    );
\gic0.gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gic0.gc0.count[9]_i_2_n_0\,
      I2 => \^q\(5),
      O => \plusOp__2\(7)
    );
\gic0.gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gic0.gc0.count[9]_i_2_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => \plusOp__2\(8)
    );
\gic0.gc0.count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \gic0.gc0.count[9]_i_2_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => \plusOp__2\(9)
    );
\gic0.gc0.count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(1),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \gic0.gc0.count[9]_i_2_n_0\
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => wr_pntr_plus2(0),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => wr_pntr_plus2(1),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(9),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(4),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(5),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(6),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(7),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(8),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(9),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(0),
      Q => wr_pntr_plus2(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(1),
      Q => wr_pntr_plus2(1),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(2),
      Q => \^q\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(3),
      Q => \^q\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(4),
      Q => \^q\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(5),
      Q => \^q\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(6),
      Q => \^q\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(7),
      Q => \^q\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(8),
      Q => \^q\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => E(0),
      D => \plusOp__2\(9),
      Q => \^q\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      I2 => RD_PNTR_WR(0),
      I3 => RD_PNTR_WR(1),
      O => v1_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_wr_bin_cntr__parameterized0_13\ is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc0.count_d2_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_wr_bin_cntr__parameterized0_13\ : entity is "wr_bin_cntr";
end \reg_access_fifo_wr_bin_cntr__parameterized0_13\;

architecture STRUCTURE of \reg_access_fifo_wr_bin_cntr__parameterized0_13\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gic0.gc0.count[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \gic0.gc0.count[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \^gic0.gc0.count_d2_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__8\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1__3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1__3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gic0.gc0.count[4]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gic0.gc0.count[6]_i_2__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gic0.gc0.count[8]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gic0.gc0.count[9]_i_1__0\ : label is "soft_lutpair15";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \gic0.gc0.count_d2_reg[9]_0\(9 downto 0) <= \^gic0.gc0.count_d2_reg[9]_0\(9 downto 0);
\gic0.gc0.count[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      O => \plusOp__8\(0)
    );
\gic0.gc0.count[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \plusOp__8\(1)
    );
\gic0.gc0.count[2]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus2(1),
      I1 => wr_pntr_plus2(0),
      I2 => \^q\(0),
      O => \plusOp__8\(2)
    );
\gic0.gc0.count[3]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(0),
      I1 => wr_pntr_plus2(0),
      I2 => wr_pntr_plus2(1),
      I3 => \^q\(1),
      O => \plusOp__8\(3)
    );
\gic0.gc0.count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(1),
      I1 => wr_pntr_plus2(1),
      I2 => wr_pntr_plus2(0),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \plusOp__8\(4)
    );
\gic0.gc0.count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(1),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \plusOp__8\(5)
    );
\gic0.gc0.count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \gic0.gc0.count[6]_i_2__0_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \plusOp__8\(6)
    );
\gic0.gc0.count[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      O => \gic0.gc0.count[6]_i_2__0_n_0\
    );
\gic0.gc0.count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \gic0.gc0.count[9]_i_2__0_n_0\,
      I2 => \^q\(5),
      O => \plusOp__8\(7)
    );
\gic0.gc0.count[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(5),
      I1 => \gic0.gc0.count[9]_i_2__0_n_0\,
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => \plusOp__8\(8)
    );
\gic0.gc0.count[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \gic0.gc0.count[9]_i_2__0_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      O => \plusOp__8\(9)
    );
\gic0.gc0.count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => wr_pntr_plus2(0),
      I3 => wr_pntr_plus2(1),
      I4 => \^q\(1),
      I5 => \^q\(3),
      O => \gic0.gc0.count[9]_i_2__0_n_0\
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => wr_pntr_plus2(0),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(0),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => wr_pntr_plus2(1),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^gic0.gc0.count_d2_reg[9]_0\(9),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(4),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(5),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(6),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(7),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(8),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(8),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_d2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \^gic0.gc0.count_d2_reg[9]_0\(9),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(0),
      Q => wr_pntr_plus2(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(1),
      Q => wr_pntr_plus2(1),
      S => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(2),
      Q => \^q\(0),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(3),
      Q => \^q\(1),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(4),
      Q => \^q\(2),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(5),
      Q => \^q\(3),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(6),
      Q => \^q\(4),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(7),
      Q => \^q\(5),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(8),
      Q => \^q\(6),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gic0.gc0.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \plusOp__8\(9),
      Q => \^q\(7),
      R => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\
    );
\gmux.gm[0].gm1.m1_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => wr_pntr_plus2(0),
      I1 => wr_pntr_plus2(1),
      I2 => RD_PNTR_WR(0),
      I3 => RD_PNTR_WR(1),
      O => v1_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_status_flags_as is
  port (
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_wr_status_flags_as;

architecture STRUCTURE of reg_access_fifo_wr_status_flags_as is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => m_axi_bready
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[3]\,
      PRE => \out\,
      Q => ram_full_fb_i
    );
\ram_full_i_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => m_axi_bvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[3]\,
      PRE => \out\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_status_flags_as_25 is
  port (
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_wr_status_flags_as_25 : entity is "wr_status_flags_as";
end reg_access_fifo_wr_status_flags_as_25;

architecture STRUCTURE of reg_access_fifo_wr_status_flags_as_25 is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[3]\,
      PRE => \out\,
      Q => ram_full_fb_i
    );
\ram_full_i_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axi_arvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[3]\,
      PRE => \out\,
      Q => ram_full_i
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_arready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_status_flags_as_5 is
  port (
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_wr_status_flags_as_5 : entity is "wr_status_flags_as";
end reg_access_fifo_wr_status_flags_as_5;

architecture STRUCTURE of reg_access_fifo_wr_status_flags_as_5 is
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\gic0.gc0.count_d1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[3]\,
      PRE => \out\,
      Q => ram_full_fb_i
    );
ram_full_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axi_awvalid,
      I2 => Q(0),
      I3 => RD_PNTR_WR(0),
      O => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \gic0.gc0.count_d1_reg[3]\,
      PRE => \out\,
      Q => ram_full_i
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_awready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_A : out STD_LOGIC;
    POR_B : out STD_LOGIC;
    ENA_dly_D : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_blk_mem_gen_prim_width;

architecture STRUCTURE of reg_access_fifo_blk_mem_gen_prim_width is
  signal ENA_dly : STD_LOGIC;
  signal ENB_dly : STD_LOGIC;
  signal \^por_a\ : STD_LOGIC;
  signal \^por_b\ : STD_LOGIC;
  signal RSTA_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RSTB_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 ";
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg ";
  attribute srl_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\inst_fifo_gen/gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 ";
begin
  POR_A <= \^por_a\;
  POR_B <= \^por_b\;
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => ENA_dly,
      Q => ENA_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^por_a\,
      Q => ENA_dly,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => ENB_dly,
      Q => ENB_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \^por_b\,
      Q => ENB_dly,
      R => '0'
    );
\SAFETY_CKT_GEN.POR_A_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTA_SHFT_REG(4),
      I1 => RSTA_SHFT_REG(0),
      O => p_3_out
    );
\SAFETY_CKT_GEN.POR_A_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => p_3_out,
      Q => \^por_a\,
      R => '0'
    );
\SAFETY_CKT_GEN.POR_B_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTB_SHFT_REG(4),
      I1 => RSTB_SHFT_REG(0),
      O => p_1_out
    );
\SAFETY_CKT_GEN.POR_B_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => p_1_out,
      Q => \^por_b\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => '1',
      Q => RSTA_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => s_aclk,
      D => RSTA_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTA_SHFT_REG(4),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => '1',
      Q => RSTB_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => m_aclk,
      D => RSTB_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTB_SHFT_REG(4),
      R => '0'
    );
\prim_noinit.ram\: entity work.reg_access_fifo_blk_mem_gen_prim_wrapper
     port map (
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => \^por_a\,
      POR_B => \^por_b\,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_blk_mem_gen_prim_width__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \reg_access_fifo_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_noinit.ram\: entity work.\reg_access_fifo_blk_mem_gen_prim_wrapper__parameterized0\
     port map (
      D(33 downto 0) => D(33 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_clk_x_pntrs is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC;
    \gic0.gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_aclk : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC
  );
end reg_access_fifo_clk_x_pntrs;

architecture STRUCTURE of reg_access_fifo_clk_x_pntrs is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ram_empty_i_i_2__0_n_0\ : STD_LOGIC;
  signal ram_empty_i_i_3_n_0 : STD_LOGIC;
  signal ram_empty_i_i_4_n_0 : STD_LOGIC;
  signal \ram_full_i_i_2__1_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_4__1_n_0\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(0) <= \^rd_pntr_wr\(0);
  WR_PNTR_RD(0) <= \^wr_pntr_rd\(0);
\ram_empty_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_empty_i_i_2__0_n_0\,
      I1 => ram_empty_i_i_3_n_0,
      I2 => ram_empty_i_i_4_n_0,
      I3 => \gpregsm1.curr_fwft_state_reg[1]\,
      O => ram_empty_fb_i_reg
    );
\ram_empty_i_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(2),
      I1 => \gc0.count_d1_reg[3]\(2),
      I2 => \^wr_pntr_rd\(0),
      I3 => \gc0.count_d1_reg[3]\(3),
      O => \ram_empty_i_i_2__0_n_0\
    );
ram_empty_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(0),
      I1 => \gc0.count_d1_reg[3]\(0),
      I2 => p_24_out(1),
      I3 => \gc0.count_d1_reg[3]\(1),
      O => ram_empty_i_i_3_n_0
    );
ram_empty_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_24_out(2),
      I1 => Q(2),
      I2 => p_24_out(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => p_24_out(0),
      O => ram_empty_i_i_4_n_0
    );
\ram_full_i_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => \ram_full_i_i_2__1_n_0\,
      I1 => ram_full_fb_i_reg_0,
      I2 => \gic0.gc0.count_d1_reg[3]\(3),
      I3 => \^rd_pntr_wr\(0),
      I4 => \out\,
      I5 => \ram_full_i_i_4__1_n_0\,
      O => ram_full_fb_i_reg
    );
\ram_full_i_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => \gic0.gc0.count_reg[2]\(2),
      I2 => p_25_out(1),
      I3 => \gic0.gc0.count_reg[2]\(1),
      I4 => \gic0.gc0.count_reg[2]\(0),
      I5 => p_25_out(0),
      O => \ram_full_i_i_2__1_n_0\
    );
\ram_full_i_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => \gic0.gc0.count_d1_reg[3]\(2),
      I2 => p_25_out(1),
      I3 => \gic0.gc0.count_d1_reg[3]\(1),
      I4 => \gic0.gc0.count_d1_reg[3]\(0),
      I5 => p_25_out(0),
      O => \ram_full_i_i_4__1_n_0\
    );
rd_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__6\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(3) => \^rd_pntr_wr\(0),
      dest_out_bin(2 downto 0) => p_25_out(2 downto 0),
      src_clk => s_aclk,
      src_in_bin(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__5\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(3) => \^wr_pntr_rd\(0),
      dest_out_bin(2 downto 0) => p_24_out(2 downto 0),
      src_clk => m_aclk,
      src_in_bin(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_clk_x_pntrs__parameterized0\ is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 9 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gic0.gc0.count_reg[9]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc0.count_reg[9]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_aclk : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_clk_x_pntrs__parameterized0\ : entity is "clk_x_pntrs";
end \reg_access_fifo_clk_x_pntrs__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_clk_x_pntrs__parameterized0\ is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 9 downto 2 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 10;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 10;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(1 downto 0) <= \^rd_pntr_wr\(1 downto 0);
  WR_PNTR_RD(9 downto 0) <= \^wr_pntr_rd\(9 downto 0);
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^rd_pntr_wr\(1),
      I1 => Q(1),
      I2 => \^rd_pntr_wr\(0),
      I3 => Q(0),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(3),
      I1 => Q(3),
      I2 => p_25_out(2),
      I3 => Q(2),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(3),
      I1 => \gic0.gc0.count_reg[9]\(1),
      I2 => p_25_out(2),
      I3 => \gic0.gc0.count_reg[9]\(0),
      O => v1_reg_0(0)
    );
\gmux.gm[1].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(3),
      I1 => \gc0.count_reg[9]\(1),
      I2 => \^wr_pntr_rd\(2),
      I3 => \gc0.count_reg[9]\(0),
      O => v1_reg_1(0)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(5),
      I1 => Q(5),
      I2 => p_25_out(4),
      I3 => Q(4),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(5),
      I1 => \gic0.gc0.count_reg[9]\(3),
      I2 => p_25_out(4),
      I3 => \gic0.gc0.count_reg[9]\(2),
      O => v1_reg_0(1)
    );
\gmux.gm[2].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(5),
      I1 => \gc0.count_reg[9]\(3),
      I2 => \^wr_pntr_rd\(4),
      I3 => \gc0.count_reg[9]\(2),
      O => v1_reg_1(1)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(7),
      I1 => Q(7),
      I2 => p_25_out(6),
      I3 => Q(6),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(7),
      I1 => \gic0.gc0.count_reg[9]\(5),
      I2 => p_25_out(6),
      I3 => \gic0.gc0.count_reg[9]\(4),
      O => v1_reg_0(2)
    );
\gmux.gm[3].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(7),
      I1 => \gc0.count_reg[9]\(5),
      I2 => \^wr_pntr_rd\(6),
      I3 => \gc0.count_reg[9]\(4),
      O => v1_reg_1(2)
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(9),
      I1 => Q(9),
      I2 => p_25_out(8),
      I3 => Q(8),
      O => v1_reg(4)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(9),
      I1 => \gic0.gc0.count_reg[9]\(7),
      I2 => p_25_out(8),
      I3 => \gic0.gc0.count_reg[9]\(6),
      O => v1_reg_0(3)
    );
\gmux.gm[4].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(9),
      I1 => \gc0.count_reg[9]\(7),
      I2 => \^wr_pntr_rd\(8),
      I3 => \gc0.count_reg[9]\(6),
      O => v1_reg_1(3)
    );
rd_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__parameterized0__3\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(9 downto 2) => p_25_out(9 downto 2),
      dest_out_bin(1 downto 0) => \^rd_pntr_wr\(1 downto 0),
      src_clk => m_aclk,
      src_in_bin(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0)
    );
wr_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__parameterized0__2\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(9 downto 0) => \^wr_pntr_rd\(9 downto 0),
      src_clk => s_aclk,
      src_in_bin(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_clk_x_pntrs__parameterized0__xdcDup__1\ is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gic0.gc0.count_reg[9]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_aclk : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_aclk : in STD_LOGIC;
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_clk_x_pntrs__parameterized0__xdcDup__1\ : entity is "clk_x_pntrs";
end \reg_access_fifo_clk_x_pntrs__parameterized0__xdcDup__1\;

architecture STRUCTURE of \reg_access_fifo_clk_x_pntrs__parameterized0__xdcDup__1\ is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 9 downto 2 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 10;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 10;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(1 downto 0) <= \^rd_pntr_wr\(1 downto 0);
  WR_PNTR_RD(9 downto 0) <= \^wr_pntr_rd\(9 downto 0);
\gmux.gm[0].gm1.m1_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^rd_pntr_wr\(1),
      I1 => \gic0.gc0.count_d1_reg[9]\(1),
      I2 => \^rd_pntr_wr\(0),
      I3 => \gic0.gc0.count_d1_reg[9]\(0),
      O => v1_reg_0(0)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(3),
      I1 => Q(1),
      I2 => \^wr_pntr_rd\(2),
      I3 => Q(0),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(3),
      I1 => \gic0.gc0.count_d1_reg[9]\(3),
      I2 => p_25_out(2),
      I3 => \gic0.gc0.count_d1_reg[9]\(2),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(3),
      I1 => \gic0.gc0.count_reg[9]\(1),
      I2 => p_25_out(2),
      I3 => \gic0.gc0.count_reg[9]\(0),
      O => v1_reg_1(0)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(5),
      I1 => Q(3),
      I2 => \^wr_pntr_rd\(4),
      I3 => Q(2),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(5),
      I1 => \gic0.gc0.count_d1_reg[9]\(5),
      I2 => p_25_out(4),
      I3 => \gic0.gc0.count_d1_reg[9]\(4),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(5),
      I1 => \gic0.gc0.count_reg[9]\(3),
      I2 => p_25_out(4),
      I3 => \gic0.gc0.count_reg[9]\(2),
      O => v1_reg_1(1)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(7),
      I1 => Q(5),
      I2 => \^wr_pntr_rd\(6),
      I3 => Q(4),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(7),
      I1 => \gic0.gc0.count_d1_reg[9]\(7),
      I2 => p_25_out(6),
      I3 => \gic0.gc0.count_d1_reg[9]\(6),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(7),
      I1 => \gic0.gc0.count_reg[9]\(5),
      I2 => p_25_out(6),
      I3 => \gic0.gc0.count_reg[9]\(4),
      O => v1_reg_1(2)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(9),
      I1 => Q(7),
      I2 => \^wr_pntr_rd\(8),
      I3 => Q(6),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(9),
      I1 => \gic0.gc0.count_d1_reg[9]\(9),
      I2 => p_25_out(8),
      I3 => \gic0.gc0.count_d1_reg[9]\(8),
      O => v1_reg_0(4)
    );
\gmux.gm[4].gms.ms_i_1__6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(9),
      I1 => \gic0.gc0.count_reg[9]\(7),
      I2 => p_25_out(8),
      I3 => \gic0.gc0.count_reg[9]\(6),
      O => v1_reg_1(3)
    );
rd_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__parameterized0\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(9 downto 2) => p_25_out(9 downto 2),
      dest_out_bin(1 downto 0) => \^rd_pntr_wr\(1 downto 0),
      src_clk => s_aclk,
      src_in_bin(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0)
    );
wr_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__parameterized0__4\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(9 downto 0) => \^wr_pntr_rd\(9 downto 0),
      src_clk => m_aclk,
      src_in_bin(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_clk_x_pntrs__xdcDup__1\ is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC;
    \gic0.gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_clk_x_pntrs__xdcDup__1\ : entity is "clk_x_pntrs";
end \reg_access_fifo_clk_x_pntrs__xdcDup__1\;

architecture STRUCTURE of \reg_access_fifo_clk_x_pntrs__xdcDup__1\ is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ram_empty_i_i_2__3_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_3__1_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_4__1_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_2__0_n_0\ : STD_LOGIC;
  signal \ram_full_i_i_4__0_n_0\ : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(0) <= \^rd_pntr_wr\(0);
  WR_PNTR_RD(0) <= \^wr_pntr_rd\(0);
\ram_empty_i_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_empty_i_i_2__3_n_0\,
      I1 => \ram_empty_i_i_3__1_n_0\,
      I2 => \ram_empty_i_i_4__1_n_0\,
      I3 => \gpregsm1.curr_fwft_state_reg[1]\,
      O => ram_empty_fb_i_reg
    );
\ram_empty_i_i_2__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(2),
      I1 => \gc0.count_d1_reg[3]\(2),
      I2 => \^wr_pntr_rd\(0),
      I3 => \gc0.count_d1_reg[3]\(3),
      O => \ram_empty_i_i_2__3_n_0\
    );
\ram_empty_i_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(0),
      I1 => \gc0.count_d1_reg[3]\(0),
      I2 => p_24_out(1),
      I3 => \gc0.count_d1_reg[3]\(1),
      O => \ram_empty_i_i_3__1_n_0\
    );
\ram_empty_i_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_24_out(2),
      I1 => \gc0.count_reg[2]\(2),
      I2 => p_24_out(1),
      I3 => \gc0.count_reg[2]\(1),
      I4 => \gc0.count_reg[2]\(0),
      I5 => p_24_out(0),
      O => \ram_empty_i_i_4__1_n_0\
    );
\ram_full_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => \ram_full_i_i_2__0_n_0\,
      I1 => ram_full_fb_i_reg_0,
      I2 => Q(3),
      I3 => \^rd_pntr_wr\(0),
      I4 => \out\,
      I5 => \ram_full_i_i_4__0_n_0\,
      O => ram_full_fb_i_reg
    );
\ram_full_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => \gic0.gc0.count_reg[2]\(2),
      I2 => p_25_out(1),
      I3 => \gic0.gc0.count_reg[2]\(1),
      I4 => \gic0.gc0.count_reg[2]\(0),
      I5 => p_25_out(0),
      O => \ram_full_i_i_2__0_n_0\
    );
\ram_full_i_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => Q(2),
      I2 => p_25_out(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => p_25_out(0),
      O => \ram_full_i_i_4__0_n_0\
    );
rd_pntr_cdc_inst: entity work.reg_access_fifo_xpm_cdc_gray
     port map (
      dest_clk => s_aclk,
      dest_out_bin(3) => \^rd_pntr_wr\(0),
      dest_out_bin(2 downto 0) => p_25_out(2 downto 0),
      src_clk => m_aclk,
      src_in_bin(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__7\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(3) => \^wr_pntr_rd\(0),
      dest_out_bin(2 downto 0) => p_24_out(2 downto 0),
      src_clk => s_aclk,
      src_in_bin(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_clk_x_pntrs__xdcDup__2\ is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : in STD_LOGIC;
    \gic0.gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC;
    \gc0.count_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_clk_x_pntrs__xdcDup__2\ : entity is "clk_x_pntrs";
end \reg_access_fifo_clk_x_pntrs__xdcDup__2\;

architecture STRUCTURE of \reg_access_fifo_clk_x_pntrs__xdcDup__2\ is
  signal \^rd_pntr_wr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ram_empty_i_i_2__2_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_3__0_n_0\ : STD_LOGIC;
  signal \ram_empty_i_i_4__0_n_0\ : STD_LOGIC;
  signal ram_full_i_i_2_n_0 : STD_LOGIC;
  signal ram_full_i_i_4_n_0 : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 4;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 4;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  RD_PNTR_WR(0) <= \^rd_pntr_wr\(0);
  WR_PNTR_RD(0) <= \^wr_pntr_rd\(0);
\ram_empty_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ram_empty_i_i_2__2_n_0\,
      I1 => \ram_empty_i_i_3__0_n_0\,
      I2 => \ram_empty_i_i_4__0_n_0\,
      I3 => \gpregsm1.curr_fwft_state_reg[1]\,
      O => ram_empty_fb_i_reg
    );
\ram_empty_i_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(2),
      I1 => \gc0.count_d1_reg[3]\(2),
      I2 => \^wr_pntr_rd\(0),
      I3 => \gc0.count_d1_reg[3]\(3),
      O => \ram_empty_i_i_2__2_n_0\
    );
\ram_empty_i_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_24_out(0),
      I1 => \gc0.count_d1_reg[3]\(0),
      I2 => p_24_out(1),
      I3 => \gc0.count_d1_reg[3]\(1),
      O => \ram_empty_i_i_3__0_n_0\
    );
\ram_empty_i_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_24_out(2),
      I1 => \gc0.count_reg[2]\(2),
      I2 => p_24_out(1),
      I3 => \gc0.count_reg[2]\(1),
      I4 => \gc0.count_reg[2]\(0),
      I5 => p_24_out(0),
      O => \ram_empty_i_i_4__0_n_0\
    );
\ram_full_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F88F00008888"
    )
        port map (
      I0 => ram_full_i_i_2_n_0,
      I1 => ram_full_fb_i_reg_0,
      I2 => Q(3),
      I3 => \^rd_pntr_wr\(0),
      I4 => \out\,
      I5 => ram_full_i_i_4_n_0,
      O => ram_full_fb_i_reg
    );
ram_full_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => \gic0.gc0.count_reg[2]\(2),
      I2 => p_25_out(1),
      I3 => \gic0.gc0.count_reg[2]\(1),
      I4 => \gic0.gc0.count_reg[2]\(0),
      I5 => p_25_out(0),
      O => ram_full_i_i_2_n_0
    );
ram_full_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => Q(2),
      I2 => p_25_out(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => p_25_out(0),
      O => ram_full_i_i_4_n_0
    );
rd_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__4\
     port map (
      dest_clk => s_aclk,
      dest_out_bin(3) => \^rd_pntr_wr\(0),
      dest_out_bin(2 downto 0) => p_25_out(2 downto 0),
      src_clk => m_aclk,
      src_in_bin(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0)
    );
wr_pntr_cdc_inst: entity work.\reg_access_fifo_xpm_cdc_gray__3\
     port map (
      dest_clk => m_aclk,
      dest_out_bin(3) => \^wr_pntr_rd\(0),
      dest_out_bin(2 downto 0) => p_24_out(2 downto 0),
      src_clk => s_aclk,
      src_in_bin(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_memory is
  port (
    Q : out STD_LOGIC_VECTOR ( 34 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_memory;

architecture STRUCTURE of reg_access_fifo_memory is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.reg_access_fifo_dmem
     port map (
      DI(34 downto 0) => DI(34 downto 0),
      dout_i(34) => \gdm.dm_gen.dm_n_0\,
      dout_i(33) => \gdm.dm_gen.dm_n_1\,
      dout_i(32) => \gdm.dm_gen.dm_n_2\,
      dout_i(31) => \gdm.dm_gen.dm_n_3\,
      dout_i(30) => \gdm.dm_gen.dm_n_4\,
      dout_i(29) => \gdm.dm_gen.dm_n_5\,
      dout_i(28) => \gdm.dm_gen.dm_n_6\,
      dout_i(27) => \gdm.dm_gen.dm_n_7\,
      dout_i(26) => \gdm.dm_gen.dm_n_8\,
      dout_i(25) => \gdm.dm_gen.dm_n_9\,
      dout_i(24) => \gdm.dm_gen.dm_n_10\,
      dout_i(23) => \gdm.dm_gen.dm_n_11\,
      dout_i(22) => \gdm.dm_gen.dm_n_12\,
      dout_i(21) => \gdm.dm_gen.dm_n_13\,
      dout_i(20) => \gdm.dm_gen.dm_n_14\,
      dout_i(19) => \gdm.dm_gen.dm_n_15\,
      dout_i(18) => \gdm.dm_gen.dm_n_16\,
      dout_i(17) => \gdm.dm_gen.dm_n_17\,
      dout_i(16) => \gdm.dm_gen.dm_n_18\,
      dout_i(15) => \gdm.dm_gen.dm_n_19\,
      dout_i(14) => \gdm.dm_gen.dm_n_20\,
      dout_i(13) => \gdm.dm_gen.dm_n_21\,
      dout_i(12) => \gdm.dm_gen.dm_n_22\,
      dout_i(11) => \gdm.dm_gen.dm_n_23\,
      dout_i(10) => \gdm.dm_gen.dm_n_24\,
      dout_i(9) => \gdm.dm_gen.dm_n_25\,
      dout_i(8) => \gdm.dm_gen.dm_n_26\,
      dout_i(7) => \gdm.dm_gen.dm_n_27\,
      dout_i(6) => \gdm.dm_gen.dm_n_28\,
      dout_i(5) => \gdm.dm_gen.dm_n_29\,
      dout_i(4) => \gdm.dm_gen.dm_n_30\,
      dout_i(3) => \gdm.dm_gen.dm_n_31\,
      dout_i(2) => \gdm.dm_gen.dm_n_32\,
      dout_i(1) => \gdm.dm_gen.dm_n_33\,
      dout_i(0) => \gdm.dm_gen.dm_n_34\,
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0),
      m_aclk => m_aclk,
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => Q(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => Q(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => Q(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => Q(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => Q(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => Q(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => Q(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => Q(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => Q(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => Q(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => Q(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => Q(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => Q(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => Q(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => Q(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => Q(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => Q(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => Q(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => Q(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => Q(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => Q(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => Q(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => Q(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => Q(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => Q(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => Q(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => Q(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => Q(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => Q(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => Q(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => Q(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => Q(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => Q(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => Q(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => Q(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_memory_23 is
  port (
    \m_axi_araddr[31]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ram_full_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    I71 : in STD_LOGIC_VECTOR ( 34 downto 0 );
    \gc0.count_d1_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d2_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_memory_23 : entity is "memory";
end reg_access_fifo_memory_23;

architecture STRUCTURE of reg_access_fifo_memory_23 is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_10\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_11\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_12\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_13\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_14\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_15\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_16\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_17\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_18\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_19\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_2\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_20\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_21\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_22\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_23\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_24\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_25\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_26\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_27\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_28\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_29\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_3\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_30\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_31\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_32\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_33\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_34\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_4\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_5\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_6\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_7\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_8\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_9\ : STD_LOGIC;
begin
\gdm.dm_gen.dm\: entity work.reg_access_fifo_dmem_24
     port map (
      I71(34 downto 0) => I71(34 downto 0),
      dout_i(34) => \gdm.dm_gen.dm_n_0\,
      dout_i(33) => \gdm.dm_gen.dm_n_1\,
      dout_i(32) => \gdm.dm_gen.dm_n_2\,
      dout_i(31) => \gdm.dm_gen.dm_n_3\,
      dout_i(30) => \gdm.dm_gen.dm_n_4\,
      dout_i(29) => \gdm.dm_gen.dm_n_5\,
      dout_i(28) => \gdm.dm_gen.dm_n_6\,
      dout_i(27) => \gdm.dm_gen.dm_n_7\,
      dout_i(26) => \gdm.dm_gen.dm_n_8\,
      dout_i(25) => \gdm.dm_gen.dm_n_9\,
      dout_i(24) => \gdm.dm_gen.dm_n_10\,
      dout_i(23) => \gdm.dm_gen.dm_n_11\,
      dout_i(22) => \gdm.dm_gen.dm_n_12\,
      dout_i(21) => \gdm.dm_gen.dm_n_13\,
      dout_i(20) => \gdm.dm_gen.dm_n_14\,
      dout_i(19) => \gdm.dm_gen.dm_n_15\,
      dout_i(18) => \gdm.dm_gen.dm_n_16\,
      dout_i(17) => \gdm.dm_gen.dm_n_17\,
      dout_i(16) => \gdm.dm_gen.dm_n_18\,
      dout_i(15) => \gdm.dm_gen.dm_n_19\,
      dout_i(14) => \gdm.dm_gen.dm_n_20\,
      dout_i(13) => \gdm.dm_gen.dm_n_21\,
      dout_i(12) => \gdm.dm_gen.dm_n_22\,
      dout_i(11) => \gdm.dm_gen.dm_n_23\,
      dout_i(10) => \gdm.dm_gen.dm_n_24\,
      dout_i(9) => \gdm.dm_gen.dm_n_25\,
      dout_i(8) => \gdm.dm_gen.dm_n_26\,
      dout_i(7) => \gdm.dm_gen.dm_n_27\,
      dout_i(6) => \gdm.dm_gen.dm_n_28\,
      dout_i(5) => \gdm.dm_gen.dm_n_29\,
      dout_i(4) => \gdm.dm_gen.dm_n_30\,
      dout_i(3) => \gdm.dm_gen.dm_n_31\,
      dout_i(2) => \gdm.dm_gen.dm_n_32\,
      dout_i(1) => \gdm.dm_gen.dm_n_33\,
      dout_i(0) => \gdm.dm_gen.dm_n_34\,
      \gc0.count_d1_reg[3]\(3 downto 0) => \gc0.count_d1_reg[3]\(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0),
      m_aclk => m_aclk,
      ram_full_fb_i_reg(0) => ram_full_fb_i_reg(0),
      s_aclk => s_aclk
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_34\,
      Q => \m_axi_araddr[31]\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_24\,
      Q => \m_axi_araddr[31]\(10),
      R => '0'
    );
\goreg_dm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_23\,
      Q => \m_axi_araddr[31]\(11),
      R => '0'
    );
\goreg_dm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_22\,
      Q => \m_axi_araddr[31]\(12),
      R => '0'
    );
\goreg_dm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_21\,
      Q => \m_axi_araddr[31]\(13),
      R => '0'
    );
\goreg_dm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_20\,
      Q => \m_axi_araddr[31]\(14),
      R => '0'
    );
\goreg_dm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_19\,
      Q => \m_axi_araddr[31]\(15),
      R => '0'
    );
\goreg_dm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_18\,
      Q => \m_axi_araddr[31]\(16),
      R => '0'
    );
\goreg_dm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_17\,
      Q => \m_axi_araddr[31]\(17),
      R => '0'
    );
\goreg_dm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_16\,
      Q => \m_axi_araddr[31]\(18),
      R => '0'
    );
\goreg_dm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_15\,
      Q => \m_axi_araddr[31]\(19),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_33\,
      Q => \m_axi_araddr[31]\(1),
      R => '0'
    );
\goreg_dm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_14\,
      Q => \m_axi_araddr[31]\(20),
      R => '0'
    );
\goreg_dm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_13\,
      Q => \m_axi_araddr[31]\(21),
      R => '0'
    );
\goreg_dm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_12\,
      Q => \m_axi_araddr[31]\(22),
      R => '0'
    );
\goreg_dm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_11\,
      Q => \m_axi_araddr[31]\(23),
      R => '0'
    );
\goreg_dm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_10\,
      Q => \m_axi_araddr[31]\(24),
      R => '0'
    );
\goreg_dm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_9\,
      Q => \m_axi_araddr[31]\(25),
      R => '0'
    );
\goreg_dm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_8\,
      Q => \m_axi_araddr[31]\(26),
      R => '0'
    );
\goreg_dm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_7\,
      Q => \m_axi_araddr[31]\(27),
      R => '0'
    );
\goreg_dm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_6\,
      Q => \m_axi_araddr[31]\(28),
      R => '0'
    );
\goreg_dm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_5\,
      Q => \m_axi_araddr[31]\(29),
      R => '0'
    );
\goreg_dm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_32\,
      Q => \m_axi_araddr[31]\(2),
      R => '0'
    );
\goreg_dm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_4\,
      Q => \m_axi_araddr[31]\(30),
      R => '0'
    );
\goreg_dm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_3\,
      Q => \m_axi_araddr[31]\(31),
      R => '0'
    );
\goreg_dm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_2\,
      Q => \m_axi_araddr[31]\(32),
      R => '0'
    );
\goreg_dm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_1\,
      Q => \m_axi_araddr[31]\(33),
      R => '0'
    );
\goreg_dm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_0\,
      Q => \m_axi_araddr[31]\(34),
      R => '0'
    );
\goreg_dm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_31\,
      Q => \m_axi_araddr[31]\(3),
      R => '0'
    );
\goreg_dm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_30\,
      Q => \m_axi_araddr[31]\(4),
      R => '0'
    );
\goreg_dm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_29\,
      Q => \m_axi_araddr[31]\(5),
      R => '0'
    );
\goreg_dm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_28\,
      Q => \m_axi_araddr[31]\(6),
      R => '0'
    );
\goreg_dm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_27\,
      Q => \m_axi_araddr[31]\(7),
      R => '0'
    );
\goreg_dm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_26\,
      Q => \m_axi_araddr[31]\(8),
      R => '0'
    );
\goreg_dm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => E(0),
      D => \gdm.dm_gen.dm_n_25\,
      Q => \m_axi_araddr[31]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_memory__parameterized1\ is
  port (
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I56 : in STD_LOGIC;
    count_d2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    count_d1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_memory__parameterized1\ : entity is "memory";
end \reg_access_fifo_memory__parameterized1\;

architecture STRUCTURE of \reg_access_fifo_memory__parameterized1\ is
  signal \gdm.dm_gen.dm_n_0\ : STD_LOGIC;
  signal \gdm.dm_gen.dm_n_1\ : STD_LOGIC;
  signal \goreg_dm.dout_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \goreg_dm.dout_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
\gdm.dm_gen.dm\: entity work.\reg_access_fifo_dmem__parameterized0\
     port map (
      E(0) => E(0),
      I56 => I56,
      count_d1(3 downto 0) => count_d1(3 downto 0),
      count_d2(3 downto 0) => count_d2(3 downto 0),
      dout_i(1) => \gdm.dm_gen.dm_n_0\,
      dout_i(0) => \gdm.dm_gen.dm_n_1\,
      m_aclk => m_aclk,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      s_aclk => s_aclk
    );
\goreg_dm.dout_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFEF20200020"
    )
        port map (
      I0 => \gdm.dm_gen.dm_n_1\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => s_axi_bready,
      I5 => \^s_axi_bresp\(0),
      O => \goreg_dm.dout_i[0]_i_1_n_0\
    );
\goreg_dm.dout_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFFFEF20200020"
    )
        port map (
      I0 => \gdm.dm_gen.dm_n_0\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => s_axi_bready,
      I5 => \^s_axi_bresp\(1),
      O => \goreg_dm.dout_i[1]_i_1_n_0\
    );
\goreg_dm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \goreg_dm.dout_i[0]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
\goreg_dm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \goreg_dm.dout_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_logic is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_rd_logic;

architecture STRUCTURE of reg_access_fifo_rd_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.reg_access_fifo_rd_fwft
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(3),
      WR_PNTR_RD(0) => WR_PNTR_RD(0),
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\(1 downto 0) => \out\(1 downto 0),
      ram_empty_fb_i_reg => ram_empty_fb_i_reg,
      ram_empty_fb_i_reg_0 => p_2_out,
      s_aclk => s_aclk,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid
    );
\gras.rsts\: entity work.reg_access_fifo_rd_status_flags_as
     port map (
      \dest_out_bin_ff_reg[2]\ => \dest_out_bin_ff_reg[2]\,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      s_aclk => s_aclk
    );
rpntr: entity work.reg_access_fifo_rd_bin_cntr
     port map (
      E(0) => \^e\(0),
      Q(3) => rd_pntr_plus1(3),
      Q(2 downto 0) => Q(2 downto 0),
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      s_aclk => s_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_logic_21 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[34]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_rd_logic_21 : entity is "rd_logic";
end reg_access_fifo_rd_logic_21;

architecture STRUCTURE of reg_access_fifo_rd_logic_21 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.reg_access_fifo_rd_fwft_27
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(3),
      WR_PNTR_RD(0) => WR_PNTR_RD(0),
      \goreg_dm.dout_i_reg[34]\(0) => \goreg_dm.dout_i_reg[34]\(0),
      m_aclk => m_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg
    );
\gras.rsts\: entity work.reg_access_fifo_rd_status_flags_as_28
     port map (
      \dest_out_bin_ff_reg[2]\ => \dest_out_bin_ff_reg[2]\,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out
    );
rpntr: entity work.reg_access_fifo_rd_bin_cntr_29
     port map (
      E(0) => \^e\(0),
      Q(3) => rd_pntr_plus1(3),
      Q(2 downto 0) => Q(2 downto 0),
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \src_gray_ff_reg[3]\(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_rd_logic_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_empty_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[34]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[2]\ : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_rd_logic_3 : entity is "rd_logic";
end reg_access_fifo_rd_logic_3;

architecture STRUCTURE of reg_access_fifo_rd_logic_3 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gr1.gr1_int.rfwft\: entity work.reg_access_fifo_rd_fwft_7
     port map (
      E(0) => \^e\(0),
      Q(0) => rd_pntr_plus1(3),
      WR_PNTR_RD(0) => WR_PNTR_RD(0),
      \goreg_dm.dout_i_reg[34]\(0) => \goreg_dm.dout_i_reg[34]\(0),
      m_aclk => m_aclk,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => ram_empty_fb_i_reg
    );
\gras.rsts\: entity work.reg_access_fifo_rd_status_flags_as_8
     port map (
      \dest_out_bin_ff_reg[2]\ => \dest_out_bin_ff_reg[2]\,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out
    );
rpntr: entity work.reg_access_fifo_rd_bin_cntr_9
     port map (
      E(0) => \^e\(0),
      Q(3) => rd_pntr_plus1(3),
      Q(2 downto 0) => Q(2 downto 0),
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \src_gray_ff_reg[3]\(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_rd_status_flags_as__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_rd_status_flags_as__parameterized0\ : entity is "rd_status_flags_as";
end \reg_access_fifo_rd_status_flags_as__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_rd_status_flags_as__parameterized0\ is
  signal c0_n_0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
c0: entity work.\reg_access_fifo_compare__parameterized0_1\
     port map (
      comp1 => comp1,
      \gpregsm1.curr_fwft_state_reg[0]\ => \gpregsm1.curr_fwft_state_reg[0]\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => ram_empty_fb_i,
      ram_empty_fb_i_reg => c0_n_0,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c1: entity work.\reg_access_fifo_compare__parameterized0_2\
     port map (
      comp1 => comp1,
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \dest_out_bin_ff_reg[9]\(3 downto 0),
      v1_reg_0(0) => v1_reg_0(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => c0_n_0,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => c0_n_0,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_rd_status_flags_as__parameterized0_17\ is
  port (
    \out\ : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_rd_status_flags_as__parameterized0_17\ : entity is "rd_status_flags_as";
end \reg_access_fifo_rd_status_flags_as__parameterized0_17\;

architecture STRUCTURE of \reg_access_fifo_rd_status_flags_as__parameterized0_17\ is
  signal c0_n_0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
c0: entity work.\reg_access_fifo_compare__parameterized0_19\
     port map (
      comp1 => comp1,
      \gpregsm1.curr_fwft_state_reg[0]\ => \gpregsm1.curr_fwft_state_reg[0]\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => ram_empty_fb_i,
      ram_empty_fb_i_reg => c0_n_0,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c1: entity work.\reg_access_fifo_compare__parameterized0_20\
     port map (
      comp1 => comp1,
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \dest_out_bin_ff_reg[9]\(3 downto 0),
      v1_reg_0(0) => v1_reg_0(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c0_n_0,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c0_n_0,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_reset_blk_ramfifo is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    wr_rst_busy_wrch : out STD_LOGIC;
    src_rst : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC
  );
end reg_access_fifo_reset_blk_ramfifo;

architecture STRUCTURE of reg_access_fifo_reset_blk_ramfifo is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  signal \^wr_rst_busy_wrch\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 4;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 4;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \out\ <= rst_d2;
  ram_full_fb_i_reg <= rst_d3;
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
  wr_rst_busy_wrch <= \^wr_rst_busy_wrch\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \^wr_rst_busy_wrch\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__2_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.\reg_access_fifo_xpm_cdc_async_rst__6\
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => s_aclk,
      src_arst => src_rst
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\,
      PRE => rst_rd_reg2,
      Q => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA20AAAA"
    )
        port map (
      I0 => \^wr_rst_busy_wrch\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => rd_rst_wr_ext(2),
      I4 => rd_rst_wr_ext(3),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\,
      PRE => rst_wr_reg2,
      Q => \^wr_rst_busy_wrch\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\reg_access_fifo_xpm_cdc_single__6\
     port map (
      dest_clk => m_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => s_aclk,
      src_in => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\reg_access_fifo_xpm_cdc_single__5\
     port map (
      dest_clk => s_aclk,
      dest_out => dest_out,
      src_clk => m_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\reg_access_fifo_xpm_cdc_async_rst__5\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => m_aclk,
      src_arst => src_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_reset_blk_ramfifo__parameterized0\ is
  port (
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    \syncstages_ff_reg[0]_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    src_rst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_reset_blk_ramfifo__parameterized0\ : entity is "reset_blk_ramfifo";
end \reg_access_fifo_reset_blk_ramfifo__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_reset_blk_ramfifo__parameterized0\ is
  signal arst_sync_rd_rst : STD_LOGIC;
  signal dest_out : STD_LOGIC;
  signal dest_rst : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  signal \^syncstages_ff_reg[0]_0\ : STD_LOGIC;
  signal wr_rst_busy_i : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  \out\ <= wr_rst_busy_i;
  ram_full_fb_i_reg <= rst_d3;
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
  \syncstages_ff_reg[0]_0\ <= \^syncstages_ff_reg[0]_0\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => wr_rst_busy_i,
      Q => rst_d1,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^syncstages_ff_reg[0]\,
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__0_n_0\,
      Q => rst_d3,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      I1 => \^syncstages_ff_reg[0]_0\,
      I2 => arst_sync_rd_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\,
      Q => \^syncstages_ff_reg[0]_0\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\,
      Q => \^syncstages_ff_reg[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0F0B0B0"
    )
        port map (
      I0 => rd_rst_wr_ext(2),
      I1 => rd_rst_wr_ext(3),
      I2 => wr_rst_busy_i,
      I3 => rd_rst_wr_ext(0),
      I4 => rd_rst_wr_ext(1),
      I5 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\,
      Q => wr_rst_busy_i,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => dest_out,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\reg_access_fifo_xpm_cdc_single__parameterized0__3\
     port map (
      dest_clk => s_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => m_aclk,
      src_in => \^syncstages_ff_reg[0]_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\reg_access_fifo_xpm_cdc_single__parameterized0__2\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\: entity work.\reg_access_fifo_xpm_cdc_sync_rst__3\
     port map (
      dest_clk => m_aclk,
      dest_rst => arst_sync_rd_rst,
      src_rst => src_rst
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.\reg_access_fifo_xpm_cdc_sync_rst__2\
     port map (
      dest_clk => s_aclk,
      dest_rst => dest_rst,
      src_rst => src_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_reset_blk_ramfifo__parameterized0__xdcDup__1\ is
  port (
    src_rst : out STD_LOGIC;
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    \syncstages_ff_reg[0]_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_reset_blk_ramfifo__parameterized0__xdcDup__1\ : entity is "reset_blk_ramfifo";
end \reg_access_fifo_reset_blk_ramfifo__parameterized0__xdcDup__1\;

architecture STRUCTURE of \reg_access_fifo_reset_blk_ramfifo__parameterized0__xdcDup__1\ is
  signal arst_sync_rd_rst : STD_LOGIC;
  signal dest_out : STD_LOGIC;
  signal dest_rst : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^src_rst\ : STD_LOGIC;
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  signal \^syncstages_ff_reg[0]_0\ : STD_LOGIC;
  signal wr_rst_busy_i : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  \out\ <= wr_rst_busy_i;
  ram_full_fb_i_reg <= rst_d3;
  src_rst <= \^src_rst\;
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
  \syncstages_ff_reg[0]_0\ <= \^syncstages_ff_reg[0]_0\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => wr_rst_busy_i,
      Q => rst_d1,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^syncstages_ff_reg[0]\,
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__3_n_0\,
      Q => rst_d3,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_aresetn,
      O => \^src_rst\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      I1 => \^syncstages_ff_reg[0]_0\,
      I2 => arst_sync_rd_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__0_n_0\,
      Q => \^syncstages_ff_reg[0]_0\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__0_n_0\,
      Q => \^syncstages_ff_reg[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0F0B0B0"
    )
        port map (
      I0 => rd_rst_wr_ext(2),
      I1 => rd_rst_wr_ext(3),
      I2 => wr_rst_busy_i,
      I3 => rd_rst_wr_ext(0),
      I4 => rd_rst_wr_ext(1),
      I5 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1__0_n_0\,
      Q => wr_rst_busy_i,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => dest_out,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\reg_access_fifo_xpm_cdc_single__parameterized0\
     port map (
      dest_clk => m_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => s_aclk,
      src_in => \^syncstages_ff_reg[0]_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\reg_access_fifo_xpm_cdc_single__parameterized0__4\
     port map (
      dest_clk => s_aclk,
      dest_out => dest_out,
      src_clk => m_aclk,
      src_in => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\: entity work.reg_access_fifo_xpm_cdc_sync_rst
     port map (
      dest_clk => s_aclk,
      dest_rst => arst_sync_rd_rst,
      src_rst => \^src_rst\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.\reg_access_fifo_xpm_cdc_sync_rst__4\
     port map (
      dest_clk => m_aclk,
      dest_rst => dest_rst,
      src_rst => \^src_rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_reset_blk_ramfifo__xdcDup__1\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    wr_rst_busy_rach : out STD_LOGIC;
    src_rst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_reset_blk_ramfifo__xdcDup__1\ : entity is "reset_blk_ramfifo";
end \reg_access_fifo_reset_blk_ramfifo__xdcDup__1\;

architecture STRUCTURE of \reg_access_fifo_reset_blk_ramfifo__xdcDup__1\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  signal \^wr_rst_busy_rach\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 4;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 4;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \out\ <= rst_d2;
  ram_full_fb_i_reg <= rst_d3;
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
  wr_rst_busy_rach <= \^wr_rst_busy_rach\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^wr_rst_busy_rach\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1__1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.reg_access_fifo_xpm_cdc_async_rst
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => m_aclk,
      src_arst => src_rst
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\,
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1__1_n_0\,
      PRE => rst_rd_reg2,
      Q => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1__1_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA20AAAA"
    )
        port map (
      I0 => \^wr_rst_busy_rach\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => rd_rst_wr_ext(2),
      I4 => rd_rst_wr_ext(3),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1__1_n_0\,
      PRE => rst_wr_reg2,
      Q => \^wr_rst_busy_rach\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[0]\,
      Q => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg_n_0_[1]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.reg_access_fifo_xpm_cdc_single
     port map (
      dest_clk => s_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => m_aclk,
      src_in => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\reg_access_fifo_xpm_cdc_single__7\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\reg_access_fifo_xpm_cdc_async_rst__7\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_reset_blk_ramfifo__xdcDup__2\ is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \syncstages_ff_reg[0]\ : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    p_23_out : out STD_LOGIC;
    src_rst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_reset_blk_ramfifo__xdcDup__2\ : entity is "reset_blk_ramfifo";
end \reg_access_fifo_reset_blk_ramfifo__xdcDup__2\;

architecture STRUCTURE of \reg_access_fifo_reset_blk_ramfifo__xdcDup__2\ is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dest_out : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\ : STD_LOGIC;
  signal \^p_23_out\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal \^syncstages_ff_reg[0]\ : STD_LOGIC;
  signal wr_rst_rd_ext : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 1;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 4;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 4;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b0";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 2;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute INV_DEF_VAL of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "1'b1";
  attribute RST_ACTIVE_HIGH of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 1;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "ASYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\ : label is "TRUE";
begin
  AR(0) <= \^ar\(0);
  \out\ <= rst_d2;
  p_23_out <= \^p_23_out\;
  ram_full_fb_i_reg <= rst_d3;
  \syncstages_ff_reg[0]\ <= \^syncstages_ff_reg[0]\;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \^p_23_out\,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^ar\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      CLR => rst_wr_reg2,
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.rst_rd_reg2_inst\: entity work.\reg_access_fifo_xpm_cdc_async_rst__4\
     port map (
      dest_arst => rst_rd_reg2,
      dest_clk => m_aclk,
      src_arst => src_rst
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^syncstages_ff_reg[0]\,
      I1 => wr_rst_rd_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\,
      PRE => rst_rd_reg2,
      Q => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^ar\(0),
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA20AAAA"
    )
        port map (
      I0 => \^p_23_out\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => rd_rst_wr_ext(2),
      I4 => rd_rst_wr_ext(3),
      O => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => \^p_23_out\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => dest_out,
      Q => wr_rst_rd_ext(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      CLR => rst_rd_reg2,
      D => wr_rst_rd_ext(0),
      Q => wr_rst_rd_ext(1)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\reg_access_fifo_xpm_cdc_single__4\
     port map (
      dest_clk => s_aclk,
      dest_out => sckt_rd_rst_wr,
      src_clk => m_aclk,
      src_in => \^syncstages_ff_reg[0]\
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\reg_access_fifo_xpm_cdc_single__3\
     port map (
      dest_clk => m_aclk,
      dest_out => dest_out,
      src_clk => s_aclk,
      src_in => \^ar\(0)
    );
\ngwrdrst.grst.g7serrst.gnsckt_wrst.rst_wr_reg2_inst\: entity work.\reg_access_fifo_xpm_cdc_async_rst__3\
     port map (
      dest_arst => rst_wr_reg2,
      dest_clk => s_aclk,
      src_arst => src_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_logic is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_wr_logic;

architecture STRUCTURE of reg_access_fifo_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.reg_access_fifo_wr_status_flags_as
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      RD_PNTR_WR(0) => RD_PNTR_WR(0),
      \gic0.gc0.count_d1_reg[3]\ => \gic0.gc0.count_d1_reg[3]\,
      m_aclk => m_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg
    );
wpntr: entity work.reg_access_fifo_wr_bin_cntr
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      m_aclk => m_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_logic_22 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_wr_logic_22 : entity is "wr_logic";
end reg_access_fifo_wr_logic_22;

architecture STRUCTURE of reg_access_fifo_wr_logic_22 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.reg_access_fifo_wr_status_flags_as_25
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      RD_PNTR_WR(0) => RD_PNTR_WR(0),
      \gic0.gc0.count_d1_reg[3]\ => \gic0.gc0.count_d1_reg[3]\,
      \out\ => \out\,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
wpntr: entity work.reg_access_fifo_wr_bin_cntr_26
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      s_aclk => s_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_wr_logic_4 is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_full_fb_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \src_gray_ff_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc0.count_d1_reg[3]\ : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_access_fifo_wr_logic_4 : entity is "wr_logic";
end reg_access_fifo_wr_logic_4;

architecture STRUCTURE of reg_access_fifo_wr_logic_4 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.reg_access_fifo_wr_status_flags_as_5
     port map (
      E(0) => \^e\(0),
      Q(0) => wr_pntr_plus2(3),
      RD_PNTR_WR(0) => RD_PNTR_WR(0),
      \gic0.gc0.count_d1_reg[3]\ => \gic0.gc0.count_d1_reg[3]\,
      \out\ => \out\,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid
    );
wpntr: entity work.reg_access_fifo_wr_bin_cntr_6
     port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      Q(3) => wr_pntr_plus2(3),
      Q(2 downto 0) => Q(2 downto 0),
      \gic0.gc0.count_d2_reg[3]_0\(3 downto 0) => \gic0.gc0.count_d2_reg[3]\(3 downto 0),
      s_aclk => s_aclk,
      \src_gray_ff_reg[3]\(3 downto 0) => \src_gray_ff_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_wr_status_flags_as__parameterized0\ is
  port (
    ENA_I : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    ENA_dly_D : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_wr_status_flags_as__parameterized0\ : entity is "wr_status_flags_as";
end \reg_access_fifo_wr_status_flags_as__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_wr_status_flags_as__parameterized0\ is
  signal c1_n_0 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => s_axi_wvalid,
      I2 => ENA_dly_D,
      O => ENA_I
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c1: entity work.\reg_access_fifo_compare__parameterized0\
     port map (
      comp2 => comp2,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      \out\ => \out\,
      ram_full_fb_i_reg => c1_n_0,
      ram_full_fb_i_reg_0 => ram_full_fb_i,
      s_axi_wvalid => s_axi_wvalid,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c2: entity work.\reg_access_fifo_compare__parameterized0_0\
     port map (
      comp2 => comp2,
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \dest_out_bin_ff_reg[9]\(3 downto 0),
      v1_reg_0(0) => v1_reg_0(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_i,
      R => '0'
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => s_axi_wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_wr_status_flags_as__parameterized0_12\ is
  port (
    ENA_I : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_wr_status_flags_as__parameterized0_12\ : entity is "wr_status_flags_as";
end \reg_access_fifo_wr_status_flags_as__parameterized0_12\;

architecture STRUCTURE of \reg_access_fifo_wr_status_flags_as__parameterized0_12\ is
  signal c1_n_0 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ram_full_fb_i,
      I1 => m_axi_rvalid,
      I2 => ENB_dly_D,
      O => ENA_I
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c1: entity work.\reg_access_fifo_compare__parameterized0_14\
     port map (
      comp2 => comp2,
      m_axi_rvalid => m_axi_rvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      \out\ => \out\,
      ram_full_fb_i_reg => c1_n_0,
      ram_full_fb_i_reg_0 => ram_full_fb_i,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c2: entity work.\reg_access_fifo_compare__parameterized0_15\
     port map (
      comp2 => comp2,
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \dest_out_bin_ff_reg[9]\(3 downto 0),
      v1_reg_0(0) => v1_reg_0(0)
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_full_i,
      O => m_axi_rready
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_A : out STD_LOGIC;
    POR_B : out STD_LOGIC;
    ENA_dly_D : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_blk_mem_gen_generic_cstr;

architecture STRUCTURE of reg_access_fifo_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.reg_access_fifo_blk_mem_gen_prim_width
     port map (
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_blk_mem_gen_generic_cstr__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_blk_mem_gen_generic_cstr__parameterized0\ : entity is "blk_mem_gen_generic_cstr";
end \reg_access_fifo_blk_mem_gen_generic_cstr__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_blk_mem_gen_generic_cstr__parameterized0\ is
begin
\ramloop[0].ram.r\: entity work.\reg_access_fifo_blk_mem_gen_prim_width__parameterized0\
     port map (
      D(33 downto 0) => D(33 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_fifo_generator_ramfifo is
  port (
    p_23_out : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 34 downto 0 );
    src_rst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
end reg_access_fifo_fifo_generator_ramfifo;

architecture STRUCTURE of reg_access_fifo_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_3\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal p_0_out_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.\reg_access_fifo_clk_x_pntrs__xdcDup__2\
     port map (
      Q(3 downto 0) => p_14_out(3 downto 0),
      RD_PNTR_WR(0) => p_25_out(3),
      WR_PNTR_RD(0) => p_24_out(3),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out_0(3 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \gic0.gc0.count_reg[2]\(2 downto 0) => wr_pntr_plus2(2 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\ => \gntv_or_sync_fifo.gl0.rd_n_3\,
      m_aclk => m_aclk,
      \out\ => rst_full_gen_i,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_3\,
      s_aclk => s_aclk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.reg_access_fifo_rd_logic_3
     port map (
      E(0) => ram_rd_en_i,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      WR_PNTR_RD(0) => p_24_out(3),
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      \goreg_dm.dout_i_reg[34]\(0) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      m_aclk => m_aclk,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_1,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_3\,
      \src_gray_ff_reg[3]\(3 downto 0) => p_0_out_0(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.reg_access_fifo_wr_logic_4
     port map (
      AR(0) => rstblk_n_0,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(0) => p_25_out(3),
      \gic0.gc0.count_d1_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_14_out(3 downto 0),
      \out\ => rst_full_ff_i,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      \src_gray_ff_reg[3]\(3 downto 0) => p_13_out(3 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.reg_access_fifo_memory
     port map (
      DI(34 downto 0) => DI(34 downto 0),
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      Q(34 downto 0) => Q(34 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out_0(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => ram_rd_en_i,
      m_aclk => m_aclk,
      ram_full_fb_i_reg(0) => p_20_out,
      s_aclk => s_aclk
    );
rstblk: entity work.\reg_access_fifo_reset_blk_ramfifo__xdcDup__2\
     port map (
      AR(0) => rstblk_n_0,
      m_aclk => m_aclk,
      \out\ => rst_full_ff_i,
      p_23_out => p_23_out,
      ram_full_fb_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      src_rst => src_rst,
      \syncstages_ff_reg[0]\ => rstblk_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_fifo_generator_ramfifo__parameterized1\ is
  port (
    wr_rst_busy_wrch : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_rst : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_fifo_generator_ramfifo__parameterized1\ : entity is "fifo_generator_ramfifo";
end \reg_access_fifo_fifo_generator_ramfifo__parameterized1\;

architecture STRUCTURE of \reg_access_fifo_fifo_generator_ramfifo__parameterized1\ is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal \gr1.gr1_int.rfwft/p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.reg_access_fifo_clk_x_pntrs
     port map (
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      RD_PNTR_WR(0) => p_25_out(3),
      WR_PNTR_RD(0) => p_24_out(3),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gic0.gc0.count_d1_reg[3]\(3 downto 0) => p_14_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \gic0.gc0.count_reg[2]\(2 downto 0) => wr_pntr_plus2(2 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\ => \gntv_or_sync_fifo.gl0.rd_n_5\,
      m_aclk => m_aclk,
      \out\ => rst_full_gen_i,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_3\,
      s_aclk => s_aclk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.reg_access_fifo_rd_logic
     port map (
      E(0) => ram_rd_en_i,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      WR_PNTR_RD(0) => p_24_out(3),
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_1,
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_5\,
      s_aclk => s_aclk,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      \src_gray_ff_reg[3]\(3 downto 0) => p_0_out(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.reg_access_fifo_wr_logic
     port map (
      AR(0) => rstblk_n_0,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(0) => p_25_out(3),
      \gic0.gc0.count_d1_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_14_out(3 downto 0),
      m_aclk => m_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => rst_full_ff_i,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      \src_gray_ff_reg[3]\(3 downto 0) => p_13_out(3 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.\reg_access_fifo_memory__parameterized1\
     port map (
      E(0) => ram_rd_en_i,
      I56 => p_20_out,
      count_d1(3 downto 0) => p_0_out(3 downto 0),
      count_d2(3 downto 0) => p_13_out(3 downto 0),
      m_aclk => m_aclk,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_1,
      \out\(1) => \gntv_or_sync_fifo.gl0.rd_n_0\,
      \out\(0) => \gr1.gr1_int.rfwft/p_0_in\(0),
      s_aclk => s_aclk,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0)
    );
rstblk: entity work.reg_access_fifo_reset_blk_ramfifo
     port map (
      AR(0) => rstblk_n_0,
      m_aclk => m_aclk,
      \out\ => rst_full_ff_i,
      ram_full_fb_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      src_rst => src_rst,
      \syncstages_ff_reg[0]\ => rstblk_n_1,
      wr_rst_busy_wrch => wr_rst_busy_wrch
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_fifo_generator_ramfifo__xdcDup__1\ is
  port (
    wr_rst_busy_rach : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    \m_axi_araddr[31]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    src_rst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    I71 : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_fifo_generator_ramfifo__xdcDup__1\ : entity is "fifo_generator_ramfifo";
end \reg_access_fifo_fifo_generator_ramfifo__xdcDup__1\;

architecture STRUCTURE of \reg_access_fifo_fifo_generator_ramfifo__xdcDup__1\ is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_3\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd_n_5\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_3\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_25_out : STD_LOGIC_VECTOR ( 3 to 3 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.\reg_access_fifo_clk_x_pntrs__xdcDup__1\
     port map (
      Q(3 downto 0) => p_14_out(3 downto 0),
      RD_PNTR_WR(0) => p_25_out(3),
      WR_PNTR_RD(0) => p_24_out(3),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gc0.count_reg[2]\(2 downto 0) => rd_pntr_plus1(2 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \gic0.gc0.count_reg[2]\(2 downto 0) => wr_pntr_plus2(2 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\ => \gntv_or_sync_fifo.gl0.rd_n_3\,
      m_aclk => m_aclk,
      \out\ => rst_full_gen_i,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_3\,
      s_aclk => s_aclk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.reg_access_fifo_rd_logic_21
     port map (
      E(0) => ram_rd_en_i,
      Q(2 downto 0) => rd_pntr_plus1(2 downto 0),
      WR_PNTR_RD(0) => p_24_out(3),
      \dest_out_bin_ff_reg[2]\ => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      \goreg_dm.dout_i_reg[34]\(0) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      m_aclk => m_aclk,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \ngwrdrst.grst.g7serrst.gnsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_1,
      ram_empty_fb_i_reg => \gntv_or_sync_fifo.gl0.rd_n_3\,
      \src_gray_ff_reg[3]\(3 downto 0) => p_0_out(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.reg_access_fifo_wr_logic_22
     port map (
      AR(0) => rstblk_n_0,
      E(0) => p_20_out,
      Q(2 downto 0) => wr_pntr_plus2(2 downto 0),
      RD_PNTR_WR(0) => p_25_out(3),
      \gic0.gc0.count_d1_reg[3]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_14_out(3 downto 0),
      \out\ => rst_full_ff_i,
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_3\,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      \src_gray_ff_reg[3]\(3 downto 0) => p_13_out(3 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.reg_access_fifo_memory_23
     port map (
      E(0) => \gntv_or_sync_fifo.gl0.rd_n_5\,
      I71(34 downto 0) => I71(34 downto 0),
      \gc0.count_d1_reg[3]\(3 downto 0) => p_0_out(3 downto 0),
      \gic0.gc0.count_d2_reg[3]\(3 downto 0) => p_13_out(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[1]\(0) => ram_rd_en_i,
      m_aclk => m_aclk,
      \m_axi_araddr[31]\(34 downto 0) => \m_axi_araddr[31]\(34 downto 0),
      ram_full_fb_i_reg(0) => p_20_out,
      s_aclk => s_aclk
    );
rstblk: entity work.\reg_access_fifo_reset_blk_ramfifo__xdcDup__1\
     port map (
      AR(0) => rstblk_n_0,
      m_aclk => m_aclk,
      \out\ => rst_full_ff_i,
      ram_full_fb_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      src_rst => src_rst,
      \syncstages_ff_reg[0]\ => rstblk_n_1,
      wr_rst_busy_rach => wr_rst_busy_rach
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_rd_logic__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_rd_logic__parameterized0\ : entity is "rd_logic";
end \reg_access_fifo_rd_logic__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_rd_logic__parameterized0\ is
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_3\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
begin
\gr1.gr1_int.rfwft\: entity work.\reg_access_fifo_rd_fwft__parameterized0\
     port map (
      E(0) => E(0),
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      \gc0.count_d1_reg[9]\(0) => p_8_out,
      m_aclk => m_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => \gr1.gr1_int.rfwft_n_3\
    );
\gras.rsts\: entity work.\reg_access_fifo_rd_status_flags_as__parameterized0\
     port map (
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \dest_out_bin_ff_reg[9]\(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_3\,
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      v1_reg(4 downto 0) => \c0/v1_reg\(4 downto 0),
      v1_reg_0(0) => \c1/v1_reg\(0)
    );
rpntr: entity work.\reg_access_fifo_rd_bin_cntr__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0),
      E(0) => p_8_out,
      Q(7 downto 0) => Q(7 downto 0),
      WR_PNTR_RD(9 downto 0) => WR_PNTR_RD(9 downto 0),
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      v1_reg(0) => \c1/v1_reg\(0),
      v1_reg_0(4 downto 0) => \c0/v1_reg\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_rd_logic__parameterized0_10\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENB_I : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ENA_dly_D : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_rd_logic__parameterized0_10\ : entity is "rd_logic";
end \reg_access_fifo_rd_logic__parameterized0_10\;

architecture STRUCTURE of \reg_access_fifo_rd_logic__parameterized0_10\ is
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gr1.gr1_int.rfwft_n_3\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
begin
\gr1.gr1_int.rfwft\: entity work.\reg_access_fifo_rd_fwft__parameterized0_16\
     port map (
      E(0) => E(0),
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      \gc0.count_d1_reg[9]\(0) => p_8_out,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      ram_empty_fb_i_reg => \gr1.gr1_int.rfwft_n_3\,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\gras.rsts\: entity work.\reg_access_fifo_rd_status_flags_as__parameterized0_17\
     port map (
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \dest_out_bin_ff_reg[9]\(3 downto 0),
      \gpregsm1.curr_fwft_state_reg[0]\ => \gr1.gr1_int.rfwft_n_3\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \out\ => p_2_out,
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => \c0/v1_reg\(4 downto 0),
      v1_reg_0(0) => \c1/v1_reg\(0)
    );
rpntr: entity work.\reg_access_fifo_rd_bin_cntr__parameterized0_18\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0),
      E(0) => p_8_out,
      Q(7 downto 0) => Q(7 downto 0),
      WR_PNTR_RD(9 downto 0) => WR_PNTR_RD(9 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      s_aclk => s_aclk,
      v1_reg(0) => \c1/v1_reg\(0),
      v1_reg_0(4 downto 0) => \c0/v1_reg\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_wr_logic__parameterized0\ is
  port (
    ENA_I : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_aclk : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    ENA_dly_D : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_wr_logic__parameterized0\ : entity is "wr_logic";
end \reg_access_fifo_wr_logic__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_wr_logic__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c2/v1_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.\reg_access_fifo_wr_status_flags_as__parameterized0\
     port map (
      E(0) => \^e\(0),
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \dest_out_bin_ff_reg[9]\(3 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      v1_reg_0(0) => \c2/v1_reg\(0)
    );
wpntr: entity work.\reg_access_fifo_wr_bin_cntr__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0),
      E(0) => \^e\(0),
      Q(7 downto 0) => Q(7 downto 0),
      RD_PNTR_WR(1 downto 0) => RD_PNTR_WR(1 downto 0),
      \gic0.gc0.count_d2_reg[9]_0\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      s_aclk => s_aclk,
      v1_reg(0) => \c2/v1_reg\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_wr_logic__parameterized0_11\ is
  port (
    ENA_I : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_rready : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \dest_out_bin_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_aclk : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_wr_logic__parameterized0_11\ : entity is "wr_logic";
end \reg_access_fifo_wr_logic__parameterized0_11\;

architecture STRUCTURE of \reg_access_fifo_wr_logic__parameterized0_11\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c2/v1_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.\reg_access_fifo_wr_status_flags_as__parameterized0_12\
     port map (
      E(0) => \^e\(0),
      ENA_I => ENA_I,
      ENB_dly_D => ENB_dly_D,
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \dest_out_bin_ff_reg[9]\(3 downto 0),
      m_aclk => m_aclk,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      \out\ => \out\,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      v1_reg_0(0) => \c2/v1_reg\(0)
    );
wpntr: entity work.\reg_access_fifo_wr_bin_cntr__parameterized0_13\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0),
      E(0) => \^e\(0),
      Q(7 downto 0) => Q(7 downto 0),
      RD_PNTR_WR(1 downto 0) => RD_PNTR_WR(1 downto 0),
      \gic0.gc0.count_d2_reg[9]_0\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\,
      v1_reg(0) => \c2/v1_reg\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_A : out STD_LOGIC;
    POR_B : out STD_LOGIC;
    ENA_dly_D : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_blk_mem_gen_top;

architecture STRUCTURE of reg_access_fifo_blk_mem_gen_top is
begin
\valid.cstr\: entity work.reg_access_fifo_blk_mem_gen_generic_cstr
     port map (
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_blk_mem_gen_top__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_blk_mem_gen_top__parameterized0\ : entity is "blk_mem_gen_top";
end \reg_access_fifo_blk_mem_gen_top__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_blk_mem_gen_top__parameterized0\ is
begin
\valid.cstr\: entity work.\reg_access_fifo_blk_mem_gen_generic_cstr__parameterized0\
     port map (
      D(33 downto 0) => D(33 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_fifo_generator_top is
  port (
    p_23_out : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 34 downto 0 );
    src_rst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
end reg_access_fifo_fifo_generator_top;

architecture STRUCTURE of reg_access_fifo_fifo_generator_top is
begin
\grf.rf\: entity work.reg_access_fifo_fifo_generator_ramfifo
     port map (
      DI(34 downto 0) => DI(34 downto 0),
      Q(34 downto 0) => Q(34 downto 0),
      m_aclk => m_aclk,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      p_23_out => p_23_out,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      src_rst => src_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_fifo_generator_top__parameterized1\ is
  port (
    wr_rst_busy_wrch : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    src_rst : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_fifo_generator_top__parameterized1\ : entity is "fifo_generator_top";
end \reg_access_fifo_fifo_generator_top__parameterized1\;

architecture STRUCTURE of \reg_access_fifo_fifo_generator_top__parameterized1\ is
begin
\grf.rf\: entity work.\reg_access_fifo_fifo_generator_ramfifo__parameterized1\
     port map (
      m_aclk => m_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      s_aclk => s_aclk,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      src_rst => src_rst,
      wr_rst_busy_wrch => wr_rst_busy_wrch
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_fifo_generator_top__xdcDup__1\ is
  port (
    wr_rst_busy_rach : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    \m_axi_araddr[31]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    src_rst : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    I71 : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_fifo_generator_top__xdcDup__1\ : entity is "fifo_generator_top";
end \reg_access_fifo_fifo_generator_top__xdcDup__1\;

architecture STRUCTURE of \reg_access_fifo_fifo_generator_top__xdcDup__1\ is
begin
\grf.rf\: entity work.\reg_access_fifo_fifo_generator_ramfifo__xdcDup__1\
     port map (
      I71(34 downto 0) => I71(34 downto 0),
      m_aclk => m_aclk,
      \m_axi_araddr[31]\(34 downto 0) => \m_axi_araddr[31]\(34 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      src_rst => src_rst,
      wr_rst_busy_rach => wr_rst_busy_rach
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_blk_mem_gen_v8_4_1_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_A : out STD_LOGIC;
    POR_B : out STD_LOGIC;
    ENA_dly_D : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of reg_access_fifo_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.reg_access_fifo_blk_mem_gen_top
     port map (
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_blk_mem_gen_v8_4_1_synth__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_blk_mem_gen_v8_4_1_synth__parameterized0\ : entity is "blk_mem_gen_v8_4_1_synth";
end \reg_access_fifo_blk_mem_gen_v8_4_1_synth__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_blk_mem_gen_v8_4_1_synth__parameterized0\ is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.\reg_access_fifo_blk_mem_gen_top__parameterized0\
     port map (
      D(33 downto 0) => D(33 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_blk_mem_gen_v8_4_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    POR_A : out STD_LOGIC;
    POR_B : out STD_LOGIC;
    ENA_dly_D : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_access_fifo_blk_mem_gen_v8_4_1;

architecture STRUCTURE of reg_access_fifo_blk_mem_gen_v8_4_1 is
begin
inst_blk_mem_gen: entity work.reg_access_fifo_blk_mem_gen_v8_4_1_synth
     port map (
      D(35 downto 0) => D(35 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_blk_mem_gen_v8_4_1__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_blk_mem_gen_v8_4_1__parameterized1\ : entity is "blk_mem_gen_v8_4_1";
end \reg_access_fifo_blk_mem_gen_v8_4_1__parameterized1\;

architecture STRUCTURE of \reg_access_fifo_blk_mem_gen_v8_4_1__parameterized1\ is
begin
inst_blk_mem_gen: entity work.\reg_access_fifo_blk_mem_gen_v8_4_1_synth__parameterized0\
     port map (
      D(33 downto 0) => D(33 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      s_aclk => s_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_memory__parameterized0\ is
  port (
    POR_A : out STD_LOGIC;
    POR_B : out STD_LOGIC;
    ENA_dly_D : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    \m_axi_wdata[31]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_memory__parameterized0\ : entity is "memory";
end \reg_access_fifo_memory__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_memory__parameterized0\ is
  signal doutb : STD_LOGIC_VECTOR ( 35 downto 0 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.reg_access_fifo_blk_mem_gen_v8_4_1
     port map (
      D(35 downto 0) => doutb(35 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENA_dly_D => ENA_dly_D,
      ENB_I => ENB_I,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(0),
      Q => \m_axi_wdata[31]\(0),
      R => '0'
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(10),
      Q => \m_axi_wdata[31]\(10),
      R => '0'
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(11),
      Q => \m_axi_wdata[31]\(11),
      R => '0'
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(12),
      Q => \m_axi_wdata[31]\(12),
      R => '0'
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(13),
      Q => \m_axi_wdata[31]\(13),
      R => '0'
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(14),
      Q => \m_axi_wdata[31]\(14),
      R => '0'
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(15),
      Q => \m_axi_wdata[31]\(15),
      R => '0'
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(16),
      Q => \m_axi_wdata[31]\(16),
      R => '0'
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(17),
      Q => \m_axi_wdata[31]\(17),
      R => '0'
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(18),
      Q => \m_axi_wdata[31]\(18),
      R => '0'
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(19),
      Q => \m_axi_wdata[31]\(19),
      R => '0'
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(1),
      Q => \m_axi_wdata[31]\(1),
      R => '0'
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(20),
      Q => \m_axi_wdata[31]\(20),
      R => '0'
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(21),
      Q => \m_axi_wdata[31]\(21),
      R => '0'
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(22),
      Q => \m_axi_wdata[31]\(22),
      R => '0'
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(23),
      Q => \m_axi_wdata[31]\(23),
      R => '0'
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(24),
      Q => \m_axi_wdata[31]\(24),
      R => '0'
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(25),
      Q => \m_axi_wdata[31]\(25),
      R => '0'
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(26),
      Q => \m_axi_wdata[31]\(26),
      R => '0'
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(27),
      Q => \m_axi_wdata[31]\(27),
      R => '0'
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(28),
      Q => \m_axi_wdata[31]\(28),
      R => '0'
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(29),
      Q => \m_axi_wdata[31]\(29),
      R => '0'
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(2),
      Q => \m_axi_wdata[31]\(2),
      R => '0'
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(30),
      Q => \m_axi_wdata[31]\(30),
      R => '0'
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(31),
      Q => \m_axi_wdata[31]\(31),
      R => '0'
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(32),
      Q => \m_axi_wdata[31]\(32),
      R => '0'
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(33),
      Q => \m_axi_wdata[31]\(33),
      R => '0'
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(34),
      Q => \m_axi_wdata[31]\(34),
      R => '0'
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(35),
      Q => \m_axi_wdata[31]\(35),
      R => '0'
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(3),
      Q => \m_axi_wdata[31]\(3),
      R => '0'
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(4),
      Q => \m_axi_wdata[31]\(4),
      R => '0'
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(5),
      Q => \m_axi_wdata[31]\(5),
      R => '0'
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(6),
      Q => \m_axi_wdata[31]\(6),
      R => '0'
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(7),
      Q => \m_axi_wdata[31]\(7),
      R => '0'
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(8),
      Q => \m_axi_wdata[31]\(8),
      R => '0'
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(9),
      Q => \m_axi_wdata[31]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_memory__parameterized2\ is
  port (
    \s_axi_rdata[31]\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    ENA_I : in STD_LOGIC;
    ENB_I : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gc0.count_d1_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_memory__parameterized2\ : entity is "memory";
end \reg_access_fifo_memory__parameterized2\;

architecture STRUCTURE of \reg_access_fifo_memory__parameterized2\ is
  signal doutb : STD_LOGIC_VECTOR ( 33 downto 0 );
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.\reg_access_fifo_blk_mem_gen_v8_4_1__parameterized1\
     port map (
      D(33 downto 0) => doutb(33 downto 0),
      E(0) => E(0),
      ENA_I => ENA_I,
      ENB_I => ENB_I,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => \gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => \gic0.gc0.count_d2_reg[9]\(9 downto 0),
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      s_aclk => s_aclk
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(0),
      Q => \s_axi_rdata[31]\(0),
      R => '0'
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(10),
      Q => \s_axi_rdata[31]\(10),
      R => '0'
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(11),
      Q => \s_axi_rdata[31]\(11),
      R => '0'
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(12),
      Q => \s_axi_rdata[31]\(12),
      R => '0'
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(13),
      Q => \s_axi_rdata[31]\(13),
      R => '0'
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(14),
      Q => \s_axi_rdata[31]\(14),
      R => '0'
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(15),
      Q => \s_axi_rdata[31]\(15),
      R => '0'
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(16),
      Q => \s_axi_rdata[31]\(16),
      R => '0'
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(17),
      Q => \s_axi_rdata[31]\(17),
      R => '0'
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(18),
      Q => \s_axi_rdata[31]\(18),
      R => '0'
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(19),
      Q => \s_axi_rdata[31]\(19),
      R => '0'
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(1),
      Q => \s_axi_rdata[31]\(1),
      R => '0'
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(20),
      Q => \s_axi_rdata[31]\(20),
      R => '0'
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(21),
      Q => \s_axi_rdata[31]\(21),
      R => '0'
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(22),
      Q => \s_axi_rdata[31]\(22),
      R => '0'
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(23),
      Q => \s_axi_rdata[31]\(23),
      R => '0'
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(24),
      Q => \s_axi_rdata[31]\(24),
      R => '0'
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(25),
      Q => \s_axi_rdata[31]\(25),
      R => '0'
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(26),
      Q => \s_axi_rdata[31]\(26),
      R => '0'
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(27),
      Q => \s_axi_rdata[31]\(27),
      R => '0'
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(28),
      Q => \s_axi_rdata[31]\(28),
      R => '0'
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(29),
      Q => \s_axi_rdata[31]\(29),
      R => '0'
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(2),
      Q => \s_axi_rdata[31]\(2),
      R => '0'
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(30),
      Q => \s_axi_rdata[31]\(30),
      R => '0'
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(31),
      Q => \s_axi_rdata[31]\(31),
      R => '0'
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(32),
      Q => \s_axi_rdata[31]\(32),
      R => '0'
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(33),
      Q => \s_axi_rdata[31]\(33),
      R => '0'
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(3),
      Q => \s_axi_rdata[31]\(3),
      R => '0'
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(4),
      Q => \s_axi_rdata[31]\(4),
      R => '0'
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(5),
      Q => \s_axi_rdata[31]\(5),
      R => '0'
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(6),
      Q => \s_axi_rdata[31]\(6),
      R => '0'
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(7),
      Q => \s_axi_rdata[31]\(7),
      R => '0'
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(8),
      Q => \s_axi_rdata[31]\(8),
      R => '0'
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_aclk,
      CE => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0),
      D => doutb(9),
      Q => \s_axi_rdata[31]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_fifo_generator_ramfifo__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    POR_B : out STD_LOGIC;
    ENA_dly_D : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    \m_axi_wdata[31]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_fifo_generator_ramfifo__parameterized0\ : entity is "fifo_generator_ramfifo";
end \reg_access_fifo_fifo_generator_ramfifo__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_fifo_generator_ramfifo__parameterized0\ is
  signal \^ena_dly_d\ : STD_LOGIC;
  signal \^enb_dly_d\ : STD_LOGIC;
  signal dout_i : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gras.rsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \gwas.wsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gwas.wsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_0_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 9 downto 2 );
begin
  ENA_dly_D <= \^ena_dly_d\;
  ENB_dly_D <= \^enb_dly_d\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.\reg_access_fifo_clk_x_pntrs__parameterized0\
     port map (
      Q(9 downto 0) => p_14_out(9 downto 0),
      RD_PNTR_WR(1 downto 0) => p_25_out(1 downto 0),
      WR_PNTR_RD(9 downto 0) => p_24_out(9 downto 0),
      \gc0.count_d1_reg[9]\(9 downto 0) => p_0_out(9 downto 0),
      \gc0.count_reg[9]\(7 downto 0) => rd_pntr_plus1(9 downto 2),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => p_13_out(9 downto 0),
      \gic0.gc0.count_reg[9]\(7 downto 0) => wr_pntr_plus2(9 downto 2),
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      v1_reg(4 downto 0) => \gwas.wsts/c1/v1_reg\(4 downto 0),
      v1_reg_0(3 downto 0) => \gwas.wsts/c2/v1_reg\(4 downto 1),
      v1_reg_1(3 downto 0) => \gras.rsts/c1/v1_reg\(4 downto 1)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.\reg_access_fifo_rd_logic__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) => p_0_out(9 downto 0),
      E(0) => dout_i,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \^enb_dly_d\,
      Q(7 downto 0) => rd_pntr_plus1(9 downto 2),
      WR_PNTR_RD(9 downto 0) => p_24_out(9 downto 0),
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \gras.rsts/c1/v1_reg\(4 downto 1),
      m_aclk => m_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_1
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\reg_access_fifo_wr_logic__parameterized0\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) => p_13_out(9 downto 0),
      E(0) => p_20_out,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENA_dly_D => \^ena_dly_d\,
      Q(7 downto 0) => wr_pntr_plus2(9 downto 2),
      RD_PNTR_WR(1 downto 0) => p_25_out(1 downto 0),
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \gwas.wsts/c2/v1_reg\(4 downto 1),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => p_14_out(9 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => rstblk_n_0,
      \out\ => rst_full_gen_i,
      s_aclk => s_aclk,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      v1_reg(4 downto 0) => \gwas.wsts/c1/v1_reg\(4 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.\reg_access_fifo_memory__parameterized0\
     port map (
      E(0) => p_20_out,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENA_dly_D => \^ena_dly_d\,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      ENB_dly_D => \^enb_dly_d\,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => p_0_out(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => p_13_out(9 downto 0),
      m_aclk => m_aclk,
      \m_axi_wdata[31]\(35 downto 0) => \m_axi_wdata[31]\(35 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => dout_i,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0)
    );
rstblk: entity work.\reg_access_fifo_reset_blk_ramfifo__parameterized0\
     port map (
      m_aclk => m_aclk,
      \out\ => \out\,
      ram_full_fb_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      src_rst => src_rst,
      \syncstages_ff_reg[0]\ => rstblk_n_0,
      \syncstages_ff_reg[0]_0\ => rstblk_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_fifo_generator_ramfifo__parameterized2\ is
  port (
    src_rst : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \s_axi_rdata[31]\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC;
    ENA_dly_D : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_fifo_generator_ramfifo__parameterized2\ : entity is "fifo_generator_ramfifo";
end \reg_access_fifo_fifo_generator_ramfifo__parameterized2\;

architecture STRUCTURE of \reg_access_fifo_fifo_generator_ramfifo__parameterized2\ is
  signal dout_i : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\ : STD_LOGIC;
  signal \gras.rsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \gwas.wsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gwas.wsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_0_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_1 : STD_LOGIC;
  signal rstblk_n_2 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 9 downto 2 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.\reg_access_fifo_clk_x_pntrs__parameterized0__xdcDup__1\
     port map (
      Q(7 downto 0) => rd_pntr_plus1(9 downto 2),
      RD_PNTR_WR(1 downto 0) => p_25_out(1 downto 0),
      WR_PNTR_RD(9 downto 0) => p_24_out(9 downto 0),
      \gc0.count_d1_reg[9]\(9 downto 0) => p_0_out(9 downto 0),
      \gic0.gc0.count_d1_reg[9]\(9 downto 0) => p_14_out(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => p_13_out(9 downto 0),
      \gic0.gc0.count_reg[9]\(7 downto 0) => wr_pntr_plus2(9 downto 2),
      m_aclk => m_aclk,
      s_aclk => s_aclk,
      v1_reg(3 downto 0) => \gras.rsts/c1/v1_reg\(4 downto 1),
      v1_reg_0(4 downto 0) => \gwas.wsts/c1/v1_reg\(4 downto 0),
      v1_reg_1(3 downto 0) => \gwas.wsts/c2/v1_reg\(4 downto 1)
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.\reg_access_fifo_rd_logic__parameterized0_10\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) => p_0_out(9 downto 0),
      E(0) => dout_i,
      ENA_dly_D => ENA_dly_D,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      Q(7 downto 0) => rd_pntr_plus1(9 downto 2),
      WR_PNTR_RD(9 downto 0) => p_24_out(9 downto 0),
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \gras.rsts/c1/v1_reg\(4 downto 1),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rstblk_n_2,
      s_aclk => s_aclk,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.\reg_access_fifo_wr_logic__parameterized0_11\
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\(9 downto 0) => p_13_out(9 downto 0),
      E(0) => p_20_out,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_dly_D => ENB_dly_D,
      Q(7 downto 0) => wr_pntr_plus2(9 downto 2),
      RD_PNTR_WR(1 downto 0) => p_25_out(1 downto 0),
      \dest_out_bin_ff_reg[9]\(3 downto 0) => \gwas.wsts/c2/v1_reg\(4 downto 1),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => p_14_out(9 downto 0),
      m_aclk => m_aclk,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\ => rstblk_n_1,
      \out\ => rst_full_gen_i,
      v1_reg(4 downto 0) => \gwas.wsts/c1/v1_reg\(4 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.\reg_access_fifo_memory__parameterized2\
     port map (
      E(0) => p_20_out,
      ENA_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_I\,
      ENB_I => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_I\,
      POR_A => POR_A,
      POR_B => POR_B,
      \gc0.count_d1_reg[9]\(9 downto 0) => p_0_out(9 downto 0),
      \gic0.gc0.count_d2_reg[9]\(9 downto 0) => p_13_out(9 downto 0),
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\(0) => dout_i,
      s_aclk => s_aclk,
      \s_axi_rdata[31]\(33 downto 0) => \s_axi_rdata[31]\(33 downto 0)
    );
rstblk: entity work.\reg_access_fifo_reset_blk_ramfifo__parameterized0__xdcDup__1\
     port map (
      m_aclk => m_aclk,
      \out\ => \out\,
      ram_full_fb_i_reg => rst_full_gen_i,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      src_rst => src_rst,
      \syncstages_ff_reg[0]\ => rstblk_n_1,
      \syncstages_ff_reg[0]_0\ => rstblk_n_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_fifo_generator_top__parameterized0\ is
  port (
    \out\ : out STD_LOGIC;
    POR_A : out STD_LOGIC;
    POR_B : out STD_LOGIC;
    ENA_dly_D : out STD_LOGIC;
    ENB_dly_D : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    \m_axi_wdata[31]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    src_rst : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_fifo_generator_top__parameterized0\ : entity is "fifo_generator_top";
end \reg_access_fifo_fifo_generator_top__parameterized0\;

architecture STRUCTURE of \reg_access_fifo_fifo_generator_top__parameterized0\ is
begin
\grf.rf\: entity work.\reg_access_fifo_fifo_generator_ramfifo__parameterized0\
     port map (
      ENA_dly_D => ENA_dly_D,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      m_aclk => m_aclk,
      \m_axi_wdata[31]\(35 downto 0) => \m_axi_wdata[31]\(35 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      src_rst => src_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \reg_access_fifo_fifo_generator_top__parameterized2\ is
  port (
    src_rst : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    \s_axi_rdata[31]\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    POR_B : in STD_LOGIC;
    POR_A : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC;
    ENA_dly_D : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \reg_access_fifo_fifo_generator_top__parameterized2\ : entity is "fifo_generator_top";
end \reg_access_fifo_fifo_generator_top__parameterized2\;

architecture STRUCTURE of \reg_access_fifo_fifo_generator_top__parameterized2\ is
begin
\grf.rf\: entity work.\reg_access_fifo_fifo_generator_ramfifo__parameterized2\
     port map (
      ENA_dly_D => ENA_dly_D,
      ENB_dly_D => ENB_dly_D,
      POR_A => POR_A,
      POR_B => POR_B,
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      \s_axi_rdata[31]\(33 downto 0) => \s_axi_rdata[31]\(33 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      src_rst => src_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_fifo_generator_v13_2_1_synth is
  port (
    Q : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \m_axi_wdata[31]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_axi_araddr[31]\ : out STD_LOGIC_VECTOR ( 34 downto 0 );
    \s_axi_rdata[31]\ : out STD_LOGIC_VECTOR ( 33 downto 0 );
    wr_rst_busy : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 34 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I71 : in STD_LOGIC_VECTOR ( 34 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    s_aresetn : in STD_LOGIC
  );
end reg_access_fifo_fifo_generator_v13_2_1_synth;

architecture STRUCTURE of reg_access_fifo_fifo_generator_v13_2_1_synth is
  signal \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_dly_D\ : STD_LOGIC;
  signal \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\ : STD_LOGIC;
  signal \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A\ : STD_LOGIC;
  signal \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\ : STD_LOGIC;
  signal inverted_reset : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_23_out : STD_LOGIC;
  signal wr_rst_busy_rach : STD_LOGIC;
  signal wr_rst_busy_rdch : STD_LOGIC;
  signal wr_rst_busy_wrch : STD_LOGIC;
begin
\gaxi_full_lite.gread_ch.grach2.axi_rach\: entity work.\reg_access_fifo_fifo_generator_top__xdcDup__1\
     port map (
      I71(34 downto 0) => I71(34 downto 0),
      m_aclk => m_aclk,
      \m_axi_araddr[31]\(34 downto 0) => \m_axi_araddr[31]\(34 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      s_aclk => s_aclk,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      src_rst => inverted_reset,
      wr_rst_busy_rach => wr_rst_busy_rach
    );
\gaxi_full_lite.gread_ch.grdch2.axi_rdch\: entity work.\reg_access_fifo_fifo_generator_top__parameterized2\
     port map (
      ENA_dly_D => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_dly_D\,
      ENB_dly_D => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      POR_A => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A\,
      POR_B => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      m_aclk => m_aclk,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => wr_rst_busy_rdch,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      \s_axi_rdata[31]\(33 downto 0) => \s_axi_rdata[31]\(33 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      src_rst => inverted_reset
    );
\gaxi_full_lite.gwrite_ch.gwach2.axi_wach\: entity work.reg_access_fifo_fifo_generator_top
     port map (
      DI(34 downto 0) => DI(34 downto 0),
      Q(34 downto 0) => Q(34 downto 0),
      m_aclk => m_aclk,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      p_23_out => p_23_out,
      s_aclk => s_aclk,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      src_rst => inverted_reset
    );
\gaxi_full_lite.gwrite_ch.gwdch2.axi_wdch\: entity work.\reg_access_fifo_fifo_generator_top__parameterized0\
     port map (
      ENA_dly_D => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENA_dly_D\,
      ENB_dly_D => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ENB_dly_D\,
      POR_A => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_A\,
      POR_B => \grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      m_aclk => m_aclk,
      \m_axi_wdata[31]\(35 downto 0) => \m_axi_wdata[31]\(35 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \out\ => p_15_out,
      s_aclk => s_aclk,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      src_rst => inverted_reset
    );
\gaxi_full_lite.gwrite_ch.gwrch2.axi_wrch\: entity work.\reg_access_fifo_fifo_generator_top__parameterized1\
     port map (
      m_aclk => m_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      s_aclk => s_aclk,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      src_rst => inverted_reset,
      wr_rst_busy_wrch => wr_rst_busy_wrch
    );
\wr_rst_busy__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => wr_rst_busy_rach,
      I1 => wr_rst_busy_wrch,
      I2 => p_23_out,
      I3 => wr_rst_busy_rdch,
      I4 => p_15_out,
      O => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo_fifo_generator_v13_2_1 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 17 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 17 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 4;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 2;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of reg_access_fifo_fifo_generator_v13_2_1 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 35;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 34;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 35;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 36;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of reg_access_fifo_fifo_generator_v13_2_1 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of reg_access_fifo_fifo_generator_v13_2_1 : entity is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 11;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 12;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 11;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 12;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 11;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 12;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of reg_access_fifo_fifo_generator_v13_2_1 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 13;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of reg_access_fifo_fifo_generator_v13_2_1 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of reg_access_fifo_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of reg_access_fifo_fifo_generator_v13_2_1 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of reg_access_fifo_fifo_generator_v13_2_1 : entity is 1;
end reg_access_fifo_fifo_generator_v13_2_1;

architecture STRUCTURE of reg_access_fifo_fifo_generator_v13_2_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const1>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const0>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const0>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const0>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const0>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const0>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15) <= \<const0>\;
  dout(14) <= \<const0>\;
  dout(13) <= \<const0>\;
  dout(12) <= \<const0>\;
  dout(11) <= \<const0>\;
  dout(10) <= \<const0>\;
  dout(9) <= \<const0>\;
  dout(8) <= \<const0>\;
  dout(7) <= \<const0>\;
  dout(6) <= \<const0>\;
  dout(5) <= \<const0>\;
  dout(4) <= \<const0>\;
  dout(3) <= \<const0>\;
  dout(2) <= \<const0>\;
  dout(1) <= \<const0>\;
  dout(0) <= \<const0>\;
  empty <= \<const1>\;
  full <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const1>\;
  prog_full <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.reg_access_fifo_fifo_generator_v13_2_1_synth
     port map (
      DI(34 downto 3) => s_axi_awaddr(31 downto 0),
      DI(2 downto 0) => s_axi_awprot(2 downto 0),
      I71(34 downto 3) => s_axi_araddr(31 downto 0),
      I71(2 downto 0) => s_axi_arprot(2 downto 0),
      Q(34 downto 3) => m_axi_awaddr(31 downto 0),
      Q(2 downto 0) => m_axi_awprot(2 downto 0),
      m_aclk => m_aclk,
      \m_axi_araddr[31]\(34 downto 3) => m_axi_araddr(31 downto 0),
      \m_axi_araddr[31]\(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \m_axi_wdata[31]\(35 downto 4) => m_axi_wdata(31 downto 0),
      \m_axi_wdata[31]\(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      s_aclk => s_aclk,
      s_aresetn => s_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      \s_axi_rdata[31]\(33 downto 2) => s_axi_rdata(31 downto 0),
      \s_axi_rdata[31]\(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_access_fifo is
  port (
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of reg_access_fifo : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of reg_access_fifo : entity is "reg_access_fifo,fifo_generator_v13_2_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of reg_access_fifo : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of reg_access_fifo : entity is "fifo_generator_v13_2_1,Vivado 2017.4";
end reg_access_fifo;

architecture STRUCTURE of reg_access_fifo is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 4;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 2;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 18;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 35;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 34;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 35;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 36;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 18;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 1;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 11;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 12;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 11;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 12;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 11;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 12;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 2;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "4kx4";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1021;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 13;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 1022;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 15;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 1021;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of m_aclk : signal is "xilinx.com:signal:clock:1.0 master_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_aclk : signal is "XIL_INTERFACENAME master_aclk, ASSOCIATED_BUSIF M_AXIS:M_AXI, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute x_interface_info of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute x_interface_info of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute x_interface_info of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute x_interface_info of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute x_interface_info of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute x_interface_info of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute x_interface_info of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute x_interface_info of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute x_interface_info of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute x_interface_info of s_aclk : signal is "xilinx.com:signal:clock:1.0 slave_aclk CLK";
  attribute x_interface_parameter of s_aclk : signal is "XIL_INTERFACENAME slave_aclk, ASSOCIATED_BUSIF S_AXIS:S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of s_aresetn : signal is "xilinx.com:signal:reset:1.0 slave_aresetn RST";
  attribute x_interface_parameter of s_aresetn : signal is "XIL_INTERFACENAME slave_aresetn, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute x_interface_info of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute x_interface_info of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute x_interface_parameter of m_axi_awaddr : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute x_interface_info of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute x_interface_info of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute x_interface_info of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute x_interface_info of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute x_interface_info of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, BD_ATTRIBUTE.TYPE INTERIOR, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.reg_access_fifo_fifo_generator_v13_2_1
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => NLW_U0_data_count_UNCONNECTED(9 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(17 downto 0) => B"000000000000000000",
      dout(17 downto 0) => NLW_U0_dout_UNCONNECTED(17 downto 0),
      empty => NLW_U0_empty_UNCONNECTED,
      full => NLW_U0_full_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => m_aclk,
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(3 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(3 downto 0),
      m_axi_arlock(1 downto 0) => NLW_U0_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(3 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(3 downto 0),
      m_axi_awlock(1 downto 0) => NLW_U0_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => '0',
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(31 downto 0) => m_axi_wdata(31 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(3 downto 0) => m_axi_wstrb(3 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => '0',
      rd_data_count(9 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(9 downto 0),
      rd_en => '0',
      rd_rst => '0',
      rd_rst_busy => rd_rst_busy,
      rst => '0',
      s_aclk => s_aclk,
      s_aclk_en => '0',
      s_aresetn => s_aresetn,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(3 downto 0) => B"0000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(3 downto 0) => B"0000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid,
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(9 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(9 downto 0),
      wr_en => '0',
      wr_rst => '0',
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
