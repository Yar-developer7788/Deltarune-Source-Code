.localvar 2 arguments

:[0]
push.v self.id
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 0
pop.v.i self.siner
pushi.e 30
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.flip_timer
pushi.e 0
pop.v.i self.mode
call.i gml_Script_cameray(argc=0)
pop.v.v self.remcameray
pushi.e 1
pop.v.i self.blend
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 0
pop.v.i self.breakable
pushi.e 0
pop.v.i self.attached
pushi.e 350
pop.v.i self.attachedobj
pushi.e -1
pop.v.i self.balloonid
pushbltn.v builtin.room
pushi.e 145
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3041
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.mode

:[2]
pushi.e 0
pop.v.i self.paused
push.v self.hspeed
pop.v.v self.rem_hspeed
push.v self.friction
pop.v.v self.rem_friction
push.v self.gravity
pop.v.v self.rem_gravity

:[end]