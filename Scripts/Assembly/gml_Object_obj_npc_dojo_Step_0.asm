.localvar 2 arguments

:[0]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [13]

:[1]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1171
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[3]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1175
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[5]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1176
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[7]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [13]

:[8]
pushi.e 281
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [10]

:[9]
pushi.e 0
pop.v.i global.interact

:[10]
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [12]

:[11]
pushi.e 5
pop.v.i self.onebuffer

:[12]
popenv [11]

:[13]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [15]

:[14]
pushi.e 11
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[15]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [17]

:[16]
pushglb.v global.fighting
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 13
pop.v.i self.con
pushi.e 15
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[20]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [59]

:[21]
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e -5
pushi.e 36
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [48]

:[22]
pushi.e -5
push.v self.dojoFlag
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [38]

:[23]
push.v self.dojoFlag
pushi.e 810
cmp.i.v EQ
bt [27]

:[24]
push.v self.dojoFlag
pushi.e 811
cmp.i.v EQ
bt [27]

:[25]
push.v self.dojoFlag
pushi.e 812
cmp.i.v EQ
bt [27]

:[26]
push.v self.dojoFlag
pushi.e 813
cmp.i.v EQ
b [28]

:[27]
push.e 1

:[28]
bf [32]

:[29]
push.s "obj_npc_dojo_slash_Step_0_gml_45_0"@21072
conv.s.v
push.s "* An amazing battle!/"@21073
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_dojo_slash_Step_0_gml_46_0"@21074
conv.s.v
push.s "* As promised^1, here is your reward!/"@21075
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.v self.dojoPrizeType
push.v self.dojoPrizeValue
call.i gml_Script_scr_itemget_anytype(argc=2)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v NEQ
bf [31]

:[30]
push.s "obj_npc_dojo_slash_Step_0_gml_56_0"@21076
conv.s.v
push.s "* Boss!^1 Your inventory is full!!/"@21077
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_dojo_slash_Step_0_gml_65_0"@21078
conv.s.v
push.s "* You'll just have to try again^1, boss!/%"@21079
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.dojoFlag
conv.v.i
pop.v.v [array]self.flag
b [32]

:[31]
push.s "obj_npc_dojo_slash_Step_0_gml_51_0"@21080
conv.s.v
push.v self.dojoPrizeName
push.s "* (You received ~1!)/%"@21081
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
push.v self.dojoFlag
conv.v.i
pop.v.v [array]self.flag

:[32]
push.v self.dojoFlag
pushi.e 814
cmp.i.v EQ
bf [37]

:[33]
pushi.e -5
pushi.e 50
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_npc_dojo_slash_Step_0_gml_77_0"@21082
conv.s.v
push.s "* Hey^1! That's not how you \\cYSPARE\\cW someone!/"@21083
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_dojo_slash_Step_0_gml_78_0"@21084
conv.s.v
push.s "* ..^1. but I guess a win is a win./"@21085
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [36]

:[35]
push.s "obj_npc_dojo_slash_Step_0_gml_45_0"@21072
conv.s.v
push.s "* An amazing battle!/"@21073
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_dojo_slash_Step_0_gml_46_0"@21074
conv.s.v
push.s "* As promised^1, here is your reward!/"@21075
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[36]
push.s "obj_npc_dojo_slash_Step_0_gml_85_0"@21086
conv.s.v
push.s "* You received Joe's Life Savings ($1)!/%"@21087
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.v self.dojoPrizeType
push.v self.dojoPrizeValue
call.i gml_Script_scr_itemget_anytype(argc=2)
popz.v
pushi.e 2
conv.i.v
pushi.e -5
push.v self.dojoFlag
conv.v.i
pop.v.v [array]self.flag

:[37]
b [47]

:[38]
push.v self.dojoFlag
pushi.e 810
cmp.i.v EQ
bt [42]

:[39]
push.v self.dojoFlag
pushi.e 811
cmp.i.v EQ
bt [42]

:[40]
push.v self.dojoFlag
pushi.e 812
cmp.i.v EQ
bt [42]

:[41]
push.v self.dojoFlag
pushi.e 813
cmp.i.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [45]

:[44]
push.s "obj_npc_dojo_slash_Step_0_gml_45_0"@21072
conv.s.v
push.s "* An amazing battle!/"@21073
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_dojo_slash_Step_0_gml_99_0"@21088
conv.s.v
push.s "* But you already won that prize^1, so we don't have another!/%"@21089
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[45]
push.v self.dojoFlag
pushi.e 814
cmp.i.v EQ
bf [47]

:[46]
push.s "obj_npc_dojo_slash_Step_0_gml_45_0"@21072
conv.s.v
push.s "* An amazing battle!/"@21073
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_dojo_slash_Step_0_gml_105_0"@21090
conv.s.v
push.s "* ...I don't have any more to give. You've already taken everything I have./%"@21091
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[47]
b [58]

:[48]
push.v self.dojoFlag
pushi.e 810
cmp.i.v EQ
bf [50]

:[49]
push.s "obj_npc_dojo_slash_Step_0_gml_115_0"@21092
conv.s.v
push.s "* Boss^1! For bullets aimed right at you^1, try moving \\cYone direction bit by bit\\cW...!/%"@21093
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[50]
push.v self.dojoFlag
pushi.e 812
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_npc_dojo_slash_Step_0_gml_120_0"@21094
conv.s.v
push.s "* Boss^1! Try to remember your ABCs...!/%"@21095
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[52]
push.v self.dojoFlag
pushi.e 814
cmp.i.v EQ
bt [55]

:[53]
push.v self.dojoFlag
pushi.e 811
cmp.i.v EQ
bt [55]

:[54]
push.v self.dojoFlag
pushi.e 813
cmp.i.v EQ
b [56]

:[55]
push.e 1

:[56]
bf [58]

:[57]
push.s "obj_npc_dojo_slash_Step_0_gml_61_0"@21096
conv.s.v
push.s "* You beefed it! Better luck next time^1, boss!/%"@21097
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[58]
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 15
pop.v.i self.con

:[59]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [61]

:[60]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [62]

:[61]
push.e 0

:[62]
bf [end]

:[63]
pushi.e 999
conv.i.v
call.i gml_Script_scr_healall(argc=1)
popz.v
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 35
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 36
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 37
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 38
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 39
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 60
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 61
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[end]