.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushi.e 3551
conv.i.v
pushi.e 200
conv.i.v
pushi.e 400
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.s
pushi.e 3575
conv.i.v
pushi.e 200
conv.i.v
pushi.e 300
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pop.v.v self.r
pushi.e 1407
pushenv [3]

:[2]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 12
pop.v.i self.hspeed
push.d 0.334
pop.v.d self.image_speed

:[3]
popenv [2]
pushi.e 2
pop.v.i self.con

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [14]

:[5]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
push.v 1351.x
pushi.e 100
cmp.i.v GTE
b [8]

:[7]
push.e 0

:[8]
bf [14]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 14
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.i

:[10]
push.v self.i
push.v self.dmax
cmp.v.v LT
bf [14]

:[11]
push.i 167793
setowner.e
pushi.e 3990
conv.i.v
pushi.e -100
conv.i.v
pushi.e 400
push.v self.i
pushi.e 120
mul.i.v
add.v.i
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.d
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.d
pushi.e -9
pushenv [13]

:[12]
pushi.e 10
pop.v.i self.vspeed
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v

:[13]
popenv [12]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [10]

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [21]

:[15]
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
push.v self.dmax
cmp.v.v LT
bf [20]

:[17]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.d
pushi.e -9
pushenv [19]

:[18]
call.i gml_Script_scr_halt_ch1(argc=0)
popz.v

:[19]
popenv [18]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[20]
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[21]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [23]

:[22]
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.i 231251
setowner.e
push.s "obj_lancerchase2_slash_Step_0_gml_43_0"@38729
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_lancerchase2_slash_Step_0_gml_44_0"@38730
conv.s.v
call.i gml_Script_scr_84_get_lang_string_ch1(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 7
pop.v.i self.con
pushi.e 1330
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.doo
pushi.e 1
push.v self.doo
pushi.e -9
pop.v.i [stacktop]self.side

:[23]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [25]

:[24]
call.i gml_Script_d_ex_ch1(argc=0)
conv.v.b
not.b
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
pushi.e 0
pop.v.i global.interact
pushi.e 1512
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[28]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [32]

:[29]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 0
pop.v.i self.i

:[30]
push.v self.i
push.v self.dmax
cmp.v.v LT
bf [32]

:[31]
push.i 133617
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.d
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.v self.siner
push.v self.i
pushi.e 2
mul.i.v
add.v.v
pushi.e 8
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.i.v [stacktop]self.x
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [30]

:[32]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [38]

:[33]
pushi.e 0
pop.v.i self.dtimer
pushi.e 0
pop.v.i self.dsiner
push.v 1351.y
pushi.e 2640
cmp.i.v LTE
bf [38]

:[34]
pushi.e 0
pop.v.i self.i

:[35]
push.v self.i
pushi.e 19
cmp.i.v LT
bf [37]

:[36]
push.i 175255
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dactive
push.i 175254
setowner.e
push.v self.i
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dsiner
push.i 169111
setowner.e
pushi.e 3990
conv.i.v
pushi.e 20
push.v self.i
pushi.e 140
mul.i.v
add.v.i
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dl
push.i 175256
setowner.e
pushi.e 3990
conv.i.v
pushi.e 20
push.v self.i
pushi.e 140
mul.i.v
add.v.i
pushi.e 660
conv.i.v
call.i gml_Script_scr_dark_marker_ch1(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dr
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [35]

:[37]
pushi.e 21
pop.v.i self.con

:[38]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [end]

:[39]
push.v self.dtimer
pushi.e 1
add.i.v
pop.v.v self.dtimer
pushi.e 0
pop.v.i self.i

:[40]
push.v self.i
pushi.e 19
cmp.i.v LT
bf [end]

:[41]
push.v 1351.y
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dl
pushi.e -9
push.v [stacktop]self.y
pushi.e 80
add.i.v
cmp.v.v LT
bf [43]

:[42]
push.i 175255
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.dactive

:[43]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dactive
pushi.e 1
cmp.i.v EQ
bf [47]

:[44]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dsiner
pushi.e 140
cmp.i.v LT
bf [46]

:[45]
push.i 175254
setowner.e
pushi.e -1
push.v self.i
conv.v.i
dup.i 1
push.v [array]self.dsiner
pushi.e 10
add.i.v
pop.i.v [array]self.dsiner

:[46]
push.i 133617
setowner.e
pushi.e -100
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dsiner
add.v.i
push.v self.dtimer
push.v self.i
pushi.e 6
mul.i.v
add.v.v
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dl
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 660
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dsiner
sub.v.i
push.v self.dtimer
push.v self.i
pushi.e 6
mul.i.v
add.v.v
pushi.e 16
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
sub.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.dr
pushi.e -9
pop.v.v [stacktop]self.x

:[47]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [40]

:[end]