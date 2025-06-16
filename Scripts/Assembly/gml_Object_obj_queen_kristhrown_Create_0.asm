.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.collided
pushi.e 10
pop.v.i self.mypower
pushi.e 0
pop.v.i self.bonk
pushi.e 577
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v 577.depth
pushi.e 1
sub.i.v
pop.v.v self.depth

:[end]