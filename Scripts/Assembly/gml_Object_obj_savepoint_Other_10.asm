.localvar 2 arguments

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
pushi.e 1
pop.v.i self.nodialogue
pushbltn.v builtin.room
pop.v.v global.currentroom
pushbltn.v builtin.room
pushi.e 65
cmp.i.v EQ
bf [5]

:[3]
pushi.e 0
pop.v.i self.nodialogue
push.i 231251
setowner.e
push.s "obj_savepoint_slash_Other_10_gml_17_0"@18169
conv.s.v
push.s "* In front of you^1, a castle looms beneath the empty town./"@18170
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_18_0"@18171
conv.s.v
push.s "* A black geyser emerges from it^1, piercing endlessly into the sky./"@18172
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_19_0"@18173
conv.s.v
push.s "* The power of this place shines within you./%"@18174
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [5]

:[4]
push.s "obj_savepoint_slash_Other_10_gml_23_0"@18175
conv.s.v
push.s "* Ralsei^1, the lonely prince^1, is now your ally./"@18176
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_savepoint_slash_Other_10_gml_24_0"@18177
conv.s.v
push.s "* The power of fluffy boys shines within you./%"@18178
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[5]
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_30_0"@18179
conv.s.v
push.s "* You look upon the castle you first saw yesterday.../"@18180
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_31_0"@18181
conv.s.v
push.s "* You are filled with the power of immediate nostalgia./%"@18182
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[7]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [16]

:[8]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [13]

:[9]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_41_0"@18183
conv.s.v
push.s "* The castle town has transformed from the power of friendship./"@18184
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_42_0"@18185
conv.s.v
push.s "* You are filled with the power of friendship-based architecture./%"@18186
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [12]

:[11]
pushi.e 1
pop.v.i self.nodialogue

:[12]
b [16]

:[13]
pushi.e 0
pop.v.i self.nodialogue
pushi.e -5
pushi.e 469
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 469
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_59_0"@18187
conv.s.v
push.s "* (You touched the light...)/"@18188
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_60_0_b"@18189
conv.s.v
push.s "* (You thought about how you \\cRcan't go back to the Cyber World\\cW anymore.)/"@18190
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_61_0_b"@18191
conv.s.v
push.s "* (You considered this carefully!)/%"@18192
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [16]

:[15]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_50_0"@18193
conv.s.v
push.s "* After a long day^1, the town has grown once again./"@18194
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_51_0"@18195
conv.s.v
push.s "* You are filled with a certain power.../%"@18196
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[16]
pushbltn.v builtin.room
pushi.e 88
cmp.i.v EQ
bf [20]

:[17]
pushi.e 0
pop.v.i self.nodialogue
pushglb.v global.plot
pushi.e 65
cmp.i.v LT
bf [19]

:[18]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_60_0"@18197
conv.s.v
push.s "* A green field extends before you..^1. And^1, in the distance^1, a city shines brightly./"@18198
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_61_0"@18199
conv.s.v
push.s "* You are filled with the power of a new adventure./%"@18200
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [20]

:[19]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_65_0"@18201
conv.s.v
push.s "* A green field extends before you..^1. You've seen this already./"@18202
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_66_0"@18203
conv.s.v
push.s "* You are filled with the power of pointless backtracking./%"@18204
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[20]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [22]

:[21]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_73_0"@18205
conv.s.v
push.s "* The game is wrecked. You are filled with the power of videogame violence./%"@18206
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[22]
pushbltn.v builtin.room
pushi.e 99
cmp.i.v EQ
bf [24]

:[23]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_79_0"@18207
conv.s.v
push.s "* Crash^1! Boom^1! Bang^1! There's a terrific noise coming from the building nearby.../"@18208
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_80_0"@18209
conv.s.v
push.s "* You are filled with the power of noise music./%"@18210
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[24]
pushbltn.v builtin.room
pushi.e 122
cmp.i.v EQ
bf [33]

:[25]
pushi.e 0
pop.v.i self.nodialogue
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [27]

:[26]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_88_0"@18211
conv.s.v
push.s "* Noelle is with you now./"@18212
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_89_0"@18213
conv.s.v
push.s "* You are still filled with the power from the cat sign./%"@18214
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [33]

:[27]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [29]

:[28]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_93_0"@18215
conv.s.v
push.s "* You are mostly filled with the power of fluffy boys and mean girls./"@18216
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_94_0"@18217
conv.s.v
push.s "* The cat sign still comprises about one percent of it./%"@18218
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [33]

:[32]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_98_0"@18219
conv.s.v
push.s "* You have neither fluffy boys nor mean girls with you now./"@18220
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_99_0"@18221
conv.s.v
push.s "* Reluctantly^1, you are filled with the power from the cat sign./%"@18222
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[33]
pushbltn.v builtin.room
pushi.e 125
cmp.i.v EQ
bf [37]

:[34]
pushi.e 0
pop.v.i self.nodialogue
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [36]

:[35]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_108_0"@18223
conv.s.v
push.s "* Noelle has joined your party./"@18224
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_109_0"@18225
conv.s.v
push.s "* You are filled with the power of not knowing what a sugarplum is./%"@18226
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [37]

:[36]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_113_0"@18227
conv.s.v
push.s "* Noelle is no longer in your party. All of you are filled with the power.../"@18228
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_114_0"@18229
conv.s.v
push.s "* Of not knowing what a sugarplum is./%"@18230
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[37]
pushbltn.v builtin.room
pushi.e 131
cmp.i.v EQ
bf [41]

:[38]
pushi.e 0
pop.v.i self.nodialogue
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [40]

:[39]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_123_0"@18231
conv.s.v
push.s "* Energetic music wafts from the boxes./"@18232
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_124_0"@18233
conv.s.v
push.s "* You are filled with the power of musical bagels./%"@18234
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [41]

:[40]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_128_0"@18235
conv.s.v
push.s "* You are filled with the power of silence./%"@18236
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[41]
pushbltn.v builtin.room
pushi.e 138
cmp.i.v EQ
bf [43]

:[42]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_135_0"@18237
conv.s.v
push.s "* After defeating Berdly^1, a certain scent hangs in the air.../"@18238
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_136_0"@18239
conv.s.v
push.s "* You are filled with the power of chicken nuggets./%"@18240
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[43]
pushbltn.v builtin.room
pushi.e 162
cmp.i.v EQ
bf [45]

:[44]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_142_0"@18241
conv.s.v
push.s "* You have escaped from your second personalized room of the day./"@18242
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_143_0"@18243
conv.s.v
push.s "* You are filled with the power of vacation homes./%"@18244
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[45]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [47]

:[46]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_33_0"@18245
conv.s.v
push.s "* Looking at these legs fills you with a certain power./%"@18246
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[47]
pushbltn.v builtin.room
pushi.e 197
cmp.i.v EQ
bf [49]

:[48]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_155_0"@18247
conv.s.v
push.s "* Susie has gone into a book hole with Berdly./"@18248
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_156_0"@18249
conv.s.v
push.s "* You are filled with the power of book holes./%"@18250
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[49]
pushbltn.v builtin.room
pushi.e 203
cmp.i.v EQ
bf [51]

:[50]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_162_0"@18251
conv.s.v
push.s "* Everyone is together^1, but the wind blows coldly.../"@18252
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_163_0"@18253
conv.s.v
push.s "* You are filled with a certain power./%"@18254
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[51]
pushbltn.v builtin.room
pushi.e 181
cmp.i.v EQ
bf [53]

:[52]
pushi.e 1
pop.v.i self.nodialogue

:[53]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [55]

:[54]
pushi.e 1
pop.v.i self.nodialogue

:[55]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_177_0"@18255
conv.s.v
push.s "* You and Noelle were filled with power./%"@18256
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[60]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 4
cmp.i.v EQ
bf [63]

:[61]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [63]

:[62]
pushi.e 0
pop.v.i self.nodialogue
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_187_0"@18257
conv.s.v
push.s "* After a long day^1, you have returned to the castle town./"@18258
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_savepoint_slash_Other_10_gml_188_0"@18259
conv.s.v
push.s "* But^1, you still feel the power in your hands.../%"@18260
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[63]
pushi.e 3
pop.v.i self.myinteract
push.v self.nodialogue
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[65]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked
pushi.e 163
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[66]
push.v self.i
pushi.e 5
cmp.i.v LT
bf [end]

:[67]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.hp
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
cmp.v.v LT
bf [69]

:[68]
push.i 231131
setowner.e
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.maxhp
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]self.hp

:[69]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [66]

:[end]