.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.stringpos
push.s " "@353
pop.v.s self.mystring
pushi.e 1
pop.v.i self.part
push.s " "@353
pop.v.s self.partstring
pushi.e 0
pop.v.i self.type
pushi.e 1
pop.v.i self.rate
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.finished
push.i 8388736
pop.v.i self.mycolor
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.getrid
pushi.e 64
pop.v.i self.writergod
pushi.e 90
pop.v.i self.nowdir
pushi.e 0
pop.v.i self.facealpha

:[end]