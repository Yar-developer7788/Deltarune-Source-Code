.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 12
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.mycamerax
push.v self.shakex
push.v self.shakesign
mul.v.v
add.v.v
push.v self.camera
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
push.v self.mycameray
push.v self.shakey
push.v self.shakesign
mul.v.v
add.v.v
push.v self.camera
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[2]
push.v self.permashake
pushi.e 0
cmp.i.v EQ
bf [7]

:[3]
push.v self.shakex
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
push.v self.shakex
pushi.e 1
sub.i.v
pop.v.v self.shakex

:[5]
push.v self.shakey
pushi.e 0
cmp.i.v GT
bf [7]

:[6]
push.v self.shakey
pushi.e 1
sub.i.v
pop.v.v self.shakey

:[7]
push.v self.shakesign
neg.v
pop.v.v self.shakesign
push.i 68097
setowner.e
push.v self.shakespeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v self.shakex
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.v self.shakey
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [end]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[end]