#!/usr/bin/bash
# join hv on rows
# join pi-udb with with hc on switch columns. Then sort by udb-b/a for joining with pair routing
# join dsi with udb array
join -1 1 -2 2 \
    <(cat pair | sort -k1 --reverse) \
    <(join -1 2 -2 2 \
        <(cat hv | sort -k2 --general-numeric-sort) \
        <(join -1 1 -2 1 hc <(paste pi-udb udb) | sort -k2 --general-numeric-sort) | sort -k2 --reverse \
    ) \
    | grep -v ' o ' | grep -v DSI \
    # | gawk --non-decimal-data '{printf(";# start\npsoc5lp.cpu mwb 0x%.8X 0x%.2X 1 ;# %s_%s\npsoc5lp.cpu mwb 0x%.8X 0x%.2X 1 ;# %s_%s\npsoc5lp.cpu mwb 0x%.8X 0x%.2X 1 ;# %s_%s\n", int(0x40010000+$5+$10),int(lshift(1,$9)),$6,$11, int(0x40010000+$5+$16),int(lshift(1,$15)),$6,$17, int(0x40010000+$5+$20),int(lshift(1,$19)),$6,$22)}'
