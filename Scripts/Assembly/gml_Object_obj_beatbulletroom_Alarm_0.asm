.localvar 2 arguments

:[0]
pushbltn.v builtin.room
pushi.e 98
cmp.i.v EQ
bf [2]

:[1]
pushi.e 640
pop.v.i self.safeAreaLeft
pushi.e 1000
pop.v.i self.safeAreaRight
pushi.e 60
pop.v.i self.lanesSeparation
pushi.e 4
pop.v.i self.newBulletsEvery
pushbltn.v builtin.room_width
push.v self.lanesSeparation
rem.v.v
pop.v.v self.lanesCount

:[2]
pushbltn.v builtin.room
pushi.e 111
cmp.i.v EQ
bf [4]

:[3]
pushi.e 120
pop.v.i self.safeAreaLeft
pushi.e 520
pop.v.i self.safeAreaRight
pushi.e 68
pop.v.i self.lanesSeparation
pushi.e 2
pop.v.i self.newBulletsEvery
pushi.e 800
pop.v.i self.lanesCount

:[4]
pushbltn.v builtin.room
pushi.e 90
cmp.i.v EQ
bf [6]

:[5]
pushi.e 2120
conv.i.v
pushi.e 1840
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 45
conv.i.v
pushi.e 570
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 2120
conv.i.v
pushi.e 1840
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 3
conv.i.v
pushi.e 45
conv.i.v
pushi.e 630
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 2120
conv.i.v
pushi.e 1840
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 45
conv.i.v
pushi.e 690
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 2120
conv.i.v
pushi.e 1840
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 3
conv.i.v
pushi.e 45
conv.i.v
pushi.e 750
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 2120
conv.i.v
pushi.e 1840
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 45
conv.i.v
pushi.e 810
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 2120
conv.i.v
pushi.e 1840
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 3
conv.i.v
pushi.e 45
conv.i.v
pushi.e 870
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 1400
conv.i.v
pushi.e 1128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 570
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 1400
conv.i.v
pushi.e 1128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 3
conv.i.v
pushi.e 30
conv.i.v
pushi.e 630
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 1400
conv.i.v
pushi.e 1128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 7
conv.i.v
pushi.e 30
conv.i.v
pushi.e 630
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 1400
conv.i.v
pushi.e 1128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 5
conv.i.v
pushi.e 30
conv.i.v
pushi.e 690
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 1400
conv.i.v
pushi.e 1128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 750
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 1400
conv.i.v
pushi.e 1128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 3
conv.i.v
pushi.e 30
conv.i.v
pushi.e 810
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 1400
conv.i.v
pushi.e 1128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 7
conv.i.v
pushi.e 30
conv.i.v
pushi.e 810
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 1400
conv.i.v
pushi.e 1128
conv.i.v
pushi.e 0
conv.i.v
pushi.e 8
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 5
conv.i.v
pushi.e 30
conv.i.v
pushi.e 870
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 360
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 570
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 360
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 3
conv.i.v
pushi.e 30
conv.i.v
pushi.e 630
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 360
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 690
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 360
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 3
conv.i.v
pushi.e 30
conv.i.v
pushi.e 750
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 360
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 30
conv.i.v
pushi.e 810
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 360
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 3
conv.i.v
pushi.e 30
conv.i.v
pushi.e 870
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 95
cmp.i.v EQ
bf [end]

:[7]
pushi.e 320
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 45
conv.i.v
pushi.e 440
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 320
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 2
conv.i.v
pushi.e 45
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 320
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 45
conv.i.v
pushi.e 600
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 320
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 45
conv.i.v
pushi.e 760
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 320
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 2
conv.i.v
pushi.e 45
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v
pushi.e 320
conv.i.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e -4
conv.i.v
push.v self.bpm
pushi.e 1
conv.i.v
pushi.e 45
conv.i.v
pushi.e 920
conv.i.v
call.i gml_Script_scr_beatbullet_2(argc=9)
popz.v

:[end]