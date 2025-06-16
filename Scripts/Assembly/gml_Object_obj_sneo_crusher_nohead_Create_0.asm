.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 3
pop.v.i self.hp
pushi.e 0
pop.v.i self.vspeed
push.d 0.4
pop.v.d self.haccel
pushi.e -6
pushi.e 0
push.v [array]self.view_yview
pushi.e 110
add.i.v
pop.v.v self.topy
pushi.e -6
pushi.e 0
push.v [array]self.view_yview
pushi.e 220
add.i.v
pop.v.v self.bottomy
pushi.e 1
pop.v.i self.vbounce
pushi.e 20
pop.v.i self.hurtboxsize
pushi.e 2
pop.v.i self.mode
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.turrettimer
pushi.e 1
pop.v.i self.column
pushi.e 0
pop.v.i self.siner
pushi.e 8
pop.v.i self.amplitude
pushi.e 2
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.destroyonhit
push.v 631.depth
pushi.e 100
add.i.v
pop.v.v self.depth

:[end]