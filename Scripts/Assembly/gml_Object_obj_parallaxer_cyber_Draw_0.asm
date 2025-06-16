.localvar 2 arguments
.localvar 107 i 7800

:[0]
push.v self.drawblack
conv.v.b
bf [5]

:[1]
pushi.e 0
pop.v.i local.i
push.d 0.3
conv.d.v
push.i 8388608
conv.i.v
push.i 4210752
conv.i.v
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e 600
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 360
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 40
conv.i.d
div.d.v
sub.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.d 0.3
conv.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [4]

:[3]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i gml_Script_cameray(argc=0)
pushi.e 600
add.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 720
add.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 340
add.i.v
pushloc.v local.i
pushi.e 20
mul.i.v
add.v.v
call.i gml_Script_camerax(argc=0)
pushi.e 80
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[5]
pushbltn.v builtin.room
pushi.e 89
cmp.i.v EQ
bf [22]

:[6]
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [9]

:[8]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.9
conv.d.v
pushi.e 43
conv.i.v
pushi.e 244
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [7]

:[9]
pushi.e 0
pop.v.i local.i

:[10]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [12]

:[11]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 43
conv.i.v
pushi.e 280
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [10]

:[12]
pushi.e 0
pop.v.i local.i

:[13]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [15]

:[14]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 43
conv.i.v
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [13]

:[15]
pushi.e 0
pop.v.i local.i

:[16]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [18]

:[17]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 43
conv.i.v
pushi.e 360
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [16]

:[18]
pushi.e 0
pop.v.i local.i

:[19]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [21]

:[20]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 43
conv.i.v
pushi.e 400
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [19]

:[21]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushi.e 10
add.i.v
pushi.e 2000
conv.i.v
pushi.e 360
conv.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[22]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [end]

:[23]
pushi.e 0
pop.v.i local.i

:[24]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [26]

:[25]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2480
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [24]

:[26]
pushi.e 0
pop.v.i local.i

:[27]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [29]

:[28]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2440
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [27]

:[29]
pushi.e 0
pop.v.i local.i

:[30]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [32]

:[31]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2400
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [30]

:[32]
pushi.e 0
pop.v.i local.i

:[33]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [35]

:[34]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2360
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [33]

:[35]
pushi.e 0
pop.v.i local.i

:[36]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [38]

:[37]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [36]

:[38]
pushi.e 0
pop.v.i local.i

:[39]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [41]

:[40]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 840
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [39]

:[41]
pushi.e 0
pop.v.i local.i

:[42]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [44]

:[43]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 880
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [42]

:[44]
pushi.e 0
pop.v.i local.i

:[45]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [47]

:[46]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 920
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [45]

:[47]
pushi.e 0
pop.v.i local.i

:[48]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [50]

:[49]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 960
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [48]

:[50]
pushi.e 0
pop.v.i local.i

:[51]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [end]

:[52]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1000
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2731
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [51]

:[end]