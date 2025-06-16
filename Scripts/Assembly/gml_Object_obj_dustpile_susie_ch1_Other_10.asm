.localvar 2 arguments

:[0]
push.v self.bust
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_snd_free_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i global.interact
pushi.e 1468
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 457
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 10
pop.v.i self.con
pushi.e 1
pop.v.i self.bust
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [4]

:[3]
pushi.e 1478
conv.i.v
push.v self.y
pushi.e 20
add.i.v
pushi.e 25
conv.i.v
call.i random(argc=1)
add.v.v
push.v self.x
pushi.e 20
add.i.v
push.v self.i
pushi.e 6
mul.i.v
add.v.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 3559
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
add.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.s
pushi.e -9
pushenv [6]

:[5]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[6]
popenv [5]
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
push.v self.s
pushi.e -9
pushenv [8]

:[7]
pushi.e 10
pop.v.i self.hspeed

:[8]
popenv [7]
pushi.e 1351
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.cutscene

:[10]
popenv [9]

:[end]