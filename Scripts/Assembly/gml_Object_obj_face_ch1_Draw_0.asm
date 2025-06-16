.localvar 2 arguments

:[0]
push.v self.facechange
pushi.e 1
sub.i.v
pop.v.v self.facechange
push.v self.nowface
pushglb.v global.fc
cmp.v.v NEQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.facechange

:[2]
push.v self.facechange
pushi.e 0
cmp.i.v LTE
bf [151]

:[3]
pushglb.v global.fc
pushi.e 1
cmp.i.v EQ
bf [33]

:[4]
pushi.e -5
pushi.e 29
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [32]

:[5]
pushi.e 3366
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 3367
pop.v.i self.face

:[7]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 3368
pop.v.i self.face

:[9]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 3369
pop.v.i self.face

:[11]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
pushi.e 3370
pop.v.i self.face

:[13]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
pushi.e 3371
pop.v.i self.face

:[15]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
pushi.e 3372
pop.v.i self.face

:[17]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
pushi.e 3373
pop.v.i self.face

:[19]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [21]

:[20]
pushi.e 3374
pop.v.i self.face

:[21]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [23]

:[22]
pushi.e 3375
pop.v.i self.face

:[23]
pushglb.v global.fe
pushi.e 10
cmp.i.v EQ
bf [25]

:[24]
pushi.e 3376
pop.v.i self.face

:[25]
pushglb.v global.fe
pushi.e 11
cmp.i.v EQ
bf [27]

:[26]
pushi.e 3377
pop.v.i self.face

:[27]
pushglb.v global.fe
pushi.e 12
cmp.i.v EQ
bf [29]

:[28]
pushi.e 3378
pop.v.i self.face

:[29]
pushglb.v global.fe
pushi.e 13
cmp.i.v EQ
bf [31]

:[30]
pushi.e 3379
pop.v.i self.face

:[31]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v
b [33]

:[32]
pushi.e 3365
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[33]
pushglb.v global.fc
pushi.e 2
cmp.i.v EQ
bf [39]

:[34]
pushi.e 3427
pop.v.i self.face
pushi.e -5
pushi.e 30
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
pushi.e 3429
pop.v.i self.face

:[36]
pushi.e -5
pushi.e 30
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [38]

:[37]
pushi.e 3428
pop.v.i self.face

:[38]
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[39]
pushglb.v global.fc
pushi.e 3
cmp.i.v EQ
bf [41]

:[40]
pushi.e 3941
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[41]
pushglb.v global.fc
pushi.e 4
cmp.i.v EQ
bf [61]

:[42]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 29
add.i.v
push.v self.x
pushi.e 7
sub.i.v
pushi.e 0
conv.i.v
pushi.e 3447
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 3390
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
pushi.e 3391
pop.v.i self.face

:[44]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [46]

:[45]
pushi.e 3392
pop.v.i self.face

:[46]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [48]

:[47]
pushi.e 3393
pop.v.i self.face

:[48]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [50]

:[49]
pushi.e 3394
pop.v.i self.face

:[50]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [52]

:[51]
pushi.e 3395
pop.v.i self.face

:[52]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [54]

:[53]
pushi.e 3396
pop.v.i self.face

:[54]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [56]

:[55]
pushi.e 3397
pop.v.i self.face

:[56]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [58]

:[57]
pushi.e 3398
pop.v.i self.face

:[58]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [60]

:[59]
pushi.e 3399
pop.v.i self.face

:[60]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[61]
pushglb.v global.fc
pushi.e 5
cmp.i.v EQ
bf [63]

:[62]
pushi.e 3430
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 15
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[63]
pushglb.v global.fc
pushi.e 6
cmp.i.v EQ
bf [75]

:[64]
pushi.e 3407
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
pushi.e 3408
pop.v.i self.face

:[66]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [68]

:[67]
pushi.e 3409
pop.v.i self.face

:[68]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [70]

:[69]
pushi.e 3410
pop.v.i self.face

:[70]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [72]

:[71]
pushi.e 3411
pop.v.i self.face

:[72]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [74]

:[73]
pushi.e 3412
pop.v.i self.face

:[74]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[75]
pushglb.v global.fc
pushi.e 9
cmp.i.v EQ
bf [77]

:[76]
pushi.e 3443
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[77]
pushglb.v global.fc
pushi.e 10
cmp.i.v EQ
bf [91]

:[78]
pushi.e 3432
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
pushi.e 3433
pop.v.i self.face

:[80]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [82]

:[81]
pushi.e 3434
pop.v.i self.face

:[82]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [84]

:[83]
pushi.e 3435
pop.v.i self.face

:[84]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [86]

:[85]
pushi.e 3436
pop.v.i self.face

:[86]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [88]

:[87]
pushi.e 3437
pop.v.i self.face

:[88]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [90]

:[89]
pushi.e 3438
pop.v.i self.face

:[90]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[91]
pushglb.v global.fc
pushi.e 11
cmp.i.v EQ
bf [93]

:[92]
pushi.e 3448
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[93]
pushglb.v global.fc
pushi.e 12
cmp.i.v EQ
bf [113]

:[94]
pushi.e 3401
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [96]

:[95]
pushi.e 3402
pop.v.i self.face

:[96]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
pushi.e 3403
pop.v.i self.face

:[98]
pushglb.v global.fe
pushi.e 3
cmp.i.v EQ
bf [100]

:[99]
pushi.e 3404
pop.v.i self.face

:[100]
pushglb.v global.fe
pushi.e 4
cmp.i.v EQ
bf [102]

:[101]
pushi.e 3405
pop.v.i self.face

:[102]
pushglb.v global.fe
pushi.e 5
cmp.i.v EQ
bf [104]

:[103]
pushi.e 3406
pop.v.i self.face

:[104]
pushglb.v global.fe
pushi.e 6
cmp.i.v EQ
bf [106]

:[105]
pushi.e 3402
pop.v.i self.face

:[106]
pushglb.v global.fe
pushi.e 7
cmp.i.v EQ
bf [108]

:[107]
pushi.e 3402
pop.v.i self.face

:[108]
pushglb.v global.fe
pushi.e 8
cmp.i.v EQ
bf [110]

:[109]
pushi.e 3402
pop.v.i self.face

:[110]
pushglb.v global.fe
pushi.e 9
cmp.i.v EQ
bf [112]

:[111]
pushi.e 3402
pop.v.i self.face

:[112]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[113]
pushglb.v global.fc
pushi.e 13
cmp.i.v EQ
bf [119]

:[114]
pushi.e 3413
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
pushi.e 3414
pop.v.i self.face

:[116]
pushglb.v global.fe
pushi.e 2
cmp.i.v EQ
bf [118]

:[117]
pushi.e 3415
pop.v.i self.face

:[118]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[119]
pushglb.v global.fc
pushi.e 14
cmp.i.v EQ
bf [139]

:[120]
pushi.e 3416
pop.v.i self.face
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
pushi.e 3418
pop.v.i self.face

:[122]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
pushi.e 3419
pop.v.i self.face

:[124]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
pushi.e 3420
pop.v.i self.face

:[126]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
pushi.e 3421
pop.v.i self.face

:[128]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [130]

:[129]
pushi.e 3422
pop.v.i self.face

:[130]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [132]

:[131]
pushi.e 3423
pop.v.i self.face

:[132]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [134]

:[133]
pushi.e 3424
pop.v.i self.face

:[134]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [136]

:[135]
pushi.e 3425
pop.v.i self.face

:[136]
pushglb.v global.fe
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e 3426
pop.v.i self.face

:[138]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[139]
pushglb.v global.fc
pushi.e 15
cmp.i.v EQ
bf [141]

:[140]
pushi.e 3431
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 10
sub.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[141]
pushglb.v global.fc
pushi.e 16
cmp.i.v EQ
bf [143]

:[142]
pushi.e 3439
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[143]
pushglb.v global.fc
pushi.e 17
cmp.i.v EQ
bf [145]

:[144]
pushi.e 3440
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 2
add.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[145]
pushglb.v global.fc
pushi.e 18
cmp.i.v EQ
bf [147]

:[146]
pushi.e 3442
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[147]
pushglb.v global.fc
pushi.e 19
cmp.i.v EQ
bf [149]

:[148]
pushi.e 3441
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[149]
pushglb.v global.fc
pushi.e 20
cmp.i.v EQ
bf [151]

:[150]
pushi.e 3446
pop.v.i self.face
pushglb.v global.fe
pop.v.v self.face_index
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.f
push.v self.f
push.v self.y
pushi.e 5
sub.i.v
push.v self.x
pushi.e 5
sub.i.v
push.v self.face_index
push.v self.face
call.i draw_sprite_ext(argc=9)
popz.v

:[151]
pushglb.v global.fc
pop.v.v self.nowface

:[end]