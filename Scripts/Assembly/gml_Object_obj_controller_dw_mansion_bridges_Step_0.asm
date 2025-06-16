.localvar 2 arguments

:[0]
pushi.e 240
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v self.chestSpawned
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer

:[5]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [end]

:[6]
pushi.e 136
conv.i.v
pushi.e 200
conv.i.v
pushi.e 1160
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.chest
pushi.e 1
pop.v.i self.chestSpawned
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 389
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.timer

:[end]