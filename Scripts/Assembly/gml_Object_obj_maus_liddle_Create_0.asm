.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.fakegrav
pushi.e 0
pop.v.i self.fakey
pushi.e 0
pop.v.i self.fakeyspeed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e -6
conv.i.v
pushi.e -16
conv.i.v
call.i random_range(argc=2)
pop.v.v self.hspeed
pushi.e 3
conv.i.v
pushi.e -3
conv.i.v
call.i random_range(argc=2)
pop.v.v self.vspeed
pushi.e -2
pushi.e 8
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.fakeyspeed
pushi.e 1
pop.v.i self.fakegrav
pushi.e 1
pop.v.i self.sineradd
pushi.e 8
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 0
pop.v.i self.amplitude
pushi.e 9
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.maxamplitude
call.i gml_Script_camerax(argc=0)
pop.v.v self.xx
call.i gml_Script_cameray(argc=0)
pop.v.v self.yy
pushi.e 768
pop.v.i self.creator
pushi.e 0
pop.v.i self.captured

:[end]