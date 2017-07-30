#psoc-tabular | psoc switching in tabular format for easier parsing & analysis

`hva-by-row` and `hvb-by-row` are sorted by horizontal wire (row). These are the fields:

    col row bit back_reg forw_reg

`hc` connect to the UDB block: PLD0 input, PLD0 output, PLD1 output, PLD1 input, datapath, status, control, and clocking/reset.

    col row direction bit reg

`d` means forw/back
`n` means the hc switch is below a UDB output

##HS - Horizontal Segmentation

`hs` traverses to another UDB pair horizontally. It it situated between the left and right hv blocks of a pair.

    row bit back_reg forw_reg

