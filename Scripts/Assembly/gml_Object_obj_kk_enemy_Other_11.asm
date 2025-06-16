.localvar 2 arguments
.localvar 26550 sweet_string 13596
.localvar 26552 capn_string 13597
.localvar 26554 kk_string 13598

:[0]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=5)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [8]

:[1]
push.s "obj_kk_enemy_slash_Other_11_gml_4_0"@26549
conv.s.v
push.s "* Sweet shimmies defiantly."@26396
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.sweet_string
push.s "obj_kk_enemy_slash_Other_11_gml_5_0"@26551
conv.s.v
push.s "* Cap'n spins his cap around."@26398
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.capn_string
push.s "obj_kk_enemy_slash_Other_11_gml_6_0"@26553
conv.s.v
push.s "* K_K is a CD player."@26400
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.kk_string
push.v 710.dancing
pushi.e 1
cmp.b.v EQ
bf [3]

:[2]
push.s "obj_kk_enemy_slash_Other_11_gml_8_0"@26555
conv.s.v
push.s "* Sweet is lost in the groove!"@26556
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.sweet_string

:[3]
push.v 712.dancing
pushi.e 1
cmp.b.v EQ
bf [5]

:[4]
push.s "obj_kk_enemy_slash_Other_11_gml_9_0"@26557
conv.s.v
push.s "* Cap'n is lost in the groove!"@26558
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.capn_string

:[5]
push.v self.dancing
pushi.e 1
cmp.b.v EQ
bf [7]

:[6]
push.s "obj_kk_enemy_slash_Other_11_gml_10_0"@26559
conv.s.v
push.s "* K_K is lost in the groove!"@26560
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.kk_string

:[7]
push.i 231921
setowner.e
pushloc.v local.sweet_string
push.s "&"@6153
add.s.v
pushloc.v local.kk_string
add.v.v
push.s "&"@6153
add.s.v
pushloc.v local.capn_string
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[8]
push.v self.rr
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_kk_enemy_slash_Step_0_gml_130_0"@26561
conv.s.v
push.s "* Smells like music."@26402
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[10]
pushi.e 0
pop.v.i 718.ralseiportrait
push.v 710.actCounter
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
push.v 710.letsdance
conv.v.b
not.b
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
pushi.e 1
pop.v.b 710.letsdance
pushi.e 1
pop.v.i 718.ralseiportrait
push.s "obj_kk_enemy_slash_Step_0_gml_126_0"@26563
conv.s.v
push.s "* Perhaps if we can get them all to dance, we can win?"@26564
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[15]
push.v 710.actCounter
pushi.e 2
cmp.i.v EQ
bf [18]

:[16]
push.v 710.letsdance2
conv.v.b
not.b
bf [18]

:[17]
push.v 718.happyfeetscene
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [21]

:[20]
pushi.e 1
pop.v.b 710.letsdance2
pushi.e 1
pop.v.i 718.ralseiportrait
push.s "obj_kk_enemy_slash_Other_11_gml_29_0"@26565
conv.s.v
push.s "* Kris, just keep trying to dance!"@26566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[21]
push.v 710.actCounter
pushi.e 3
cmp.i.v EQ
bf [24]

:[22]
push.v 710.letsdance3
conv.v.b
not.b
bf [24]

:[23]
push.v 718.happyfeetscene
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
pushi.e 1
pop.v.b 710.letsdance3
pushi.e 1
pop.v.i 718.ralseiportrait
push.s "obj_kk_enemy_slash_Other_11_gml_37_0"@26567
conv.s.v
push.s "* U-umm... Kris, maybe if you... keep dancing?"@26568
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[end]