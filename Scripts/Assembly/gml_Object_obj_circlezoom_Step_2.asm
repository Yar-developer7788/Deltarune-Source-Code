.localvar 2 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.siner
push.e 1
add.i.v
pop.v.v self.siner
push.v self.x
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.x
push.v self.y
push.v self.siner
pushi.e 8
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.y
push.v self.zoomtimer
push.v self.zoomtimer
pushi.e 5
conv.i.d
div.d.v
pushi.e 16
add.i.v
add.v.v
pop.v.v self.zoomtimer
push.v self.zoomtimer
push.v self.zoomtime
cmp.v.v GTE
bf [3]

:[2]
push.v self.zoomtime
pop.v.v self.zoomtimer

:[3]
push.v self.zoomtimer
push.v self.zoomtime
div.v.v
pop.v.v self.lerpamount
push.v self.lerpamount
pushi.e 1
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.lerpamount

:[5]
push.v self.lerpamount
push.v self.endradius
push.v self.startradius
call.i lerp(argc=3)
pop.v.v self.radius

:[6]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [11]

:[7]
push.v self.radius
push.v self.endradius
cmp.v.v GT
bf [9]

:[8]
push.v self.radius
pushi.e 8
sub.i.v
pop.v.v self.radius

:[9]
push.v self.radius
pushi.e 0
cmp.i.v LTE
bf [11]

:[10]
pushi.e 0
pop.v.i self.radius

:[11]
push.v self.surf
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i draw_clear(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.radius
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_draw_set_blend_mode(argc=1)
popz.v
push.v self.finish
pushi.e 1
cmp.i.v EQ
bf [end]

:[12]
pushi.e 1
pop.v.i self.type
pushi.e 0
pop.v.i self.endradius
push.v self.zoomtime
pushi.e 100
add.i.v
pop.v.v self.zoomtime

:[end]