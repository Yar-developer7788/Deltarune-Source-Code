.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 20
cmp.i.v LT
bf [3]

:[2]
push.i 175147
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevalpha
push.i 175148
setowner.e
pushi.e -200
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevwx
push.i 175149
setowner.e
pushi.e -200
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevwy
push.i 175150
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevstringmax
push.i 175151
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevhspace
push.i 175152
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevlinecount
push.i 175153
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.prevvspace
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 0
pop.v.i self.carcon
pushi.e 0
pop.v.i self.drawwave
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.dhaver
pushi.e 0
pop.v.i self.v
pushi.e 0
pop.v.i self.vx
pushi.e 0
pop.v.i self.vy
push.i 23827382
pop.v.i self.myd
pushglb.v global.plot
pushi.e 1
cmp.i.v GT
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushi.e 0
pop.v.i global.facing
pushi.e 1415
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
push.i 231459
setowner.e
push.s "mus_introcar.ogg"@38355
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 1
pop.v.i global.interact
pushi.e 1351
pop.v.i self.k
pushi.e 3470
conv.i.v
pushi.e 240
conv.i.v
pushi.e 195
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.t
push.v self.t
pushi.e -9
pushenv [9]

:[8]
push.i 400000
pop.v.i self.depth

:[9]
popenv [8]
pushi.e 3457
conv.i.v
pushi.e 240
conv.i.v
pushi.e 131
conv.i.v
call.i gml_Script_scr_marker_ch1(argc=3)
pop.v.v self.c
push.v self.c
pushi.e -9
pushenv [11]

:[10]
push.i 500000
pop.v.i self.depth

:[11]
popenv [10]

:[end]