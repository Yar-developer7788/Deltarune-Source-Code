.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.ss
mul.v.v
push.v self.xstart
add.v.v
pop.v.v self.x

:[end]