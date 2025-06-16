.localvar 2 arguments
.localvar 37903 yy_top 19259
.localvar 37904 yy_bottom 19260
.localvar 37905 bigi 19261
.localvar 37906 midi 19262
.localvar 37907 smalli 19263

:[0]
pushi.e 0
pop.v.i self.called
pushi.e 0
pop.v.i self.extra
pushbltn.v builtin.room
pushi.e 176
cmp.i.v EQ
bf [2]

:[1]
pushbltn.v builtin.room_height
pushi.e 1500
add.i.v
pop.v.v self.extra

:[2]
call.i gml_Script_cameray(argc=0)
push.v self.autoamount
sub.v.v
pushbltn.v builtin.room_height
push.v self.extra
add.v.v
div.v.v
pushi.e 1000
mul.i.v
pop.v.v self.modifier
call.i gml_Script_cameray(argc=0)
pushi.e 180
sub.i.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local.yy_top
call.i gml_Script_cameray(argc=0)
pushi.e 580
add.i.v
pop.v.v local.yy_bottom
pushi.e 0
pop.v.i local.bigi
pushi.e 0
pop.v.i local.midi
pushi.e 0
pop.v.i local.smalli
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
push.v self.squarecount
cmp.v.v LTE
bf [9]

:[4]
push.v self.i
push.v self.modifier
add.v.v
pushloc.v local.yy_top
cmp.v.v GT
bf [6]

:[5]
push.v self.called
pushi.e 2
add.i.v
pop.v.v self.called
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.i
push.v self.modifier
add.v.v
pushi.e 34
conv.i.v
pushi.e 0
conv.i.v
push.v self.big
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.i
push.v self.modifier
add.v.v
pushi.e 582
conv.i.v
pushi.e 0
conv.i.v
push.v self.big
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.i
push.v self.modifier
add.v.v
pushi.e 100
add.i.v
pushloc.v local.yy_bottom
cmp.v.v GT
bf [8]

:[7]
b [9]

:[8]
push.v self.i
push.v self.bigheight
add.v.v
pop.v.v self.i
b [3]

:[9]
pushloc.v local.midi
pop.v.v self.i

:[10]
push.v self.i
push.v self.squarecount
cmp.v.v LTE
bf [16]

:[11]
push.v self.i
push.v self.modifier
pushi.e 2
mul.i.v
add.v.v
pushloc.v local.yy_top
cmp.v.v GT
bf [13]

:[12]
push.v self.called
pushi.e 2
add.i.v
pop.v.v self.called
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.i
push.v self.modifier
pushi.e 2
mul.i.v
add.v.v
pushi.e 82
conv.i.v
pushi.e 0
conv.i.v
push.v self.mid
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.i
push.v self.modifier
pushi.e 2
mul.i.v
add.v.v
pushi.e 544
conv.i.v
pushi.e 0
conv.i.v
push.v self.mid
call.i draw_sprite_ext(argc=9)
popz.v

:[13]
push.v self.i
push.v self.modifier
add.v.v
pushi.e 100
add.i.v
pushloc.v local.yy_bottom
cmp.v.v GT
bf [15]

:[14]
b [16]

:[15]
push.v self.i
push.v self.midheight
add.v.v
pop.v.v self.i
b [10]

:[16]
pushloc.v local.smalli
pop.v.v self.i

:[17]
push.v self.i
push.v self.squarecount
cmp.v.v LTE
bf [end]

:[18]
push.v self.i
push.v self.modifier
pushi.e 3
mul.i.v
add.v.v
pushloc.v local.yy_top
cmp.v.v GT
bf [20]

:[19]
push.v self.called
pushi.e 2
add.i.v
pop.v.v self.called
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.i
push.v self.modifier
pushi.e 3
mul.i.v
add.v.v
pushi.e 112
conv.i.v
pushi.e 0
conv.i.v
push.v self.smol
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.i
push.v self.modifier
pushi.e 3
mul.i.v
add.v.v
pushi.e 521
conv.i.v
pushi.e 0
conv.i.v
push.v self.smol
call.i draw_sprite_ext(argc=9)
popz.v

:[20]
push.v self.i
push.v self.modifier
add.v.v
pushi.e 100
add.i.v
pushloc.v local.yy_bottom
cmp.v.v GT
bf [22]

:[21]
b [end]

:[22]
push.v self.i
push.v self.smallheight
add.v.v
pop.v.v self.i
b [17]

:[end]