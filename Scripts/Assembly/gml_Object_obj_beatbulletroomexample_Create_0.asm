.localvar 2 arguments
.localvar 107 i 18054
.localvar 9183 _xx 18055

:[0]
pushi.e 117
pop.v.i self.bpm
push.v self.bpm
pushi.e 60
conv.i.d
div.d.v
pop.v.v self.bps
pushi.e 1
conv.i.d
push.v self.bps
div.v.d
pop.v.v self.spb
push.v self.bps
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
div.v.v
pop.v.v self.bpf
pushi.e 0
pop.v.i self.beat
pushi.e 0
pop.v.b self.active
pushi.e 0
pop.v.b self.specialsSetup
pushi.e 300
pop.v.i self.safeAreaLeft
pushbltn.v builtin.room_width
push.v self.safeAreaLeft
sub.v.v
pop.v.v self.safeAreaRight
pushi.e 200
pop.v.i self.lanesSeparation
pushi.e 4
pop.v.i self.newBulletsEvery
pushbltn.v builtin.room_width
push.v self.lanesSeparation
rem.v.v
pop.v.v self.lanesCount
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free(argc=1)
popz.v
push.s "cyber.ogg"@19754
conv.s.v
call.i gml_Script_mus_initloop(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
push.v self.lanesCount
cmp.v.v LT
bf [end]

:[2]
pushloc.v local.i
push.v self.lanesSeparation
mul.v.v
pop.v.v local._xx
pushloc.v local._xx
push.v self.safeAreaLeft
cmp.v.v GT
bf [4]

:[3]
pushloc.v local._xx
push.v self.safeAreaRight
cmp.v.v LT
b [5]

:[4]
push.e 0

:[5]
bf [9]

:[6]
pushloc.v local.i
pushi.e 2
mod.i.v
conv.v.b
bf [8]

:[7]
pushi.e 400
conv.i.v
pushi.e 50
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.b.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushloc.v local._xx
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
b [9]

:[8]
pushi.e 400
conv.i.v
pushi.e 50
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.b.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
pushloc.v local._xx
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v

:[9]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[end]