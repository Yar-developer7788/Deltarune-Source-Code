.localvar 2 arguments

:[0]
pushi.e 1280
pop.v.i self.trigX
pushi.e 0
pop.v.i self.cheeseCrushed
pushi.e 0
pop.v.i self.eventTriggered
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 360
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[1]
pushi.e 1114
pushenv [4]

:[2]
push.v self.x
push.v other.trigX
cmp.v.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self.image_index
pushi.e 4
pop.v.i self.type
pushi.e 999
pop.v.i self.con

:[4]
popenv [2]

:[5]
pushi.e -5
pushi.e 384
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e 1114
pushenv [8]

:[7]
pushi.e 1
pop.v.i self.image_index
pushi.e 4
pop.v.i self.type
pushi.e 999
pop.v.i self.con

:[8]
popenv [7]

:[9]
pushi.e -5
pushi.e 310
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [14]

:[10]
pushi.e 1150
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [14]

:[11]
pushi.e 1150
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[14]
pushi.e -5
pushi.e 360
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[end]