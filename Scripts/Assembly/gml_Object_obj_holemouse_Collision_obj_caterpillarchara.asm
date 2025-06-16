.localvar 2 arguments

:[0]
push.v self.nointeract
pushi.e 0
cmp.b.v EQ
bf [4]

:[1]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[2]
push.v other.name
push.s "noelle"@74
cmp.s.v EQ
bf [4]

:[3]
push.v other.visible
pushi.e 1
cmp.b.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
pushi.e 0
pop.v.b other.visible
pushi.e 1169
conv.i.v
push.v other.y
push.v other.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.scaredNoelle
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [8]

:[7]
pushi.e 485
push.v self.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.targetx
pushi.e 225
push.v self.scaredNoelle
pushi.e -9
pop.v.i [stacktop]self.targety

:[8]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [end]

:[9]
push.i 133633
setowner.e
pushi.e 1
conv.i.v
push.v self.scaredNoelle
pushi.e -9
pushi.e 0
pop.v.v [array]self.alarm

:[end]