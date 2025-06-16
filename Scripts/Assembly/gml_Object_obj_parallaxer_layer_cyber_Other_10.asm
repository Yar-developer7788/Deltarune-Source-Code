.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.auto
add.v.v
push.v self.ss
mul.v.v
push.v self.xstart
add.v.v
pop.v.v self.x
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.autoy
add.v.v
push.v self.ssy
mul.v.v
push.v self.ystart
add.v.v
pop.v.v self.y

:[end]