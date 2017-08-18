# psoc-tabular | psoc switching in tabular format for easier parsing & analysis

## HV - Horizontal-to-Vertical

    :hv udb-a/b row col bit reg_offset reg_name direction

## HC - Horizontal Channel

`hc` connect to the UDB block: PLD0 input, PLD0 output, PLD1 output, PLD1 input, datapath, status, control, and clocking/reset.

    :hc i/o col row bit reg name

`i` means the hc switch is between udb inputs
`o` means the hc switch is between udb outputs

## HS - Horizontal Segmentation

`hs` traverse to another UDB pair horizontally. They are situated between the left and right hv blocks of a pair.

    :hs row bit back_reg forw_reg

## VS - Vertical Segmentation

`vs` traverse to another routing pair vertically. They are situated above and below the HV blocks in an interlocking pattern with respect to Pair B's and Pair A's.

    :vs col b/a top/bot bit back_reg forw_reg

## pair - Pair Routing

Routing pairs follow a checkerboard pattern starting with **b** in the top left corner. This is important for selecting **hva** or **hvb**.

    :pair_routing row col b/a bank reg name

## pi-udb - Port Interfacing between Horizontal Channel and UDB's

    :pi_udb i/o col u/l bit reg i/o name

## udb - internal udb logic

    :udb col bit 0x80 0x00 IT0

You will notice two registers for each IT. The +0x80 register is for U1 UDB's and the other is for U0 UDB's.

## pi-dsi - Port Interfacing between Horizontal Channel and UDB's

    :pi_dsi col (shorted with) reg'bit name

# contact

I'm Andreas Wagner, you can email me at andreas.wagner@lowfatcomputing.org or ping me (pointfree) on freenode.

