.localvar 2 arguments

:[0]
pushi.e 3463
pop.v.i self.dtsprite
pushi.e 3468
pop.v.i self.rtsprite
pushi.e 3470
pop.v.i self.ltsprite
pushi.e 3466
pop.v.i self.utsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.ourcase
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
pushi.e 1
pop.v.i self.normalanim
pushi.e 0
pop.v.i self.remanimspeed
pushi.e 0
pop.v.i self.depthbonus
pushi.e 0
pop.v.i self.depthcancel
pushbltn.v builtin.room
pushi.e 311
cmp.i.v EQ
bf [14]

:[3]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 1
pop.v.i self.ourcase
push.v self.y
pushi.e 172
cmp.i.v LT
bf [6]

:[4]
pushi.e 3490
pop.v.i self.dtsprite
pushi.e 3497
pop.v.i self.rtsprite
pushi.e 3496
pop.v.i self.utsprite
pushi.e 3498
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [6]

:[5]
pushi.e 3500
pop.v.i self.utsprite
pushi.e 3504
pop.v.i self.rtsprite
pushi.e 3503
pop.v.i self.ltsprite
pushi.e 3500
pop.v.i self.dtsprite

:[6]
push.v self.y
pushi.e 172
cmp.i.v GT
bf [9]

:[7]
pushi.e 3505
pop.v.i self.dtsprite
pushi.e 3505
pop.v.i self.utsprite
pushi.e 3505
pop.v.i self.rtsprite
pushi.e 3505
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [9]

:[8]
pushi.e 3518
pop.v.i self.dtsprite
pushi.e 3520
pop.v.i self.rtsprite
pushi.e 3521
pop.v.i self.ltsprite
pushi.e 3518
pop.v.i self.utsprite

:[9]
push.v self.y
pushi.e 212
cmp.i.v GT
bf [12]

:[10]
pushi.e 3506
pop.v.i self.dtsprite
pushi.e 3506
pop.v.i self.utsprite
pushi.e 3507
pop.v.i self.rtsprite
pushi.e 3508
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [12]

:[11]
pushi.e 3514
pop.v.i self.utsprite
pushi.e 3516
pop.v.i self.ltsprite
pushi.e 3517
pop.v.i self.rtsprite
pushi.e 3514
pop.v.i self.dtsprite

:[12]
push.v self.y
pushi.e 100
cmp.i.v LT
bf [14]

:[13]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 3485
pop.v.i self.dtsprite
pushi.e 3487
pop.v.i self.ltsprite
pushi.e 3488
pop.v.i self.rtsprite
pushi.e 3486
pop.v.i self.utsprite

:[14]
pushbltn.v builtin.room
pushi.e 333
cmp.i.v EQ
bf [18]

:[15]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 3578
pop.v.i self.dtsprite
pushi.e 3578
pop.v.i self.utsprite
pushi.e 3583
pop.v.i self.rtsprite
pushi.e 3587
pop.v.i self.ltsprite
pushbltn.v builtin.room
pushi.e 333
cmp.i.v EQ
bf [18]

:[16]
pushglb.v global.plot
pushi.e 35
cmp.i.v GTE
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
pushbltn.v builtin.room
pushi.e 373
cmp.i.v EQ
bf [23]

:[19]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushglb.v global.plot
pushi.e 95
cmp.i.v LT
bf [21]

:[20]
pushi.e 95
pop.v.i global.plot

:[21]
push.i 231204
setowner.e
pushi.e -5
pushi.e 293
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
pushi.e 3578
pop.v.i self.dtsprite
pushi.e 3578
pop.v.i self.utsprite
pushi.e 3583
pop.v.i self.rtsprite
pushi.e 3587
pop.v.i self.ltsprite
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
pushbltn.v builtin.room
pushi.e 376
cmp.i.v EQ
bf [26]

:[24]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e -5
pushi.e 294
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag
pushi.e 3553
pop.v.i self.dtsprite
pushi.e 3556
pop.v.i self.utsprite
pushi.e 3549
pop.v.i self.rtsprite
pushi.e 3546
pop.v.i self.ltsprite
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
pushbltn.v builtin.room
pushi.e 343
cmp.i.v EQ
bf [30]

:[27]
pushi.e 0
pop.v.i self.type
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [29]

:[28]
pushi.e 3570
pop.v.i self.sprite_index
pushi.e 3570
pop.v.i self.dtsprite
pushi.e 3572
pop.v.i self.utsprite
pushi.e 3575
pop.v.i self.rtsprite
pushi.e 3573
pop.v.i self.ltsprite
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y
b [30]

:[29]
pushi.e 1
pop.v.i self.type
pushi.e 3543
pop.v.i self.sprite_index
pushi.e 3553
pop.v.i self.dtsprite
pushi.e 3556
pop.v.i self.utsprite
pushi.e 3549
pop.v.i self.rtsprite
pushi.e 3546
pop.v.i self.ltsprite
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y

:[30]
pushbltn.v builtin.room
pushi.e 409
cmp.i.v EQ
bf [34]

:[31]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
pushi.e 3570
pop.v.i self.sprite_index
pushi.e 3570
pop.v.i self.dtsprite
pushi.e 3572
pop.v.i self.utsprite
pushi.e 3575
pop.v.i self.rtsprite
pushi.e 3573
pop.v.i self.ltsprite
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y

:[34]
pushbltn.v builtin.room
pushi.e 407
cmp.i.v EQ
bf [38]

:[35]
pushglb.v global.plot
pushi.e 240
cmp.i.v LT
bf [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
pushi.e 3578
pop.v.i self.sprite_index
pushi.e 3578
pop.v.i self.dtsprite
pushi.e 3581
pop.v.i self.utsprite
pushi.e 3583
pop.v.i self.rtsprite
pushi.e 3587
pop.v.i self.ltsprite
push.v self.y
push.v self.sprite_height
add.v.v
pop.v.v self.y
pushi.e -250
pop.v.i self.depthbonus

:[38]
pushbltn.v builtin.room
pushi.e 356
cmp.i.v EQ
bf [43]

:[39]
pushi.e 3549
pop.v.i self.sprite_index
pushi.e 3549
pop.v.i self.rtsprite
pushi.e 3553
pop.v.i self.dtsprite
pushi.e 3556
pop.v.i self.utsprite
pushi.e 3546
pop.v.i self.ltsprite
pushi.e 1
pop.v.i self.facing
pushi.e 1
pop.v.i self.dfacing
push.v self.x
pushi.e 1160
cmp.i.v GTE
bf [41]

:[40]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 3587
pop.v.i self.sprite_index
pushi.e 3578
pop.v.i self.dtsprite
pushi.e 3578
pop.v.i self.utsprite
pushi.e 3583
pop.v.i self.rtsprite
pushi.e 3587
pop.v.i self.ltsprite

:[41]
pushglb.v global.plot
pushi.e 70
cmp.i.v GT
bf [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
pushbltn.v builtin.room
pushi.e 362
cmp.i.v EQ
bf [47]

:[44]
push.v self.x
pushi.e 600
cmp.i.v GTE
bf [46]

:[45]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 3581
pop.v.i self.sprite_index
pushi.e 3578
pop.v.i self.dtsprite
pushi.e 3581
pop.v.i self.utsprite
pushi.e 3583
pop.v.i self.rtsprite
pushi.e 3587
pop.v.i self.ltsprite
b [47]

:[46]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 3558
pop.v.i self.sprite_index
pushi.e 3554
pop.v.i self.dtsprite
pushi.e 3558
pop.v.i self.utsprite
pushi.e 3550
pop.v.i self.rtsprite
pushi.e 3547
pop.v.i self.ltsprite

:[47]
pushbltn.v builtin.room
pushi.e 307
cmp.i.v EQ
bf [54]

:[48]
push.v self.x
pushi.e 120
cmp.i.v LT
bf [50]

:[49]
pushi.e 1
pop.v.i self.facing
pushi.e 1
pop.v.i self.dfacing
pushi.e 3502
pop.v.i self.dtsprite
pushi.e 3501
pop.v.i self.utsprite
pushi.e 3502
pop.v.i self.rtsprite
pushi.e 3501
pop.v.i self.ltsprite
pushi.e 1
pop.v.i self.depthcancel
pushi.e 4000
pop.v.i self.depth

:[50]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [52]

:[51]
pushi.e 1
pop.v.i self.facing
pushi.e 1
pop.v.i self.dfacing
pushi.e 3506
pop.v.i self.dtsprite
pushi.e 3506
pop.v.i self.utsprite
pushi.e 3507
pop.v.i self.rtsprite
pushi.e 3508
pop.v.i self.ltsprite

:[52]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [54]

:[53]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 3510
pop.v.i self.dtsprite
pushi.e 3511
pop.v.i self.rtsprite
pushi.e 3509
pop.v.i self.utsprite
pushi.e 3510
pop.v.i self.ltsprite

:[54]
pushbltn.v builtin.room
pushi.e 305
cmp.i.v EQ
bf [56]

:[55]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 3638
pop.v.i self.dtsprite
pushi.e 3643
pop.v.i self.utsprite
pushi.e 3641
pop.v.i self.rtsprite
pushi.e 3640
pop.v.i self.ltsprite

:[56]
pushbltn.v builtin.room
pushi.e 306
cmp.i.v EQ
bf [58]

:[57]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 3638
pop.v.i self.dtsprite
pushi.e 3643
pop.v.i self.utsprite
pushi.e 3641
pop.v.i self.rtsprite
pushi.e 3640
pop.v.i self.ltsprite

:[58]
pushbltn.v builtin.room
pushi.e 308
cmp.i.v EQ
bf [60]

:[59]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 3485
pop.v.i self.dtsprite
pushi.e 3486
pop.v.i self.utsprite
pushi.e 3488
pop.v.i self.rtsprite
pushi.e 3487
pop.v.i self.ltsprite

:[60]
pushbltn.v builtin.room
pushi.e 294
cmp.i.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 3649
pop.v.i self.dtsprite
pushi.e 3652
pop.v.i self.utsprite
pushi.e 3651
pop.v.i self.rtsprite
pushi.e 3650
pop.v.i self.ltsprite

:[62]
pushbltn.v builtin.room
pushi.e 292
cmp.i.v EQ
bf [64]

:[63]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 3657
pop.v.i self.dtsprite
pushi.e 3658
pop.v.i self.ltsprite
pushi.e 3661
pop.v.i self.utsprite
pushi.e 3659
pop.v.i self.rtsprite

:[64]
pushbltn.v builtin.room
pushi.e 290
cmp.i.v EQ
bf [67]

:[65]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 3490
pop.v.i self.dtsprite
pushi.e 3495
pop.v.i self.ltsprite
pushi.e 3496
pop.v.i self.utsprite
pushi.e 3494
pop.v.i self.rtsprite
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bf [67]

:[66]
call.i instance_destroy(argc=0)
popz.v

:[67]
call.i gml_Script_scr_npcdir_ch1(argc=0)
popz.v
push.v self.y
push.v self.sprite_height
sub.v.v
pop.v.v self.y
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [69]

:[68]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[69]
push.v self.depth
push.v self.depthbonus
add.v.v
pop.v.v self.depth

:[end]