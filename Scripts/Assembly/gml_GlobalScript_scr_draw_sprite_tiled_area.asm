.localvar 2 arguments
.localvar 9580 sprite 2716
.localvar 10804 subimg 2717
.localvar 6482 xx 2718
.localvar 6483 yy 2719
.localvar 10805 x1 2720
.localvar 10806 y1 2721
.localvar 10807 x2 2722
.localvar 10808 y2 2723
.localvar 10809 xscale 2724
.localvar 10810 yscale 2725
.localvar 10811 col 2726
.localvar 10812 alpha 2727
.localvar 10813 sw 2728
.localvar 10814 sh 2729
.localvar 107 i 2730
.localvar 220 j 2731
.localvar 10815 jj 2732
.localvar 5994 left 2733
.localvar 5605 X 2734
.localvar 6226 top 2735
.localvar 5384 Y 2736
.localvar 6665 width 2737
.localvar 10816 height 2738

:[0]
b [26]

> gml_Script_scr_draw_sprite_tiled_area (locals=23, argc=0)
:[1]
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v local.sprite
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v local.subimg
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v local.xx
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v local.yy
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v local.x1
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v local.y1
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v local.x2
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v local.y2
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v local.xscale
pushi.e -15
pushi.e 9
push.v [array]self.argument
pop.v.v local.yscale
pushbltn.v builtin.argument_count
pushi.e 10
cmp.i.v GT
bf [3]

:[2]
pushi.e -15
pushi.e 10
push.v [array]self.argument
b [4]

:[3]
push.i 16777215
conv.i.v

:[4]
pop.v.v local.col
pushbltn.v builtin.argument_count
pushi.e 11
cmp.i.v GT
bf [6]

:[5]
pushi.e -15
pushi.e 11
push.v [array]self.argument
b [7]

:[6]
pushi.e 1
conv.i.v

:[7]
pop.v.v local.alpha
pushloc.v local.sprite
call.i sprite_get_width(argc=1)
pushloc.v local.xscale
mul.v.v
pop.v.v local.sw
pushloc.v local.sprite
call.i sprite_get_height(argc=1)
pushloc.v local.yscale
mul.v.v
pop.v.v local.sh
pushloc.v local.x1
pushloc.v local.x1
pushloc.v local.sw
mod.v.v
pushloc.v local.xx
pushloc.v local.sw
mod.v.v
sub.v.v
sub.v.v
pushloc.v local.sw
pushloc.v local.x1
pushloc.v local.sw
mod.v.v
pushloc.v local.xx
pushloc.v local.sw
mod.v.v
cmp.v.v LT
conv.b.i
mul.i.v
sub.v.v
pop.v.v local.i
pushloc.v local.y1
pushloc.v local.y1
pushloc.v local.sh
mod.v.v
pushloc.v local.yy
pushloc.v local.sh
mod.v.v
sub.v.v
sub.v.v
pushloc.v local.sh
pushloc.v local.y1
pushloc.v local.sh
mod.v.v
pushloc.v local.yy
pushloc.v local.sh
mod.v.v
cmp.v.v LT
conv.b.i
mul.i.v
sub.v.v
pop.v.v local.j
pushloc.v local.j
pop.v.v local.jj

:[8]
pushloc.v local.i
pushloc.v local.x2
cmp.v.v LTE
bf [24]

:[9]
pushloc.v local.j
pushloc.v local.y2
cmp.v.v LTE
bf [23]

:[10]
pushloc.v local.i
pushloc.v local.x1
cmp.v.v LTE
bf [12]

:[11]
pushloc.v local.x1
pushloc.v local.i
sub.v.v
pop.v.v local.left
b [13]

:[12]
pushi.e 0
pop.v.i local.left

:[13]
pushloc.v local.i
pushloc.v local.left
add.v.v
pop.v.v local.X
pushloc.v local.j
pushloc.v local.y1
cmp.v.v LTE
bf [15]

:[14]
pushloc.v local.y1
pushloc.v local.j
sub.v.v
pop.v.v local.top
b [16]

:[15]
pushi.e 0
pop.v.i local.top

:[16]
pushloc.v local.j
pushloc.v local.top
add.v.v
pop.v.v local.Y
pushloc.v local.x2
pushloc.v local.i
pushloc.v local.sw
add.v.v
cmp.v.v LTE
bf [18]

:[17]
pushloc.v local.sw
pushloc.v local.i
pushloc.v local.sw
add.v.v
pushloc.v local.x2
sub.v.v
sub.v.v
pushi.e 1
add.i.v
pushloc.v local.left
sub.v.v
pop.v.v local.width
b [19]

:[18]
pushloc.v local.sw
pushloc.v local.left
sub.v.v
pop.v.v local.width

:[19]
pushloc.v local.y2
pushloc.v local.j
pushloc.v local.sh
add.v.v
cmp.v.v LTE
bf [21]

:[20]
pushloc.v local.sh
pushloc.v local.j
pushloc.v local.sh
add.v.v
pushloc.v local.y2
sub.v.v
sub.v.v
pushi.e 1
add.i.v
pushloc.v local.top
sub.v.v
pop.v.v local.height
b [22]

:[21]
pushloc.v local.sh
pushloc.v local.top
sub.v.v
pop.v.v local.height

:[22]
pushloc.v local.alpha
pushloc.v local.col
pushloc.v local.yscale
pushloc.v local.xscale
pushloc.v local.Y
pushloc.v local.X
pushloc.v local.height
pushloc.v local.width
pushloc.v local.top
pushloc.v local.left
pushloc.v local.subimg
pushloc.v local.sprite
call.i draw_sprite_part_ext(argc=12)
popz.v
push.v local.j
pushloc.v local.sh
add.v.v
pop.v.v local.j
b [9]

:[23]
pushloc.v local.jj
pop.v.v local.j
push.v local.i
pushloc.v local.sw
add.v.v
pop.v.v local.i
b [8]

:[24]
pushi.e 0
conv.i.v
ret.v

:[25]
exit.i

:[26]
push.i [function]gml_Script_scr_draw_sprite_tiled_area
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_draw_sprite_tiled_area
popz.v

:[end]