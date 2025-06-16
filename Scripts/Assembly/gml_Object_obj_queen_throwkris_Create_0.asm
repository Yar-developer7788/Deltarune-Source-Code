.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.angle
pushi.e 1
pop.v.i self.throwcon
pushi.e 1
pop.v.i self.angledraw
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 300
pop.v.i self.radius
pushi.e 2
pop.v.i self.anglespeed
pushi.e 184
call.i gml_Script_camerax(argc=0)
add.v.i
pop.v.v self.kx
pushi.e 170
call.i gml_Script_cameray(argc=0)
add.v.i
pop.v.v self.ky
call.i gml_Script_camerax(argc=0)
pop.v.v self.lx
call.i gml_Script_cameray(argc=0)
pop.v.v self.ly
push.i 170549
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 999
pop.v.v [array]self.krisyoff
pushi.e 1
pop.v.i self.krisgrav
pushi.e 0
pop.v.i self.fro
pushi.e 15
pop.v.i self.mypower
pushi.e 30
pop.v.i self.maxpower
push.v self.maxpower
pop.v.v self.mypower
pushi.e 15
pop.v.i self.minpower
pushi.e 1
pop.v.i self.powerdir
push.d 0.6
pop.v.d self.powerspeed
pushi.e 0
pop.v.i self.throwready
pushi.e 0
pop.v.i self.throwalpha
pushi.e 0
pop.v.i self.activatethrow
pushi.e 0
pop.v.i self.throwXcon
pushi.e 0
pop.v.i self.throwXtimer
pushi.e 50
pop.v.i self.ralseiy

:[end]