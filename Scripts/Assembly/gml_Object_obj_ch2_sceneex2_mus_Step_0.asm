.localvar 2 arguments
.localvar 6229 offset 17031
.localvar 34184 gain 17032

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [7]

:[1]
pushi.e 0
pop.v.i local.offset
push.v 82.press_l
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.d -0.003
pop.v.d local.offset
b [5]

:[3]
push.v 82.press_r
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.d 0.003
pop.v.d local.offset

:[5]
pushloc.v local.offset
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
pushi.e 1
conv.i.v
push.d 0.5
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i audio_sound_get_gain(argc=1)
pushloc.v local.offset
add.v.v
call.i clamp(argc=3)
pop.v.v local.gain
pushi.e 0
conv.i.v
pushloc.v local.gain
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i audio_sound_gain(argc=3)
popz.v

:[7]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [9]

:[8]
pushi.e 99
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v

:[9]
push.v self.con
pushi.e 100
cmp.i.v EQ
bf [end]

:[10]
pushi.e 111
pop.v.i self.con
call.i audio_stop_all(argc=0)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v

:[end]