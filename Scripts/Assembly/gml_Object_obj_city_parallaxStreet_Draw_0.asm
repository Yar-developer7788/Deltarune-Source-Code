.localvar 2 arguments
.localvar 107 i 19508
.localvar 220 j 19509
.localvar 14921 y_offset 19510
.localvar 14550 ypos 19511
.localvar 15466 xpos 19512

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.auto
add.v.v
push.v self.ss
mul.v.v
push.v self.xstart
add.v.v
pop.v.v self.drawx
pushi.e 1
conv.i.v
push.v self.c_dark
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushbltn.v builtin.room_width
push.v self.y
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v self.drawx
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i gml_Script_scr_draw_sprite_tiled_area(argc=12)
popz.v
push.v self.animsiner
push.e 1
add.i.v
pop.v.v self.animsiner
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.max_cars
cmp.v.v LT
bf [end]

:[2]
pushi.e 0
pop.v.i local.j

:[3]
pushloc.v local.j
pushi.e 2
cmp.i.v LT
bf [17]

:[4]
pushi.e 0
pop.v.i local.y_offset
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bt [6]

:[5]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e -20
pop.v.i local.y_offset

:[9]
pushloc.v local.j
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 404
pushloc.v local.y_offset
add.v.i
b [12]

:[11]
pushi.e 444
conv.i.v

:[12]
pop.v.v local.ypos
push.i 175024
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.car_timer
pushloc.v local.j
conv.v.i
dup.i 4
savearef.e
pushaf.e
pushi.e 5
add.i.v
restorearef.e
dup.i 4 40
popaf.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.car_pos
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.car_timer
pushloc.v local.j
conv.v.i
pushaf.e
add.v.v
pushbltn.v builtin.room_width
pushi.e 2
mul.i.v
pushi.e 50
add.i.v
cmp.v.v GT
bf [14]

:[13]
push.i 175029
setowner.e
pushi.e -50
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.car_pos
pushloc.v local.j
conv.v.i
popaf.e
push.i 175024
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.car_timer
pushloc.v local.j
conv.v.i
popaf.e

:[14]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.car_pos
pushloc.v local.j
conv.v.i
pushaf.e
push.v self.drawx
add.v.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.car_timer
pushloc.v local.j
conv.v.i
pushaf.e
add.v.v
pop.v.v local.xpos
push.v self.nocars
pushi.e 0
cmp.b.v EQ
bf [16]

:[15]
pushi.e 1
conv.i.v
push.v self.c_dark
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local.ypos
pushloc.v local.xpos
push.v self.animsiner
pushi.e 6
conv.i.d
div.d.v
pushi.e 2216
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [3]

:[17]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]