.localvar 2 arguments

:[0]
push.v self.track1_x
pushi.e 4
add.i.v
pop.v.v self.track1_x
push.v self.track2_x
pushi.e 4
add.i.v
pop.v.v self.track2_x
push.v self.track3_x
pushi.e 4
add.i.v
pop.v.v self.track3_x
push.v self.track1_x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v GT
bf [2]

:[1]
push.v self.track1_x
pushi.e 960
sub.i.v
pop.v.v self.track1_x

:[2]
push.v self.track2_x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v GT
bf [4]

:[3]
push.v self.track2_x
pushi.e 960
sub.i.v
pop.v.v self.track2_x

:[4]
push.v self.track3_x
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
cmp.v.v GT
bf [6]

:[5]
push.v self.track3_x
pushi.e 960
sub.i.v
pop.v.v self.track3_x

:[6]
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
pushi.e 180
sub.i.v
push.v self.track1_x
pushi.e 0
conv.i.v
pushi.e 3315
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
pushi.e 180
sub.i.v
push.v self.track2_x
pushi.e 0
conv.i.v
pushi.e 3315
conv.i.v
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_cameray(argc=0)
call.i gml_Script_cameraheight(argc=0)
add.v.v
pushi.e 180
sub.i.v
push.v self.track3_x
pushi.e 0
conv.i.v
pushi.e 3315
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]