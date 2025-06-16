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

:[end]