.localvar 2 arguments
.localvar 6706 d 19691

:[0]
pushi.e 1
pop.v.b self.outline
pushi.e 1303
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
pushi.e 82
pushloc.v local.d
pushi.e -9
pop.v.i [stacktop]self.target_char
pushi.e 276
pushenv [2]

:[1]
pushi.e 1303
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 100
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
call.i @@This@@(argc=0)
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.target_char

:[2]
popenv [1]
pushi.e 200
pop.v.i self.depth

:[end]