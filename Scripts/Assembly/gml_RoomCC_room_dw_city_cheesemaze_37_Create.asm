.localvar 2 arguments

:[0]
call.i gml_Script_scr_sideb_get_phase(argc=0)
push.d 1.5
cmp.d.v GT
bf [end]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[end]