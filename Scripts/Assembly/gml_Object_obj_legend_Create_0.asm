.localvar 2 arguments

:[0]
push.i 231459
setowner.e
push.s "legend.ogg"@36757
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.95
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_pitch(argc=2)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_play(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 0
pop.v.i self.contimer
pushi.e 0
pop.v.i self.ytimer
pushi.e 0
pop.v.i self.xtimer
pushi.e 0
pop.v.i self.yoff
pushi.e 0
pop.v.i self.xoff
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i self.fadecolor
pushi.e 0
pop.v.i self.chunkfade
pushi.e 1
pop.v.i self.chunkamt
pushi.e 1
pop.v.i self.border
pushi.e 2462
pop.v.i self.pic
push.d 0.02
pop.v.d self.fadespeed
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 6
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.textimer
pushi.e 0
pop.v.i self.ingame
pushglb.v global.plot
pushi.e 20
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.ingame

:[2]
pushi.e 0
pop.v.i self.skipped
pushi.e 0
pop.v.i self.skiptimer
pushi.e 1
pop.v.b self.draw_screen

:[end]