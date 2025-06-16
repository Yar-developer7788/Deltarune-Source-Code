.localvar 2 arguments

:[0]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.panx
add.v.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
push.v self.pany
add.v.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[2]
push.v self.pantimer
pushi.e 1
add.i.v
pop.v.v self.pantimer
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.pantimer
push.v self.panmax
div.v.v
push.v self.finalx
push.v self.startx
call.i lerp(argc=3)
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
push.v self.pantimer
push.v self.panmax
div.v.v
push.v self.finaly
push.v self.starty
call.i lerp(argc=3)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v

:[4]
push.v self.pantimer
push.v self.panmax
cmp.v.v GTE
bf [end]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[end]