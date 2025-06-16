.localvar 2 arguments

:[0]
push.v self.nointeract
pushi.e 0
cmp.b.v EQ
bf [end]

:[1]
push.v other.lifetimer
pushi.e 20
cmp.i.v GT
bf [end]

:[2]
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [4]

:[3]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [10]

:[6]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [8]

:[7]
pushi.e 1169
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelle
pushi.e 0
push.v self.noelle
pushi.e -9
pop.v.i [stacktop]self.con
push.v self.x
push.v self.noelle
pushi.e -9
pop.v.v [stacktop]self.targetx
push.v self.y
push.v self.noelle
pushi.e -9
pop.v.v [stacktop]self.targety
push.i 133633
setowner.e
pushi.e 1
conv.i.v
push.v self.noelle
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
push.s "mice1Scare"@37396
push.v self.noelle
pushi.e -9
pop.v.s [stacktop]self.extflag
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 1162
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[9]
pushi.e 0
pop.v.i 1162.scaredAgain

:[10]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [13]

:[11]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[15]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [17]

:[16]
pushi.e 1169
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.scaredNoelle
pushi.e 0
push.v self.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.con
push.v self.x
push.v self.scaredNoelle
pushi.e -9
pop.v.v [stacktop]self.targetx
push.v self.y
push.v self.scaredNoelle
pushi.e -9
pop.v.v [stacktop]self.targety
push.i 133633
setowner.e
pushi.e 1
conv.i.v
push.v self.scaredNoelle
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
pushi.e 1164
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[18]
pushi.e 0
pop.v.i 1164.scared

:[end]