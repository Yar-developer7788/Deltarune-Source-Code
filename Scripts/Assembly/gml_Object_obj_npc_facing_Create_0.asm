.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.sprite_height_adjusted
pushi.e 891
pop.v.i self.dtsprite
pushi.e 897
pop.v.i self.rtsprite
pushi.e 900
pop.v.i self.ltsprite
pushi.e 894
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
pushi.e 0
pop.v.i self.lifetimer
pushi.e 0
pop.v.i self.fun
pushi.e 0
pop.v.i self.extflag
pushbltn.v builtin.room
pushi.e 61
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
pushi.e 749
pop.v.i self.dtsprite
pushi.e 751
pop.v.i self.rtsprite
pushi.e 752
pop.v.i self.utsprite
pushi.e 750
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [6]

:[5]
pushi.e 931
pop.v.i self.utsprite
pushi.e 935
pop.v.i self.rtsprite
pushi.e 934
pop.v.i self.ltsprite
pushi.e 931
pop.v.i self.dtsprite

:[6]
push.v self.y
pushi.e 172
cmp.i.v GT
bf [9]

:[7]
pushi.e 942
pop.v.i self.dtsprite
pushi.e 942
pop.v.i self.utsprite
pushi.e 942
pop.v.i self.rtsprite
pushi.e 942
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [9]

:[8]
pushi.e 957
pop.v.i self.dtsprite
pushi.e 960
pop.v.i self.rtsprite
pushi.e 961
pop.v.i self.ltsprite
pushi.e 957
pop.v.i self.utsprite

:[9]
push.v self.y
pushi.e 212
cmp.i.v GT
bf [12]

:[10]
pushi.e 943
pop.v.i self.dtsprite
pushi.e 943
pop.v.i self.utsprite
pushi.e 944
pop.v.i self.rtsprite
pushi.e 945
pop.v.i self.ltsprite
push.v self.x
pushi.e 120
cmp.i.v GT
bf [12]

:[11]
pushi.e 952
pop.v.i self.utsprite
pushi.e 955
pop.v.i self.ltsprite
pushi.e 956
pop.v.i self.rtsprite
pushi.e 952
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
pushi.e 919
pop.v.i self.dtsprite
pushi.e 921
pop.v.i self.ltsprite
pushi.e 923
pop.v.i self.rtsprite
pushi.e 920
pop.v.i self.utsprite

:[14]
pushbltn.v builtin.room
pushi.e 50
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 1059
pop.v.i self.dtsprite
pushi.e 1064
pop.v.i self.utsprite
pushi.e 1062
pop.v.i self.rtsprite
pushi.e 1061
pop.v.i self.ltsprite

:[16]
pushbltn.v builtin.room
pushi.e 51
cmp.i.v EQ
bf [18]

:[17]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 1059
pop.v.i self.dtsprite
pushi.e 1064
pop.v.i self.utsprite
pushi.e 1062
pop.v.i self.rtsprite
pushi.e 1061
pop.v.i self.ltsprite

:[18]
pushbltn.v builtin.room
pushi.e 53
cmp.i.v EQ
bf [20]

:[19]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 919
pop.v.i self.dtsprite
pushi.e 920
pop.v.i self.utsprite
pushi.e 923
pop.v.i self.rtsprite
pushi.e 921
pop.v.i self.ltsprite

:[20]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [23]

:[21]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 1070
pop.v.i self.dtsprite
pushi.e 1073
pop.v.i self.utsprite
pushi.e 1072
pop.v.i self.rtsprite
pushi.e 1071
pop.v.i self.ltsprite

:[23]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [25]

:[24]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 1079
pop.v.i self.dtsprite
pushi.e 1080
pop.v.i self.ltsprite
pushi.e 1082
pop.v.i self.utsprite
pushi.e 1081
pop.v.i self.rtsprite

:[25]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [31]

:[26]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 749
pop.v.i self.dtsprite
pushi.e 750
pop.v.i self.ltsprite
pushi.e 752
pop.v.i self.utsprite
pushi.e 751
pop.v.i self.rtsprite
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 1
cmp.i.v LT
bt [28]

:[27]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
call.i instance_destroy(argc=0)
popz.v

:[31]
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
bf [37]

:[32]
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e 788
pop.v.i self.dtsprite
pushi.e 793
pop.v.i self.ltsprite
pushi.e 800
pop.v.i self.utsprite
pushi.e 797
pop.v.i self.rtsprite
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
bf [34]

:[33]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
call.i instance_destroy(argc=0)
popz.v

:[37]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [47]

:[38]
push.v self.x
pushi.e 310
cmp.i.v LT
bf [40]

:[39]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 788
pop.v.i self.dtsprite
pushi.e 793
pop.v.i self.ltsprite
pushi.e 800
pop.v.i self.utsprite
pushi.e 797
pop.v.i self.rtsprite

:[40]
push.v self.x
pushi.e 310
cmp.i.v GT
bf [42]

:[41]
push.v self.x
pushi.e 438
cmp.i.v LT
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 827
pop.v.i self.dtsprite
pushi.e 828
pop.v.i self.ltsprite
pushi.e 830
pop.v.i self.utsprite
pushi.e 829
pop.v.i self.rtsprite

:[45]
push.v self.x
pushi.e 438
cmp.i.v GT
bf [47]

:[46]
pushi.e 3
pop.v.i self.facing
pushi.e 3
pop.v.i self.dfacing
pushi.e 771
pop.v.i self.dtsprite
pushi.e 772
pop.v.i self.ltsprite
pushi.e 774
pop.v.i self.utsprite
pushi.e 773
pop.v.i self.rtsprite

:[47]
pushbltn.v builtin.room
pushi.e 78
cmp.i.v EQ
bf [49]

:[48]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 771
pop.v.i self.dtsprite
pushi.e 772
pop.v.i self.ltsprite
pushi.e 774
pop.v.i self.utsprite
pushi.e 773
pop.v.i self.rtsprite

:[49]
push.v self.extflag
push.s "ralsei_dw"@19471
cmp.s.v EQ
bf [51]

:[50]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 788
pop.v.i self.dtsprite
pushi.e 793
pop.v.i self.ltsprite
pushi.e 800
pop.v.i self.utsprite
pushi.e 797
pop.v.i self.rtsprite

:[51]
push.v self.extflag
push.s "susie_dw"@19472
cmp.s.v EQ
bf [53]

:[52]
pushi.e 2
pop.v.i self.facing
pushi.e 2
pop.v.i self.dfacing
pushi.e 827
pop.v.i self.dtsprite
pushi.e 828
pop.v.i self.ltsprite
pushi.e 830
pop.v.i self.utsprite
pushi.e 829
pop.v.i self.rtsprite

:[53]
call.i gml_Script_scr_npcdir(argc=0)
popz.v
push.v self.sprite_height_adjusted
pushi.e 0
cmp.i.v EQ
bf [62]

:[54]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.v self.y
push.v self.sprite_height
sub.v.v
pop.v.v self.y
pushi.e 1
pop.v.i self.sprite_height_adjusted

:[56]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [58]

:[57]
pushglb.v global.plot
pushi.e 12
cmp.i.v LTE
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.v self.y
push.v self.sprite_height
sub.v.v
pop.v.v self.y
pushi.e 1
pop.v.i self.sprite_height_adjusted

:[61]
pushi.e 1
pop.v.i self.sprite_height_adjusted

:[62]
push.v self.depthcancel
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[64]
push.v self.depth
push.v self.depthbonus
add.v.v
pop.v.v self.depth

:[end]