.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231459
setowner.e
push.s "alarm_titlescreen.ogg"@14758
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 0
pop.v.i self.maindog

:[end]