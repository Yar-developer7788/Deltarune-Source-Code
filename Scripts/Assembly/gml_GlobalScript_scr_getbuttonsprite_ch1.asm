.localvar 2 arguments
.localvar 11951 control 4763
.localvar 11952 isString 4764
.localvar 11953 button 4765
.localvar 11955 is_dualshock 4766
.localvar 11956 button_sprite 4767

:[0]
b [158]

> gml_Script_scr_getbuttonsprite_ch1 (locals=5, argc=2)
:[1]
push.v arg.argument0
pop.v.v local.control
push.v arg.argument1
pop.v.v local.isString
pushi.e 758
pop.v.i local.button
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bt [3]

:[2]
push.v 1112.gamepad_type
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 1

:[4]
pop.v.b local.is_dualshock
pushi.e 758
pop.v.i local.button_sprite
pushloc.v local.isString
conv.v.b
bf [36]

:[5]
pushloc.v local.control
push.s "A"@1192
cmp.s.v EQ
bf [11]

:[6]
pushi.e 4432
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [8]

:[7]
pushi.e 4390
pop.v.i local.button_sprite
b [10]

:[8]
pushloc.v local.is_dualshock
conv.v.b
bf [10]

:[9]
pushi.e 4421
pop.v.i local.button_sprite

:[10]
pushloc.v local.button_sprite
ret.v

:[11]
pushloc.v local.control
push.s "D"@9480
cmp.s.v EQ
bf [17]

:[12]
pushi.e 4433
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [14]

:[13]
pushi.e 4394
pop.v.i local.button_sprite
b [16]

:[14]
pushloc.v local.is_dualshock
conv.v.b
bf [16]

:[15]
pushi.e 4422
pop.v.i local.button_sprite

:[16]
pushloc.v local.button_sprite
ret.v

:[17]
pushloc.v local.control
push.s "W"@9494
cmp.s.v EQ
bf [23]

:[18]
pushi.e 3946
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [20]

:[19]
pushi.e 4397
pop.v.i local.button_sprite
b [22]

:[20]
pushloc.v local.is_dualshock
conv.v.b
bf [22]

:[21]
pushi.e 4423
pop.v.i local.button_sprite

:[22]
pushloc.v local.button_sprite
ret.v

:[23]
pushloc.v local.control
push.s "S"@9491
cmp.s.v EQ
bf [29]

:[24]
pushi.e 3417
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [26]

:[25]
pushi.e 4406
pop.v.i local.button_sprite
b [28]

:[26]
pushloc.v local.is_dualshock
conv.v.b
bf [28]

:[27]
pushi.e 4424
pop.v.i local.button_sprite

:[28]
pushloc.v local.button_sprite
ret.v

:[29]
pushloc.v local.control
push.s "Z"@9495
cmp.s.v EQ
bf [31]

:[30]
pushglb.v global.button0
pop.v.v local.button

:[31]
pushloc.v local.control
push.s "X"@5605
cmp.s.v EQ
bf [33]

:[32]
pushglb.v global.button1
pop.v.v local.button

:[33]
pushloc.v local.control
push.s "C"@9479
cmp.s.v EQ
bf [35]

:[34]
pushglb.v global.button2
pop.v.v local.button

:[35]
b [60]

:[36]
pushloc.v local.control
pop.v.v local.button
pushloc.v local.control
push.i 32783
cmp.i.v EQ
bf [42]

:[37]
pushi.e 4432
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [39]

:[38]
pushi.e 4390
pop.v.i local.button_sprite
b [41]

:[39]
pushloc.v local.is_dualshock
conv.v.b
bf [41]

:[40]
pushi.e 4421
pop.v.i local.button_sprite

:[41]
pushloc.v local.button_sprite
ret.v

:[42]
pushloc.v local.control
push.i 32784
cmp.i.v EQ
bf [48]

:[43]
pushi.e 4433
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [45]

:[44]
pushi.e 4394
pop.v.i local.button_sprite
b [47]

:[45]
pushloc.v local.is_dualshock
conv.v.b
bf [47]

:[46]
pushi.e 4422
pop.v.i local.button_sprite

:[47]
pushloc.v local.button_sprite
ret.v

:[48]
pushloc.v local.control
push.i 32781
cmp.i.v EQ
bf [54]

:[49]
pushi.e 3946
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [51]

:[50]
pushi.e 4397
pop.v.i local.button_sprite
b [53]

:[51]
pushloc.v local.is_dualshock
conv.v.b
bf [53]

:[52]
pushi.e 4423
pop.v.i local.button_sprite

:[53]
pushloc.v local.button_sprite
ret.v

:[54]
pushloc.v local.control
push.i 32782
cmp.i.v EQ
bf [60]

:[55]
pushi.e 3417
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [57]

:[56]
pushi.e 4406
pop.v.i local.button_sprite
b [59]

:[57]
pushloc.v local.is_dualshock
conv.v.b
bf [59]

:[58]
pushi.e 4424
pop.v.i local.button_sprite

:[59]
pushloc.v local.button_sprite
ret.v

:[60]
pushloc.v local.button
push.i 32769
cmp.i.v EQ
bf [66]

:[61]
pushi.e 4434
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [63]

:[62]
pushi.e 4418
pop.v.i local.button_sprite

:[63]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [65]

:[64]
pushi.e 4404
pop.v.i local.button_sprite

:[65]
pushloc.v local.button_sprite
ret.v

:[66]
pushloc.v local.button
push.i 32770
cmp.i.v EQ
bf [72]

:[67]
pushi.e 3660
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [69]

:[68]
pushi.e 4417
pop.v.i local.button_sprite

:[69]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [71]

:[70]
pushi.e 4403
pop.v.i local.button_sprite

:[71]
pushloc.v local.button_sprite
ret.v

:[72]
pushloc.v local.button
push.i 32771
cmp.i.v EQ
bf [78]

:[73]
pushi.e 4429
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [75]

:[74]
pushi.e 4413
pop.v.i local.button_sprite

:[75]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [77]

:[76]
pushi.e 4399
pop.v.i local.button_sprite

:[77]
pushloc.v local.button_sprite
ret.v

:[78]
pushloc.v local.button
push.i 32772
cmp.i.v EQ
bf [84]

:[79]
pushi.e 4122
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [81]

:[80]
pushi.e 4415
pop.v.i local.button_sprite

:[81]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [83]

:[82]
pushi.e 4398
pop.v.i local.button_sprite

:[83]
pushloc.v local.button_sprite
ret.v

:[84]
pushloc.v local.button
push.i 32773
cmp.i.v EQ
bf [90]

:[85]
pushi.e 4430
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [87]

:[86]
pushi.e 4419
pop.v.i local.button_sprite

:[87]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [89]

:[88]
pushi.e 4389
pop.v.i local.button_sprite

:[89]
pushloc.v local.button_sprite
ret.v

:[90]
pushloc.v local.button
push.i 32775
cmp.i.v EQ
bf [96]

:[91]
pushi.e 4435
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [93]

:[92]
pushi.e 4420
pop.v.i local.button_sprite

:[93]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [95]

:[94]
pushi.e 4400
pop.v.i local.button_sprite

:[95]
pushloc.v local.button_sprite
ret.v

:[96]
pushloc.v local.button
push.i 32774
cmp.i.v EQ
bf [102]

:[97]
pushi.e 4436
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [99]

:[98]
pushi.e 4410
pop.v.i local.button_sprite

:[99]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [101]

:[100]
pushi.e 4393
pop.v.i local.button_sprite

:[101]
pushloc.v local.button_sprite
ret.v

:[102]
pushloc.v local.button
push.i 32776
cmp.i.v EQ
bf [108]

:[103]
pushi.e 4431
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [105]

:[104]
pushi.e 4411
pop.v.i local.button_sprite

:[105]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [107]

:[106]
pushi.e 4401
pop.v.i local.button_sprite

:[107]
pushloc.v local.button_sprite
ret.v

:[108]
pushloc.v local.button
push.i 32779
cmp.i.v EQ
bf [114]

:[109]
pushi.e 4428
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [111]

:[110]
pushi.e 4409
pop.v.i local.button_sprite

:[111]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [113]

:[112]
pushi.e 4407
pop.v.i local.button_sprite

:[113]
pushloc.v local.button_sprite
ret.v

:[114]
pushloc.v local.button
push.i 32780
cmp.i.v EQ
bf [120]

:[115]
pushi.e 3576
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [117]

:[116]
pushi.e 4412
pop.v.i local.button_sprite

:[117]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [119]

:[118]
pushi.e 4408
pop.v.i local.button_sprite

:[119]
pushloc.v local.button_sprite
ret.v

:[120]
pushloc.v local.button
push.i 32777
cmp.i.v EQ
bf [126]

:[121]
pushi.e 3606
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [123]

:[122]
pushi.e 4414
pop.v.i local.button_sprite

:[123]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [125]

:[124]
pushi.e 4391
pop.v.i local.button_sprite

:[125]
pushloc.v local.button_sprite
ret.v

:[126]
pushloc.v local.button
push.i 32778
cmp.i.v EQ
bf [132]

:[127]
pushi.e 3683
pop.v.i local.button_sprite
pushloc.v local.is_dualshock
conv.v.b
bf [129]

:[128]
pushi.e 2520
conv.i.v
ret.v

:[129]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [131]

:[130]
pushi.e 4392
pop.v.i local.button_sprite

:[131]
pushloc.v local.button_sprite
ret.v

:[132]
pushloc.v local.button
push.i 32783
cmp.i.v EQ
bf [138]

:[133]
pushi.e 4432
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [135]

:[134]
pushi.e 4390
pop.v.i local.button_sprite
b [137]

:[135]
pushloc.v local.is_dualshock
conv.v.b
bf [137]

:[136]
pushi.e 4421
pop.v.i local.button_sprite

:[137]
pushloc.v local.button_sprite
ret.v

:[138]
pushloc.v local.button
push.i 32784
cmp.i.v EQ
bf [144]

:[139]
pushi.e 4433
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [141]

:[140]
pushi.e 4394
pop.v.i local.button_sprite
b [143]

:[141]
pushloc.v local.is_dualshock
conv.v.b
bf [143]

:[142]
pushi.e 4422
pop.v.i local.button_sprite

:[143]
pushloc.v local.button_sprite
ret.v

:[144]
pushloc.v local.button
push.i 32781
cmp.i.v EQ
bf [150]

:[145]
pushi.e 3946
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [147]

:[146]
pushi.e 4397
pop.v.i local.button_sprite
b [149]

:[147]
pushloc.v local.is_dualshock
conv.v.b
bf [149]

:[148]
pushi.e 4423
pop.v.i local.button_sprite

:[149]
pushloc.v local.button_sprite
ret.v

:[150]
pushloc.v local.button
push.i 32782
cmp.i.v EQ
bf [156]

:[151]
pushi.e 3417
pop.v.i local.button_sprite
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [153]

:[152]
pushi.e 4406
pop.v.i local.button_sprite
b [155]

:[153]
pushloc.v local.is_dualshock
conv.v.b
bf [155]

:[154]
pushi.e 4424
pop.v.i local.button_sprite

:[155]
pushloc.v local.button_sprite
ret.v

:[156]
pushloc.v local.button_sprite
ret.v

:[157]
exit.i

:[158]
push.i [function]gml_Script_scr_getbuttonsprite_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getbuttonsprite_ch1
popz.v

:[end]