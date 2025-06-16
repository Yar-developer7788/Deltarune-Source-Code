.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_gameover_ch1 (locals=0, argc=0)
:[1]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 439
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushbltn.v builtin.room
pushi.e 378
cmp.i.v NEQ
bf [3]

:[2]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.application_surface
call.i sprite_create_from_surface(argc=9)
pop.v.v global.screenshot
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 416
conv.i.v
call.i room_goto(argc=1)
popz.v
b [4]

:[3]
pushi.e 0
pop.v.i global.entrance
push.i 110069711
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 9
pop.v.v [array]self.tempflag
pushi.e 377
conv.i.v
call.i room_goto(argc=1)
popz.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_gameover_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_gameover_ch1
popz.v

:[end]