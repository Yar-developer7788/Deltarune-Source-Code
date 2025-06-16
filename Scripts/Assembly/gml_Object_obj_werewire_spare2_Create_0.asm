.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 10
conv.i.v
call.i random(argc=1)
pushi.e 5
cmp.i.v LT
bf [end]

:[1]
pushi.e 1723
pop.v.i self.sprite_index

:[end]