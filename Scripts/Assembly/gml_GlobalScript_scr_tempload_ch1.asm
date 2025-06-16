.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_tempload_ch1 (locals=0, argc=0)
:[1]
pushglb.v global.filechoice
pop.v.v self.filechoicebk3
pushi.e 9
pop.v.i global.filechoice
call.i gml_Script_scr_load_ch1(argc=0)
popz.v
push.v self.filechoicebk3
pop.v.v global.filechoice
exit.i

:[2]
push.i [function]gml_Script_scr_tempload_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_tempload_ch1
popz.v

:[end]