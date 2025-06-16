.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.chest
pushi.e 0
pop.v.i self.chestSpawned
pushi.e 0
pop.v.i self.timer
pushi.e -5
pushi.e 389
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 136
conv.i.v
pushi.e 280
conv.i.v
pushi.e 1160
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.chest
pushi.e 1
pop.v.i self.chestSpawned

:[end]