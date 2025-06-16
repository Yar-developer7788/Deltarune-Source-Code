.localvar 2 arguments

:[0]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [17]

:[2]
push.v self.con
pushi.e 1
cmp.i.v GTE
bf [15]

:[3]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [14]

:[4]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.v self.disabled
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 1
pop.v.i self.disabled
pushi.e 95
pop.v.i self.disabledtimer
pushi.e 10
pop.v.i self.xshake
pushi.e 0
pop.v.i self.disabledtype

:[9]
push.v self.con
pushi.e 0
cmp.i.v NEQ
bf [11]

:[10]
push.v self.nitro
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 1
pop.v.i self.damaged

:[14]
popenv [4]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [17]

:[15]
push.v self.bigcar
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
pushi.e 501
conv.i.v
push.v self.y
pushi.e 40
sub.i.v
push.v self.x
pushi.e 20
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[17]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
call.i @@Other@@(argc=0)
pushi.e -9
pushenv [24]

:[19]
push.v self.disabled
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
push.v self.con
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 1
pop.v.i self.damaged
pushi.e 1
pop.v.i self.disabled
pushi.e 125
pop.v.i self.disabledtimer
pushi.e 1
pop.v.i self.disabledtype

:[24]
popenv [19]

:[end]