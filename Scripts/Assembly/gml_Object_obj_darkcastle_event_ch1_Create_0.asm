.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.rflip
pushglb.v global.plot
pushi.e 20
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v
pushi.e 1
pop.v.i self.con
pushi.e 1351
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.visible

:[4]
popenv [3]
pushi.e 4203
conv.i.v
push.v 1351.y
pushi.e 60
add.i.v
pushi.e 460
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.k
pushi.e 3556
conv.i.v
push.v 1351.y
pushi.e 100
add.i.v
pushi.e 520
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
push.v self.k
pushi.e -9
pushenv [6]

:[5]
pushi.e -2
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[6]
popenv [5]
push.v self.s
pushi.e -9
pushenv [8]

:[7]
pushi.e -3
pop.v.i self.vspeed
push.d 0.1
pop.v.d self.image_speed

:[8]
popenv [7]
pushi.e 1
pop.v.i global.interact
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[end]