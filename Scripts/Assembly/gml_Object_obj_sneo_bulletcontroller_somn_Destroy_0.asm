.localvar 2 arguments

:[0]
pushi.e 1
push.v self.sneo
pushi.e -9
pop.v.i [stacktop]self.partmode
push.v self.hideshooty
conv.v.b
bf [end]

:[1]
push.i 236842
setowner.e
pushi.e 0
conv.i.v
push.v self.sneo
pushi.e -9
pushi.e 1
pop.v.v [array]self.partframe

:[end]