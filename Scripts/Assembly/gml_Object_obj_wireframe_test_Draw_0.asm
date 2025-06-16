.localvar 2 arguments
.localvar 9183 _xx 11902

:[0]
pushi.e 3
conv.i.v
call.i draw_primitive_begin(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 4
cmp.i.v LT
bf [end]

:[2]
push.v self.yrotation
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
push.v [array]self.vertexz
pushi.e -1
pushi.e 0
push.v [array]self.vertexx
call.i gml_Script_scr_orbitx(argc=5)
pop.v.v local._xx
pushi.e -1
pushi.e 0
push.v [array]self.vertexy
pushloc.v local._xx
call.i draw_vertex(argc=2)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]