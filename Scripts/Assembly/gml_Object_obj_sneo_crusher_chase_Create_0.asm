.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 3
pop.v.i self.hp
pushi.e 200
pop.v.i self.offset
pushi.e 0
pop.v.i self.subindex
pushi.e 0
pop.v.i self.animtimer
push.i 16777215
pop.v.i self.drawcolor
pushi.e 0
pop.v.i self.flash
pushi.e 10
pop.v.i self.image_yscale
pushi.e 2
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.difficulty
call.i gml_Script_randomsign(argc=0)
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
call.i random_range(argc=2)
mul.v.v
pop.v.v self.slidedir
pushi.e 0
pop.v.i self.destroying
pushi.e 29
pop.v.i self.shoottimer
pushi.e -4
conv.i.v
pushi.e 4
conv.i.v
call.i choose(argc=2)
pop.v.v self.vspeed
push.v 872.y
pushi.e 60
sub.i.v
pop.v.v self.topy
push.v 872.y
pushi.e 60
add.i.v
pop.v.v self.bottomy
pushi.e 1
pop.v.i self.vbounce
pushi.e 1
pop.v.i self.updown
pushi.e 0
pop.v.i self.crushedObj
pushi.e 8
pop.v.i self.maxspeed
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.offsetCap
pushi.e 0
pop.v.i self.crushtimer
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.pushback
push.v self.depth
pop.v.v self.startdepth
pushi.e 0
pop.v.i self.flashsiner

:[end]