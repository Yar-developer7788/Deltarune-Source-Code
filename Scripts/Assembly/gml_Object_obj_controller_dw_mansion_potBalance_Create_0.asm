.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.spawnVase
pushi.e 0
pop.v.i self.triggered
pushi.e 0
pop.v.i self.monsterCount
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.b self.init_butler
pushi.e 0
pop.v.i self.readtrigger
pushi.e 0
pop.v.i self.readcount
pushi.e -5
pushi.e 541
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 385
pop.v.v [array]self.flag

:[2]
pushi.e -5
pushi.e 385
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[3]
pushi.e 1257
pushenv [6]

:[4]
push.v self.y
pushi.e 540
cmp.i.v GT
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [4]

:[7]
pushi.e -5
pushi.e 385
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [end]

:[8]
pushi.e 109
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e 1225
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]