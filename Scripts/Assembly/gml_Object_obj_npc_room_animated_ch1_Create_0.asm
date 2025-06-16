.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.depthcancel
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale

:[2]
pushbltn.v builtin.room
pushi.e 315
cmp.i.v EQ
bf [8]

:[3]
pushi.e 4173
pop.v.i self.sprite_index
pushglb.v global.time
pushi.e 14400
cmp.i.v GT
bt [5]

:[4]
pushi.e -5
pushi.e 10
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [12]

:[9]
push.v self.x
pushi.e 320
cmp.i.v GTE
bf [11]

:[10]
pushi.e 3646
pop.v.i self.sprite_index
b [12]

:[11]
pushi.e 3645
pop.v.i self.sprite_index

:[12]
pushbltn.v builtin.room
pushi.e 303
cmp.i.v EQ
bf [14]

:[13]
pushi.e 3629
pop.v.i self.sprite_index
pushi.e 4000
pop.v.i self.depth
pushi.e 1
pop.v.i self.depthcancel

:[14]
pushbltn.v builtin.room
pushi.e 403
cmp.i.v EQ
bf [16]

:[15]
pushi.e 3716
pop.v.i self.sprite_index

:[16]
pushbltn.v builtin.room
pushi.e 406
cmp.i.v EQ
bf [18]

:[17]
pushi.e 3903
pop.v.i self.sprite_index

:[18]
pushbltn.v builtin.room
pushi.e 407
cmp.i.v EQ
bf [22]

:[19]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
pushi.e 3903
pop.v.i self.sprite_index

:[22]
pushbltn.v builtin.room
pushi.e 337
cmp.i.v EQ
bf [25]

:[23]
pushi.e 3973
pop.v.i self.sprite_index
pushglb.v global.plot
pushi.e 150
cmp.i.v GTE
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
pushbltn.v builtin.room
pushi.e 371
cmp.i.v EQ
bf [27]

:[26]
push.d 0.1
pop.v.d self.image_speed
pushi.e 3870
pop.v.i self.sprite_index

:[27]
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [end]

:[28]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[end]