.localvar 2 arguments

:[0]
b [104]

> gml_Script_scr_smallface (locals=0, argc=6)
:[1]
push.v arg.argument0
call.i gml_Script_scr_smallface_reset(argc=1)
popz.v
push.i 10061813
setowner.e
pushi.e 565
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite
push.v arg.argument1
call.i is_string(argc=1)
conv.v.b
bf [26]

:[2]
push.v arg.argument1
push.s "susie"@70
cmp.s.v EQ
bf [4]

:[3]
pushi.e 565
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[4]
push.v arg.argument1
push.s "ralsei"@72
cmp.s.v EQ
bf [6]

:[5]
pushi.e 619
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[6]
push.v arg.argument1
push.s "lancer"@4751
cmp.s.v EQ
bf [8]

:[7]
pushi.e 621
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[8]
push.v arg.argument1
push.s "noelle"@74
cmp.s.v EQ
bf [10]

:[9]
pushi.e 591
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[10]
push.v arg.argument1
push.s "noelle_cropped"@6218
cmp.s.v EQ
bf [12]

:[11]
pushi.e 2919
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[12]
push.v arg.argument1
push.s "queen"@3525
cmp.s.v EQ
bf [14]

:[13]
push.s "spr_face_queen"@6219
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[14]
push.v arg.argument1
push.s "rouxls"@6221
cmp.s.v EQ
bf [16]

:[15]
pushi.e 635
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[16]
push.v arg.argument1
push.s "berdly"@4870
cmp.s.v EQ
bf [18]

:[17]
pushi.e 598
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[18]
push.v arg.argument1
push.s "rudy"@4146
cmp.s.v EQ
bf [20]

:[19]
pushi.e 622
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[20]
push.v arg.argument1
push.s "none"@562
cmp.s.v EQ
bt [22]

:[21]
push.v arg.argument1
push.s "empty"@6222
cmp.s.v EQ
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
pushi.e 2484
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[25]
b [28]

:[26]
push.v arg.argument1
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 2484
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smsprite

:[28]
push.i 10061811
setowner.e
push.v arg.argument2
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smimage
push.v arg.argument3
call.i is_string(argc=1)
conv.v.b
bf [58]

:[29]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [44]

:[30]
push.v arg.argument3
push.s "left"@5994
cmp.s.v EQ
bf [32]

:[31]
push.i 10061807
setowner.e
pushi.e 60
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[32]
push.v arg.argument3
push.s "leftmid"@6224
cmp.s.v EQ
bf [34]

:[33]
pushi.e 160
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[34]
push.v arg.argument3
push.s "mid"@5602
cmp.s.v EQ
bt [36]

:[35]
push.v arg.argument3
push.s "middle"@5597
cmp.s.v EQ
b [37]

:[36]
push.e 1

:[37]
bf [39]

:[38]
pushi.e 260
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[39]
push.v arg.argument3
push.s "rightmid"@6225
cmp.s.v EQ
bf [41]

:[40]
pushi.e 360
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[41]
push.v arg.argument3
push.s "right"@4637
cmp.s.v EQ
bf [43]

:[42]
pushi.e 460
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[43]
b [57]

:[44]
push.v arg.argument3
push.s "left"@5994
cmp.s.v EQ
bf [46]

:[45]
push.i 10061807
setowner.e
pushi.e 70
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[46]
push.v arg.argument3
push.s "leftmid"@6224
cmp.s.v EQ
bf [48]

:[47]
pushi.e 160
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[48]
push.v arg.argument3
push.s "mid"@5602
cmp.s.v EQ
bt [50]

:[49]
push.v arg.argument3
push.s "middle"@5597
cmp.s.v EQ
b [51]

:[50]
push.e 1

:[51]
bf [53]

:[52]
pushi.e 260
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[53]
push.v arg.argument3
push.s "rightmid"@6225
cmp.s.v EQ
bf [55]

:[54]
pushi.e 360
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[55]
push.v arg.argument3
push.s "right"@4637
cmp.s.v EQ
bf [57]

:[56]
pushi.e 400
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[57]
b [59]

:[58]
push.i 10061807
setowner.e
push.v arg.argument3
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smxx

:[59]
push.v arg.argument4
call.i is_string(argc=1)
conv.v.b
bf [102]

:[60]
pushglb.v global.fighting
pushi.e 1
cmp.i.v EQ
bf [78]

:[61]
push.v arg.argument4
push.s "top"@6226
cmp.s.v EQ
bf [63]

:[62]
push.i 10061806
setowner.e
pushi.e -10
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[63]
push.v arg.argument4
push.s "mid"@5602
cmp.s.v EQ
bt [65]

:[64]
push.v arg.argument4
push.s "middle"@5597
cmp.s.v EQ
b [66]

:[65]
push.e 1

:[66]
bf [68]

:[67]
pushi.e 30
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[68]
push.v arg.argument4
push.s "bottommid"@6227
cmp.s.v EQ
bf [70]

:[69]
pushi.e 45
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[70]
push.v arg.argument4
push.s "bottom"@4636
cmp.s.v EQ
bf [72]

:[71]
pushi.e 56
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[72]
push.v arg.argument4
push.s "bottom"@4636
cmp.s.v EQ
bt [74]

:[73]
push.v arg.argument4
push.s "bottommid"@6227
cmp.s.v EQ
b [75]

:[74]
push.e 1

:[75]
bf [77]

:[76]
push.i 10061808
setowner.e
pushi.e 90
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smdir
push.i 10061809
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smspeed
push.i 10061805
setowner.e
pushi.e 10
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smalarm
push.i 10061806
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.smyy
pushi.e 40
add.i.v
pop.i.v [array]self.smyy
push.i 10061807
setowner.e
pushi.e -5
push.v arg.argument0
conv.v.i
dup.i 1
push.v [array]self.smxx
pushi.e 40
sub.i.v
pop.i.v [array]self.smxx

:[77]
b [101]

:[78]
push.v arg.argument4
push.s "top"@6226
cmp.s.v EQ
bf [80]

:[79]
push.i 10061806
setowner.e
pushi.e -10
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[80]
push.v arg.argument4
push.s "mid"@5602
cmp.s.v EQ
bt [82]

:[81]
push.v arg.argument4
push.s "middle"@5597
cmp.s.v EQ
b [83]

:[82]
push.e 1

:[83]
bf [85]

:[84]
pushi.e 30
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[85]
push.v arg.argument4
push.s "bottommid"@6227
cmp.s.v EQ
bf [87]

:[86]
pushi.e 50
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[87]
push.v arg.argument4
push.s "bottom"@4636
cmp.s.v EQ
bf [89]

:[88]
pushi.e 68
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[89]
pushglb.v global.darkzone
pushi.e 0
cmp.i.v EQ
bf [101]

:[90]
push.v arg.argument4
push.s "top"@6226
cmp.s.v EQ
bf [92]

:[91]
pushi.e 160
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[92]
push.v arg.argument4
push.s "mid"@5602
cmp.s.v EQ
bt [94]

:[93]
push.v arg.argument4
push.s "middle"@5597
cmp.s.v EQ
b [95]

:[94]
push.e 1

:[95]
bf [97]

:[96]
pushi.e 200
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[97]
push.v arg.argument4
push.s "bottommid"@6227
cmp.s.v EQ
bf [99]

:[98]
pushi.e 240
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[99]
push.v arg.argument4
push.s "bottom"@4636
cmp.s.v EQ
bf [101]

:[100]
pushi.e 240
conv.i.v
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[101]
b [103]

:[102]
push.i 10061806
setowner.e
push.v arg.argument4
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smyy

:[103]
push.i 10061815
setowner.e
push.v arg.argument5
pushi.e -5
push.v arg.argument0
conv.v.i
pop.v.v [array]self.smstring
exit.i

:[104]
push.i [function]gml_Script_scr_smallface
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_smallface
popz.v

:[end]