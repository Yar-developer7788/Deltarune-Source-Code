.localvar 2 arguments

:[0]
push.v 729.thrash
pop.v.v self.thrash
pushi.e 0
pop.v.i self.btimer
pushi.e 0
pop.v.i self.shotcount
pushi.e 1
pop.v.i self.shotbuffer
pushi.e 0
pop.v.i self.siner
pushi.e 4
pop.v.i self.damage
call.i gml_Script_randomsign(argc=0)
pop.v.v self.flip
pushi.e 0
pop.v.i self.attackangle
pushi.e -1
pop.v.i self.damage
pushi.e -1
pop.v.i self.target
pushi.e 4
pop.v.i self.grazepoints
pushi.e 0
pop.v.i self.difficulty
pushi.e 0
pop.v.i self.shotfired
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i random_range(argc=2)
pop.v.v self.initialspeed

:[end]