ZMK_CONFIG=$(shell readlink -f config/)

left:
	west build -s zmk/app/ -p -d build/left -b "seeeduino_xiao_ble"  -- -DZMK_CONFIG=${ZMK_CONFIG} -DSHIELD="totem_left rgbled_adapter"

right:
	west build -s zmk/app/ -p -d build/right -b "seeeduino_xiao_ble"  -- -DZMK_CONFIG=${ZMK_CONFIG} -DSHIELD="totem_right rgbled_adapter"

all: left right

default: all
