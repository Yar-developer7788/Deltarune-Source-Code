.localvar 2 arguments

:[0]
push.v self.ambushed
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_scr_ambush(argc=0)
popz.v
pushi.e 1
pop.v.i self.ambushed

:[2]
push.v self.plot
pushi.e 3
cmp.i.v NEQ
bf [7]

:[3]
push.i 231578
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charmove
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charmove
pushi.e -5
pushi.e 0
push.v [array]self.charspecial
pushi.e 100
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.spare_used
b [6]

:[5]
pushi.e 0
pop.v.i self.spare_used

:[6]
b [22]

:[7]
push.i 231578
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.charmove
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charmove
pushi.e -5
pushi.e 1
push.v [array]self.charspecial
pushi.e 100
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.ral_wrongcommand

:[9]
pushi.e -5
pushi.e 1
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.ral_wrongcommand

:[11]
pushi.e -5
pushi.e 1
push.v [array]self.charaction
pushi.e 2
cmp.i.v NEQ
bf [13]

:[12]
pushi.e -5
pushi.e 1
push.v [array]self.charaction
pushi.e 4
cmp.i.v NEQ
b [14]

:[13]
push.e 0

:[14]
bf [22]

:[15]
pushi.e 355
pushenv [21]

:[16]
pushi.e 371
pushenv [20]

:[17]
push.v self.state
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i self.state

:[19]
pushi.e 0
pop.v.i self.attacked
pushi.e 0
pop.v.i self.itemed

:[20]
popenv [17]
pushi.e 1
pop.v.i global.mnfight
pushi.e -1
pop.v.i global.myfight
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [16]
push.i 231563
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.charaction
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.faceaction

:[22]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monster
pushi.e 1
cmp.i.v EQ
bf [247]

:[23]
push.i 231204
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 51
push.v self.myself
add.v.i
conv.v.i
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.commanded
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [189]

:[27]
push.i 232374
setowner.e
pushi.e 2243
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.writerimg
pushi.e 2242
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.writerimg
pushi.e 2250
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.writerimg
pushi.e 2240
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.writerimg
pushi.e 2244
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.writerimg
pushi.e 2248
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.writerimg
push.v self.attackcon
pushi.e 0
cmp.i.v EQ
bf [40]

:[28]
call.i gml_Script_scr_moveheart(argc=0)
popz.v
pushi.e 1
pop.v.i self.abletotarget
pushi.e -5
pushi.e 0
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [31]

:[29]
pushi.e -5
pushi.e 1
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
pushi.e -5
pushi.e 2
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 0
pop.v.i self.abletotarget

:[34]
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.mytarget
push.v self.abletotarget
pushi.e 1
cmp.i.v EQ
bf [38]

:[35]
pushi.e -5
push.v self.mytarget
conv.v.i
push.v [array]self.charcantarget
pushi.e 0
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.mytarget
b [35]

:[37]
b [39]

:[38]
pushi.e 3
pop.v.i self.target

:[39]
push.i 231544
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.mytarget
conv.v.i
pop.v.v [array]self.targeted
pushi.e 1
pop.v.i self.attackcon
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 363
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[40]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_81_0"@21900
conv.s.v
push.s "* Skip/%"@21901
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.plot
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 0
pop.v.i global.fe
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 30
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_87_0"@21902
conv.s.v
push.s "\\E0* See that \\cRHEART\\cW, Kris?/"@21903
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_88_0"@21904
conv.s.v
push.s "* That's your \\cRSOUL\\cW, the culmination of your being!/"@21905
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_89_0"@21906
conv.s.v
push.s "\\EB* Within^1, it holds your WILL..^1. your COMPASSION.../"@21907
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_90_0"@21908
conv.s.v
push.s "\\E1* ... and the FATE of the world./"@21909
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_91_0"@21910
conv.s.v
push.s "\\EB* If it gets hit^1, you and your friends will lose HP./"@21911
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_92_0"@21912
conv.s.v
push.s "\\E3* If everyone's HP reaches 0^1, we'll lose the battle./"@21913
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_93_0"@21914
conv.s.v
push.s "\\E0* So^1, please take care to avoid the enemy's attack./"@21915
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_94_0"@21916
conv.s.v
push.s "\\E8* Ready^1?&* Let's try dodging!/%"@21917
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg

:[45]
push.v self.plot
pushi.e 1
cmp.i.v GTE
bf [184]

:[46]
pushi.e 0
pop.v.i self.dial
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 1
cmp.i.v EQ
bf [65]

:[47]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
cmp.v.v GT
bf [49]

:[48]
pushi.e 1
pop.v.i self.dial

:[49]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
cmp.v.v EQ
bf [51]

:[50]
push.v self.plot
pushi.e 1
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [54]

:[53]
pushi.e 2
pop.v.i self.dial

:[54]
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
cmp.v.v EQ
bf [57]

:[55]
push.v self.misstime
pushi.e 9
cmp.i.v EQ
bf [57]

:[56]
push.v self.plot
pushi.e 2
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 3
pop.v.i self.dial
push.i 231204
setowner.e
pushi.e 6
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag

:[60]
push.v self.dial
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.v self.hitdum
pushi.e 3
cmp.i.v GTE
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
pushi.e 4
pop.v.i self.hitdum
pushi.e 3
pop.v.i self.dial
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag

:[65]
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 10
cmp.i.v EQ
bf [67]

:[66]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [68]

:[67]
push.e 0

:[68]
bf [83]

:[69]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_115_0"@21919
conv.s.v
push.s "\\E0* That's DEFENDING^1, Kris^1.&* You'll recover TP and take less damage./"@21920
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_116_0"@21921
conv.s.v
push.s "\\E8* You should learn to ATTACK first^1, though./%"@21922
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.defendtime
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.s "obj_dummyenemy_slash_Step_0_gml_120_0"@21923
conv.s.v
push.s "\\E8* Gee^1, Kris^1!&* You sure are good at defending!/"@21924
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_121_0"@21925
conv.s.v
push.s "\\E6* I'm not attacking^1, you^1, though, so...&* No need to defend!/%"@21926
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[71]
push.v self.defendtime
pushi.e 2
cmp.i.v EQ
bf [73]

:[72]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_127_0"@21927
conv.s.v
push.s "\\E1* Ummm..^1.&* Kris?/"@21928
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_128_0"@21929
conv.s.v
push.s "\\E8* There are no bullets^1, and you can't use TP.../"@21930
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_129_0"@21931
conv.s.v
push.s "\\E8* So^1, umm^1, maybe you could stop defending?/%"@21932
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[73]
push.v self.defendtime
pushi.e 3
cmp.i.v EQ
bf [75]

:[74]
pushi.e 9
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_136_0"@21933
conv.s.v
push.s "\\E9* .../%"@21934
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[75]
push.v self.plot
pushi.e 2
cmp.i.v EQ
bf [80]

:[76]
push.i 232374
setowner.e
pushi.e 2250
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.writerimg
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_142_0"@21935
conv.s.v
push.s "\\E8* Great job^1, Kris^1!&* Now that you've gathered TP -/"@21936
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_143_0"@21937
conv.s.v
push.s "\\E0* How about spending that TP on one of my \\cYSPELLs\\cW?/"@21938
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_144_0"@21939
conv.s.v
push.s "* Because you hit the enemy enough^1, it got \\cBTIRED\\cW./"@21940
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_145_0"@21941
conv.s.v
push.s "* Now^1, if I use my \\cYPACIFY\\cW spell on it.../"@21942
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_146_0"@21943
conv.s.v
push.s "\\E8* It'll fall asleep^1, and we'll win peacefully!/%"@21944
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
pushi.e -5
pushi.e 0
push.v [array]self.monstermaxhp
cmp.v.v EQ
bf [78]

:[77]
push.s "obj_dummyenemy_slash_Step_0_gml_150_0"@21945
conv.s.v
push.s "\\E1* If you had^1, um^1, hit the enemy^1, it'd be TIRED now./"@21946
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_151_0"@21947
conv.s.v
push.s "\\E0* In that case^1, we use my \\cYPACIFY\\cW spell on it.../"@21948
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[78]
pushi.e 3
pop.v.i self.plot
push.v self.defendtime
pushi.e 4
cmp.i.v EQ
bf [80]

:[79]
pushi.e 3
pop.v.i self.defendtime

:[80]
push.v self.defendtime
pushi.e 4
cmp.i.v GTE
bf [82]

:[81]
pushi.e 3
pop.v.i self.dial
push.i 231204
setowner.e
pushi.e 5
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag

:[82]
push.v self.defendtime
pushi.e 1
add.i.v
pop.v.v self.defendtime
pushi.e 1
pop.v.i self.commanded

:[83]
pushi.e -5
pushi.e 0
push.v [array]self.charaction
pushi.e 4
cmp.i.v EQ
bf [85]

:[84]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [86]

:[85]
push.e 0

:[86]
bf [96]

:[87]
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_167_0"@21949
conv.s.v
push.s "\\E0* Oh^1, Kris^1, you found an \\cYITEM\\cW?/"@21950
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_168_0"@21951
conv.s.v
push.s "\\E1* I figured \\cYITEMs\\cW are self-explanatory^1, so.../"@21952
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_169_0"@21953
conv.s.v
push.s "\\E6* Let's skip over them for now^1, OK?/%"@21954
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.item_command
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_174_0"@21955
conv.s.v
push.s "\\E3* You really want to learn about \\cYITEMS\\cW, Kris...?/"@21956
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_175_0"@21957
conv.s.v
push.s "\\E0* OK^1, I'll teach you!/"@21958
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_176_0"@21959
conv.s.v
push.s "\\E1* Errm.../"@21960
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_177_0"@21961
conv.s.v
push.s "\\E0* You use them^1, and something happens./"@21962
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_178_0"@21963
conv.s.v
push.s "\\E8* ... is that sufficient?/%"@21964
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[89]
push.v self.item_command
pushi.e 2
cmp.i.v EQ
bf [91]

:[90]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_184_0"@21965
conv.s.v
push.s "\\E6* Yes^1, haha^1, that \\cYITEM\\cW is very pretty^1, isn't it?/"@21966
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_185_0"@21967
conv.s.v
push.s "\\E8* I'm glad you're enjoying yourself^1, Kris...!/%"@21968
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[91]
push.v self.item_command
pushi.e 3
cmp.i.v EQ
bf [93]

:[92]
pushi.e 0
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_191_0"@21969
conv.s.v
push.s "\\E8* Kris^1, we can find lots more ITEMs on our journey!/"@21970
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_192_0"@21971
conv.s.v
push.s "\\E0* Which^1, will continue..^1. after this tutorial./%"@21972
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[93]
push.v self.item_command
pushi.e 4
cmp.i.v GTE
bf [95]

:[94]
pushi.e 3
pop.v.i self.dial

:[95]
pushi.e 1
pop.v.i self.commanded
push.v self.item_command
pushi.e 1
add.i.v
pop.v.v self.item_command

:[96]
push.v self.ral_wrongcommand
pushi.e 1
cmp.i.v EQ
bf [98]

:[97]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [99]

:[98]
push.e 0

:[99]
bf [112]

:[100]
push.s "obj_dummyenemy_slash_Step_0_gml_206_0"@21973
conv.s.v
push.s "\\E8* Kris^1, please ask me to do a spell./%"@21974
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.ral_wrongcommand_count
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
push.s "obj_dummyenemy_slash_Step_0_gml_211_0"@21975
conv.s.v
push.s "\\E8* Kris^1, wouldn't you rather learn about \\cYSPELLs\\cW?/%"@21976
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[102]
push.v self.ral_wrongcommand_count
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
push.s "obj_dummyenemy_slash_Step_0_gml_216_0"@21977
conv.s.v
push.s "\\E6* Kris^1, do you..^1. know what a \\cYSPELL\\cW is?/"@21978
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_217_0"@21979
conv.s.v
push.s "\\E1* Can humans not even ASK people to use them...?/%"@21980
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[104]
push.v self.ral_wrongcommand_count
pushi.e 2
cmp.i.v EQ
bf [106]

:[105]
push.s "obj_dummyenemy_slash_Step_0_gml_222_0"@21981
conv.s.v
push.s "\\E6* Kris^1, what if you just give me a hand sign?/%"@21982
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[106]
push.v self.ral_wrongcommand_count
pushi.e 3
cmp.i.v EQ
bf [111]

:[107]
push.s "obj_dummyenemy_slash_Step_0_gml_227_0"@21983
conv.s.v
push.s "*\\E8 Ummm^1, if this is too difficult.../"@21984
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_228_0"@21985
conv.s.v
push.s "* Let's move to the next lesson^1, OK?/"@21986
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_229_0"@21987
conv.s.v
push.s "* \\I3   ing^1! Through this^1, even the most violent enemies.../"@21988
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_230_0"@21989
conv.s.v
push.s "\\E8* Can be defeated through various \\I3   s of kindness!/"@21990
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_231_0"@21991
conv.s.v
push.s "* Kris^1, though it's just a dummy^1, why not give it a HUG?/%"@21992
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.plot
pushi.e 3
cmp.i.v EQ
bf [109]

:[108]
pushi.e 4
pop.v.i self.plot

:[109]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [111]

:[110]
push.s "obj_dummyenemy_slash_Step_0_gml_237_0"@21993
conv.s.v
push.s "\\EB* Remember when you \\cYHUGGED\\cW the dummy by \\I3   ing on it?/"@21994
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_238_0"@21995
conv.s.v
push.s "\\E0* Because of that^1, its name turned \\cYYELLOW\\cW!/"@21996
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_239_0"@21997
conv.s.v
push.s "* Now by using the \\cYSPARE\\cW (\\I4   ) command^1, you can win!/%"@21998
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
pop.v.i self.plot

:[111]
push.v self.ral_wrongcommand_count
pushi.e 1
add.i.v
pop.v.v self.ral_wrongcommand_count
pushi.e 0
pop.v.i self.commanded

:[112]
pushi.e -5
pushi.e 1
push.v [array]self.charaction
pushi.e 2
cmp.i.v EQ
bf [115]

:[113]
push.v self.ral_wrongcommand
pushi.e 0
cmp.i.v EQ
bf [115]

:[114]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [116]

:[115]
push.e 0

:[116]
bf [123]

:[117]
push.s "obj_dummyenemy_slash_Step_0_gml_252_0"@21999
conv.s.v
push.s "\\E0* Great^1, Kris^1! A healing spell works too!/"@22000
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_253_0"@22001
conv.s.v
push.s "* Now I have just a little more to teach you!/"@22002
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_254_0"@22003
conv.s.v
push.s "* \\I3   ing^1! Through this^1, even the most violent enemies.../"@21988
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_255_0"@22004
conv.s.v
push.s "\\E8* Can be defeated through various \\I3   s of kindness!/"@21990
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_256_0"@22005
conv.s.v
push.s "\\E6* Kris^1, though it's just a dummy^1, why not give it a HUG?/%"@22006
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.pacifycon
pushi.e 1
cmp.i.v EQ
bf [120]

:[118]
push.s "obj_dummyenemy_slash_Step_0_gml_260_0"@22007
conv.s.v
push.s "\\E0* Great^1, Kris^1! We would have won the battle by now!/"@22008
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterstatus
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
push.s "obj_dummyenemy_slash_Step_0_gml_262_0"@22009
conv.s.v
push.s "\\E0* Great^1, Kris^1! If it was TIRED we would have won!/"@22010
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[120]
pushi.e 4
pop.v.i self.plot
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [122]

:[121]
push.s "obj_dummyenemy_slash_Step_0_gml_268_0"@22011
conv.s.v
push.s "\\E0* Remember when you \\cYHUGGED\\cW the dummy by \\I3   ing on it?/"@22012
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_269_0"@22013
conv.s.v
push.s "* Because of that^1, its name turned \\cYYELLOW\\cW!/"@22014
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_270_0"@22015
conv.s.v
push.s "* Now by using the \\cYSPARE\\cW (\\I4   ) command^1, you can win!/%"@21998
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
pop.v.i self.plot

:[122]
pushi.e 1
pop.v.i self.commanded

:[123]
push.v self.spare_used
pushi.e 1
cmp.i.v EQ
bf [125]

:[124]
push.v self.commanded
pushi.e 0
cmp.i.v EQ
b [126]

:[125]
push.e 0

:[126]
bf [143]

:[127]
push.v self.plot
pushi.e 5
cmp.i.v LT
bf [140]

:[128]
pushi.e 0
pop.v.i global.fe
push.v self.spare_command
pushi.e 0
cmp.i.v EQ
bf [130]

:[129]
push.s "obj_dummyenemy_slash_Step_0_gml_282_0"@22016
conv.s.v
push.s "\\E8* Ah^1, Kris^1, don't worry about that command yet!/%"@22017
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[130]
push.v self.spare_command
pushi.e 1
cmp.i.v EQ
bf [132]

:[131]
push.s "obj_dummyenemy_slash_Step_0_gml_283_0"@22018
conv.s.v
push.s "\\E6* You're really merciful^1, aren't you^1, Kris?/%"@22019
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[132]
push.v self.spare_command
pushi.e 2
cmp.i.v GTE
bf [134]

:[133]
push.s "obj_dummyenemy_slash_Step_0_gml_284_0"@22020
conv.s.v
push.s "\\E1* Kris^1, you are aware it's just a dummy^1, right...?/%"@22021
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[134]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.mercymod
pushi.e 100
cmp.i.v GTE
bf [136]

:[135]
push.v self.win_spare
pushi.e 1
add.i.v
pop.v.v self.win_spare

:[136]
push.v self.win_spare
pushi.e 1
cmp.i.v EQ
bf [138]

:[137]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_289_0"@22022
conv.s.v
push.s "\\E0* Kris^1, since you SPARED an enemy after ACTING,/"@22023
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_290_0"@22024
conv.s.v
push.s "\\E1* You would have won in a real battle, but, um.../"@22025
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_291_0"@22026
conv.s.v
push.s "\\E0* Don't you want to learn other things^1, first?/%"@22027
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[138]
push.v self.win_spare
pushi.e 2
cmp.i.v EQ
bf [140]

:[139]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_296_0"@22028
conv.s.v
push.s "\\E0* I see..^1. Then^1, perhaps we can just end here./"@22029
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_297_0"@22030
conv.s.v
push.s "\\E1* You know how to win peacefully, so.../"@22031
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_298_0"@22032
conv.s.v
push.s "\\E8* That's good enough for me!/%"@22033
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.won

:[140]
push.v self.plot
pushi.e 5
cmp.i.v EQ
bf [142]

:[141]
push.s "obj_dummyenemy_slash_Step_0_gml_307_0"@22034
conv.s.v
push.s "\\E0* Great job^1, Kris^1!&* That'd be the end in a real battle!/"@22035
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_308_0"@22036
conv.s.v
push.s "\\E8* I'm really happy I had the chance to teach you^1, Kris!/%"@22037
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 1
pop.v.i self.won

:[142]
pushi.e 0
pop.v.i self.spare_used
push.v self.spare_command
pushi.e 1
add.i.v
pop.v.v self.spare_command
pushi.e 1
pop.v.i self.commanded

:[143]
push.v self.dial
pushi.e 1
cmp.i.v EQ
bf [162]

:[144]
push.v self.plot
pushi.e 1
cmp.i.v EQ
bf [153]

:[145]
pushi.e 3
pop.v.i global.fe
push.v self.dummyhp
pushi.e -5
pushi.e 0
push.v [array]self.monsterhp
pushi.e 50
add.i.v
cmp.v.v GT
bf [147]

:[146]
push.s "obj_dummyenemy_slash_Step_0_gml_327_0"@22038
conv.s.v
push.s "\\E3* W-wow^1, Kris^1!&* That was an amazing attack!/"@22039
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_328_0"@22040
conv.s.v
push.s "\\E8* Have you done this before or something...?/"@22041
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [148]

:[147]
push.s "obj_dummyenemy_slash_Step_0_gml_332_0"@22042
conv.s.v
push.s "\\E0* Good job^1, Kris^1!&* By the way^1, you'll do more damage.../"@22043
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_333_0"@22044
conv.s.v
push.s "\\E8* Pressing Z when the cursor enters the box on the left!/"@22045
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[148]
push.v self.misstime
pushi.e 6
cmp.i.v GTE
bf [150]

:[149]
pushi.e 8
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_338_0"@22046
conv.s.v
push.s "\\E3* Kris^1!&* You did it!!!/"@22047
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_339_0"@22048
conv.s.v
push.s "\\E8* (I was really just about at my limit...)/"@22049
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[150]
push.s "obj_dummyenemy_slash_Step_0_gml_341_0"@22050
conv.s.v
push.s "\\E0* OK, next let's try DEFENDING. (\\I1    )/"@22051
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_342_0"@22052
conv.s.v
push.s "* Simply (\\I1   )^1, and the enemy's attack will hurt you less.../"@22053
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_343_0"@22054
conv.s.v
push.s "* Not only that^1, but you'll also gather \\cYTP\\cW!/"@22055
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_344_0"@22056
conv.s.v
push.s "* (Watch the orange big bar on the left^1! I'll explain it next!)/%"@22057
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 2
pop.v.i self.plot
push.v self.defendtime
pushi.e 1
cmp.i.v GTE
bf [152]

:[151]
push.s "obj_dummyenemy_slash_Step_0_gml_348_0"@22058
conv.s.v
push.s "\\E0* Kris^1, if you didn't notice^1, when you DEFENDED before -/"@22059
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_349_0"@22060
conv.s.v
push.s "* The big orange TP bar on the left filled up a bit!/"@22061
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_350_0"@22062
conv.s.v
push.s "* How about spending that TP on one of my \\cYSPELLs\\cW?/"@22063
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_351_0"@22064
conv.s.v
push.s "* Because you hit the enemy enough^1, it got \\cBTIRED\\cW./"@21940
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_352_0"@22065
conv.s.v
push.s "* Now^1, if I use my \\cYPACIFY\\cW spell on it.../"@21942
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_353_0"@22066
conv.s.v
push.s "* It'll fall asleep^1, and we'll win peacefully!/%"@22067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
pushi.e 3
pop.v.i self.plot

:[152]
b [162]

:[153]
push.v self.hitdum
pushi.e 0
cmp.i.v EQ
bf [155]

:[154]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_364_0"@22068
conv.s.v
push.s "\\E1* Ummm..^1. Kris^1?&* You don't need to hit it anymore./"@22069
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_365_0"@22070
conv.s.v
push.s "\\E8* I already know you're great at attacking!/%"@22071
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[155]
push.v self.hitdum
pushi.e 1
cmp.i.v EQ
bf [157]

:[156]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_372_0"@22072
conv.s.v
push.s "\\E1* U-umm^1, Kris..^1. H-How do I put this...?/"@22073
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_373_0"@22074
conv.s.v
push.s "\\E1* Kris^1, seeing you^1, um^1, attack an effigy of myself.../"@22075
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_374_0"@22076
conv.s.v
push.s "\\E6* ... Kris^1, are you trying to say something?/%"@22077
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[157]
push.v self.hitdum
pushi.e 2
cmp.i.v EQ
bf [159]

:[158]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_380_0"@22078
conv.s.v
push.s "\\E6* Ah^1, Kris..^1. I..^1. um^1, I think I understand./"@22079
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_381_0"@22080
conv.s.v
push.s "\\E1* W^1-well^1, if..^1. during our adventure,/"@22081
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_382_0"@22082
conv.s.v
push.s "\\E7* ... if you want to hit me^1, that's OK^1, too!/%"@22083
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[159]
push.v self.hitdum
pushi.e 3
cmp.i.v GTE
bf [161]

:[160]
pushi.e 3
pop.v.i self.dial

:[161]
push.v self.hitdum
pushi.e 1
add.i.v
pop.v.v self.hitdum

:[162]
push.v self.dial
pushi.e 2
cmp.i.v EQ
bf [180]

:[163]
pushi.e 3
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_398_0"@22084
conv.s.v
push.s "\\E3* Oh^1, sorry^1, Kris^1!&* I forgot to mention^1!&* When you're ATTACKing.../"@22085
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_399_0"@22086
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "\\E8* Press ~1 again when the cursor goes in the box!/%"@22087
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.misstime
pushi.e 1
cmp.i.v GTE
bf [179]

:[164]
pushi.e 8
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_403_0"@22088
conv.s.v
push.s "\\E8* It's OK^1, Kris^1!&* You'll get it^1!&* Try again!/%"@22089
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.misstime
pushi.e 2
cmp.i.v EQ
bf [166]

:[165]
push.s "obj_dummyenemy_slash_Step_0_gml_404_0"@22090
conv.s.v
push.s "\\E8* Press Z when the white rectangle's in the blue box!/%"@22091
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[166]
push.v self.misstime
pushi.e 3
cmp.i.v EQ
bf [168]

:[167]
push.s "obj_dummyenemy_slash_Step_0_gml_405_0"@22092
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "\\E6* Ummm..^1. you can press ~1 a lot^1, if it helps!/%"@22093
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[168]
push.v self.misstime
pushi.e 4
cmp.i.v EQ
bf [170]

:[169]
push.s "obj_dummyenemy_slash_Step_0_gml_406_0"@22094
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "\\E6* Kris..^1.&* Please try to press ~1./%"@22095
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[170]
push.v self.misstime
pushi.e 5
cmp.i.v EQ
bf [172]

:[171]
push.s "obj_dummyenemy_slash_Step_0_gml_407_0"@22096
conv.s.v
push.s "\\E6* Ummm^1, Kris^1?&* Can you see the white rectangle?/%"@22097
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[172]
push.v self.misstime
pushi.e 6
cmp.i.v EQ
bf [174]

:[173]
push.s "obj_dummyenemy_slash_Step_0_gml_408_0"@22098
conv.s.v
push.s "\\E8* You know rectangles^1?&* They're like messed-up squares?/%"@22099
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[174]
push.v self.misstime
pushi.e 7
cmp.i.v EQ
bf [176]

:[175]
pushi.e 9
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_412_0"@22100
conv.s.v
push.s "\\E9* .../%"@21934
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[176]
push.v self.misstime
pushi.e 8
cmp.i.v EQ
bf [179]

:[177]
pushi.e 1
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_417_0"@22101
conv.s.v
push.s "\\E6* Umm^1, perhaps we should try something else?/%"@22102
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
pop.v.i self.plot
push.v self.defendtime
pushi.e 1
cmp.i.v GTE
bf [179]

:[178]
push.s "obj_dummyenemy_slash_Step_0_gml_421_0"@22103
conv.s.v
push.s "\\E6* Umm^1, perhaps we should try something else?/"@22104
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_422_0"@22105
conv.s.v
push.s "\\E0* Kris^1, if you didn't notice^1, when you DEFENDED before -/"@22059
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_423_0"@22106
conv.s.v
push.s "* The big orange TP bar on the left filled up a bit!/"@22061
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_424_0"@22107
conv.s.v
push.s "* How about spending that TP on one of my \\cYSPELLs\\cW?/"@22063
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_425_0"@22108
conv.s.v
push.s "* Because you hit the enemy enough^1, it got \\cBTIRED\\cW./"@21940
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_426_0"@22109
conv.s.v
push.s "* Now^1, if I use my \\cYPACIFY\\cW spell on it.../"@21942
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_427_0"@22110
conv.s.v
push.s "* It'll fall asleep^1, and we'll win peacefully!/%"@22067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 3
pop.v.i self.plot

:[179]
push.v self.misstime
pushi.e 1
add.i.v
pop.v.v self.misstime

:[180]
push.v self.dial
pushi.e 3
cmp.i.v EQ
bf [184]

:[181]
pushi.e 9
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_441_0"@22111
conv.s.v
push.s "\\E9* .../"@3296
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_442_0"@22112
conv.s.v
push.s "\\E8* Kris^1, I think I've^1, um^1, perhaps.../"@22113
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_443_0"@22114
conv.s.v
push.s "\\E1* Reached the limits of what I can teach you today./"@22115
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_444_0"@22116
conv.s.v
push.s "\\E0* Let's go find Susie./%"@22117
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.hitdum
pushi.e 4
cmp.i.v GTE
bf [183]

:[182]
push.s "obj_dummyenemy_slash_Step_0_gml_447_0"@22118
conv.s.v
push.s "\\E9* Kris^1, I don't mean to interrupt^1, but.../"@22119
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_448_0"@22120
conv.s.v
push.s "\\E3* You're going to break the dummy at this rate./"@22121
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_449_0"@22122
conv.s.v
push.s "\\E1* I suppose we'll have to stop here for now./%"@22123
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[183]
pushi.e 1
pop.v.i self.won
pushi.e 999
pop.v.i global.myfight
pushi.e 999
pop.v.i global.mnfight

:[184]
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.msg
push.s "* Skip/%"@21901
cmp.s.v EQ
bf [188]

:[185]
pushi.e 64
pushenv [187]

:[186]
call.i instance_destroy(argc=0)
popz.v

:[187]
popenv [186]

:[188]
pushi.e 0
pop.v.i self.acting
pushi.e 0
pop.v.i self.spare_used
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterhp
pop.v.v self.dummyhp
pushi.e 1
pop.v.i self.talked
pushi.e 0
pop.v.i self.talktimer
pushi.e 0
pop.v.i self.ral_wrongcommand

:[189]
pushglb.v global.mnfight
pushi.e 9786
cmp.i.v EQ
bf [191]

:[190]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [192]

:[191]
push.e 0

:[192]
bf [195]

:[193]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e -1
pop.v.i global.turntimer
call.i gml_Script_scr_mnendturn(argc=0)
popz.v
pushi.e 1
pop.v.i self.attacked
pushi.e 0
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.rr
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [195]

:[194]
push.i 231921
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_489_0"@22124
conv.s.v
push.s "* Ralsei looks on expectedly."@22125
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[195]
push.v self.talked
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
pushglb.v global.mnfight
pushi.e 1
cmp.i.v EQ
b [198]

:[197]
push.e 0

:[198]
bf [214]

:[199]
push.v self.won
pushi.e 0
cmp.i.v EQ
bf [212]

:[200]
pushi.e 0
pop.v.i self.rtimer
pushi.e -1
conv.i.v
call.i gml_Script_scr_blconskip(argc=1)
popz.v
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [202]

:[201]
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
b [203]

:[202]
push.e 0

:[203]
bf [211]

:[204]
pushi.e 379
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [206]

:[205]
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [207]

:[206]
push.e 0

:[207]
bf [209]

:[208]
call.i gml_Script_scr_moveheart(argc=0)
popz.v

:[209]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [211]

:[210]
pushi.e 872
conv.i.v
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 170
add.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 320
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[211]
b [214]

:[212]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [214]

:[213]
call.i gml_Script_scr_monsterdefeat(argc=0)
popz.v
call.i gml_Script_scr_mnendturn(argc=0)
popz.v

:[214]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [216]

:[215]
push.v self.attacked
pushi.e 0
cmp.i.v EQ
b [217]

:[216]
push.e 0

:[217]
bf [241]

:[218]
push.v self.attackcon
pushi.e 1
cmp.i.v NEQ
bf [220]

:[219]
pushi.e 8
pop.v.i self.rtimer

:[220]
push.v self.rtimer
pushi.e 1
add.i.v
pop.v.v self.rtimer
push.v self.rtimer
pushi.e 8
cmp.i.v GTE
bf [240]

:[221]
pushi.e 0
conv.i.v
call.i choose(argc=1)
pop.v.v self.rr
push.v self.rr
pushi.e 0
cmp.i.v EQ
bf [223]

:[222]
pushi.e 390
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dc
pushi.e 14
push.v self.dc
pushi.e -9
pop.v.i [stacktop]self.type
push.v self.mytarget
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
push.v self.dc
pushi.e -9
pop.v.v [stacktop]self.damage

:[223]
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
pushi.e 150
pop.v.i global.turntimer
push.v self.attackcon
pushi.e 1
cmp.i.v EQ
bf [225]

:[224]
pushi.e 2
pop.v.i self.battlecancel

:[225]
push.v self.attackcon
pushi.e 1
cmp.i.v NEQ
bf [229]

:[226]
pushi.e -100
pop.v.i global.turntimer
push.v self.dc
pushi.e -9
pushenv [228]

:[227]
call.i instance_destroy(argc=0)
popz.v

:[228]
popenv [227]

:[229]
pushi.e 2
pop.v.i self.attackcon
pushi.e 1
pop.v.i self.attacked
pushi.e 6
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
push.s "obj_dummyenemy_slash_Step_0_gml_548_0"@22126
conv.s.v
push.s "* What?"@22127
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
push.i 232374
setowner.e
pushi.e 2243
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.writerimg
pushi.e 2242
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.writerimg
pushi.e 2250
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.writerimg
pushi.e 2240
conv.i.v
pushi.e -5
pushi.e 3
pop.v.v [array]self.writerimg
pushi.e 2244
conv.i.v
pushi.e -5
pushi.e 4
pop.v.v [array]self.writerimg
pushi.e 2248
conv.i.v
pushi.e -5
pushi.e 5
pop.v.v [array]self.writerimg
pushi.e 0
pop.v.i global.fc
push.v self.plot
pushi.e 1
cmp.i.v EQ
bf [231]

:[230]
push.i 231921
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_556_0"@22128
conv.s.v
push.s "* Let's try FIGHTing!&  (\\I0    )"@22129
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[231]
push.v self.plot
pushi.e 2
cmp.i.v EQ
bf [233]

:[232]
push.s "obj_dummyenemy_slash_Step_0_gml_557_0"@22130
conv.s.v
push.s "* Let's try DEFENDing!&  (\\I1    )"@22131
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[233]
push.v self.plot
pushi.e 3
cmp.i.v EQ
bf [235]

:[234]
push.s "obj_dummyenemy_slash_Step_0_gml_558_0"@22132
conv.s.v
push.s "* Let's try SPELLs!&  (\\I2    )"@22133
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[235]
push.v self.plot
pushi.e 4
cmp.i.v EQ
bf [237]

:[236]
push.s "obj_dummyenemy_slash_Step_0_gml_559_0"@22134
conv.s.v
push.s "* Let's ACT!&  (\\I3    )"@22135
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[237]
push.v self.plot
pushi.e 5
cmp.i.v EQ
bf [239]

:[238]
push.s "obj_dummyenemy_slash_Step_0_gml_560_0"@22136
conv.s.v
push.s "* Let's SPARE!&  (\\I4    )"@22137
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg

:[239]
pushi.e 0
pop.v.i self.spare_used
pushi.e 0
pop.v.i self.ral_wrongcommand
b [241]

:[240]
pushi.e 150
pop.v.i global.turntimer

:[241]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [247]

:[242]
pushglb.v global.turntimer
pushi.e 1
cmp.i.v LTE
bf [247]

:[243]
push.v self.battlecancel
pushi.e 2
cmp.i.v EQ
bf [247]

:[244]
pushi.e 357
pushenv [246]

:[245]
pushi.e 1
pop.v.i self.noreturn

:[246]
popenv [245]
pushi.e 1
pop.v.i self.con
pushi.e 3
pop.v.i self.battlecancel

:[247]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [249]

:[248]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm

:[249]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [253]

:[250]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 232374
setowner.e
pushi.e 2243
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.writerimg
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_598_0"@22138
conv.s.v
push.s "* Great job^1, Kris^1!&* You're a natural!/"@22139
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.kris_inithp
pushi.e -5
pushi.e 1
push.v [array]self.hp
cmp.v.v GT
bf [252]

:[251]
pushi.e 6
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_602_0"@22140
conv.s.v
push.s "\\E6* Ouch^1, it's OK^1, Kris^1! You're still learning!/"@22141
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[252]
push.s "obj_dummyenemy_slash_Step_0_gml_604_0"@22142
conv.s.v
push.s "\\E8* Anyhow^1, after the enemy attacks^1, it's our turn^1, Kris!/"@22143
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_605_0"@22144
conv.s.v
push.s "\\E0* First^1, I'll teach you how to \\cYFIGHT\\cW (\\I0    )./"@22145
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_606_0"@22146
conv.s.v
push.s "\\E1* Though \\cYFIGHTing\\cW is unnecessary in this world.../"@22147
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_607_0"@22148
conv.s.v
push.s "\\E8* There's no harm in a thorough lesson!/%"@22149
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.i 231921
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_610_0"@22150
conv.s.v
push.s "* Let's try FIGHTing!&  (\\I0   )"@22151
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.battlemsg
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 6
pop.v.i self.con

:[253]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [255]

:[254]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [256]

:[255]
push.e 0

:[256]
bf [262]

:[257]
pushi.e 357
pushenv [259]

:[258]
pushi.e 0
pop.v.i self.noreturn
push.i 68097
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[259]
popenv [258]
pushi.e 0
pop.v.i self.battlecancel
push.v self.plot
pushi.e 0
cmp.i.v EQ
bf [261]

:[260]
pushi.e 1
pop.v.i self.plot

:[261]
pushi.e 7
pop.v.i self.con

:[262]
pushglb.v global.myfight
pushi.e 3
cmp.i.v EQ
bf [406]

:[263]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.v self.acting
pushi.e 1
cmp.i.v EQ
bf [265]

:[264]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [266]

:[265]
push.e 0

:[266]
bf [270]

:[267]
pushi.e 1
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_642_0"@22152
conv.s.v
push.s "* DUMMY - AT 0 DF 0&* Cotton heart and button eye&* Looks just like a fluffy guy./%"@22153
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.checked
pushi.e 0
cmp.i.v EQ
bf [269]

:[268]
push.s "obj_dummyenemy_slash_Step_0_gml_645_0"@22154
conv.s.v
push.s "* DUMMY - AT 0 DF 0&* Cotton heart and button eye&* Looks just like a fluffy guy./"@22155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_dummyenemy_slash_Step_0_gml_647_0"@22156
conv.s.v
push.s "* Er^1, sorry^1, it kind of looks like me.../"@22157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_648_0"@22158
conv.s.v
push.s "\\E1* I've been alone^1, so I didn't have anyone to model it after.../"@22159
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_649_0"@22160
conv.s.v
push.s "\\E6* Kris^1, since it's me^1, please be kind to it^1, OK?/%"@22161
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[269]
push.v self.checked
pushi.e 1
add.i.v
pop.v.v self.checked
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[270]
push.v self.acting
pushi.e 2
cmp.i.v EQ
bf [272]

:[271]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [273]

:[272]
push.e 0

:[273]
bf [277]

:[274]
pushi.e 10
pop.v.i self.actcon
pushi.e 372
pushenv [276]

:[275]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.acttimer

:[276]
popenv [275]
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_666_0"@22162
conv.s.v
push.s "* You hug the DUMMY./%"@22163
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[277]
push.v self.actcon
pushi.e 1
cmp.i.v EQ
bf [279]

:[278]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [280]

:[279]
push.e 0

:[280]
bf [282]

:[281]
push.i 231499
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.acting
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.acting
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 2
pop.v.v [array]self.acting
pushi.e 0
pop.v.i self.actcon
pushi.e -1
pop.v.i self.acting
call.i gml_Script_scr_attackphase(argc=0)
popz.v

:[282]
push.v self.actcon
pushi.e 10
cmp.i.v EQ
bf [288]

:[283]
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pushenv [285]

:[284]
pushi.e 0
pop.v.i self.visible

:[285]
popenv [284]
pushi.e 1408
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [287]

:[286]
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monstery
pushi.e 30
sub.i.v
pushi.e -5
pushi.e 0
push.v [array]self.monsterx
pushi.e 42
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[287]
popenv [286]
pushi.e 11
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[288]
push.v self.actcon
pushi.e 12
cmp.i.v EQ
bf [292]

:[289]
push.v self.k
pushi.e -9
pushenv [291]

:[290]
push.d 0.25
pop.v.d self.image_speed

:[291]
popenv [290]
pushi.e 13
pop.v.i self.actcon
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[292]
push.v self.actcon
pushi.e 14
cmp.i.v EQ
bf [296]

:[293]
push.v self.k
pushi.e -9
pushenv [295]

:[294]
pushi.e 0
pop.v.i self.image_speed

:[295]
popenv [294]
pushi.e 15
pop.v.i self.actcon

:[296]
push.v self.actcon
pushi.e 15
cmp.i.v EQ
bf [298]

:[297]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [299]

:[298]
push.e 0

:[299]
bf [310]

:[300]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 205
pop.v.v [array]self.flag
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_711_0"@22164
conv.s.v
push.s "* How caring^1, Kris!/%"@22165
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.plot
pushi.e 5
cmp.i.v EQ
bf [304]

:[301]
push.s "obj_dummyenemy_slash_Step_0_gml_714_0"@22166
conv.s.v
push.s "* That's great^1, Kris^1!&* Just one hug is enough^1, though!/%"@22167
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.hugtime
pushi.e 1
cmp.i.v GTE
bf [303]

:[302]
push.s "obj_dummyenemy_slash_Step_0_gml_715_0"@22168
conv.s.v
push.s "\\E8* Kris^1, you don't need to hug it anymore./%"@22169
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[303]
push.v self.hugtime
pushi.e 1
add.i.v
pop.v.v self.hugtime

:[304]
push.v self.plot
pushi.e 1
cmp.i.v EQ
bf [307]

:[305]
pushi.e 3
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_722_0"@22170
conv.s.v
push.s "* Huh...^1? Kris^1, you'd rather hug it out than fight?/"@22171
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_723_0"@22172
conv.s.v
push.s "\\E1* .../"@1054
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_724_0"@22173
conv.s.v
push.s "\\E8* You know what^1, that's fine^1! We don't need to fight!/"@22174
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_725_0"@22175
conv.s.v
push.s "* OK, next let's try DEFENDING. (\\I1    )/"@22176
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_726_0"@22177
conv.s.v
push.s "* Simply (\\I1   )^1, and the enemy's attack will hurt you less.../"@22053
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_727_0"@22178
conv.s.v
push.s "* Not only that^1, but you'll also gather \\cYTP\\cW!/"@22055
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_728_0"@22179
conv.s.v
push.s "* (Watch the orange big bar on the left^1! I'll explain it next!/%"@22180
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 2
pop.v.i self.plot
push.v self.defendtime
pushi.e 1
cmp.i.v GTE
bf [307]

:[306]
push.s "obj_dummyenemy_slash_Step_0_gml_733_0"@22181
conv.s.v
push.s "* Kris^1, if you didn't notice^1, when you DEFENDED before -/"@22182
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_734_0"@22183
conv.s.v
push.s "* The big orange TP bar on the left filled up a bit!/"@22061
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_735_0"@22184
conv.s.v
push.s "* How about spending that TP on one of my \\cYSPELLs\\cW?/"@22063
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_736_0"@22185
conv.s.v
push.s "* Because you hit the enemy enough^1, it got \\cBTIRED\\cW./"@21940
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_737_0"@22186
conv.s.v
push.s "* Now^1, if I use my \\cYPACIFY\\cW spell on it.../"@21942
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_738_0"@22187
conv.s.v
push.s "* It'll fall asleep^1, and we'll win peacefully!/%"@22067
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 3
pop.v.i self.plot

:[307]
push.v self.plot
pushi.e 4
cmp.i.v EQ
bf [309]

:[308]
pushi.e 8
pop.v.i global.fe
push.s "obj_dummyenemy_slash_Step_0_gml_746_0"@22188
conv.s.v
push.s "* Aww^1, that's great^1, Kris!/"@22189
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_747_0"@22190
conv.s.v
push.s "\\E0* Each enemy has different ACTs that satisfy them./"@22191
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_748_0"@22192
conv.s.v
push.s "* When an enemy is satisfied^1, its name turns \\cYYELLOW\\cW./"@22193
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_749_0"@22194
conv.s.v
push.s "* When that happens^1, you can defeat it by SPARING (\\I4    ) it!/"@22195
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_750_0"@22196
conv.s.v
push.s "* If we \\cYSPARE\\cW all the enemies we meet^1, we'll never have to \\cYFIGHT\\cW!/%"@22197
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
pop.v.i self.plot

:[309]
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 16
pop.v.i self.actcon

:[310]
push.v self.actcon
pushi.e 16
cmp.i.v EQ
bf [312]

:[311]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [313]

:[312]
push.e 0

:[313]
bf [319]

:[314]
push.v self.myface
pushi.e -9
pushenv [316]

:[315]
call.i instance_destroy(argc=0)
popz.v

:[316]
popenv [315]
push.v self.k
pushi.e -9
pushenv [318]

:[317]
push.d -0.25
pop.v.d self.image_speed

:[318]
popenv [317]
pushi.e 17
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[319]
push.v self.actcon
pushi.e 18
cmp.i.v EQ
bf [325]

:[320]
push.v self.k
pushi.e -9
pushenv [322]

:[321]
pushi.e 0
pop.v.i self.image_speed

:[322]
popenv [321]
push.v self.k
pushi.e -9
pushenv [324]

:[323]
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[324]
popenv [323]
pushi.e 19
pop.v.i self.actcon
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[325]
push.v self.actcon
pushi.e 20
cmp.i.v EQ
bf [329]

:[326]
push.v self.k
pushi.e -9
pushenv [328]

:[327]
call.i instance_destroy(argc=0)
popz.v

:[328]
popenv [327]
push.i 231526
setowner.e
pushi.e 100
conv.i.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.mercymod
pushi.e 100
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.mercymod
push.i 133635
setowner.e
pushi.e 1
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
pop.v.i self.actcon

:[329]
push.v self.acting
pushi.e 3
cmp.i.v EQ
bf [331]

:[330]
push.v self.actcon
pushi.e 0
cmp.i.v EQ
b [332]

:[331]
push.e 0

:[332]
bf [338]

:[333]
pushi.e 0
pop.v.i self.makekris
pushi.e 372
pushenv [335]

:[334]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.acttimer

:[335]
popenv [334]
pushi.e 374
pushenv [337]

:[336]
push.i 231659
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
push.v self.myself
conv.v.i
pop.v.v [array]self.faceaction
pushi.e 0
pop.v.i self.state
pushi.e 0
pop.v.i self.acttimer

:[337]
popenv [336]
pushi.e 30
pop.v.i self.actcon
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_808_0"@22199
conv.s.v
push.s "* You hug RALSEI./%"@22200
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_battletext_default(argc=0)
popz.v

:[338]
push.v self.actcon
pushi.e 30
cmp.i.v EQ
bf [344]

:[339]
pushi.e 1
pop.v.i self.makekris
pushi.e 0
pop.v.i self.maker
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pushenv [341]

:[340]
pushi.e 0
pop.v.i self.visible

:[341]
popenv [340]
pushi.e 1408
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.k
push.v self.k
pushi.e -9
pushenv [343]

:[342]
pushi.e 15
conv.i.v
push.v 374.y
pushi.e 10
add.i.v
push.v 374.x
pushi.e 24
sub.i.v
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[343]
popenv [342]
pushi.e 31
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[344]
push.v self.actcon
pushi.e 32
cmp.i.v EQ
bf [350]

:[345]
pushi.e 1
pop.v.i self.maker
pushi.e 374
pushenv [347]

:[346]
pushi.e 0
pop.v.i self.visible

:[347]
popenv [346]
pushi.e 1014
conv.i.v
push.v 374.y
push.v 374.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.rb
push.v self.k
pushi.e -9
pushenv [349]

:[348]
push.d 0.25
pop.v.d self.image_speed

:[349]
popenv [348]
pushi.e 33
pop.v.i self.actcon
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[350]
push.v self.actcon
pushi.e 34
cmp.i.v EQ
bf [354]

:[351]
push.v self.k
pushi.e -9
pushenv [353]

:[352]
pushi.e 0
pop.v.i self.image_speed

:[353]
popenv [352]
pushi.e 35
pop.v.i self.actcon

:[354]
push.v self.actcon
pushi.e 35
cmp.i.v EQ
bf [356]

:[355]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [357]

:[356]
push.e 0

:[357]
bf [367]

:[358]
pushi.e 45
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_dummyenemy_slash_Step_0_gml_846_0"@22203
conv.s.v
push.s "* K..^1. Kris!?/%"@22204
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.r_hugtime
pushi.e 0
cmp.i.v EQ
bf [360]

:[359]
push.s "obj_dummyenemy_slash_Step_0_gml_850_0"@22205
conv.s.v
push.s "* K..^1. Kris!?/"@2586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_851_0"@22206
conv.s.v
push.s "\\E8* Ummm^1, I don't think^1, um.../"@22207
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_852_0"@22208
conv.s.v
push.s "* This is what you're supposed to be doing./"@22209
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_853_0"@22210
conv.s.v
push.s "\\E2* ... but.../%"@22211
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[360]
push.v self.r_hugtime
pushi.e 1
cmp.i.v EQ
bf [362]

:[361]
push.s "obj_dummyenemy_slash_Step_0_gml_858_0"@22212
conv.s.v
push.s "* Kris...?/"@5939
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_859_0"@22213
conv.s.v
push.s "\\E2* Are you trying^1, to^1, um.../"@22214
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_860_0"@22215
conv.s.v
push.s "\\E6* Ask me to give you a tutorial on hugging...?/%"@22216
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[362]
push.v self.r_hugtime
pushi.e 2
cmp.i.v EQ
bf [364]

:[363]
push.s "obj_dummyenemy_slash_Step_0_gml_868_0"@22217
conv.s.v
push.s "* Ummm^1, I've never hugged anyone before.../"@22218
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_869_0"@22219
conv.s.v
push.s "\\E1* (Besides the dummy^1, to test it out,)/"@22220
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_870_0"@22221
conv.s.v
push.s "\\E2* So I don't know anything about it^1, sorry.../"@22222
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_dummyenemy_slash_Step_0_gml_871_0"@22223
conv.s.v
push.s "\\E7* I suppose you're the one teaching me^1, haha!/%"@22224
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[364]
push.v self.r_hugtime
pushi.e 3
cmp.i.v GTE
bf [366]

:[365]
push.s "obj_dummyenemy_slash_Step_0_gml_876_0"@22225
conv.s.v
push.s "\\E2* .../%"@22226
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[366]
push.v self.r_hugtime
pushi.e 1
add.i.v
pop.v.v self.r_hugtime
call.i gml_Script_scr_battletext(argc=0)
popz.v
pushi.e 36
pop.v.i self.actcon

:[367]
push.v self.actcon
pushi.e 36
cmp.i.v EQ
bf [369]

:[368]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
b [370]

:[369]
push.e 0

:[370]
bf [376]

:[371]
push.v self.myface
pushi.e -9
pushenv [373]

:[372]
call.i instance_destroy(argc=0)
popz.v

:[373]
popenv [372]
push.v self.k
pushi.e -9
pushenv [375]

:[374]
push.d -0.25
pop.v.d self.image_speed

:[375]
popenv [374]
pushi.e 37
pop.v.i self.actcon
push.i 68097
setowner.e
pushi.e 12
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[376]
push.v self.actcon
pushi.e 38
cmp.i.v EQ
bf [382]

:[377]
push.v self.k
pushi.e -9
pushenv [379]

:[378]
pushi.e 0
pop.v.i self.image_speed

:[379]
popenv [378]
push.v self.k
pushi.e -9
pushenv [381]

:[380]
pushi.e 15
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[381]
popenv [380]
pushi.e 39
pop.v.i self.actcon
pushi.e 25
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[382]
push.v self.actcon
pushi.e 40
cmp.i.v EQ
bf [390]

:[383]
pushi.e 0
pop.v.i self.makekris
pushi.e 0
pop.v.i self.maker
push.v self.rb
pushi.e -9
pushenv [385]

:[384]
call.i instance_destroy(argc=0)
popz.v

:[385]
popenv [384]
pushi.e 374
pushenv [387]

:[386]
pushi.e 1
pop.v.i self.visible

:[387]
popenv [386]
push.v self.k
pushi.e -9
pushenv [389]

:[388]
call.i instance_destroy(argc=0)
popz.v

:[389]
popenv [388]
push.i 133635
setowner.e
pushi.e 1
pushi.e -5
pushi.e 0
push.v [array]self.charinstance
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
pop.v.i self.actcon

:[390]
push.v self.actcon
pushi.e 30
cmp.i.v GTE
bf [392]

:[391]
push.v self.actcon
pushi.e 40
cmp.i.v LT
b [393]

:[392]
push.e 0

:[393]
bf [406]

:[394]
push.v self.makekris
pushi.e 1
cmp.i.v EQ
bf [400]

:[395]
push.v self.k
pushi.e -9
pushenv [397]

:[396]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[397]
popenv [396]
push.v self.k
pushi.e -9
pushenv [399]

:[398]
push.v self.depth
push.i 100000
sub.i.v
pop.v.v self.depth

:[399]
popenv [398]

:[400]
push.v self.maker
pushi.e 1
cmp.i.v EQ
bf [406]

:[401]
push.v self.rb
pushi.e -9
pushenv [403]

:[402]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[403]
popenv [402]
push.v self.rb
pushi.e -9
pushenv [405]

:[404]
push.v self.depth
push.i 100000
sub.i.v
pop.v.v self.depth

:[405]
popenv [404]

:[406]
pushi.e 357
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.b.v EQ
bf [end]

:[407]
call.i instance_destroy(argc=0)
popz.v

:[end]