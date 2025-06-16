.localvar 2 arguments
.localvar 6113 small_text 7311
.localvar 425 have_susie 7315
.localvar 17416 haveRing 7316
.localvar 17421 strong_check 7317
.localvar 17486 total_checkmarks 7318
.localvar 17501 met_hacker 7319
.localvar 17620 small_text_a 7324
.localvar 17625 small_text_b 7325

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i global.typer

:[2]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.i 231251
setowner.e
push.s "obj_npc_sign_slash_Other_10_gml_10_0"@17128
conv.s.v
push.s "* You can't read these symbols...&* Or maybe it's the handwriting./%"@17129
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [4]

:[3]
push.s "* [NO TEXT] (obj_npc_sign)/%"@17130
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[4]
pushbltn.v builtin.room
pushi.e 14
cmp.i.v EQ
bf [6]

:[5]
push.s "obj_npc_sign_slash_Other_10_gml_15_0"@17131
conv.s.v
push.s "BottomLeft"@17132
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "left"@5994
conv.s.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_16_0"@17133
conv.s.v
push.s "RightTop"@17134
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "top"@6226
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 1
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_17_0"@17135
conv.s.v
push.s "MidMid "@17136
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "mid"@5602
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 0
conv.i.v
push.s "noelle"@74
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_18_0"@17137
conv.s.v
push.s "Right BottomMid"@17138
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottommid"@6227
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_19_0"@17139
conv.s.v
push.s "rightmid BottomMid"@17140
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottommid"@6227
conv.s.v
push.s "rightmid"@6225
conv.s.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_20_0"@17141
conv.s.v
push.s "leftmid BottomMid"@17142
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottommid"@6227
conv.s.v
push.s "leftmid"@6224
conv.s.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_22_0"@17143
conv.s.v
push.s "* ENEMY - AT 1 DF 1&* Susceptible to Brainshock.\\f0 ^1 \\f1 ^1 \\f2 ^1 \\f3 /"@17144
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_23_0"@17145
conv.s.v
push.s "\\f0 \\f1 \\f2 \\f3 \\f4 \\f5 /%"@17146
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[6]
pushbltn.v builtin.room
pushi.e 51
cmp.i.v EQ
bf [8]

:[7]
push.s "obj_npc_sign_slash_Other_10_gml_27_0"@17147
conv.s.v
push.v self.colortxt
push.s "* (It's ~1 flower^1, protected in a container...)/%"@17148
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[8]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [17]

:[9]
push.v self.x
pushi.e 1440
cmp.i.v GT
bf [11]

:[10]
push.s "obj_npc_sign_slash_Other_10_gml_32_0"@17149
conv.s.v
push.s "* (It's your dad's truck.)/"@17150
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_sign_slash_Other_10_gml_33_0"@17151
conv.s.v
push.s "* (The floor of the front seat is littered with old papers and country CDs...)/%"@17152
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[11]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [17]

:[12]
push.v self.x
pushi.e 1200
cmp.i.v GT
bf [14]

:[13]
push.v self.x
pushi.e 1300
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_46_0"@17153
conv.s.v
push.s "* (Closed!)/%"@17154
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[17]
pushbltn.v builtin.room
pushi.e 36
cmp.i.v EQ
bf [22]

:[18]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
pushi.e 192
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[20]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [22]

:[21]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_62_0"@17155
conv.s.v
push.s "* (It's a metal picnic table.)/"@17156
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_64_0"@17157
conv.s.v
push.s "\\EK* (Damnit^1, my fingers won't fit through the holes.)/%"@17158
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[22]
pushbltn.v builtin.room
pushi.e 33
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_npc_sign_slash_Other_10_gml_55_0"@17159
conv.s.v
push.s "* (It's your mom's van.)/%"@17160
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[24]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [32]

:[25]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [32]

:[26]
push.v self.sprite_index
pushi.e 919
cmp.i.v EQ
bf [30]

:[27]
pushi.e 10
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
conv.v.b
bf [29]

:[28]
pushi.e 1157
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [30]

:[29]
pushi.e 1028
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[30]
push.v self.sprite_index
pushi.e 1134
cmp.i.v EQ
bf [32]

:[31]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_97_0"@17161
conv.s.v
push.s "* (It's a beaten bike.)/"@17162
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_98_0"@17163
conv.s.v
push.s "* (The horn looks like it might give a honk of despair.)/%"@17164
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[32]
pushbltn.v builtin.room
pushi.e 56
cmp.i.v EQ
bf [50]

:[33]
push.v self.sprite_index
pushi.e 1131
cmp.i.v EQ
bt [35]

:[34]
push.v self.sprite_index
pushi.e 1133
cmp.i.v EQ
b [36]

:[35]
push.e 1

:[36]
bf [47]

:[37]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [45]

:[38]
pushi.e 105
pushenv [44]

:[39]
push.v self.sprite_index
pushi.e 1131
cmp.i.v EQ
bt [41]

:[40]
push.v self.sprite_index
pushi.e 1133
cmp.i.v EQ
b [42]

:[41]
push.e 1

:[42]
bf [44]

:[43]
pushi.e 1
pop.v.i self.read

:[44]
popenv [39]
push.s "obj_npc_sign_slash_Other_10_gml_116_0"@17165
conv.s.v
push.s "* We're the infamous dog-burgulars^1, The Wet-Nose Bandits./"@17166
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_117_0"@17167
conv.s.v
push.s "* (We were getting ready to sneak into that big house over the holidays...)/"@17168
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_118_0"@17169
conv.s.v
push.s "* When we were attacked from the shadows^1, by something MERCILESS!/"@17170
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_119_0"@17171
conv.s.v
push.s "* (Fearing for our lives^1, we all ran right into Officer Undyne's warm^1, loving arms...)/"@17172
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_120_0"@17173
conv.s.v
push.s "* And she suplexed us all into the snow with our tails hanging in the air./"@17174
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_121_0"@17175
conv.s.v
push.s "* (Now we're in jail^1, but at least we're alive...)/"@17176
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_122_0"@17177
conv.s.v
push.s "* Plus^1, that nice ghost keeps giving us incorporeally low-calorie treats./"@17178
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_123_0"@17179
conv.s.v
push.s "* (Then we all howl holiday songs together. Ooo ooo ooo.)/%"@17180
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [46]

:[45]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_127_0"@17181
conv.s.v
push.s "* (Make Dog Marriage^1, not Dog Jail!)/%"@17182
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[46]
b [50]

:[47]
push.v 82.y
pushi.e 115
cmp.i.v LT
bf [49]

:[48]
push.s "undyne"@3641
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_136_0"@17183
conv.s.v
push.s "\\E1* HEY!!^1! TALK TO ME FROM THE FRONT!!!/"@17184
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_137_0"@17185
conv.s.v
push.s "\\E2* NO SIDE-TALKING TO YOUR SUPERIORS!!/%"@17186
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [50]

:[49]
pushi.e 1024
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[50]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [61]

:[51]
pushglb.v global.plot
pushi.e 35
cmp.i.v LT
bf [60]

:[52]
pushi.e 936
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [59]

:[53]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [58]

:[54]
pushi.e 936
pushenv [56]

:[55]
pushi.e 4
pop.v.i self.con

:[56]
popenv [55]
exit.i

:[57]
b [59]

:[58]
push.s "obj_npc_sign_slash_Other_10_gml_159_0"@17187
conv.s.v
push.s "* (You can't pro game while facing this direction.)/%"@17188
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[59]
b [61]

:[60]
push.s "obj_npc_sign_slash_Other_10_gml_158_0"@17189
conv.s.v
push.s "* (Looks like this Gamer's Paradise has become a Gamer's Hell.)/%"@17190
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[61]
pushbltn.v builtin.room
pushi.e 81
cmp.i.v EQ
bf [64]

:[62]
push.v self.sprite_index
pushi.e 2906
cmp.i.v EQ
bf [64]

:[63]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_182_0"@17191
conv.s.v
push.s "* (This maybe isn't the best thing in your room.)/%"@17192
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[64]
pushbltn.v builtin.room
pushi.e 82
cmp.i.v EQ
bf [76]

:[65]
push.v self.sprite_index
pushi.e 2907
cmp.i.v EQ
bf [69]

:[66]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [68]

:[67]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_191_0"@17193
conv.s.v
push.s "\\E9* Heheh^1, jealous of my cool statue^1, Kris?/"@17194
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_192_0"@17195
conv.s.v
push.s "\\EK* Huh? What? No^1, it's not me^1, it's just cool!/%"@17196
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [69]

:[68]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_196_0"@17197
conv.s.v
push.s "* (It's a Susie-like statue.)/%"@17198
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[69]
push.v self.sprite_index
pushi.e 2908
cmp.i.v EQ
bf [76]

:[70]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [75]

:[71]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [73]

:[72]
push.s "obj_npc_sign_slash_Other_10_gml_200_0"@17199
conv.s.v
push.s "NO TOUCHING MY DOLL WHEN I'M NOT HERE!!"@17200
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text
pushloc.v local.small_text
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_211_0_b"@17201
conv.s.v
push.s "* So^1, uh..^1. this was in the gift you gave me./"@17202
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_212_0"@17203
conv.s.v
push.s "\\E1* ..^1. the hell did you have this^1, Kris?/"@17204
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 19
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_214_0_b"@17205
conv.s.v
push.s "\\EJ* Oooh^1, can I make it a little dress?\\f0/%"@17206
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [74]

:[73]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_218_0"@17207
conv.s.v
push.s "\\E2* Susie^1, if you don't want it^1, Kris would take it!/"@17208
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 5
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_220_0"@17209
conv.s.v
push.s "\\E5* When did I say I was gonna give it away!?/%"@17210
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[74]
b [76]

:[75]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_225_0_b"@17211
conv.s.v
push.s "* (It's a doll. Visually^1, it resembles Susie.)/%"@17212
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[76]
pushbltn.v builtin.room
pushi.e 163
cmp.i.v EQ
bf [87]

:[77]
push.v self.sprite_index
pushi.e 674
cmp.i.v EQ
bf [81]

:[78]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [80]

:[79]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_207_0"@17213
conv.s.v
push.s "\\E1* Ah^1, Kris. Still stumped by this simple - ah - diversion?/"@17214
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_208_0"@17215
conv.s.v
push.s "\\E6* Well^1, put your neurons back in the crayon box^1, Kris./"@17216
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_209_0"@17217
conv.s.v
push.s "\\EE* I can already feel the solution welling up in my brain cavity./"@17218
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_210_0"@17219
conv.s.v
push.s "\\E2* \"Eureka!\"/"@17220
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_211_0"@17221
conv.s.v
push.s "\\E7* Is what I will say. Now go./%"@17222
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [81]

:[80]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_214_0"@17223
conv.s.v
push.s "\\E5* Ah^1, Kris. Don't distract me while I'm deep in thought./"@17224
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_215_0"@17225
conv.s.v
push.s "\\E1* If only I could Alt+Tab away from you in real life.../%"@17226
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[81]
push.v self.sprite_index
pushi.e 176
cmp.i.v EQ
bf [85]

:[82]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [84]

:[83]
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_224_0"@17227
conv.s.v
push.s "\\E0* If only Lesser Dad was here to help!/"@17228
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_225_0"@17229
conv.s.v
push.s "\\E1* He's a regular Puzzle Pagliacci!/"@17230
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_227_0"@17231
conv.s.v
push.s "\\EK* Uh^1, you mean like^1, a genius?/"@17232
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "6"@3595
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_229_0"@17233
conv.s.v
push.s "\\E6* No^1, he's more like a sad clown./%"@17234
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [85]

:[84]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_232_0"@17235
conv.s.v
push.s "\\E1* Hurry up^1, Kris. I don't wanna look at Berdly./%"@17236
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[85]
push.v self.sprite_index
pushi.e 1230
cmp.i.v EQ
bf [87]

:[86]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_239_0"@17237
conv.s.v
push.s "* This puzzle..^1. I think I got it on the download.../"@17238
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_240_0"@17239
conv.s.v
push.s "* I just need to datamine the answers from the console.../"@17240
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_241_0"@17241
conv.s.v
push.s "* The answer's in the code.../"@17242
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_242_0"@17243
conv.s.v
push.s "* (All he's managed to do is get a child's toy to play a beep version of nursery rhyme music)/%"@17244
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[87]
pushbltn.v builtin.room
pushi.e 164
cmp.i.v EQ
bf [94]

:[88]
push.v self.sprite_index
pushi.e 670
cmp.i.v EQ
bf [90]

:[89]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_251_0"@17245
conv.s.v
push.s "\\EB* Kris^1, leave the controls alone!/"@17246
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_252_0"@17247
conv.s.v
push.s "\\E9* If you get sweat on the controls^1, it's^1,/"@17248
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_253_0"@17249
conv.s.v
push.s "\\EC* It's going to eat up my inputs!/"@17250
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_254_0"@17251
conv.s.v
push.s "\\EB* So just^1, let me solve this!/%"@17252
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[90]
push.v self.sprite_index
pushi.e 174
cmp.i.v EQ
bf [94]

:[91]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [93]

:[92]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_262_0"@17253
conv.s.v
push.s "\\E2* What a bird-brain^1, right^1, Lancer?/"@17254
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_264_0"@17255
conv.s.v
push.s "\\E1* Hoho^1! Yeah^1! All of his body parts are bird ones!/"@17256
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_266_0"@17257
conv.s.v
push.s "\\EA* Lancer^1, tell Kris our sick scheme./"@17258
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_268_0"@17259
conv.s.v
push.s "\\E0* So..^1. when we make track jackets.../"@17260
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_269_0"@17261
conv.s.v
push.s "\\E3* I'm making his a different color^1! Hoho^1! (cough)/%"@17262
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [94]

:[93]
push.s "obj_npc_sign_slash_Other_10_gml_271_0"@17263
conv.s.v
push.s "I'm as brittle as a biscuit!"@17264
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 1
conv.i.v
push.s "lancer"@4751
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_274_0"@17265
conv.s.v
push.s "\\E1* Alright^1, we had our laughs. Hurry up^1, Kris./"@17266
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_275_0"@17267
conv.s.v
push.s "\\E0* Lancer's getting..^1. weak.\\f0/%"@17268
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[94]
pushbltn.v builtin.room
pushi.e 165
cmp.i.v EQ
bf [106]

:[95]
push.v self.sprite_index
pushi.e 670
cmp.i.v EQ
bf [99]

:[96]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_287_0"@17269
conv.s.v
push.s "\\E5* K-Kris..^1. you.../"@17270
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_288_0"@17271
conv.s.v
push.s "\\E5* Kris^1, YOU know how skilled I am at puzzles^1, right!?/"@17272
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_289_0"@17273
conv.s.v
push.s "\\ED* Tell her!^1! TELL HER about the puzzle I solved!/"@17274
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_290_0"@17275
conv.s.v
push.s "\\E7* Th-then..^1. we can..^1. how about we.../"@17276
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_291_0"@17277
conv.s.v
push.s "\\ED* Have her go in the other room^1, and^1, solve it^1, together?/%"@17278
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [99]

:[98]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_295_0"@17279
conv.s.v
push.s "\\ED* Fine^1! G..^1. Go ahead and listen to SUSIE^1, Kris!/"@17280
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_296_0"@17281
conv.s.v
push.s "\\E7* SUSIE^1! Are you hearing that?^1! Y-you.../"@17282
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_297_0"@17283
conv.s.v
push.s "\\ED* You'll be a laughingstock^1, do you realize that^1, Kris!?/%"@17284
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[99]
push.v self.sprite_index
pushi.e 174
cmp.i.v EQ
bf [106]

:[100]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [105]

:[101]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [103]

:[102]
push.s "obj_npc_sign_slash_Other_10_gml_305_0"@17285
conv.s.v
push.s "I DON'T NEED TO KNOW THAT!"@17286
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e 76
conv.i.v
pushi.e 412
conv.i.v
pushi.e 10
conv.i.v
push.s "berdly"@4870
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
b [104]

:[103]
push.s "obj_npc_sign_slash_Other_10_gml_305_0"@17285
conv.s.v
push.s "I DON'T NEED TO KNOW THAT!"@17286
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 10
conv.i.v
push.s "berdly"@4870
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[104]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_308_0"@17287
conv.s.v
push.s "\\E7* C'mon^1, Kris^1! Just cover up the whole square thing!/"@17288
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "D"@9480
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_310_0"@17289
conv.s.v
push.s "\\ED* QUIET!^1! No HINTS!^1! This is BIRD to HUMAN!/"@17290
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_311_0"@17291
conv.s.v
push.s "\\EC* That means NO SUSIES^1, AND NO --/"@17292
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_312_0"@17293
conv.s.v
push.s "\\EN* Uhh^1, who is that guy?/"@17294
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_314_0"@17295
conv.s.v
push.s "\\E3* I'm Lancer^1! Pull my tongue and I'll say several phrases!/"@17296
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_315_0"@17297
conv.s.v
push.s "\\E1* Such as \"ow^1,\" \"ouch^1,\" \"aaaah^1,\"\\f0/%"@17298
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [106]

:[105]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_318_0"@17299
conv.s.v
push.s "\\E0* Hurry up. Lancer's getting pale./"@17300
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_320_0"@17301
conv.s.v
push.s "\\E4* (cough) But I like pails!/%"@17302
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[106]
pushbltn.v builtin.room
pushi.e 125
cmp.i.v EQ
bf [109]

:[107]
push.v self.sprite_index
pushi.e 1230
cmp.i.v EQ
bf [109]

:[108]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_330_0"@17303
conv.s.v
push.s "* I went to the store^1, and they needed a signature^1, to use a credit card^1,/"@17304
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_331_0"@17305
conv.s.v
push.s "* But^1, when I tried to encrypt my signature^1,/"@17306
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_332_0"@17307
conv.s.v
push.s "* By drawing random squiggles^1,/"@17308
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_333_0"@17309
conv.s.v
push.s "* They didn't like that./%"@17310
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[109]
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bf [115]

:[110]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [112]

:[111]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_348_0"@17311
conv.s.v
push.s "* Can't even cross the street without getting my ass kicked./"@17312
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_349_0"@17313
conv.s.v
push.s "* I love the city./%"@17314
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [115]

:[112]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_355_0"@17315
conv.s.v
push.s "* We are basically supposed to be part of Queen's Army./"@17316
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_356_0"@17317
conv.s.v
push.s "* But^1, until she takes over the world^1, we still have to work./%"@17318
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [115]

:[114]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_360_0"@17319
conv.s.v
push.s "* Living as a salary man.../"@17320
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_361_0"@17321
conv.s.v
push.s "* Maybe I was assimilated before I got controlled...?/%"@17322
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[115]
pushbltn.v builtin.room
pushi.e 139
cmp.i.v EQ
bf [123]

:[116]
push.v self.sprite_index
pushi.e 2984
cmp.i.v EQ
bf [118]

:[117]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_371_0"@17323
conv.s.v
push.s "\\E1* Next Up Is My CD Of Vintage Hard Disk Noises/"@17324
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_373_0"@17325
conv.s.v
push.s "\\E8* (Kris^1, please hurry...)/%"@17326
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[118]
push.v self.sprite_index
pushi.e 2367
cmp.i.v EQ
bf [123]

:[119]
pushi.e 0
pop.v.i self.image_index
pushi.e 1063
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [123]

:[120]
pushi.e 1063
pushenv [122]

:[121]
pushi.e 1
pop.v.b self.dismiss

:[122]
popenv [121]
exit.i

:[123]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [131]

:[124]
push.v self.sprite_index
pushi.e 1276
cmp.i.v EQ
bf [131]

:[125]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [127]

:[126]
pushi.e -5
pushi.e 459
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [128]

:[127]
push.e 0

:[128]
bf [130]

:[129]
pushi.e 1238
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [131]

:[130]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_380_0"@17328
conv.s.v
push.s "* (It's a mannequin with a dress on it.)/%"@17329
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[131]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [134]

:[132]
push.v self.sprite_index
pushi.e 3124
cmp.i.v EQ
bf [134]

:[133]
pushi.e 1234
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[134]
pushbltn.v builtin.room
pushi.e 200
cmp.i.v EQ
bf [160]

:[135]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
bf [155]

:[136]
push.v self.visible
pushi.e 0
cmp.i.v EQ
bf [138]

:[137]
pushglb.v global.plot
pushi.e 150
cmp.i.v LT
b [139]

:[138]
push.e 0

:[139]
bf [145]

:[140]
pushi.e 124
pushenv [142]

:[141]
pushi.e 1
pop.v.i self.con

:[142]
popenv [141]
pushi.e 968
pushenv [144]

:[143]
pushi.e 1
pop.v.b self.remove_collider

:[144]
popenv [143]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[145]
push.v self.sprite_index
pushi.e 2891
cmp.i.v EQ
bf [147]

:[146]
push.v self.read
pushi.e 0
cmp.i.v EQ
b [148]

:[147]
push.e 0

:[148]
bf [153]

:[149]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 968
pushenv [151]

:[150]
pushi.e 1
pop.v.b self.release_swan

:[151]
popenv [150]
push.v self.read
push.e 1
add.i.v
pop.v.v self.read
exit.i

:[152]
b [154]

:[153]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_444_0_b"@17332
conv.s.v
push.s "* (The lever is stuck.)/%"@17333
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[154]
b [160]

:[155]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GTE
bf [157]

:[156]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_452_0"@17334
conv.s.v
push.s "* (The lever is stuck.)/%"@17333
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [160]

:[157]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [159]

:[158]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_459_0"@17335
conv.s.v
push.s "* (Pulling this lever releases a swan boat.)/"@17336
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_460_0"@17337
conv.s.v
push.s "* (You thought about releasing a ton of swans to clog the river...)/%"@17338
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [160]

:[159]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_465_0"@17339
conv.s.v
push.s "\\EH* (Aww^1, are they reminiscing about our ride...?)/%"@17340
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[160]
pushbltn.v builtin.room
pushi.e 201
cmp.i.v EQ
bf [171]

:[161]
pushi.e -5
pushi.e 343
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [168]

:[162]
pushi.e 124
pushenv [164]

:[163]
pushi.e 1
pop.v.i self.con

:[164]
popenv [163]
pushi.e 969
pushenv [166]

:[165]
pushi.e 1
pop.v.b self.remove_collider

:[166]
popenv [165]
pushi.e 1
pop.v.i global.facing
call.i instance_destroy(argc=0)
popz.v
exit.i

:[167]
b [171]

:[168]
push.v self.sprite_index
pushi.e 2893
cmp.i.v EQ
bf [170]

:[169]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_425_0"@17341
conv.s.v
push.s "\\EJ* A giant hand.../"@17342
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_426_0"@17343
conv.s.v
push.s "\\EH* Sure would be nice to be pet by something like that!/%"@17344
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [171]

:[170]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_430_0"@17345
conv.s.v
push.s "* (Looks like a certain bird is having a ride on the acid river.)/%"@17346
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[171]
pushbltn.v builtin.room
pushi.e 197
cmp.i.v EQ
bf [175]

:[172]
push.v self.x
pushi.e 560
cmp.i.v LT
bf [174]

:[173]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_440_0"@17347
conv.s.v
push.s "* (There's a book here about preventing backtracking.)/%"@17348
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [175]

:[174]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_444_0"@17349
conv.s.v
push.s "* (There's a book here about secret passageway construction.)/%"@17350
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[175]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [180]

:[176]
push.v self.sprite_index
pushi.e 3237
cmp.i.v EQ
bf [178]

:[177]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_491_0"@17351
conv.s.v
push.s "* (It's a familiar-looking statue.)/%"@17352
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[178]
push.v self.sprite_index
pushi.e 2892
cmp.i.v EQ
bf [180]

:[179]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_453_0"@17353
conv.s.v
push.s "* (It's a cybernetic bookshelf.)/"@17354
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_454_0"@17355
conv.s.v
push.s "* (There is a book here about shortcuts that open up later.)/%"@17356
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[180]
pushbltn.v builtin.room
pushi.e 31
cmp.i.v EQ
bf [190]

:[181]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [190]

:[182]
push.v self.sprite_index
pushi.e 854
cmp.i.v EQ
bf [186]

:[183]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [185]

:[184]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_467_0"@17357
conv.s.v
push.s "\\EK* Hey^1, what are those metal people shapes in the cupboard./"@17358
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_468_0"@17359
conv.s.v
push.s "\\EK* ..^1. like^1, uh^1, handcuffs for a little guy's whole body?/"@17360
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_470_0"@17361
conv.s.v
push.s "\\E4* Hahaha^1! Those are for gingerbread^1, Susie./"@17362
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_471_0"@17363
conv.s.v
push.s "\\E0* Gingerbread men..^1. and gingerbread monsters^1, of course./"@17364
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 10
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_473_0"@17365
conv.s.v
push.s "\\EA* ..^1. Gingerbread monsters^1, huh...? Cool./%"@17366
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [186]

:[185]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_477_0"@17367
conv.s.v
push.s "\\E0* Gingerbread..^1. sounds like something Noelle would like./"@17368
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_479_0"@17369
conv.s.v
push.s "\\E0* Hm? ..^1. Noelle?/"@17370
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_481_0"@17371
conv.s.v
push.s "\\EK* Uh^1, nothing./%"@17372
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[186]
push.v self.sprite_index
pushi.e 894
cmp.i.v EQ
bf [190]

:[187]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [189]

:[188]
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_490_0"@17373
conv.s.v
push.s "\\E0* Hm^1, hm.../"@17374
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_492_0"@17375
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_493_0"@17376
conv.s.v
push.s "\\EC* (She's sneaking sugar right out of the bag...)/"@17377
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_495_0"@17378
conv.s.v
push.s "\\E1* Susie?/"@17379
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 16
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_497_0"@17380
conv.s.v
push.s "\\EG* Wh-what?/"@17381
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_499_0"@17382
conv.s.v
push.s "\\E4* My pie^1, my rules./"@17383
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_501_0"@17384
conv.s.v
push.s "\\E3* G-got it./%"@17385
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [190]

:[189]
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_505_0"@17386
conv.s.v
push.s "\\E1* Kris^1, no sneaking ingredients until you wash your hands./"@17387
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_507_0"@17388
conv.s.v
push.s "\\E2* (Don't worry^1, Kris. I'll sneak stuff instead.)/%"@17389
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[190]
pushbltn.v builtin.room
pushi.e 206
cmp.i.v EQ
bf [209]

:[191]
push.v self.sprite_index
pushi.e 703
cmp.i.v EQ
bt [193]

:[192]
push.v self.sprite_index
pushi.e 701
cmp.i.v EQ
b [194]

:[193]
push.e 1

:[194]
bf [209]

:[195]
pushi.e 0
pop.v.b local.have_susie
pushi.e 276
pushenv [201]

:[196]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [198]

:[197]
push.v self.follow
pushi.e 1
cmp.i.v EQ
b [199]

:[198]
push.e 0

:[199]
bf [201]

:[200]
pushi.e 1
pop.v.b local.have_susie

:[201]
popenv [196]
pushloc.v local.have_susie
conv.v.b
not.b
bf [206]

:[202]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [204]

:[203]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_531_0"@17390
conv.s.v
push.s "\\EI* Kris^1, your deep concern for me..^1. is dextrose./"@17391
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_532_0"@17392
conv.s.v
push.s "\\E4* But stay sanguine^1, my fellow bluebird./"@17393
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_533_0"@17394
conv.s.v
push.s "\\EI* I'll find some way to help you yet!/%"@17395
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [205]

:[204]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_537_0"@17396
conv.s.v
push.s "\\EI* Kris..^1. such insistence. Sorry but^1, I must turn you down./"@17397
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_538_0"@17398
conv.s.v
push.s "\\EF* I've chosen Susan's route^1, in the VN of life.../%"@17399
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[205]
b [209]

:[206]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [208]

:[207]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_545_0"@17400
conv.s.v
push.s "\\EF* Ahh^1, Susan. Returned to feast upon my sprightly visage?/"@17401
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "4"@608
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_547_0"@17402
conv.s.v
push.s "\\E4* What^1? You look awful./"@17403
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 21
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_549_0"@17404
conv.s.v
push.s "\\EL* (Ah^1, such dere..^1. is tsun^1, to my ears.)/%"@17405
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [209]

:[208]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_553_0"@17406
conv.s.v
push.s "\\E4* What the hell are you saying?/"@17407
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 15
conv.i.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_555_0"@17408
conv.s.v
push.s "\\EF* (How about a kiss^1, for luck?)/"@17409
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_557_0"@17410
conv.s.v
push.s "\\E5* Stop mumbling!/"@17411
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "F"@5969
conv.s.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_559_0"@17412
conv.s.v
push.s "\\EF* (A kiss for me^1, to change RNG?)/%"@17413
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[209]
pushbltn.v builtin.room
pushi.e 152
cmp.i.v EQ
bf [229]

:[210]
push.v self.sprite_index
pushi.e 136
cmp.i.v EQ
bf [229]

:[211]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bt [213]

:[212]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
b [214]

:[213]
push.e 1

:[214]
bf [216]

:[215]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_573_0"@17414
conv.s.v
push.s "* (It's a dumpster..^1. seems like there's a pillow inside.)/%"@17415
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [229]

:[216]
pushi.e 13
conv.i.v
call.i gml_Script_scr_weaponcheck_inventory(argc=1)
conv.v.b
bt [218]

:[217]
pushi.e -5
pushi.e 4
push.v [array]self.charweapon
pushi.e 13
cmp.i.v EQ
b [219]

:[218]
push.e 1

:[219]
pop.v.b local.haveRing
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [221]

:[220]
pushloc.v local.haveRing
conv.v.b
b [222]

:[221]
push.e 0

:[222]
bf [224]

:[223]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_580_0"@17417
conv.s.v
push.s "* DON'T WORRY^1! FOR OUR [No Money Back Guaranttee]/"@17418
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_581_0"@17419
conv.s.v
push.s "* THIS IS [One Purchase] YOU WILL [Regret] FOR THE REST OF YOUR LIFE!/%"@17420
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [229]

:[224]
call.i gml_Script_scr_sideb_remainingencounters(argc=0)
pop.v.v local.strong_check
pushloc.v local.strong_check
pushi.e 0
cmp.i.v EQ
bf [226]

:[225]
pushi.e 1169
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [229]

:[226]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [228]

:[227]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_594_0"@17422
conv.s.v
push.s "* LOOKING FOR [Irresistable Deals] THAT WILL [Blow Your Mind!?]/"@17423
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_595_0"@17424
conv.s.v
push.s "* WELL [Shut Your Mouth] BECAUSE YOU ARE [A Weakling!]/"@17425
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_596_0"@17426
conv.s.v
push.s "* TRY A LITTLE [Friday Night Work Out].../"@17427
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_597_0"@17428
conv.s.v
push.s "* THEN I'LL SHOW YOU MY/"@17429
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_598_0"@17430
conv.s.v
push.s "* THEN I'LL SHOW YOU MY/"@17429
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_642_0_b"@17431
conv.s.v
pushloc.v local.strong_check
call.i string(argc=1)
push.s "* ~1 LEFT./%"@17432
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
b [229]

:[228]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_602_0"@17433
conv.s.v
push.s "* GET STRONGER!/"@17434
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_603_0"@17435
conv.s.v
push.s "* THEN I'LL SHOW YOU MY/"@17429
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_604_0"@17436
conv.s.v
push.s "* THEN I'LL SHOW YOU MY/"@17429
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_649_0"@17437
conv.s.v
pushloc.v local.strong_check
call.i string(argc=1)
push.s "* ~1 LEFT./%"@17432
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v

:[229]
pushbltn.v builtin.room
pushi.e 138
cmp.i.v EQ
bf [232]

:[230]
push.v self.sprite_index
pushi.e 700
cmp.i.v EQ
bf [232]

:[231]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_617_0"@17438
conv.s.v
push.s "* (It's hard to see into the ice.)/%"@17439
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[232]
pushbltn.v builtin.room
pushi.e 130
cmp.i.v EQ
bf [259]

:[233]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [238]

:[234]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_626_0"@17440
conv.s.v
push.s "* (You became lost in the craftsmanship.)/"@17441
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_627_0"@17442
conv.s.v
push.s "* (Of the boxes.)/%"@17443
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [237]

:[235]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_698_0"@17444
conv.s.v
push.s "\\E2* Hell yeah^1, boxes. This is what it's about./%"@17445
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [237]

:[236]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_702_0"@17446
conv.s.v
push.s "\\EQ* Kris^1, you were living it up without us^1, huh.../%"@17447
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[237]
b [259]

:[238]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bt [240]

:[239]
pushglb.v global.plot
pushi.e 75
cmp.i.v LT
b [241]

:[240]
push.e 1

:[241]
bf [243]

:[242]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_633_0"@17448
conv.s.v
push.s "* (You became lost in the craftsmanship.)/%"@17449
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [259]

:[243]
push.i 231204
setowner.e
pushi.e -5
pushi.e 347
dup.i 1
push.v [array]self.flag
dup.v 0
dup.i 4 48
push.e 1
add.i.v
pop.i.v [array]global.flag
popz.v
pushi.e -5
pushi.e 347
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [245]

:[244]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_641_0"@17450
conv.s.v
push.s "\\E4* What is this!? Fahahahaha.../"@17451
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_642_0"@17452
conv.s.v
push.s "\\E0* ..^1. phew!/"@17453
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_643_0"@17454
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_644_0"@17455
conv.s.v
push.s "\\E2* .../"@15724
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_645_0"@17456
conv.s.v
push.s "\\E8* (Kris^1, can you stop looking at this?)/%"@17457
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[245]
pushi.e -5
pushi.e 347
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [247]

:[246]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_651_0"@17458
conv.s.v
push.s "* (You became lost in the craftsmanship.)/"@17441
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_653_0"@17459
conv.s.v
push.s "\\E8* (Why do we have to look at it twice?)/%"@17460
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[247]
pushi.e -5
pushi.e 347
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [249]

:[248]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_659_0"@17461
conv.s.v
push.s "* (There's so much to look at here.)/"@17462
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_661_0"@17463
conv.s.v
push.s "\\E8* (Kris!?)/%"@17464
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[249]
pushi.e -5
pushi.e 347
push.v [array]self.flag
pushi.e 4
cmp.i.v EQ
bf [251]

:[250]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_667_0"@17465
conv.s.v
push.s "* (It's a work of art.)/"@17466
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_669_0"@17467
conv.s.v
push.s "\\E8* (What part are you looking at?)/%"@17468
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[251]
pushi.e -5
pushi.e 347
push.v [array]self.flag
pushi.e 5
cmp.i.v EQ
bf [253]

:[252]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_675_0"@17469
conv.s.v
push.s "\\E2* If I say I like it^1, will you stop looking at it?/%"@17470
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[253]
pushi.e -5
pushi.e 347
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [255]

:[254]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_681_0"@17471
conv.s.v
push.s "\\E4* Hey^1, isn't this thing just the best...?/%"@17472
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[255]
pushi.e -5
pushi.e 347
push.v [array]self.flag
pushi.e 7
cmp.i.v EQ
bf [257]

:[256]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_687_0"@17473
conv.s.v
push.s "* (This statue seems to suck bad.)/"@17474
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_689_0"@17475
conv.s.v
push.s "\\E8* KRIS!!!!!!/%"@17476
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[257]
pushi.e -5
pushi.e 347
push.v [array]self.flag
pushi.e 8
cmp.i.v GTE
bf [259]

:[258]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_695_0"@17477
conv.s.v
push.s "* (There is no reason to look at this.)/%"@17478
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[259]
pushbltn.v builtin.room
pushi.e 140
cmp.i.v EQ
bf [261]

:[260]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_706_0"@17479
conv.s.v
push.s "* (It's a dumpster. Looks like there's a pillow inside.)/%"@17480
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[261]
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [264]

:[262]
push.v self.extflag
push.s "roulsBlock"@14146
cmp.s.v EQ
bf [264]

:[263]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_714_0"@17481
conv.s.v
push.s "* (An invasive species of puzzle has taken over the room.)/%"@17482
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[264]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [269]

:[265]
push.v self.extflag
push.s "block"@14155
cmp.s.v EQ
bf [267]

:[266]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_723_0"@17483
conv.s.v
push.s "* (An invasive species of puzzle has taken over the room.)/%"@17482
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[267]
push.v self.extflag
push.s "toilet"@14157
cmp.s.v EQ
bf [269]

:[268]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_821_0_b"@17484
conv.s.v
push.s "* (For some strange reason^1, a giant toilet-shaped toilet is blocking the way.)/%"@17485
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[269]
pushbltn.v builtin.room
pushi.e 102
cmp.i.v EQ
bf [294]

:[270]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [293]

:[271]
pushi.e -5
pushi.e 367
push.v [array]self.flag
pushi.e -5
pushi.e 407
push.v [array]self.flag
add.v.v
pushi.e -5
pushi.e 420
push.v [array]self.flag
add.v.v
pop.v.v local.total_checkmarks
pushloc.v local.total_checkmarks
pushi.e 3
cmp.i.v LT
bf [281]

:[272]
pushi.e -5
pushi.e 359
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [274]

:[273]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 359
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_762_0"@17487
conv.s.v
push.s "* I'm the Hacker. I'm going after the blue checksmarks./"@17488
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_763_0"@17489
conv.s.v
push.s "* Find 3 in the Cyber Field ahead^1, and I'll join your [City]./"@17490
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_764_0"@17491
conv.s.v
push.s "* You just look like the kind of folks who have a [Cool City]./%"@17492
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [280]

:[274]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_770_0"@17493
conv.s.v
pushloc.v local.total_checkmarks
push.s "* According to cyber^1, you found ~1 blue checksmarks out of 3./"@17494
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushloc.v local.total_checkmarks
pushi.e 0
cmp.i.v EQ
bf [276]

:[275]
push.s "obj_npc_sign_slash_Other_10_gml_772_0"@17495
conv.s.v
push.s "* 0^1, not bad for a beginner. Your \"Checks Quest\" is only beginning./%"@17496
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[276]
pushloc.v local.total_checkmarks
pushi.e 1
cmp.i.v EQ
bf [278]

:[277]
push.s "obj_npc_sign_slash_Other_10_gml_773_0"@17497
conv.s.v
push.s "* 1^1, the biggest prime number. Your \"Checks Quest\" is just started./%"@17498
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[278]
pushloc.v local.total_checkmarks
pushi.e 2
cmp.i.v EQ
bf [280]

:[279]
push.s "obj_npc_sign_slash_Other_10_gml_774_0"@17499
conv.s.v
push.s "* 2. Not bad for amateurs but you need to learn what the number \"3\" is./%"@17500
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[280]
b [292]

:[281]
pushi.e -5
pushi.e 359
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
pop.v.b local.met_hacker
pushi.e -5
pushi.e 359
push.v [array]self.flag
pushi.e 2
cmp.i.v LT
bf [292]

:[282]
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 359
pop.v.v [array]self.flag
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [284]

:[283]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 357
pop.v.v [array]self.flag

:[284]
pushi.e 1029
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [288]

:[285]
pushi.e 1029
pushenv [287]

:[286]
pushi.e 1
pop.v.i self.fireworks_con

:[287]
popenv [286]

:[288]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushloc.v local.met_hacker
conv.v.b
not.b
bf [290]

:[289]
push.s "obj_npc_sign_slash_Other_10_gml_864_0"@17503
conv.s.v
push.s "* Wow^1, I'm the Hacker and you found all 3 checkmarks!/"@17504
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [291]

:[290]
push.s "obj_npc_sign_slash_Other_10_gml_783_0"@17505
conv.s.v
push.s "* You found 3 checkmarks?^1! Elite..^1. I will now live in your city./"@17506
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[291]
push.s "obj_npc_sign_slash_Other_10_gml_784_0"@17507
conv.s.v
push.s "* Maybe our cyber paths will cyber cross once more in Queen's Mansion./"@17508
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_785_0"@17509
conv.s.v
push.s "* In the meantime^1, let me show you the power of the blue checkmarks.../%"@17510
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[292]
b [294]

:[293]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_789_0"@17511
conv.s.v
push.s "* I just wanted to make a cool demoscene for you./"@17512
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_790_0"@17513
conv.s.v
push.s "* Now that I finished this I can show up all sorts of places./%"@17514
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[294]
pushbltn.v builtin.room
pushi.e 215
cmp.i.v EQ
bf [300]

:[295]
pushi.e -5
pushi.e 343
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [299]

:[296]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 343
pop.v.v [array]self.flag
pushi.e 140
pop.v.i global.plot
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1220
pushenv [298]

:[297]
pushi.e 1
pop.v.i self.con

:[298]
popenv [297]
pushi.e 1
pop.v.i self.skip
pushi.e 2
pop.v.i self.image_index
b [300]

:[299]
pushi.e 0
pop.v.i self.skip
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_813_0"@17515
conv.s.v
push.s "* (Pulling the lever back would undo the high-five.)/"@17516
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_814_0"@17517
conv.s.v
push.s "* (You can't undo a high-five.)/%"@17518
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[300]
pushbltn.v builtin.room
pushi.e 136
cmp.i.v EQ
bf [302]

:[301]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_821_0"@17519
conv.s.v
push.s "* (It's deteriorated from overuse.)/%"@17520
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[302]
pushbltn.v builtin.room
pushi.e 136
cmp.i.v EQ
bf [304]

:[303]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_827_0"@17521
conv.s.v
push.s "* (The room has been razed by an invasive species of puzzle.)/%"@17522
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[304]
pushbltn.v builtin.room
pushi.e 214
cmp.i.v EQ
bf [306]

:[305]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_833_0"@17523
conv.s.v
push.s "* (Dear guests^1, please note our mice WILL turn at every crossing.)/"@17524
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_834_0"@17525
conv.s.v
push.s "* (Our vermin have been specially hand-picked for higher turning^1. Enjoy.)/%"@17526
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[306]
pushbltn.v builtin.room
pushi.e 160
cmp.i.v EQ
bf [311]

:[307]
push.v self.sprite_index
pushi.e 2851
cmp.i.v EQ
bf [311]

:[308]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [310]

:[309]
pushi.e 1185
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [311]

:[310]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_849_0"@17527
conv.s.v
push.s "* (You considered dropping bath bombs inside^1, but there's no time.)/%"@17528
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[311]
pushbltn.v builtin.room
pushi.e 162
cmp.i.v EQ
bf [315]

:[312]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [314]

:[313]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_858_0"@17529
conv.s.v
push.s "* (Seems like the room is overflowing with shovels.)/"@17530
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_859_0"@17531
conv.s.v
push.s "* (And^1, you don't have anything to dig through them with...)/%"@17532
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [315]

:[314]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_863_0"@17533
conv.s.v
push.s "* (There's no way to dig out of this mess.)/%"@17534
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[315]
pushbltn.v builtin.room
pushi.e 78
cmp.i.v EQ
bf [332]

:[316]
push.v self.sprite_index
pushi.e 1305
cmp.i.v EQ
bf [321]

:[317]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [319]

:[318]
push.s "obj_npc_sign_slash_Other_10_gml_873_0"@17535
conv.s.v
push.s "You mean a mom?"@17536
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 22
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_876_0"@17537
conv.s.v
push.s "\\E1* Susie^1, Kris^1! Toothpaste boy!/"@17538
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_877_0"@17539
conv.s.v
push.s "\\E2* Queen is teaching me all sorts of things about being a bad guy./"@17540
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_878_0"@17541
conv.s.v
push.s "\\E1* She's like..^1. How do I put this.../"@17542
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_879_0"@17543
conv.s.v
push.s "\\E2* A third father to me./"@17544
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_880_0"@17545
conv.s.v
push.s "\\E3* A girldad^1, if you will...\\f0/%"@17546
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [320]

:[319]
push.s "obj_npc_sign_slash_Other_10_gml_883_0"@17547
conv.s.v
push.s "Peachboy Peachboy"@17548
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
pushi.e 380
conv.i.v
pushi.e 12
conv.i.v
push.s "queen"@3525
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_886_0"@17549
conv.s.v
push.s "\\E1* Go outside and play^1, Peachboy!\\f0/%"@17550
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[320]
b [332]

:[321]
pushi.e -5
pushi.e 388
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bt [323]

:[322]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 0
cmp.i.v EQ
b [324]

:[323]
push.e 1

:[324]
bf [328]

:[325]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [327]

:[326]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_895_0"@17551
conv.s.v
push.s "\\E1* Ralsei Will Soon Setup.EXE My Room For Me Upstairs/"@17552
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_896_0"@17553
conv.s.v
push.s "\\ED* Do Not Worry/"@17554
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_897_0"@17555
conv.s.v
push.s "\\EP* I Have A Long Spreadsheet Of Demands Ready Ha Ha/"@17556
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_898_0"@17557
conv.s.v
push.s "\\E1* Though^1, Even If I Have An Awesome Room/"@17558
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_899_0"@17559
conv.s.v
push.s "\\E5* Who Will Be There To Force To Enjoy It/"@17560
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_900_0"@17561
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_901_0"@17562
conv.s.v
push.s "\\EA* ..^1. I Wonder How Noelle Is Doing Now/%"@17563
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [328]

:[327]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_905_0"@17564
conv.s.v
push.s "\\EA* ..^1. I Wonder How Noelle Is Doing Now/%"@17563
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[328]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 9
cmp.i.v GTE
bf [332]

:[329]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [331]

:[330]
push.s "obj_npc_sign_slash_Other_10_gml_913_0"@17565
conv.s.v
push.s "Peachboy! Peachboy!"@17566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
pushi.e 375
conv.i.v
pushi.e 1
conv.i.v
push.s "lancer"@4751
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_916_0"@17567
conv.s.v
push.s "\\E1* Welcome This Entire Castle Is Now My Room/"@17568
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_918_0"@17569
conv.s.v
push.s "\\EQ* U-umm^1, I was going to set up something upstairs./"@17570
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_920_0"@17571
conv.s.v
push.s "\\E1* Why I Already Have Everything I Could Ever Want/"@17572
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_921_0"@17573
conv.s.v
push.s "\\E9* Friendship^1, Fans^1, And A Small Round Boy/"@17574
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_922_0"@17575
conv.s.v
push.s "\\ED* Now Go And Play With Your Friends^1, Peachboy\\f0/%"@17576
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [332]

:[331]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_926_0"@17577
conv.s.v
push.s "\\E1* Kris^1, Do Give Noelle My Regards/"@17578
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_927_0"@17579
conv.s.v
push.s "\\ED* Any Leftover Regards You Can Give To Berdly/%"@17580
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[332]
pushbltn.v builtin.room
pushi.e 204
cmp.i.v EQ
bf [338]

:[333]
push.v self.x
pushi.e 800
cmp.i.v GT
bf [338]

:[334]
pushi.e 1062
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [338]

:[335]
pushi.e 1062
pushenv [337]

:[336]
pushi.e 1
pop.v.i self.book_con

:[337]
popenv [336]
exit.i

:[338]
pushbltn.v builtin.room
pushi.e 211
cmp.i.v EQ
bf [349]

:[339]
push.v self.sprite_index
pushi.e 2907
cmp.i.v EQ
bf [344]

:[340]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 393
pop.v.v [array]self.flag
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_952_0"@17582
conv.s.v
push.s "\\E7* Woah^1, this statue rocks!/"@17583
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_953_0"@17584
conv.s.v
push.s "\\E2* Hey^1, Ralsei^1, can we take this for my room?/"@17585
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_955_0"@17586
conv.s.v
push.s "\\EK* Huh? Umm..^1. th-that would be stealing.../"@17587
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_957_0"@17588
conv.s.v
push.s "* (You stole the Susie-like Statue...)/%"@17589
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 967
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [344]

:[341]
pushi.e 967
pushenv [343]

:[342]
pushi.e 1
pop.v.b self.steal_susie

:[343]
popenv [342]

:[344]
push.v self.sprite_index
pushi.e 2906
cmp.i.v EQ
bf [349]

:[345]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 394
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_970_0"@17591
conv.s.v
push.s "* (From the search 'is ice e real cryptid')/"@17592
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_971_0"@17593
conv.s.v
push.s "* (It's a cross between ICE-E and something else...)/"@17594
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_973_0"@17595
conv.s.v
push.s "\\E2* Hey Kris^1, take this for your room./"@17596
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_975_0"@17597
conv.s.v
push.s "\\EK* Umm^1, that would be stealing.../"@17598
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_977_0"@17599
conv.s.v
push.s "* (You stole the ICE-E statue for some reason.)/%"@17600
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 967
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [349]

:[346]
pushi.e 967
pushenv [348]

:[347]
pushi.e 1
pop.v.b self.steal_icee

:[348]
popenv [347]

:[349]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [358]

:[350]
pushi.e -5
pushi.e 382
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [352]

:[351]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_991_0"@17602
conv.s.v
push.s "* (Room has been closed due to kitchen vermin.)/%"@17603
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [353]

:[352]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_996_0"@17604
conv.s.v
push.s "* (Room has been closed due to haters.)/%"@17605
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[353]
push.v self.sprite_index
pushi.e 3235
cmp.i.v EQ
bf [355]

:[354]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
b [356]

:[355]
push.e 0

:[356]
bf [358]

:[357]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1090_0"@17606
conv.s.v
push.s "* (Closed.)/%"@17607
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[358]
pushbltn.v builtin.room
pushi.e 54
cmp.i.v EQ
bf [360]

:[359]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1046_0"@17608
conv.s.v
push.s "* (He doesn't seem to be awake.)/%"@17609
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[360]
pushbltn.v builtin.room
pushi.e 100
cmp.i.v EQ
bf [362]

:[361]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1103_0"@17610
conv.s.v
push.s "* Sorry^1, the roller coaster is under construction./"@17611
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1104_0"@17612
conv.s.v
push.s "* Apparently^1, someone tried to use it anyway.../%"@17613
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[362]
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [372]

:[363]
push.v self.x
pushi.e 60
cmp.i.v LT
bf [370]

:[364]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1112_0"@17614
conv.s.v
push.s "\\E2* Oh^1, Kris^1! It's a spelling challenge..^1. isn't that N-I-C-E?/"@17615
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1114_0"@17616
conv.s.v
push.s "\\E2* Nah^1, more like they're F- \\f1 /%"@17617
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1136_0"@17618
conv.s.v
push.s "U-N!"@17619
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text_a
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [366]

:[365]
pushloc.v local.small_text_a
pushi.e 56
conv.i.v
pushi.e 400
conv.i.v
pushi.e 17
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
b [367]

:[366]
pushloc.v local.small_text_a
push.s "mid"@5602
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 17
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[367]
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [369]

:[368]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1119_0"@17621
conv.s.v
push.s "\\EH* G-O-O-D-L-U-C-K-K-R-I-S! \\f1 /%"@17622
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1142_0_b"@17623
conv.s.v
push.s "Goo Duckris?"@17624
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text_b
pushloc.v local.small_text_b
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[369]
b [372]

:[370]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1126_0"@17626
conv.s.v
push.s "\\E2* Yeah^1, I see letters^1, I basically check out./%"@17627
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [372]

:[371]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1130_0"@17628
conv.s.v
push.s "\\E0* Always been annoying how much your hair smells like apples./"@17629
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1131_0"@17630
conv.s.v
push.s "\\EY* Never been easy not taking a bite in class..^1. heheh./%"@17631
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[372]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [379]

:[373]
push.v self.x
pushi.e 100
cmp.i.v LT
bf [377]

:[374]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1141_0"@17632
conv.s.v
push.s "\\E0* The hell is that^1, a driver's license number?/"@17633
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1142_0"@17634
conv.s.v
push.s "\\E2* Heh^1, can we use it and drive your mom's car?/%"@17635
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [376]

:[375]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1146_0"@17636
conv.s.v
push.s "\\EK* Uhh^1, maybe we could make your mom's car cooler first./"@17637
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1147_0"@17638
conv.s.v
push.s "\\E2* I'm thinking^1, like..^1. purple? With flames./%"@17639
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[376]
b [379]

:[377]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1153_0"@17640
conv.s.v
push.s "\\E2* Kris^1, we'll stand here so you can spell freely!/"@17641
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1155_0"@17642
conv.s.v
push.s "\\E7* Kris^1, spell a swear!/"@17643
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1157_0"@17644
conv.s.v
push.s "\\EQ* Umm^1, I..^1. I don't think they can with these letters./"@17645
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1159_0"@17646
conv.s.v
push.s "\\E0* Oh./"@17647
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1160_0"@17648
conv.s.v
push.s "\\E7* ..^1. wait^1, you checked? \\f1 /%"@17649
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1184_0"@17650
conv.s.v
push.s "Umm, Kris, do your best!"@17651
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v local.small_text
pushloc.v local.small_text
push.s "bottom"@4636
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 17
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [379]

:[378]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1165_0"@17652
conv.s.v
push.s "\\E2* Kris^1, please spell some nice words!/%"@17653
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[379]
pushbltn.v builtin.room
pushi.e 107
cmp.i.v EQ
bf [389]

:[380]
push.v self.x
pushi.e 320
cmp.i.v LT
bf [387]

:[381]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1175_0"@17654
conv.s.v
push.s "\\EA* Heh^1, it would be funny if the puzzle^1, like.../"@17655
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1176_0"@17656
conv.s.v
push.s "\\E2* It's actually missing the one letter you actually need./"@17657
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [383]

:[382]
push.s "obj_npc_sign_slash_Other_10_gml_1180_0"@17658
conv.s.v
push.s "\\EK* Hey^1, stop pretending to write down what I say./%"@17659
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [384]

:[383]
push.s "obj_npc_sign_slash_Other_10_gml_1182_0"@17660
conv.s.v
push.s "\\EY* Heh^1, like to see Berdly try and solve that.../%"@17661
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[384]
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [386]

:[385]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1187_0"@17662
conv.s.v
push.s "\\EK* Hey^1, Kris^1, pretty sure you don't have to do this./%"@17663
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[386]
b [389]

:[387]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1193_0"@17664
conv.s.v
push.s "\\EQ* Uhh^1, perhaps this isn't a real word^1, Kris.../"@17665
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 10
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1195_0"@17666
conv.s.v
push.s "\\EA* Yeah it is. It's ICE-E's catchphrase./"@17667
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1197_0"@17668
conv.s.v
push.s "\\EK* Huh? What's its meaning^1, then?/"@17669
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1199_0"@17670
conv.s.v
push.s "\\E0* Uhh^1, I dunno^1, he just..^1. rolls his eyes up^1, froths his mouth.../"@17671
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1200_0"@17672
conv.s.v
push.s "\\E1* And..^1. says it?/"@17673
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1201_0"@17674
conv.s.v
push.s "\\EB* Or maybe..^1. that's just the muscley guy at the store./%"@17675
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [389]

:[388]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1205_0"@17676
conv.s.v
push.s "\\EJ* Kris^1, this looks like a strange word^1, but.../"@17677
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1206_0"@17678
conv.s.v
push.s "\\E2* Even if it's not real^1, you can still have fun^1, right?/%"@17679
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[389]
pushbltn.v builtin.room
pushi.e 173
cmp.i.v EQ
bf [391]

:[390]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1214_0"@17680
conv.s.v
push.s "* (You became lost in the craftsmanship.)/%"@17449
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[391]
pushbltn.v builtin.room
pushi.e 174
cmp.i.v EQ
bf [398]

:[392]
push.v self.sprite_index
pushi.e 49
cmp.i.v EQ
bf [396]

:[393]
pushi.e -5
pushi.e 453
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [395]

:[394]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1227_0"@17681
conv.s.v
push.s "* WOAH!!^1! YOU SAUCY LITTLE [Sponge] YOU!/"@17682
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1228_0"@17683
conv.s.v
push.s "* DON'T BARGE IN WHEN A MAN IS [ch4nging Forms]!/"@17684
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1229_0"@17685
conv.s.v
push.s "* ..^1. WAIT^1! WAIT [ONE 2nd]^1! IS THAT MY [Esteem Custom3r]?!/"@17686
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1230_0_b"@17687
conv.s.v
push.s "* THANKS TO YOU AND THAT LIL [Hochi Mama]/"@17688
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1231_0"@17689
conv.s.v
push.s "* I AM LIVING [Big]!/"@17690
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1232_0"@17691
conv.s.v
push.s "* SOON I'LL HAVE EVERY[One] IN THIS CITY EATING RIGHT OUT OF MY [$!$!]!/"@17692
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1233_0"@17693
conv.s.v
push.s "* HA HA HA^1! I SURE HOPE NO ONE SEALS THE [Fountain] AROUND NOW./"@17694
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1234_0"@17695
conv.s.v
push.s "* HA HA HA^1! I SURE HOPE. I SURE HOPE./%"@17696
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 453
pop.v.v [array]self.flag
b [396]

:[395]
push.s "spamton"@5523
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1240_0_b"@17697
conv.s.v
push.s "* KID^1! I'M BUSY BECOMING [God]. GO PLAY [Minecrap] OR SOMETHING!/"@17698
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1241_0"@17699
conv.s.v
push.s "* IT'S NOT MY JOB TO BE SOME KIDS' [Extra Boss]!/%"@17700
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[396]
push.v self.sprite_index
pushi.e 2865
cmp.i.v EQ
bf [398]

:[397]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1247_0"@17701
conv.s.v
push.s "* (It's locked.)/%"@17702
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[398]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [403]

:[399]
push.v self.sprite_index
pushi.e 1285
cmp.i.v EQ
bf [403]

:[400]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [402]

:[401]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1224_0"@17703
conv.s.v
push.s "* Hee hee hee..^1. Shall I help you SAVE?/"@17704
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1225_0"@17705
conv.s.v
push.s "* ..^1. No^1, I shan't^1! I haven't the faintest idea what that is.../%"@17706
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [403]

:[402]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1230_0"@17707
conv.s.v
push.s "* Hee hee hee...!/%"@17708
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[403]
pushbltn.v builtin.room
pushi.e 106
cmp.i.v EQ
bf [406]

:[404]
push.v self.sprite_index
pushi.e 3159
cmp.i.v EQ
bf [406]

:[405]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1240_0"@17709
conv.s.v
push.s "* (The camera must be broken.)/%"@17710
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[406]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [410]

:[407]
pushi.e -5
pushi.e 450
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [409]

:[408]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1249_0"@17711
conv.s.v
push.s "* (The treasure of air. Where three are one^1, place one to three.)/"@17712
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 19
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1251_0"@17713
conv.s.v
push.s "\\EJ* Perhaps it means we all have to enter one teacup?/"@17714
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1253_0"@17715
conv.s.v
push.s "\\EK* ..^1. well^1, I don't like doing it but it works./%"@17716
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 450
pop.v.v [array]self.flag
b [410]

:[409]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1258_0"@17717
conv.s.v
push.s "* (The treasure of air. Where three are one^1, place one to three.)/%"@17718
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[410]
pushbltn.v builtin.room
pushi.e 137
cmp.i.v EQ
bf [412]

:[411]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1266_0"@17719
conv.s.v
push.s "* (It's a manhole.)/%"@17720
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
pop.v.i self.doafter

:[412]
pushbltn.v builtin.room
pushi.e 192
cmp.i.v EQ
bf [415]

:[413]
push.v self.sprite_index
pushi.e 2892
cmp.i.v EQ
bf [415]

:[414]
pushi.e 1
pop.v.b self.skip

:[415]
pushbltn.v builtin.room
pushi.e 145
cmp.i.v EQ
bf [417]

:[416]
pushi.e 1
pop.v.b self.skip

:[417]
pushbltn.v builtin.room
pushi.e 207
cmp.i.v EQ
bf [424]

:[418]
push.v self.sprite_index
pushi.e 770
cmp.i.v EQ
bf [420]

:[419]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1324_0"@17721
conv.s.v
push.s "* .../%"@14954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[420]
push.v self.sprite_index
pushi.e 767
cmp.i.v EQ
bf [422]

:[421]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1330_0"@17722
conv.s.v
push.s "\\E1* Amazing So I Can Turn Your Castle Into My Mansion?/"@17723
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 21
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1332_0"@17724
conv.s.v
push.s "\\EL* (W-Wait^1, that's not what I'm saying...)/%"@17725
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[422]
push.v self.sprite_index
pushi.e 799
cmp.i.v EQ
bf [424]

:[423]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_sign_slash_Other_10_gml_1338_0"@17726
conv.s.v
push.s "\\E2* Kris^1, the Fountain is waiting for you!/%"@17727
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[424]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [430]

:[425]
push.v self.sprite_index
pushi.e 2999
cmp.i.v EQ
bf [430]

:[426]
pushi.e -5
pushi.e 463
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [428]

:[427]
pushi.e 1236
pop.v.i global.msc
b [429]

:[428]
pushi.e 1242
pop.v.i global.msc

:[429]
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[430]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushi.e 3
pop.v.i self.myinteract
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [432]

:[431]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
b [end]

:[432]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [434]

:[433]
pushi.e 5
pop.v.i self.onebuffer

:[434]
popenv [433]

:[end]