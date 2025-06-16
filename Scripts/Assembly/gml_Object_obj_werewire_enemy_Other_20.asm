.localvar 2 arguments

:[0]
pushi.e 481
conv.i.v
push.v self.y
pushi.e 42
sub.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
call.i gml_Script_scr_recruit(argc=0)
popz.v
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]