.localvar 2 arguments

:[0]
push.s "na"@15676
pop.v.s self.mysong
pushbltn.v builtin.room
pushi.e 131
cmp.i.v EQ
bf [5]

:[1]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [5]

:[2]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 1
cmp.i.v GT
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
b [5]

:[4]
push.s "cyberhouse.ogg"@19762
pop.v.s self.mysong

:[5]
pushbltn.v builtin.room
pushi.e 119
cmp.i.v EQ
bt [9]

:[6]
pushbltn.v builtin.room
pushi.e 118
cmp.i.v EQ
bt [9]

:[7]
pushbltn.v builtin.room
pushi.e 120
cmp.i.v EQ
bt [9]

:[8]
pushbltn.v builtin.room
pushi.e 121
cmp.i.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
push.s "alley_ambience.ogg"@19763
pop.v.s self.mysong

:[12]
push.v self.mysong
push.s "na"@15676
cmp.s.v NEQ
bf [14]

:[13]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [end]

:[16]
push.i 231459
setowner.e
push.v self.mysong
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.97
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[end]