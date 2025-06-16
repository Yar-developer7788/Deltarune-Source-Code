.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.panx
pushi.e 0
pop.v.i self.pany
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.startx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.starty
push.v self.x
pop.v.v self.finalx
push.v self.y
pop.v.v self.finaly
pushi.e 1
pop.v.i self.panmax
pushi.e 0
pop.v.i self.pantimer
pushi.e 0
pop.v.i self.type

:[end]