.localvar 2 arguments

:[0]
pushi.e -100
pop.v.i self.stickingobj
pushi.e -100
pop.v.i self.stucktoobj
pushi.e -6
pop.v.i self.relativedepth
pushi.e 0
pop.v.i self.init
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.relx
pushi.e 0
pop.v.i self.rely

:[end]