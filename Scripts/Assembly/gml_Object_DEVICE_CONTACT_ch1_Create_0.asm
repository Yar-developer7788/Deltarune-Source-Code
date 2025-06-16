.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.EVENT
pushi.e 0
pop.v.i self.TIMER
pushi.e 0
pop.v.i self.HEARTMADE
pushi.e 0
pop.v.i self.HSINER
pushi.e 0
pop.v.i self.OBMADE
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
pushi.e 666
pop.v.i global.typer
pushi.e 1
pop.v.i self.ALREADY
pushi.e 0
pop.v.i self.TRUE_ALREADY
pushi.e -5
pushi.e 10
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.TRUE_ALREADY

:[2]
pushi.e 10
pop.v.i self.SKIPBUFFER
pushi.e 0
pop.v.i self.FADED
push.d 0.4
pop.v.d self.FADEFACTOR
pushi.e 0
pop.v.i self.FADEUP
pushi.e 0
pop.v.i self.OB_DEPTH
pushi.e 0
pop.v.i self.obacktimer
push.d 0.5
pop.v.d self.OBM
push.i 231459
setowner.e
push.s "AUDIO_DRONE.ogg"@29045
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ch1(argc=1)
popz.v
pushi.e 0
pop.v.i self.WHITEFADE
push.s "DEVICE_CONTACT_slash_Create_0_gml_23_0"@41832
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
call.i gml_Script_scr_windowcaption_ch1(argc=1)
popz.v
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [end]

:[3]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 912
pop.v.v [array]self.flag

:[end]