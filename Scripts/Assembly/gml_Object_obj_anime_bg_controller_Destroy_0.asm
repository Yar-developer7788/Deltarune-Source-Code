.localvar 2 arguments

:[0]
push.v self.init
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1071
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v

:[end]