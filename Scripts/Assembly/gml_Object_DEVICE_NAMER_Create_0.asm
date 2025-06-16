.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.TIMER
pushi.e 0
pop.v.i self.HEARTMADE
pushi.e 0
pop.v.i self.HSINER
pushi.e 0
pop.v.i self.OBMADE
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
pushi.e 666
pop.v.i global.typer
pushi.e 1
pop.v.i self.ALREADY
pushi.e 0
pop.v.i self.TRUE_ALREADY
pushi.e -5
pushi.e 10
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.TRUE_ALREADY

:[2]
pushi.e 10
pop.v.i self.SKIPBUFFER
pushi.e 0
pop.v.i self.FADED
push.d 0.4
pop.v.d self.FADEFACTOR
pushi.e 0
pop.v.i self.FADEUP
pushi.e 0
pop.v.i self.OB_DEPTH
pushi.e 0
pop.v.i self.obacktimer
push.d 0.5
pop.v.d self.OBM
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [end]

:[3]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 912
pop.v.v [array]self.flag

:[end]