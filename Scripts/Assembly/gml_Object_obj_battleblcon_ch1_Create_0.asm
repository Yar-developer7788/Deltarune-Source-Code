.localvar 2 arguments

:[0]
pushi.e 1331
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
add.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.mywriter
push.v self.depth
pushi.e 5
sub.i.v
push.v self.mywriter
pushi.e -9
pop.v.v [stacktop]self.depth

:[end]