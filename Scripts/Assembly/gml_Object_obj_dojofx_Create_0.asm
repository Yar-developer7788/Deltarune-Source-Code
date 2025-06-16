.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.inbattle
pushi.e 2287
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.ball
pushi.e 5000
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.depth
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
push.v self.ball
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 0
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.y
push.d 0.18
push.v self.ball
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 2289
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.ballback
pushi.e 1
pop.v.i self.drawalpha
push.i 1100000
pop.v.i self.depth
pushi.e 0
pop.v.i self.bsiner
pushi.e 286
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]