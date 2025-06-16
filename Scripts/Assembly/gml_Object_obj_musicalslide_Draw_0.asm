.localvar 2 arguments
.localvar 36486 _camY 17998
.localvar 11629 _lane 17999
.localvar 36491 _laneX 18000
.localvar 36493 _laneEnd 18001

:[0]
call.i gml_Script_cameray(argc=0)
pop.v.v local._camY
pushi.e 0
pop.v.i local._lane

:[1]
pushloc.v local._lane
push.v self.lanesCount
pushi.e 1
add.i.v
cmp.v.v LT
bf [10]

:[2]
push.v self.lanesX
pushloc.v local._lane
push.v self.lanesWidth
mul.v.v
add.v.v
pop.v.v local._laneX
pushloc.v local._lane
pushi.e 2
mod.i.v
conv.v.b
bf [4]

:[3]
push.v self.lanesFadein
push.d 0.2
mul.d.v
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushi.e 20
add.i.v
push.v self.lanesWidth
pushi.e -10
conv.i.v
pushloc.v local._laneX
pushi.e 0
conv.i.v
pushi.e 2616
conv.i.v
call.i draw_sprite_stretched_ext(argc=8)
popz.v

:[4]
pushloc.v local._lane
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushloc.v local._lane
pushi.e 4
cmp.i.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.v self.lanesFadein
push.i 8421504
conv.i.v
pushbltn.v builtin.room_height
pushi.e 20
add.i.v
pushi.e 2
conv.i.v
pushi.e -10
conv.i.v
pushloc.v local._laneX
pushi.e 0
conv.i.v
pushi.e 2616
conv.i.v
call.i draw_sprite_stretched_ext(argc=8)
popz.v

:[9]
push.v local._lane
push.e 1
add.i.v
pop.v.v local._lane
b [1]

:[10]
pushi.e 1
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
push.v self.lanesEndFadein
call.i gml_Script_ease_out_quart(argc=4)
pop.v.v local._laneEnd
pushloc.v local._camY
push.v self.lanesEndY
add.v.v
pushi.e 100
add.i.v
pushloc.v local._laneEnd
sub.v.v
pop.v.v local._laneEnd
push.v self.lanesFadein
push.i 8421504
conv.i.v
pushi.e 4
conv.i.v
pushbltn.v builtin.room_width
pushloc.v local._laneEnd
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2616
conv.i.v
call.i draw_sprite_stretched_ext(argc=8)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]