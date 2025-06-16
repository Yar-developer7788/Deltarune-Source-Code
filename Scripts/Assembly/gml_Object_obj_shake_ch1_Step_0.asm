.localvar 2 arguments

:[0]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.beenset
push.v self.camera
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.mycamerax
push.v self.camera
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.mycameray
pushi.e -5
pushi.e 12
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.mycamerax
push.v self.shakex
add.v.v
push.v self.camera
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
push.v self.mycameray
push.v self.shakey
add.v.v
push.v self.camera
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[3]
push.v self.shakesign
neg.v
pop.v.v self.shakesign
pushi.e 1
pop.v.i self.active
push.i 68097
setowner.e
push.v self.shakespeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]