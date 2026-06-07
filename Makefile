ZMK_CONFIG=$(shell readlink -f config/)

left:
	west build -s zmk/app/ -p -d build/left -b "xiao_ble//zmk"  -- -DZMK_CONFIG=${ZMK_CONFIG} -DSHIELD="totem_left rgbled_adapter"

right:
	west build -s zmk/app/ -p -d build/right -b "xiao_ble//zmk"  -- -DZMK_CONFIG=${ZMK_CONFIG} -DSHIELD="totem_right rgbled_adapter"

all: left right

default: all

init:
	west init -l config
	west update
