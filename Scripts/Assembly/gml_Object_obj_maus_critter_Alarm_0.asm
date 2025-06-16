.localvar 2 arguments

:[0]
push.v self.speed
pushi.e 0
cmp.i.v NEQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.speed
push.i 68097
setowner.e
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 3349
pop.v.i self.sprite_index

:[end]