#psoc-tabular | psoc switching in tabular format for easier parsing & analysis

##HV - Horizontal-to-Vertical

`hva-by-row` and `hvb-by-row` are sorted by horizontal wire (row). These are the fields:

    col row bit back_reg forw_reg

##HC - Horizontal Channel

`hc` connect to the UDB block: PLD0 input, PLD0 output, PLD1 output, PLD1 input, datapath, status, control, and clocking/reset.

    col row direction bit reg

`d` means forw/back
`n` means the hc switch is below a UDB output

##HS - Horizontal Segmentation

`hs` traverse to another UDB pair horizontally. They are situated between the left and right hv blocks of a pair.

    row bit back_reg forw_reg

##VS - Vertical Segmentation

`vs` traverse to another UDB pair vertically. They are situated above and below the HV blocks in an interlocking pattern with respect to UDBB's and UDBA's.

    col udb-a/b top/bot bit back_reg forw_reg

