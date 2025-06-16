.localvar 2 arguments

:[0]
push.v self.mousecreate
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.doorstate

:[2]
push.v self.mousecreate
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.doorstate

:[4]
push.v self.image_index
pushi.e 1
cmp.i.v LTE
bf [6]

:[5]
push.v self.gentimer
pushi.e 1
sub.i.v
pop.v.v self.gentimer

:[6]
push.v self.gentimer
pushi.e 0
cmp.i.v LTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.mousecreate

:[8]
push.v self.gentimer
pushi.e 5
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [11]

:[9]
push.v self.mousecreate
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v self.closed
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1168
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[14]
push.v self.doorstate
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.v self.desIndex
pushi.e 1
sub.i.v
pop.v.v self.desIndex

:[16]
push.v self.doorstate
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.v self.desIndex
pushi.e 1
add.i.v
pop.v.v self.desIndex

:[18]
pushi.e 5
conv.i.v
pushi.e 0
conv.i.v
push.v self.desIndex
call.i clamp(argc=3)
pop.v.v self.desIndex
push.v self.desIndex
pop.v.v self.image_index

:[end]