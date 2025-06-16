.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_facechoice (locals=0, argc=0)
:[1]
pushi.e 61
conv.i.v
push.v self.writer
pushi.e -9
push.v [stacktop]self.y
pushi.e 5
push.v self.f
mul.v.i
add.v.v
push.v self.writer
pushi.e -9
push.v [stacktop]self.x
pushi.e 8
push.v self.f
mul.v.i
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.myface
exit.i

:[2]
push.i [function]gml_Script_scr_facechoice
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_facechoice
popz.v

:[end]