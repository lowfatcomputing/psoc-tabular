#!/usr/bin/bash
join -j3 udb pi-udb | join -1 1 -2 3 - hc | sort -k15 -g | join -1 15 -2 4 - <(join -j2 hv <(grep -v DSI pair | sort -k2 -g --reverse -) | sort -k4 -g) | sort -k21 -g | join -1 21 -2 2 - hs | sort -k2 -g | join -1 2 -2 2 - <(sort -g -k2 vs)

# TODO separate route to test script
