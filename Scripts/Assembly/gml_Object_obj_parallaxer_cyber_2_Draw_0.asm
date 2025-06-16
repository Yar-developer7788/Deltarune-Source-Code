.localvar 2 arguments
.localvar 107 i 7813

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
bt [8]

:[6]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bt [8]

:[7]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [26]

:[10]
pushi.e 0
pop.v.i local.i

:[11]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [13]

:[12]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.9
conv.d.v
push.v self.room_scale
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
b [11]

:[13]
pushi.e 0
pop.v.i local.i

:[14]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [16]

:[15]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
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
b [14]

:[16]
pushi.e 0
pop.v.i local.i

:[17]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [19]

:[18]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
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
b [17]

:[19]
pushi.e 0
pop.v.i local.i

:[20]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [22]

:[21]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
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
b [20]

:[22]
pushi.e 0
pop.v.i local.i

:[23]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [25]

:[24]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
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
b [23]

:[25]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
pushbltn.v builtin.room_height
pushi.e 10
add.i.v
pushbltn.v builtin.room_width
pushi.e 360
conv.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[26]
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [43]

:[27]
pushi.e 0
pop.v.i local.i

:[28]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [30]

:[29]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.d 0.9
conv.d.v
push.v self.room_scale
pushi.e 8744
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
b [28]

:[30]
pushi.e 0
pop.v.i local.i

:[31]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [33]

:[32]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
pushi.e 8780
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
b [31]

:[33]
pushi.e 0
pop.v.i local.i

:[34]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [36]

:[35]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
pushi.e 8820
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
b [34]

:[36]
pushi.e 0
pop.v.i local.i

:[37]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [39]

:[38]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
pushi.e 8860
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
b [37]

:[39]
pushi.e 0
pop.v.i local.i

:[40]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [42]

:[41]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v self.room_scale
pushi.e 8900
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
b [40]

:[42]
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
pushi.e 8860
conv.i.v
pushi.e -100
conv.i.v
call.i draw_rectangle(argc=5)
popz.v

:[43]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [end]

:[44]
pushi.e 0
pop.v.i local.i

:[45]
pushloc.v local.i
pushi.e 9
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
b [45]

:[47]
pushi.e 0
pop.v.i local.i

:[48]
pushloc.v local.i
pushi.e 7
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
b [48]

:[50]
pushi.e 0
pop.v.i local.i

:[51]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [53]

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
b [51]

:[53]
pushi.e 0
pop.v.i local.i

:[54]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [56]

:[55]
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
b [54]

:[56]
pushi.e 0
pop.v.i local.i

:[57]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [59]

:[58]
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
b [57]

:[59]
pushi.e 0
pop.v.i local.i

:[60]
pushloc.v local.i
pushi.e 9
cmp.i.v LT
bf [62]

:[61]
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
b [60]

:[62]
pushi.e 0
pop.v.i local.i

:[63]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [65]

:[64]
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
b [63]

:[65]
pushi.e 0
pop.v.i local.i

:[66]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [68]

:[67]
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
b [66]

:[68]
pushi.e 0
pop.v.i local.i

:[69]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [71]

:[70]
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
b [69]

:[71]
pushi.e 0
pop.v.i local.i

:[72]
pushloc.v local.i
pushi.e 1
cmp.i.v LT
bf [end]

:[73]
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
b [72]

:[end]