.localvar 2 arguments

:[0]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 5
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.timer
push.v self.y
pushi.e -420
cmp.i.v LT
bf [end]

:[2]
pushi.e 796
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.gas
push.v 789.depth
pushi.e 2
sub.i.v
push.v self.gas
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]