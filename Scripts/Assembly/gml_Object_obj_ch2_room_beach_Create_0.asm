.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.b self.canrest
push.i 174005
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.oceansong
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.oceansong
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushi.e -5
pushi.e 258
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 126
conv.i.v
pushi.e 54
conv.i.v
pushi.e 90
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]