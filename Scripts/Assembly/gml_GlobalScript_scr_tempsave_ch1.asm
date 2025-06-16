.localvar 2 arguments
.localvar 173 is_valid 4439
.localvar 9635 error_message 4440

:[0]
b [5]

> gml_Script_scr_tempsave_ch1 (locals=2, argc=0)
:[1]
pushglb.v global.filechoice
pop.v.v self.filechoicebk2
pushi.e 9
pop.v.i global.filechoice
pushglb.v global.filechoice
call.i gml_Script_scr_saveprocess_ch1(argc=1)
pop.v.v local.is_valid
push.v self.filechoicebk2
pop.v.v global.filechoice
pushloc.v local.is_valid
conv.v.b
not.b
bf [3]

:[2]
pushi.e 27
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.error_message
push.s "temp_save_failed"@9636
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.error_type
push.s "auto"@9638
pushloc.v local.error_message
pushi.e -9
pop.v.s [stacktop]self.type

:[3]
pushloc.v local.is_valid
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_tempsave_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_tempsave_ch1
popz.v

:[end]