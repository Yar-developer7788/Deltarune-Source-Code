.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed_fake
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e -5
pushi.e 800
push.v self.seat
add.v.i
conv.v.i
push.v [array]self.flag
pop.v.v self.myid
pushi.e -5
pushi.e 800
push.v [array]self.flag
pop.v.v self.seat0
pushi.e -5
pushi.e 801
push.v [array]self.flag
pop.v.v self.seat1
pushi.e -5
pushi.e 802
push.v [array]self.flag
pop.v.v self.seat2
pushi.e -5
pushi.e 803
push.v [array]self.flag
pop.v.v self.seat3
pushi.e -1
pop.v.i self.aite
push.v self.seat
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
push.v self.seat3
pop.v.v self.aite

:[2]
push.v self.seat
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
push.v self.seat2
pop.v.v self.aite

:[4]
push.v self.myid
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
push.v self.aite
pushi.e 6
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
push.i 166884
setowner.e
push.s "obj_npc_cafe_slash_Other_10_gml_27_0"@21035
conv.s.v
push.s "* Sure is great to be here with my best friend Hathy./%"@21036
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[9]
push.v self.myid
pushi.e 6
cmp.i.v EQ
bf [11]

:[10]
push.v self.aite
pushi.e 5
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.s "obj_npc_cafe_slash_Other_10_gml_32_0"@21037
conv.s.v
push.s "* (Hathy seems fine.)/%"@21038
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[14]
push.v self.myid
pushi.e 5
cmp.i.v EQ
bf [16]

:[15]
push.v self.aite
pushi.e 22
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
push.s "obj_npc_cafe_slash_Other_10_gml_38_0"@21039
conv.s.v
push.s "* Sigh..^1. does this guy have to one-up me on everything!?/%"@21040
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[19]
push.v self.myid
pushi.e 22
cmp.i.v EQ
bf [21]

:[20]
push.v self.aite
pushi.e 5
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
push.s "obj_npc_cafe_slash_Other_10_gml_43_0"@21041
conv.s.v
push.s "* I'll have a double Starfait. No^1, triple. Oh^1, hi^1, boss^1! (Smile)/%"@21042
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[24]
push.v self.myid
pushi.e 6
cmp.i.v EQ
bf [26]

:[25]
push.v self.aite
pushi.e 23
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.s "obj_npc_cafe_slash_Other_10_gml_50_0"@21043
conv.s.v
push.s "* (Hathy is letting Head Hathy have a sip of her latte.)/%"@21044
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[29]
push.v self.myid
pushi.e 23
cmp.i.v EQ
bf [31]

:[30]
push.v self.aite
pushi.e 6
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
push.s "obj_npc_cafe_slash_Other_10_gml_55_0"@21045
conv.s.v
push.s "* (Head Hathy doesn't seem so alone...)/%"@21046
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[34]
push.v self.myid
pushi.e 35
cmp.i.v EQ
bf [36]

:[35]
push.v self.aite
pushi.e 30
cmp.i.v EQ
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.s "obj_npc_cafe_slash_Other_10_gml_61_0"@21047
conv.s.v
push.s "* We don't get along..^1. but we can drink together./%"@21048
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[39]
push.v self.myid
pushi.e 30
cmp.i.v EQ
bf [41]

:[40]
push.v self.aite
pushi.e 35
cmp.i.v EQ
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.s "obj_npc_cafe_slash_Other_10_gml_66_0"@21049
conv.s.v
push.s "* I'll get you next time^1, pipo^1! ..^1. Want some more sugar?/%"@21050
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[44]
push.v self.myid
pushi.e 32
cmp.i.v EQ
bf [46]

:[45]
push.v self.aite
pushi.e 34
cmp.i.v EQ
b [47]

:[46]
push.e 0

:[47]
bf [52]

:[48]
push.s "obj_npc_cafe_slash_Other_10_gml_72_0"@21051
conv.s.v
push.s "* [Miaouw]/%"@21052
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 116
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [52]

:[49]
pushi.e 116
pushenv [51]

:[50]
pushi.e 1
pop.v.i self.t_con

:[51]
popenv [50]

:[52]
push.v self.myid
pushi.e 34
cmp.i.v EQ
bf [54]

:[53]
push.v self.aite
pushi.e 32
cmp.i.v EQ
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.s "obj_npc_cafe_slash_Other_10_gml_77_0"@21053
conv.s.v
push.s "* [Brrrrrrrr....]/%"@21054
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[57]
push.v self.myid
pushi.e 33
cmp.i.v EQ
bf [59]

:[58]
push.v self.aite
pushi.e 40
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
push.s "obj_npc_cafe_slash_Other_10_gml_83_0"@21055
conv.s.v
push.s "* (..^1. it seems annoyed that its energy drink has been crushed.)/%"@21056
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[62]
push.v self.myid
pushi.e 40
cmp.i.v EQ
bf [64]

:[63]
push.v self.aite
pushi.e 33
cmp.i.v EQ
b [65]

:[64]
push.e 0

:[65]
bf [67]

:[66]
push.s "obj_npc_cafe_slash_Other_10_gml_88_0"@21057
conv.s.v
push.s "* (It's crushing many of the surrounding drinks.)/%"@21058
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[67]
push.v self.myid
pushi.e 13
cmp.i.v EQ
bf [69]

:[68]
push.v self.aite
pushi.e 36
cmp.i.v EQ
b [70]

:[69]
push.e 0

:[70]
bf [72]

:[71]
push.s "obj_npc_cafe_slash_Other_10_gml_100_0_b"@21059
conv.s.v
push.s "* (I'm the dust off his shoulder.^1)&* (Sukkiri.)/%"@21060
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[72]
push.v self.myid
pushi.e 36
cmp.i.v EQ
bf [74]

:[73]
push.v self.aite
pushi.e 13
cmp.i.v EQ
b [75]

:[74]
push.e 0

:[75]
bf [77]

:[76]
push.s "obj_npc_cafe_slash_Other_10_gml_105_0"@21061
conv.s.v
push.s "* We'll make sure to clean our plates^1.&* (Sukkiri.)/%"@21062
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[77]
push.v self.seat0
pushi.e 36
cmp.i.v EQ
bf [81]

:[78]
push.v self.seat1
pushi.e 36
cmp.i.v EQ
bf [81]

:[79]
push.v self.seat2
pushi.e 36
cmp.i.v EQ
bf [81]

:[80]
push.v self.seat3
pushi.e 36
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.s "obj_npc_cafe_slash_Other_10_gml_111_0"@21063
conv.s.v
push.s "* Boss^1, are you enjoying your \\cYButler Cafe\\c0?/%"@21064
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[84]
push.v self.myid
pushi.e 23
cmp.i.v EQ
bf [86]

:[85]
push.v self.aite
pushi.e 40
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [91]

:[88]
pushi.e -5
pushi.e 327
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 327
pop.v.v [array]self.flag

:[90]
push.i 166884
setowner.e
push.s "obj_npc_cafe_slash_Other_10_gml_100_0"@21065
conv.s.v
push.s "* (..^1. it seems relaxed its partner is so quiet.)/%"@21066
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[91]
push.v self.myid
pushi.e 40
cmp.i.v EQ
bf [93]

:[92]
push.v self.aite
pushi.e 23
cmp.i.v EQ
b [94]

:[93]
push.e 0

:[94]
bf [98]

:[95]
pushi.e -5
pushi.e 327
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 327
pop.v.v [array]self.flag

:[97]
push.i 166884
setowner.e
push.s "obj_npc_cafe_slash_Other_10_gml_110_0"@21067
conv.s.v
push.s "* (...)/%"@19237
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[98]
push.v self.myid
pushi.e 40
cmp.i.v EQ
bf [101]

:[99]
pushi.e -5
pushi.e 327
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.v self.aite
pushi.e 23
cmp.i.v NEQ
b [102]

:[101]
push.e 0

:[102]
bf [113]

:[103]
push.v self.seat2
pushi.e 23
cmp.i.v EQ
bt [105]

:[104]
push.v self.seat3
pushi.e 23
cmp.i.v EQ
b [106]

:[105]
push.e 1

:[106]
bf [113]

:[107]
push.v self.seat3
pushi.e 33
cmp.i.v EQ
bt [109]

:[108]
push.v self.seat2
pushi.e 33
cmp.i.v EQ
b [110]

:[109]
push.e 1

:[110]
bf [112]

:[111]
push.s "obj_npc_cafe_slash_Other_10_gml_120_0"@21068
conv.s.v
push.s "* (..^1. looks like it's about to flip its table over.)/%"@21069
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [113]

:[112]
push.s "obj_npc_cafe_slash_Other_10_gml_124_0"@21070
conv.s.v
push.s "* (..^1. it's staring at the southern seats and crushing its drink hard.)/%"@21071
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue

:[113]
pushi.e 0
pop.v.i self.j

:[114]
push.v self.j
push.v self._dialogueboxes
cmp.v.v LT
bf [116]

:[115]
pushi.e -1
push.v self.j
conv.v.i
push.v [array]self._dialogue
push.v self.j
call.i gml_Script_msgset(argc=2)
popz.v
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [114]

:[116]
push.v self.image_speed_fake
pop.v.v self.remanimspeed
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]