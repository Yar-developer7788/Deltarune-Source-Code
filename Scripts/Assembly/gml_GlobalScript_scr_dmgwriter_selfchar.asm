.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_dmgwriter_selfchar (locals=0, argc=0)
:[1]
pushi.e 873
conv.i.v
push.v self.y
push.v self.myheight
add.v.v
pushi.e 24
sub.i.v
push.v self.tu
pushi.e 20
mul.i.v
sub.v.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_dmgwriter_selfchar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_dmgwriter_selfchar
popz.v

:[end]