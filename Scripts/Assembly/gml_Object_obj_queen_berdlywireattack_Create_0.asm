.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.m
pushi.e 26
pop.v.i self.hangx
pushi.e -58
pop.v.i self.hangy
push.v self.hangy
pop.v.v self.init_hangy
push.v self.hangx
pop.v.v self.remx
pushi.e 170
pop.v.i global.turntimer
pushi.e 0
pop.v.i self.hangsparktimer
pushi.e 2
pop.v.i self.shootmode
pushi.e 0
pop.v.i self.xmovement_finished
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 260
add.i.v
pop.v.v self.targetx
pushi.e 0
pop.v.i self.hangvspeed
pushi.e 0
pop.v.i self.hanghspeed
pushi.e 1
pop.v.i self.hangcon
pushi.e 0
pop.v.i self.hangsiner
pushi.e 231
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.b self.active

:[end]