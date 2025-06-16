.localvar 2 arguments

:[0]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [4]

:[2]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [4]

:[3]
push.i 231459
setowner.e
push.s "town.ogg"@19771
conv.s.v
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

:[4]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[5]
pushglb.v global.plot
pushi.e 10
cmp.i.v GTE
bf [7]

:[6]
pushglb.v global.plot
pushi.e 200
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[10]
pushglb.v global.plot
pushi.e 17
cmp.i.v GTE
bf [12]

:[11]
pushglb.v global.plot
pushi.e 25
cmp.i.v LTE
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "honksong.ogg"@19772
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
b [16]

:[15]
push.s "town.ogg"@19771
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[16]
push.d 0.97
conv.d.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[end]