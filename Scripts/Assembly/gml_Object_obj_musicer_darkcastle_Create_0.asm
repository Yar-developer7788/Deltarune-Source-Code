.localvar 2 arguments
.localvar 19753 mySong 7660

:[0]
pushglb.v global.chapter
pushi.e 1
cmp.i.v LTE
bf [6]

:[1]
pushglb.v global.plot
pushi.e 30
cmp.i.v LTE
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
push.s "creepydoor.ogg"@14934
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[4]
pushglb.v global.plot
pushi.e 30
cmp.i.v GT
bf [6]

:[5]
push.s "castletown_empty.ogg"@19751
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[6]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[8]
pushglb.v global.plot
pushi.e 8
cmp.i.v EQ
bf [10]

:[9]
push.s "castletown_empty.ogg"@19751
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[10]
pushglb.v global.plot
pushi.e 12
cmp.i.v GTE
bf [12]

:[11]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.s "castletown.ogg"@19752
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[15]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [19]

:[16]
push.s "castletown.ogg"@19752
pop.v.s local.mySong
pushi.e -5
pushi.e 11
push.v [array]self.tempflag
call.i is_string(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e -5
pushi.e 11
push.v [array]self.tempflag
pop.v.v local.mySong

:[18]
pushloc.v local.mySong
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong

:[19]
pushglb.v global.plot
pushi.e 8
cmp.i.v EQ
bt [21]

:[20]
pushglb.v global.plot
pushi.e 12
cmp.i.v GTE
b [22]

:[21]
push.e 1

:[22]
bf [end]

:[23]
pushi.e 1
conv.i.v
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