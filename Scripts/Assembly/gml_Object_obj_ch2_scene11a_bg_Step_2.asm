.localvar 2 arguments
.localvar 19831 drawx 16187
.localvar 107 i 16188

:[0]
call.i gml_Script_camerax(argc=0)
call.i gml_Script_cameray(argc=0)
pushi.e 10
conv.i.d
div.d.v
sub.v.v
pop.v.v local.drawx
push.v self.parallax
conv.v.b
bf [2]

:[1]
pushloc.v local.drawx
push.v self.cityscape_bg_1
pushi.e -9
pop.v.v [stacktop]self.x_pos
pushloc.v local.drawx
push.d 0.9
mul.d.v
push.v self.cityscape_bg_2
pushi.e -9
pop.v.v [stacktop]self.x_pos

:[2]
push.v self.looping
conv.v.b
bf [6]

:[3]
pushi.e 0
pop.v.b self.looping
push.d -0.5
push.v self.cityscape_bg_1
pushi.e -9
pop.v.d [stacktop]self.x_speed
pushi.e -1
push.v self.cityscape_bg_2
pushi.e -9
pop.v.i [stacktop]self.x_speed
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [6]

:[5]
push.i 234193
setowner.e
pushi.e -15
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.coaster_track
pushi.e -9
pop.v.i [stacktop]self.x_speed
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [4]

:[6]
push.v self.fountain_active
conv.v.b
bf [end]

:[7]
call.i gml_Script_camerax(argc=0)
pushi.e 25
add.i.v
push.v self.fountain
pushi.e -9
pop.v.v [stacktop]self.x

:[end]