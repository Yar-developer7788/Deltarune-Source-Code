.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 137
cmp.i.v EQ
bf [4]

:[1]
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [4]

:[2]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.entrance
pushi.e 24
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
not.b
bf [11]

:[6]
push.s "cybercity.ogg"@19764
pop.v.s self.defaultsong
push.s "cybercity_alt.ogg"@19766
pop.v.s self.altsong
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.v self.altsong
pop.v.v self.mysong
push.d 1.2
pop.v.d self.songspeed
b [9]

:[8]
push.v self.defaultsong
pop.v.v self.mysong
push.d 0.97
pop.v.d self.songspeed

:[9]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [11]

:[10]
push.i 231459
setowner.e
push.v self.mysong
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.v self.songspeed
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[11]
pushi.e 0
pop.v.i self.update
pushi.e 0
pop.v.i self.updatesong
pushi.e 0
pop.v.i self.timer
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [end]

:[15]
call.i gml_Script_snd_free_all(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]