.localvar 2 arguments

:[0]
push.v self.id
pushi.e 0
conv.i.v
pushi.e 629
conv.i.v
call.i instance_find(argc=2)
cmp.v.v EQ
bf [7]

:[1]
pushi.e 1
pop.v.i self.boss
pushi.e 697
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [5]

:[2]
push.v 697.eyeshp
pop.v.v self.eyeshp
push.v 697.nosehp
pop.v.v self.nosehp
push.v 697.mouthhp
pop.v.v self.mouthhp
push.v 697.facebroken
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e -1
pop.v.i self.eyeshp
pushi.e -1
pop.v.i self.nosehp
pushi.e -1
pop.v.i self.mouthhp

:[4]
b [6]

:[5]
pushi.e 16
pop.v.i self.eyeshp
pushi.e 16
pop.v.i self.nosehp
pushi.e 16
pop.v.i self.mouthhp

:[6]
pushi.e 629
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.eyes
push.v self.eyeshp
push.v self.eyes
pushi.e -9
pop.v.v [stacktop]self.hp
pushi.e 1
push.v self.eyes
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.target
push.v self.eyes
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.eyes
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.first_time
push.v self.eyes
pushi.e -9
pop.v.v [stacktop]self.first_time
pushi.e 629
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nose
push.v self.nosehp
push.v self.nose
pushi.e -9
pop.v.v [stacktop]self.hp
pushi.e 2
push.v self.nose
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.target
push.v self.nose
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.nose
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.first_time
push.v self.nose
pushi.e -9
pop.v.v [stacktop]self.first_time
pushi.e 629
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mouth
push.v self.mouthhp
push.v self.mouth
pushi.e -9
pop.v.v [stacktop]self.hp
pushi.e 3
push.v self.mouth
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.target
push.v self.mouth
pushi.e -9
pop.v.v [stacktop]self.target
push.v self.damage
push.v self.mouth
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.first_time
push.v self.mouth
pushi.e -9
pop.v.v [stacktop]self.first_time
b [end]

:[7]
pushi.e 0
pop.v.i self.boss

:[end]