.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.b self.reached
push.v self.x
pop.v.v self.startX
push.v self.y
pop.v.v self.startY
push.d 0.01
pop.v.d self.image_alpha
push.v self.y
pushi.e 300
sub.i.v
pop.v.v self.y
pushbltn.v builtin.room
pushi.e 217
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
pushi.e 200
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.dontalpha

:[2]
pushi.e 16
pop.v.i self.fallspeed
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.dontalpha
push.v self.dontalpha
pushi.e 0
cmp.i.v NEQ
bf [end]

:[3]
pushi.e 1
pop.v.i self.image_alpha

:[end]