#!/usr/bin/bash
join -j3 udb pi-udb | join -1 1 -2 3 - hc | sort -k15 -g | join -1 15 -2 4 - <(join -j2 hv <(grep -v DSI pair | sort -k2 -g --reverse -) | sort -k4 -g) | sort -k21 -g | join -1 21 -22 - hs

# TODO separate route to test script
