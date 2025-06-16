.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 36
pop.v.i self.holeoffset
pushi.e 100
pop.v.i self.sideoffset
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
push.i 170488
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.maushole
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.mausqueue
pushi.e 5
pop.v.i self.preptimer
push.v self.depth
pushi.e 9
add.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.bigmaus
pushi.e 0
pop.v.i self.dontcreatemouse
pushi.e 0
pop.v.i self.shaky

:[end]