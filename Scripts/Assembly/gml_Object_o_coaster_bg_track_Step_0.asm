.localvar 2 arguments

:[0]
pushi.e -8
pop.v.i self.hspeed
push.v self.x
call.i gml_Script_camerax(argc=0)
pushi.e 144
sub.i.v
cmp.v.v LT
bf [end]

:[1]
call.i gml_Script_camerax(argc=0)
call.i gml_Script_camerawidth(argc=0)
add.v.v
pop.v.v self.x

:[end]