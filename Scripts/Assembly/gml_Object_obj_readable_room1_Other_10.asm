.localvar 2 arguments
.localvar 18617 sinkcheck 7519
.localvar 425 have_susie 7520
.localvar 18919 visitedshelter 7521
.localvar 4447 haveSusie 7522
.localvar 15767 sentenceEnd 7523
.localvar 4458 haveNoelle 7527
.localvar 19408 inspected_all 7528
.localvar 19445 have_noelle 7529

:[0]
pushi.e 3
pop.v.i self.myinteract
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
pop.v.i global.fe
pushi.e 0
pop.v.i global.fc
pushi.e 1
pop.v.i global.interact
pushi.e 277
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.charcon

:[4]
popenv [3]
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_13_0"@18267
conv.s.v
push.s "* Suddenly^1, your body seizes up^1.&* What are you looking at?/%"@18268
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [6]

:[5]
push.s "* [NO TEXT] (obj_readable_room1)/%"@18269
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[6]
pushbltn.v builtin.room
pushi.e 28
cmp.i.v EQ
bf [51]

:[7]
push.v self.y
pushi.e 150
cmp.i.v LT
bf [13]

:[8]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_readable_room1_slash_Other_10_gml_21_0"@18270
conv.s.v
push.s "* There are CDs under the bed^1.&* Classical^1, jazz^1, religious ska.../"@18271
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_22_0"@18272
conv.s.v
push.s "* There's also a game console^1.&* It has one normal controller^1, and one knock-off one./%"@18273
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[10]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_readable_room1_slash_Other_10_gml_28_0"@18274
conv.s.v
push.s "* Underneath the bed is an old cartridge of \"Cat Petters RPG\"./"@18275
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_29_0"@18276
conv.s.v
push.s "* \"catti `& catty\" can be seen faintly written on it in worn gel pen./%"@18277
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[12]
b [17]

:[13]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.s "obj_readable_room1_slash_Other_10_gml_36_0"@18278
conv.s.v
push.s "* It's a computer desk^1.&* There are many boxes under it filled with old books./%"@18279
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.s "obj_readable_room1_slash_Other_10_gml_42_0"@18280
conv.s.v
push.s "* On the computer's desktop is a folder called \"EPIC games Stuff!!!!\"/"@18281
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_43_0"@18282
conv.s.v
push.s "* It's a poorly-drawn design for a game.../"@18283
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_44_0"@18284
conv.s.v
push.s "* Seems the last boss is a creature with giant rainbow wings./"@18285
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_45_0"@18286
conv.s.v
push.s "* Doesn't seem like this game ever saw the light of day.../%"@18287
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[17]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [27]

:[18]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [25]

:[19]
push.s "obj_readable_room1_slash_Other_10_gml_54_0"@18288
conv.s.v
push.s "* The drawer is mostly empty^1, except for.../"@18289
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_55_0"@18290
conv.s.v
push.s "* A school cross country shirt with a tear in it./%"@18291
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.filechoice
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
push.s "obj_readable_room1_slash_Other_10_gml_56_0"@18292
conv.s.v
push.s "* A very old school ID with an embarrassing haircut./%"@18293
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[21]
pushglb.v global.filechoice
pushi.e 2
cmp.i.v EQ
bf [23]

:[22]
push.s "obj_readable_room1_slash_Other_10_gml_59_0"@18294
conv.s.v
push.s "* A coupon book^1.&* Every coupon is for half-off a large pizza./"@18295
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_60_0"@18296
conv.s.v
push.s "* All the coupons expired before the book's print date./%"@18297
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[23]
push.v self.read
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
push.s "obj_readable_room1_slash_Other_10_gml_64_0"@18298
conv.s.v
push.s "* There's nothing useful in the drawer./%"@18299
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[25]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [27]

:[26]
pushi.e 1049
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[27]
push.v self.x
pushi.e 136
cmp.i.v GT
bf [32]

:[28]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.s "obj_readable_room1_slash_Other_10_gml_80_0"@18300
conv.s.v
push.s "* It's a beautiful day outside./%"@18301
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[30]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [32]

:[31]
push.s "obj_readable_room1_slash_Other_10_gml_86_0"@18302
conv.s.v
push.s "* Even after a long night^1, the sunrise is the same as always./%"@18303
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[32]
push.v self.x
pushi.e 192
cmp.i.v GT
bf [34]

:[33]
push.s "obj_readable_room1_slash_Other_10_gml_91_0"@18304
conv.s.v
push.s "* Clothes drawer./%"@18305
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[34]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [49]

:[35]
push.s "obj_readable_room1_slash_Other_10_gml_96_0"@18306
conv.s.v
push.s "* Your bed./%"@18307
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [43]

:[36]
pushi.e -5
pushi.e 10
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.plot
pushi.e 10
cmp.i.v LT
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 402
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[41]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [43]

:[42]
pushi.e 400
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[43]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [49]

:[44]
pushi.e -5
pushi.e 39
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [46]

:[45]
pushglb.v global.plot
pushi.e 10
cmp.i.v LT
b [47]

:[46]
push.e 0

:[47]
bf [49]

:[48]
pushi.e 402
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[49]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [51]

:[50]
push.s "obj_readable_room1_slash_Other_10_gml_112_0"@18308
conv.s.v
push.s "* It's stained./%"@18309
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[51]
pushbltn.v builtin.room
pushi.e 26
cmp.i.v EQ
bf [70]

:[52]
push.s "obj_readable_room1_slash_Other_10_gml_120_0"@18310
conv.s.v
push.s "* The door is locked./%"@18311
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushi.e 120
cmp.i.v GT
bf [57]

:[53]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.s "obj_readable_room1_slash_Other_10_gml_127_0"@18312
conv.s.v
push.s "* It's only you./%"@18313
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[55]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [57]

:[56]
push.s "obj_readable_room1_slash_Other_10_gml_133_0"@18314
conv.s.v
push.s "* (It's what they call \"you.\")/%"@18315
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[57]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [62]

:[58]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "obj_readable_room1_slash_Other_10_gml_141_0"@18316
conv.s.v
push.s "* There are crayons in the drawer^1. Their labels have long faded^1, and there's no green./%"@18317
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[60]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [62]

:[61]
push.s "obj_readable_room1_slash_Other_10_gml_147_0"@18318
conv.s.v
push.s "* (..^1. How to Draw Dragons is at the bottom of the drawer.)/"@18319
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_148_0_b"@18320
conv.s.v
push.s "* (The purple character on the cover is dressed..^1. immodestly.)/"@18321
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_148_0"@18322
conv.s.v
push.s "* (...)/"@1566
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_150_0"@18323
conv.s.v
push.s "* (Your brother will never return this book.)/%"@18324
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[62]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [64]

:[63]
push.s "obj_readable_room1_slash_Other_10_gml_169_0"@18325
conv.s.v
push.s "* A cactus^1.&* There's not much to say about it./%"@18326
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[64]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [70]

:[65]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [68]

:[66]
push.s "obj_readable_room1_slash_Other_10_gml_177_0"@18327
conv.s.v
push.s "* There are many books./"@18328
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_178_0"@18329
conv.s.v
push.s "* Tales of Snails - A Story Book./"@18330
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_179_0"@18331
conv.s.v
push.s "* Snails Do Not Have Tails -&A Scientific Refutation./"@18332
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_180_0"@18333
conv.s.v
push.s "* Can Snails Help Your Garden? Um, Not Really./"@18334
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_181_0"@18335
conv.s.v
push.s "* And a signed copy of The History of Humans and Monsters, by Gerson Boom./%"@18336
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [68]

:[67]
push.s "obj_readable_room1_slash_Other_10_gml_184_0"@18337
conv.s.v
push.s "* There's no time to read anything right now./%"@18338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[68]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [70]

:[69]
push.s "obj_readable_room1_slash_Other_10_gml_175_0"@18339
conv.s.v
push.s "* (There's no time to read books. Just generally.)/%"@18340
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[70]
pushbltn.v builtin.room
pushi.e 29
cmp.i.v EQ
bf [89]

:[71]
push.s "obj_readable_room1_slash_Other_10_gml_120_0"@18310
conv.s.v
push.s "* The door is locked./%"@18311
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushi.e 120
cmp.i.v GT
bf [76]

:[72]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "obj_readable_room1_slash_Other_10_gml_127_0"@18312
conv.s.v
push.s "* It's only you./%"@18313
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[74]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [76]

:[75]
push.s "obj_readable_room1_slash_Other_10_gml_196_0"@18341
conv.s.v
push.s "* (It's what they call \"you.\")/%"@18315
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[76]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [81]

:[77]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
push.s "obj_readable_room1_slash_Other_10_gml_141_0"@18316
conv.s.v
push.s "* There are crayons in the drawer^1. Their labels have long faded^1, and there's no green./%"@18317
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[79]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [81]

:[80]
push.s "obj_readable_room1_slash_Other_10_gml_210_0"@18342
conv.s.v
push.s "* (..^1. How to Draw Dragons is at the bottom of the drawer.)/"@18319
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_211_0_b"@18343
conv.s.v
push.s "* (The purple character on the cover is dressed..^1. immodestly.)/"@18321
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_148_0"@18322
conv.s.v
push.s "* (...)/"@1566
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_213_0"@18344
conv.s.v
push.s "* (Your brother will never return this book.)/%"@18324
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[81]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [83]

:[82]
push.s "obj_readable_room1_slash_Other_10_gml_169_0"@18325
conv.s.v
push.s "* A cactus^1.&* There's not much to say about it./%"@18326
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[83]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [89]

:[84]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [87]

:[85]
push.s "obj_readable_room1_slash_Other_10_gml_177_0"@18327
conv.s.v
push.s "* There are many books./"@18328
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_178_0"@18329
conv.s.v
push.s "* Tales of Snails - A Story Book./"@18330
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_179_0"@18331
conv.s.v
push.s "* Snails Do Not Have Tails -&A Scientific Refutation./"@18332
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_180_0"@18333
conv.s.v
push.s "* Can Snails Help Your Garden? Um, Not Really./"@18334
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_181_0"@18335
conv.s.v
push.s "* And a signed copy of The History of Humans and Monsters, by Gerson Boom./%"@18336
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.read
pushi.e 0
cmp.i.v GT
bf [87]

:[86]
push.s "obj_readable_room1_slash_Other_10_gml_184_0"@18337
conv.s.v
push.s "* There's no time to read anything right now./%"@18338
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[87]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [89]

:[88]
push.s "obj_readable_room1_slash_Other_10_gml_253_0"@18345
conv.s.v
push.s "* (There's no time to read books. Just generally.)/%"@18340
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[89]
pushbltn.v builtin.room
pushi.e 31
cmp.i.v EQ
bf [112]

:[90]
push.v self.x
pushi.e 190
cmp.i.v GT
bf [92]

:[91]
push.s "obj_readable_room1_slash_Other_10_gml_200_0"@18346
conv.s.v
push.s "* There's a photo on the fridge^1. It's of you^1, your mother, and your brother./%"@18347
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[92]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [96]

:[93]
pushi.e 995
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [95]

:[94]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_272_0"@18348
conv.s.v
push.s "* It's a sink. You could wash your hands here./"@18349
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_273_0_b"@18350
conv.s.v
push.s "* ..^1. but^1, isn't the sink in the bathroom better?/%"@18351
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [96]

:[95]
push.s "obj_readable_room1_slash_Other_10_gml_211_0"@18352
conv.s.v
push.s "* There is some white fur stuck in the drain./%"@18353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[96]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [99]

:[97]
push.s "obj_readable_room1_slash_Other_10_gml_217_0"@18354
conv.s.v
push.s "* There's some cinnamony batter caked on the stovetop./%"@18355
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [99]

:[98]
push.s "obj_readable_room1_slash_Other_10_gml_220_0"@18356
conv.s.v
push.s "* (It's a butterscotch-cinnamon pie.^1)&* (It's still cooling.)/%"@18357
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[99]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [101]

:[100]
push.s "obj_readable_room1_slash_Other_10_gml_226_0"@18358
conv.s.v
push.s "* (Cookie cutters for gingerbread monsters and gingerbread humans.)/%"@18359
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[101]
push.v self.x
pushi.e 340
cmp.i.v GT
bf [104]

:[102]
push.s "obj_readable_room1_slash_Other_10_gml_231_0"@18360
conv.s.v
push.s "* It's a trashcan^1.&* Somehow^1, it's emitting a pleasant floral scent./%"@18361
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 262
push.v [array]self.flag
pushi.e 4
cmp.i.v GTE
bf [104]

:[103]
push.s "obj_readable_room1_slash_Other_10_gml_234_0"@18362
conv.s.v
push.s "* It's a trashcan^1.&* Somehow^1, its floral scent has increased./%"@18363
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[104]
push.v self.x
pushi.e 369
cmp.i.v GT
bf [106]

:[105]
push.s "obj_readable_room1_slash_Other_10_gml_240_0"@18364
conv.s.v
push.s "* It's a landline phone^1.&* But you already have a cell phone./%"@18365
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[106]
push.v self.x
pushi.e 440
cmp.i.v GT
bf [110]

:[107]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
push.s "obj_readable_room1_slash_Other_10_gml_245_0"@18366
conv.s.v
push.s "* It's the TV^1.&* Doesn't seem to even be plugged in anymore./%"@18367
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [110]

:[109]
push.s "obj_readable_room1_slash_Other_10_gml_320_0"@18368
conv.s.v
push.s "* (It's the TV^1.)&* (Looks like it's plugged in, but it's dusty.)/%"@18369
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[110]
push.v self.x
pushi.e 560
cmp.i.v GT
bf [112]

:[111]
push.s "obj_readable_room1_slash_Other_10_gml_251_0"@18370
conv.s.v
push.s "* It's a book of hymns./%"@18371
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[112]
pushbltn.v builtin.room
pushi.e 32
cmp.i.v EQ
bf [144]

:[113]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [123]

:[114]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [116]

:[115]
push.s "obj_readable_room1_slash_Other_10_gml_263_0"@18372
conv.s.v
push.s "* On the shower ledge^1, there's a small container of apple-scented shampoo./"@18373
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_264_0"@18374
conv.s.v
push.s "* ... and a gallon-sized container of pet shampoo./%"@18375
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[116]
push.v self.x
pushi.e 160
cmp.i.v GTE
bf [118]

:[117]
push.v self.x
pushi.e 190
cmp.i.v LTE
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
pushi.e 355
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[121]
push.v self.x
pushi.e 190
cmp.i.v GTE
bf [123]

:[122]
push.s "obj_readable_room1_slash_Other_10_gml_273_0"@18376
conv.s.v
push.s "* You looked inside the sink cupboard^1.&* There's.../"@18377
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_274_0"@18378
conv.s.v
push.s "* A can of Ice-E's Cool Boys Body Spray \"Spray For The Boys,\" Flamin' Hot Pizza Flavor./"@18379
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_275_0"@18380
conv.s.v
push.s "* It seems to be almost entirely full./%"@18381
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[123]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [144]

:[124]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [130]

:[125]
pushglb.v global.plot
pushi.e 210
cmp.i.v EQ
bf [127]

:[126]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_350_0_b"@18382
conv.s.v
push.s "* (No need for it.)/%"@18383
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [130]

:[127]
pushglb.v global.plot
pushi.e 210
cmp.i.v GT
bf [129]

:[128]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_354_0"@18384
conv.s.v
push.s "* (The apple-scented shampoo feels lighter than usual.)/%"@18385
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [130]

:[129]
push.s "obj_readable_room1_slash_Other_10_gml_357_0_b"@18386
conv.s.v
push.s "* On the shower ledge^1, there's a small container of apple-scented shampoo./"@18373
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_358_0"@18387
conv.s.v
push.s "* ... and a gallon-sized container of pet shampoo./%"@18375
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[130]
push.v self.x
pushi.e 160
cmp.i.v GTE
bf [132]

:[131]
push.v self.x
pushi.e 190
cmp.i.v LTE
b [133]

:[132]
push.e 0

:[133]
bf [137]

:[134]
pushglb.v global.plot
pushi.e 210
cmp.i.v GTE
bf [136]

:[135]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_367_0"@18388
conv.s.v
push.s "* (No need for it.)/%"@18383
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [137]

:[136]
pushi.e 355
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[137]
push.v self.x
pushi.e 190
cmp.i.v GTE
bf [144]

:[138]
pushglb.v global.plot
pushi.e 210
cmp.i.v LT
bf [140]

:[139]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_380_0"@18389
conv.s.v
push.s "* (It is not yet time to wash your hands.)/%"@18390
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[140]
pushglb.v global.plot
pushi.e 210
cmp.i.v EQ
bf [142]

:[141]
pushi.e 1087
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[142]
pushglb.v global.plot
pushi.e 211
cmp.i.v GTE
bf [144]

:[143]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_392_0"@18391
conv.s.v
push.s "* (Your hands are clean.)/%"@18392
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[144]
pushbltn.v builtin.room
pushi.e 60
cmp.i.v EQ
bf [184]

:[145]
push.v self.x
pushi.e 140
cmp.i.v GTE
bf [147]

:[146]
push.v self.x
pushi.e 240
cmp.i.v LT
b [148]

:[147]
push.e 0

:[148]
bf [162]

:[149]
push.v self.tempvar
pushi.e 0
cmp.i.v EQ
bf [151]

:[150]
push.s "obj_readable_room1_slash_Other_10_gml_335_0"@18393
conv.s.v
push.s "* The locker is locked./%"@18394
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[151]
push.v self.tempvar
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
push.s "obj_readable_room1_slash_Other_10_gml_336_0"@18395
conv.s.v
push.s "* The locker's lock is locked./%"@18396
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[153]
push.v self.tempvar
pushi.e 2
cmp.i.v EQ
bf [155]

:[154]
push.s "obj_readable_room1_slash_Other_10_gml_337_0"@18397
conv.s.v
push.s "* The lock's locker is locked./%"@18398
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[155]
push.v self.tempvar
pushi.e 3
cmp.i.v EQ
bf [157]

:[156]
push.s "obj_readable_room1_slash_Other_10_gml_338_0"@18399
conv.s.v
push.s "* The locker's lock's locker is locked./%"@18400
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[157]
push.v self.tempvar
pushi.e 4
cmp.i.v GTE
bf [159]

:[158]
push.s "obj_readable_room1_slash_Other_10_gml_339_0"@18401
conv.s.v
push.s "* The locker is locked./%"@18394
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[159]
pushi.e 133
pushenv [161]

:[160]
push.v self.tempvar
pushi.e 1
add.i.v
pop.v.v self.tempvar

:[161]
popenv [160]

:[162]
push.v self.x
pushi.e 240
cmp.i.v EQ
bf [164]

:[163]
push.s "obj_readable_room1_slash_Other_10_gml_344_0"@18402
conv.s.v
push.s "* (The locker is covered in Jockington memorabilia.)/%"@18403
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[164]
push.v self.x
pushi.e 280
cmp.i.v GTE
bf [166]

:[165]
push.s "obj_readable_room1_slash_Other_10_gml_349_0"@18404
conv.s.v
push.s "* (Are you ready for the Sadie Hawkman's dance?)/"@18405
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_350_0"@18406
conv.s.v
push.s "* (At this dance^1, all the chaperones wear giant hawk heads...)/"@18407
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_351_0"@18408
conv.s.v
push.s "* (... and screech at any students that make contact while dancing.)/%"@18409
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[166]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [168]

:[167]
push.s "obj_readable_room1_slash_Other_10_gml_356_0"@18410
conv.s.v
push.s "* (You look through the frosted window.)/"@18411
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_357_0"@18412
conv.s.v
push.s "* (A blurry yellow object is teaching a bunch of blurry bored-looking objects.)/%"@18413
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[168]
push.v self.x
pushi.e 520
cmp.i.v GTE
bf [176]

:[169]
push.s "obj_readable_room1_slash_Other_10_gml_362_0"@18414
conv.s.v
push.s "* (You ran the water fountain.^1)&* (It's lukewarm.)/%"@18415
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v EQ
bf [171]

:[170]
push.s "obj_readable_room1_slash_Other_10_gml_363_0"@18416
conv.s.v
push.s "* (You ran the water fountain.^1)&* (It's tepid.)/%"@18417
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[171]
push.v self.read
pushi.e 2
cmp.i.v GTE
bf [173]

:[172]
push.s "obj_readable_room1_slash_Other_10_gml_364_0"@18418
conv.s.v
push.s "* (You ran the water fountain.^1)&* (It's refreshingly cool.)/%"@18419
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[173]
pushglb.v global.plot
pushi.e 8
cmp.i.v LT
bf [176]

:[174]
push.s "obj_readable_room1_slash_Other_10_gml_368_0"@18420
conv.s.v
push.s "* (You drank from the water fountain.)/"@18421
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_370_0"@18422
conv.s.v
push.s "* Heheh^1, people put their mouth on that^1, ya know./%"@18423
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [176]

:[175]
pushi.e 9
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_375_0"@18424
conv.s.v
push.s "* That wasn't ENCOURAGEMENT^1, dumbass!/%"@18425
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[176]
push.v self.x
pushi.e 560
cmp.i.v GTE
bf [178]

:[177]
push.s "obj_readable_room1_slash_Other_10_gml_382_0"@18426
conv.s.v
push.s "* Do you like^1, breathing^1? Moving fast^1, with or without^1, legs?/"@18427
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_383_0"@18428
conv.s.v
push.s "* But usually^1, with legs?/"@18429
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_384_0"@18430
conv.s.v
push.s "* Join the Cross Country Team with Jockington^1, and Noelle!/%"@18431
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[178]
push.v self.x
pushi.e 690
cmp.i.v GTE
bf [180]

:[179]
push.s "obj_readable_room1_slash_Other_10_gml_390_0"@18432
conv.s.v
push.s "* (Locker^1. It's locked.)/%"@18433
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[180]
push.v self.x
pushi.e 760
cmp.i.v EQ
bf [182]

:[181]
push.s "obj_readable_room1_slash_Other_10_gml_396_0"@18434
conv.s.v
push.s "* (This used to be your brother's locker.)/%"@18435
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[182]
push.v self.x
pushi.e 780
cmp.i.v EQ
bf [184]

:[183]
push.s "obj_readable_room1_slash_Other_10_gml_400_0"@18436
conv.s.v
push.s "* (It's your locker.^1)&* (It's empty.)/%"@18437
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[184]
pushbltn.v builtin.room
pushi.e 61
cmp.i.v EQ
bf [199]

:[185]
push.s "obj_readable_room1_slash_Other_10_gml_409_0"@18438
conv.s.v
push.s "* (You checked the time.)/"@18439
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_410_0"@18440
conv.s.v
push.s "* (... It seems to be time for class.)/%"@18441
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 0
cmp.i.v GTE
bf [187]

:[186]
push.s "obj_readable_room1_slash_Other_10_gml_414_0"@18442
conv.s.v
push.s "* (You checked the time.)/"@18439
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_415_0"@18443
conv.s.v
push.s "* (... It seems to not be time for class.)/%"@18444
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[187]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [189]

:[188]
pushi.e 1
pop.v.i global.fe
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
push.s "obj_readable_room1_slash_Other_10_gml_423_0"@18445
conv.s.v
push.s "* Um^1, Kris^1, the hope is that you.../"@18446
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_424_0"@18447
conv.s.v
push.s "\\E0* ... choose someone in the class?/%"@18448
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[189]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [195]

:[190]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [193]

:[191]
push.s "obj_readable_room1_slash_Other_10_gml_431_0"@18449
conv.s.v
push.s "* (The computer's wallpaper is a rotating slideshow of nature images.)/"@18450
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_432_0"@18451
conv.s.v
push.s "* (... and^1, rarely, an image of two buff superheroes embracing^1, blushing.)/%"@18452
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [193]

:[192]
push.s "obj_readable_room1_slash_Other_10_gml_436_0"@18453
conv.s.v
push.s "* (The computer is turned off.)/"@18454
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_437_0"@18455
conv.s.v
push.s "* (Everything felt peaceful for a moment.)/%"@18456
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[193]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [195]

:[194]
push.s "obj_readable_room1_slash_Other_10_gml_511_0"@18457
conv.s.v
push.s "* (The computer wallpaper is updated.)/"@18458
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_512_0"@18459
conv.s.v
push.s "* (The buff embracing heroes are now edited to be 4 inches apart.)/"@18460
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_513_0"@18461
conv.s.v
push.s "* (There's dialogue about proper distancing at the school dance.)/"@18462
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_514_0"@18463
conv.s.v
push.s "* (You wonder if your mother had some influence on this change.)/%"@18464
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[195]
push.v self.x
pushi.e 150
cmp.i.v LT
bf [197]

:[196]
push.s "obj_readable_room1_slash_Other_10_gml_453_0"@18465
conv.s.v
push.s "* (It's a bunch of roses.)/%"@18466
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[197]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [199]

:[198]
push.s "obj_readable_room1_slash_Other_10_gml_459_0"@18467
conv.s.v
push.s "* (Looks like motivational quotes from various literature.)/"@18468
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_460_0"@18469
conv.s.v
push.s "* \"Try your best^1, Astral Wolf^1!\"&* \"Even in your darkest hour...!\"/"@18470
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_461_0"@18471
conv.s.v
push.s "* (... that one seems to be from a video game.)/%"@18472
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[199]
pushbltn.v builtin.room
pushi.e 59
cmp.i.v EQ
bf [231]

:[200]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [225]

:[201]
push.v self.x
pushi.e 100
cmp.i.v GTE
bf [203]

:[202]
push.s "obj_readable_room1_slash_Other_10_gml_473_0"@18473
conv.s.v
push.s "* (\"Ms. Toriel\" is written in cursive on the dry-erase board.)/"@18474
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_474_0"@18475
conv.s.v
push.s "* (Seems like it hasn't been erased in a very long time.)/%"@18476
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[203]
push.v self.x
pushi.e 130
cmp.i.v GTE
bf [208]

:[204]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [206]

:[205]
push.s "obj_readable_room1_slash_Other_10_gml_480_0"@18477
conv.s.v
push.s "* (It's a computer.)/"@18478
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_481_0"@18479
conv.s.v
push.s "* (Its desktop wallpaper is you and your brother dressed up for Halloween 8 years ago.)/%"@18480
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[206]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [208]

:[207]
push.s "obj_readable_room1_slash_Other_10_gml_554_0"@18481
conv.s.v
push.s "* (The computer wallpaper is updated.)/"@18458
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_555_0"@18482
conv.s.v
push.s "* (It's a picture of your brother and you playing video games.)/"@18483
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_556_0"@18484
conv.s.v
push.s "* (Your brother is using the knockoff controller.)/%"@18485
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[208]
push.v self.x
pushi.e 170
cmp.i.v GTE
bf [213]

:[209]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [211]

:[210]
pushi.e 350
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[211]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [213]

:[212]
push.s "obj_readable_room1_slash_Other_10_gml_570_0"@18486
conv.s.v
push.s "* (You uncapped the scented green marker.)/"@18487
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_571_0"@18488
conv.s.v
push.s "* (It's almost dry^1, but that gives it a refined^1, aged apple bouquet.)/%"@18489
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[213]
push.v self.x
pushi.e 198
cmp.i.v GTE
bf [218]

:[214]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [216]

:[215]
push.s "obj_readable_room1_slash_Other_10_gml_510_0"@18490
conv.s.v
push.s "* (Some kind of teacher food.)/%"@18491
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[216]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [218]

:[217]
push.s "obj_readable_room1_slash_Other_10_gml_583_0"@18492
conv.s.v
push.s "* (It's an orange. It's unknown if it's safe for teachers to eat this.)/%"@18493
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[218]
push.v self.x
pushi.e 204
cmp.i.v GTE
bf [220]

:[219]
push.s "obj_readable_room1_slash_Other_10_gml_521_0"@18494
conv.s.v
push.s "* (It's a poster of several basic shapes.^1)&* (Circle, Oval, Square...)/"@18495
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_522_0"@18496
conv.s.v
push.s "* (Hyperdodecahedron...)/%"@18497
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[220]
push.v self.x
pushi.e 230
cmp.i.v GTE
bf [222]

:[221]
push.s "obj_readable_room1_slash_Other_10_gml_526_0"@18498
conv.s.v
push.s "* (Kids' books.^1)&* (Some of them used to be yours.)/%"@18499
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[222]
push.v self.x
pushi.e 256
cmp.i.v GTE
bf [224]

:[223]
push.s "obj_readable_room1_slash_Other_10_gml_530_0"@18500
conv.s.v
push.s "* (It's a primitive drawing of your mom.)/%"@18501
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[224]
b [231]

:[225]
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LTE
bf [227]

:[226]
push.s "obj_readable_room1_slash_Other_10_gml_537_0"@18502
conv.s.v
push.s "* (Some kind of primitive sculpture.)&* (Who knows what it represents?)/%"@18503
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [231]

:[227]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [229]

:[228]
push.s "obj_readable_room1_slash_Other_10_gml_543_0"@18504
conv.s.v
push.s "* (The Throne of the Gods.)/%"@18505
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[229]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [231]

:[230]
push.s "obj_readable_room1_slash_Other_10_gml_616_0"@18506
conv.s.v
push.s "* (The Throne of the Gods grows higher.)&* (Is this hubris...?)/%"@18507
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[231]
pushbltn.v builtin.room
pushi.e 62
cmp.i.v EQ
bf [233]

:[232]
push.s "obj_readable_room1_slash_Other_10_gml_626_0"@18508
conv.s.v
push.s "* (The door is locked.)/%"@18509
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[233]
pushbltn.v builtin.room
pushi.e 64
cmp.i.v EQ
bf [260]

:[234]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [236]

:[235]
push.s "obj_readable_room1_slash_Other_10_gml_631_0"@18510
conv.s.v
push.s "* (The door is locked.)/%"@18509
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[236]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [238]

:[237]
push.s "obj_readable_room1_slash_Other_10_gml_632_0"@18511
conv.s.v
push.s "* (It's a worn-down stuffed animal.)/%"@18512
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[238]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [240]

:[239]
push.v self.y
pushi.e 100
cmp.i.v LT
b [241]

:[240]
push.e 0

:[241]
bf [243]

:[242]
push.s "obj_readable_room1_slash_Other_10_gml_633_0"@18513
conv.s.v
push.s "* (It's a lightswitch.)/%"@18514
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[243]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [245]

:[244]
push.v self.y
pushi.e 100
cmp.i.v GT
b [246]

:[245]
push.e 0

:[246]
bf [248]

:[247]
push.s "obj_readable_room1_slash_Other_10_gml_634_0"@18515
conv.s.v
push.s "* (It's a checkerboard.^1)&* (There are pawns strewn on it.)/%"@18516
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[248]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [250]

:[249]
push.s "obj_readable_room1_slash_Other_10_gml_635_0"@18517
conv.s.v
push.s "* (Playing cards spill out of a deck in the closet.)/%"@18518
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[250]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [252]

:[251]
push.s "obj_readable_room1_slash_Other_10_gml_638_0"@18519
conv.s.v
push.s "* (It's a yellowed, poorly-drawn picture of a green turtle.)/"@18520
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_639_0"@18521
conv.s.v
push.s "* (It's signed 'Alvin.')/%"@18522
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[252]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [260]

:[253]
push.v self.x
pushi.e 160
cmp.i.v GT
bf [255]

:[254]
push.v self.y
pushi.e 100
cmp.i.v GT
b [256]

:[255]
push.e 0

:[256]
bf [258]

:[257]
push.s "obj_readable_room1_slash_Other_10_gml_644_0"@18523
conv.s.v
push.s "* (You stared at the checkerboard from the doorway.)/%"@18524
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[258]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [260]

:[259]
push.s "obj_readable_room1_slash_Other_10_gml_645_0"@18525
conv.s.v
push.s "* (Managed to cram everything into the closet^1. Even the rug.)/%"@18526
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[260]
pushbltn.v builtin.room
pushi.e 44
cmp.i.v EQ
bf [273]

:[261]
push.v self.x
pushi.e 160
cmp.i.v LTE
bf [268]

:[262]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [264]

:[263]
push.s "obj_readable_room1_slash_Other_10_gml_586_0"@18527
conv.s.v
push.s "* (It's one of those sliding bead toys that naturally spawns inside doctors' offices.)/"@18528
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_587_0"@18529
conv.s.v
push.s "* (The beads march grimly along their set path.)/%"@18530
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[264]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [268]

:[265]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [267]

:[266]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_667_0_b"@18531
conv.s.v
push.s "* (It's a toy with beads on a track.)/"@18532
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_668_0"@18533
conv.s.v
push.s "* (One of the blue beads is broken and torn off.)/%"@18534
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [268]

:[267]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_672_0"@18535
conv.s.v
push.s "* (The beads of the toy march on.)/%"@18536
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[268]
push.v self.x
pushi.e 160
cmp.i.v GTE
bf [273]

:[269]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [271]

:[270]
pushi.e 360
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[271]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [273]

:[272]
pushi.e 1155
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[273]
pushbltn.v builtin.room
pushi.e 65
cmp.i.v EQ
bt [275]

:[274]
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
b [276]

:[275]
push.e 1

:[276]
bf [282]

:[277]
push.s "obj_readable_room1_slash_Other_10_gml_598_0"@18537
conv.s.v
push.s "* (It looks like a shop^1, but the door is locked^1, and no one's inside...)/%"@18538
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [279]

:[278]
push.s "obj_readable_room1_slash_Other_10_gml_601_0"@18539
conv.s.v
push.s "* (It's locked.)/%"@17702
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[279]
pushi.e 133
pushenv [281]

:[280]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read

:[281]
popenv [280]

:[282]
pushbltn.v builtin.room
pushi.e 69
cmp.i.v EQ
bf [302]

:[283]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [285]

:[284]
pushi.e 31
pop.v.i global.typer
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_614_0"@18540
conv.s.v
push.s "* Come to think of it^1, how did Lancer get up there...?/"@18541
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_615_0"@18542
conv.s.v
push.s "\\E6* I suppose he rode his bike up the side of the cliff...?/%"@18543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[285]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [302]

:[286]
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_716_0"@18544
conv.s.v
push.s "* (The rubble on the ground seems to have been dusted and polished.)/"@18545
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_717_0"@18546
conv.s.v
push.s "* (Someone around here really cares about the details.)/%"@18547
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushglb.v global.plot
pushi.e 10
cmp.i.v GTE
bf [302]

:[287]
push.v 82.x
pushi.e 280
cmp.i.v GT
bf [289]

:[288]
push.v 82.x
pushi.e 360
cmp.i.v LT
b [290]

:[289]
push.e 0

:[290]
bf [302]

:[291]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [293]

:[292]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
b [294]

:[293]
push.e 0

:[294]
bf [296]

:[295]
push.i 231375
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 36
pop.v.v [array]self.tempflag

:[296]
pushi.e -5
pushi.e 36
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bt [298]

:[297]
pushi.e -5
pushi.e 36
push.v [array]self.tempflag
pushi.e 2
cmp.i.v EQ
b [299]

:[298]
push.e 1

:[299]
bf [301]

:[300]
pushi.e 1240
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [302]

:[301]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_740_0"@18548
conv.s.v
push.s "* (There's a hole in the wall...)/"@18549
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_741_0"@18550
conv.s.v
push.s "* (There's nothing inside.)/%"@18551
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[302]
pushbltn.v builtin.room
pushi.e 68
cmp.i.v EQ
bf [305]

:[303]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [305]

:[304]
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_727_0"@18552
conv.s.v
push.s "* (It seems to be locked.^1)&* (It may never open again.)/%"@18553
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[305]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [306]

:[306]
pushbltn.v builtin.room
pushi.e 270
cmp.i.v EQ
bf [313]

:[307]
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_662_0"@18554
conv.s.v
push.s "* (It's a bed for three people^1, or one three-headed person.)/%"@18555
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
cmp.v.v GT
bf [313]

:[308]
push.v self.y
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [312]

:[309]
push.s "obj_readable_room1_slash_Other_10_gml_667_0"@18556
conv.s.v
push.s "* (It's a giant baseball.^1)&* (For parties.)/%"@18557
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [311]

:[310]
push.s "obj_readable_room1_slash_Other_10_gml_670_0"@18558
conv.s.v
push.s "* (Actually^1, seems the giant baseball is a soccer ball that's been painted over.)/"@18559
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_671_0"@18560
conv.s.v
push.s "* (It would be easier to draw that way.)/%"@18561
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[311]
b [313]

:[312]
push.s "obj_readable_room1_slash_Other_10_gml_676_0"@18562
conv.s.v
push.s "* (It's a tree.^1)&* (For parties.)/%"@18563
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[313]
pushbltn.v builtin.room
pushi.e 269
cmp.i.v EQ
bf [343]

:[314]
push.v self.y
pushi.e 220
cmp.i.v LTE
bf [334]

:[315]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [321]

:[316]
pushi.e -5
pushi.e 411
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [318]

:[317]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 411
pop.v.v [array]self.flag

:[318]
pushi.e 103
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [320]

:[319]
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_789_0"@18564
conv.s.v
push.s "\\E1* Wow!^1! It's better than I remember!!!!!/"@18565
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_790_0"@18566
conv.s.v
push.s "\\E2* I even have my own bed now!!!/"@18567
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_791_0_b"@18568
conv.s.v
push.s "\\E3* Now I don't have to sleep in a hole anymore!!!/"@18569
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_793_0_b"@18570
conv.s.v
push.s "\\EK* I thought you..^1. already had a bed./"@18571
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "3"@2741
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_795_0"@18572
conv.s.v
push.s "\\E3* No^1, that was for the bike./%"@18573
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [321]

:[320]
push.s "no one"@18574
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_812_0"@18575
conv.s.v
push.s "* (It's a bikeless bed.)/%"@18576
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[321]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [323]

:[322]
push.v self.x
pushi.e 350
cmp.i.v LT
b [324]

:[323]
push.e 0

:[324]
bf [326]

:[325]
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_698_0"@18577
conv.s.v
push.s "* (It's a hole^1. Presumably dug for fun.)/%"@18578
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[326]
push.v self.x
pushi.e 350
cmp.i.v GT
bf [328]

:[327]
push.v self.x
pushi.e 400
cmp.i.v LT
b [329]

:[328]
push.e 0

:[329]
bf [331]

:[330]
pushi.e 430
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[331]
push.v self.x
pushi.e 400
cmp.i.v GTE
bf [333]

:[332]
push.s "obj_readable_room1_slash_Other_10_gml_707_0"@18579
conv.s.v
push.s "* (It's some kind of digging implement.)/%"@18580
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[333]
b [343]

:[334]
push.v self.x
pushi.e 200
cmp.i.v LT
bf [336]

:[335]
push.s "obj_readable_room1_slash_Other_10_gml_714_0"@18581
conv.s.v
push.s "* (You found 20 Rupys in the hole!)/"@18582
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_715_0"@18583
conv.s.v
push.s "* (Unfortunately^1, that's not a useful currency here...)/%"@18584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[336]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [338]

:[337]
push.v self.x
pushi.e 320
cmp.i.v LT
b [339]

:[338]
push.e 0

:[339]
bf [341]

:[340]
push.s "obj_readable_room1_slash_Other_10_gml_719_0"@18585
conv.s.v
push.s "* (It's a hole made recreationally.)/%"@18586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[341]
push.v self.x
pushi.e 320
cmp.i.v GT
bf [343]

:[342]
push.s "obj_readable_room1_slash_Other_10_gml_723_0"@18587
conv.s.v
push.s "* (There's salsa buried in the ground here.)/%"@18588
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[343]
pushbltn.v builtin.room
pushi.e 46
cmp.i.v EQ
bf [389]

:[344]
push.v self.x
pushi.e 75
cmp.i.v LTE
bf [346]

:[345]
push.v self.y
pushi.e 160
cmp.i.v LT
b [347]

:[346]
push.e 0

:[347]
bf [355]

:[348]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [351]

:[349]
push.s "obj_readable_room1_slash_Other_10_gml_734_0"@18589
conv.s.v
push.s "* (It's an angel doll.^1)&* (Its lack of facial features is unsettling.)/"@18590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_736_0"@18591
conv.s.v
push.s "* That angel^1?&* Noelle n' Dess made it in youth group./"@18592
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_737_0"@18593
conv.s.v
push.s "\\E2* It's kind of like a good luck charm to me now./"@18594
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_738_0"@18595
conv.s.v
push.s "\\E4* Oh^1, right^1, you and Azzy tried to make one too.../"@18596
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_739_0"@18597
conv.s.v
push.s "\\E7* But you wasted the whole time making huge wings for it!/%"@18598
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [351]

:[350]
push.s "obj_readable_room1_slash_Other_10_gml_742_0"@18599
conv.s.v
push.s "* (It's an angel doll.^1)&* (Its lack of facial features is unsettling.)/%"@18600
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[351]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [355]

:[352]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [354]

:[353]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_855_0_b"@18601
conv.s.v
push.s "\\EC* ..^1. so why do you collect creepy dolls?/"@18602
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_857_0"@18603
conv.s.v
push.s "\\E0* Hey^1, Noelle and her sister made that. Respect it!/"@18604
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_859_0"@18605
conv.s.v
push.s "\\E0* (Noelle's sister...)/%"@18606
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [355]

:[354]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_863_0"@18607
conv.s.v
push.s "\\EC* (...)/%"@18608
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[355]
push.v self.x
pushi.e 75
cmp.i.v LTE
bf [357]

:[356]
push.v self.y
pushi.e 160
cmp.i.v GT
b [358]

:[357]
push.e 0

:[358]
bf [371]

:[359]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [363]

:[360]
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 2
cmp.i.v LT
bf [362]

:[361]
pushi.e 55
pop.v.i global.typer
pushi.e 15
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_754_0"@18609
conv.s.v
push.s "* Oh^1, so you're just here to use the sink^1, huh?/"@18610
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_755_0"@18611
conv.s.v
push.s "\\E7* Come on^1, Kris^1!&* Be a little friendlier!/%"@18612
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
b [363]

:[362]
push.s "obj_readable_room1_slash_Other_10_gml_759_0"@18613
conv.s.v
push.s "* (It's a sink.)/"@18614
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_761_0"@18615
conv.s.v
push.s "* Hey^1, Kris^1, is that sink really more interesting than me?/%"@18616
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[363]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [371]

:[364]
pushi.e -5
pushi.e 461
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [366]

:[365]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 461
pop.v.v [array]self.flag

:[366]
pushi.e -5
pushi.e 278
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b local.sinkcheck
pushloc.v local.sinkcheck
conv.v.b
bf [368]

:[367]
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_895_0"@18618
conv.s.v
push.s "\\E2* Dammit all^1, Kris^1! You really love that sink^1, huh?/"@18619
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_896_0"@18620
conv.s.v
push.s "\\E0* That's Sink 2^1, Rudy 0./"@18621
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_897_0_b"@18622
conv.s.v
push.s "\\E2* Don't worry^1, I'm gonna pull it back^1! You wait!/%"@18623
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [371]

:[368]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [370]

:[369]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_903_0"@18624
conv.s.v
push.s "\\E0* ..^1. hey^1, Kris^1, why are you checking the sink?/"@18625
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "7"@9476
conv.s.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_905_0_b"@18626
conv.s.v
push.s "\\E7* That's what I'M asking^1, sweetheart!/%"@18627
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [371]

:[370]
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_909_0"@18628
conv.s.v
push.s "\\E0* Practicing for tonight's.../"@18629
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_910_0"@18630
conv.s.v
push.s "\\E2* Handwashing marathon^1, Kris?/%"@18631
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[371]
push.v self.x
pushi.e 95
cmp.i.v GTE
bf [373]

:[372]
push.v self.x
pushi.e 105
cmp.i.v LTE
b [374]

:[373]
push.e 0

:[374]
bf [377]

:[375]
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_771_0"@18632
conv.s.v
push.s "* (Patient Name:)&* (Rudolph \"Rudy\" Holiday)/"@18633
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_773_0"@18634
conv.s.v
push.s "* Hey Kris^1, you forget my name or something!?/%"@18635
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [377]

:[376]
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_777_0"@18636
conv.s.v
push.s "* Kris^1, you jealous you don't have your own wall plaque?/"@18637
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_778_0"@18638
conv.s.v
push.s "* Amazing what's being done with our taxpayer dollars^1, huh?/%"@18639
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[377]
push.v self.x
pushi.e 205
cmp.i.v EQ
bf [385]

:[378]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [381]

:[379]
push.s "obj_readable_room1_slash_Other_10_gml_784_0"@18640
conv.s.v
push.s "* (It's a bunch of roses in a glass container.)/"@18641
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_786_0"@18642
conv.s.v
push.s "* Hey^1, I'm happy your dad brought me flowers^1, but.../"@18643
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_787_0"@18644
conv.s.v
push.s "\\E2* Roses!^1? What is this^1, man^1? Beauty and the Beast?/"@18645
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_788_0"@18646
conv.s.v
push.s "\\E7* That ain't gonna work^1, man^1! We're both beasts!/%"@18647
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [381]

:[380]
push.s "obj_readable_room1_slash_Other_10_gml_791_0"@18648
conv.s.v
push.s "* (It's a bunch of roses.^1)&* (They seem healthy.)/"@18649
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_793_0"@18650
conv.s.v
push.s "* Kris^1, I love your dad^1, but.../"@18651
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_794_0"@18652
conv.s.v
push.s "\\E7* Asgore^1, if you wanna go to prom with me^1, just ask!/%"@18653
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[381]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [385]

:[382]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [384]

:[383]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_952_0"@18654
conv.s.v
push.s "\\EA* Woah^1, the hell is bringing you flowers?/"@18655
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "3"@2741
conv.s.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_954_0"@18656
conv.s.v
push.s "\\E3* Hey^1, what's wrong with a married man getting flowers?/"@18657
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_956_0"@18658
conv.s.v
push.s "\\EK* ..^1. So your^1, uh^1, wife gave them to you?/"@18659
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_958_0"@18660
conv.s.v
push.s "\\E2* Nah^1, HAHAHA^1! I'm messin with ya^1! Kris's dad did!/"@18661
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_960_0"@18662
conv.s.v
push.s "\\EK* (Not gonna try to understand this.)/%"@18663
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [385]

:[384]
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_964_0"@18664
conv.s.v
push.s "\\E7* Flowers? I'm trying to heal^1, man^1! Not get hayfever!/"@18665
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 12
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_966_0"@18666
conv.s.v
push.s "\\EC* ..^1. Should Kris tell him to stop?/"@18667
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_968_0"@18668
conv.s.v
push.s "\\E2* What? Hell no^1! When did I say that? Hahaha!/%"@18669
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[385]
push.v self.x
pushi.e 215
cmp.i.v GT
bf [387]

:[386]
push.s "obj_readable_room1_slash_Other_10_gml_801_0"@18670
conv.s.v
push.s "* (It's a get well soon card from your mom.^1)&* (It's signed inside.)/"@18671
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_803_0"@18672
conv.s.v
push.s "* Hey^1, Kris^1, you KNOW you signed the inside^1, right?/"@18673
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_804_0"@18674
conv.s.v
push.s "\\E2* Why are you staring at it like you haven't seen it before?/"@18675
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_805_0"@18676
conv.s.v
push.s "\\E7* Is your penmanship that good??? Was I not moved enough???/%"@18677
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[387]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [389]

:[388]
push.s "obj_readable_room1_slash_Other_10_gml_813_0"@18678
conv.s.v
push.s "* (It's a chair.)/%"@18679
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[389]
pushbltn.v builtin.room
pushi.e 45
cmp.i.v EQ
bf [391]

:[390]
push.s "obj_readable_room1_slash_Other_10_gml_819_0"@18680
conv.s.v
push.s "* (It's a diagram showing a bunch of lines and a circle.)/%"@18681
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[391]
pushbltn.v builtin.room
pushi.e 47
cmp.i.v EQ
bf [408]

:[392]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [399]

:[393]
push.s "obj_readable_room1_slash_Other_10_gml_826_0"@18682
conv.s.v
push.s "* (It's a regular sink.)/%"@18683
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.tempvar
pushi.e 1
cmp.i.v GTE
bf [395]

:[394]
push.s "obj_readable_room1_slash_Other_10_gml_829_0"@18684
conv.s.v
push.s "* (It's a clone of the other sink.)/"@18685
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_830_0"@18686
conv.s.v
push.s "* (Perhaps there was originally one tall sink that was cut in half to create both of them.)/%"@18687
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[395]
pushi.e 133
pushenv [398]

:[396]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [398]

:[397]
push.v self.tempvar
pushi.e 1
add.i.v
pop.v.v self.tempvar

:[398]
popenv [396]
b [408]

:[399]
push.v self.x
pushi.e 140
cmp.i.v LTE
bf [401]

:[400]
push.s "obj_readable_room1_slash_Other_10_gml_843_0"@18688
conv.s.v
push.s "* (You looked inside the cupboard.)/"@18689
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_844_0"@18690
conv.s.v
push.s "* (... a very small obligatory piano is hiding inside.)/%"@18691
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[401]
push.v self.x
pushi.e 150
cmp.i.v GTE
bf [403]

:[402]
push.s "obj_readable_room1_slash_Other_10_gml_848_0"@18692
conv.s.v
push.s "* (It's a classic 1-to-10 pain scale^1, using ICE-E as a model.)/"@18693
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_849_0"@18694
conv.s.v
push.s "* (At 0 pain^1, he's happy.^1)&* (At 10 pain^1, he's happy and sweating.)/%"@18695
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[403]
push.v self.x
pushi.e 200
cmp.i.v GTE
bf [408]

:[404]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [406]

:[405]
push.s "obj_readable_room1_slash_Other_10_gml_855_0"@18696
conv.s.v
push.s "* This castle's WHITE WIZARDs relegated me to this HEALING CHAMBER.../"@18697
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_856_0"@18698
conv.s.v
push.s "* But my BLOOD is BOILING FOR BATTLE!!!/%"@18699
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[406]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [408]

:[407]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1036_0"@18700
conv.s.v
push.s "* (Looks like she's resting her voice.)/%"@18701
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[408]
pushbltn.v builtin.room
pushi.e 52
cmp.i.v EQ
bf [458]

:[409]
push.v self.x
pushi.e 80
cmp.i.v LT
bf [424]

:[410]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [412]

:[411]
push.s "obj_readable_room1_slash_Other_10_gml_875_0"@18702
conv.s.v
push.s "* \"Lord of the Hammer\"/"@18703
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_876_0"@18704
conv.s.v
push.s "* (First in the award-winning fiction series by lauded historian Gerson Boom.)/%"@18705
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[412]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [419]

:[413]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [418]

:[414]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [416]

:[415]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1062_0"@18706
conv.s.v
push.s "* (It's the Lord of the Hammer series.)/"@18707
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "Y"@5384
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1064_0"@18708
conv.s.v
push.s "\\EY* Hahaha^1, Kris^1, you READ that nerdy stuff? Heh!/"@18709
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1065_0"@18710
conv.s.v
push.s "\\EA* Giant swords^1, hammers^1, bloody battles.../"@18711
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1066_0"@18712
conv.s.v
push.s "\\EK* ..^1. uh^1, so if there's any cool parts^1, you'd tell me^1, right?/%"@18713
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [417]

:[416]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1070_0"@18714
conv.s.v
push.s "\\EK* Heh^1, can't believe you read things with^1, uh..^1. words./%"@18715
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[417]
b [419]

:[418]
push.s "obj_readable_room1_slash_Other_10_gml_875_0"@18702
conv.s.v
push.s "* \"Lord of the Hammer\"/"@18703
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_876_0"@18704
conv.s.v
push.s "* (First in the award-winning fiction series by lauded historian Gerson Boom.)/%"@18705
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[419]
push.v self.y
pushi.e 80
cmp.i.v GT
bf [424]

:[420]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [422]

:[421]
push.s "obj_readable_room1_slash_Other_10_gml_881_0"@18716
conv.s.v
push.s "* (It's an unlabelled book. You look inside...)/"@18717
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_882_0"@18718
conv.s.v
push.s "* oh.... i accidentally returned my personal journal instead of my book.../"@18719
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_883_0"@18720
conv.s.v
push.s "* oh no.... they're putting it into their catalogue.../"@18721
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_884_0"@18722
conv.s.v
push.s "* oh no... i have to take it out every time i want to write a new entry.../%"@18723
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[422]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [424]

:[423]
pushi.e 1159
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[424]
push.v self.x
pushi.e 70
cmp.i.v GT
bf [439]

:[425]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [427]

:[426]
push.s "obj_readable_room1_slash_Other_10_gml_892_0"@18724
conv.s.v
push.s "* \"Please remember my name. Please. I wrote a book to help you remember.\"/"@18725
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_893_0"@18726
conv.s.v
push.s "* (By Hots Fireguy)/%"@18727
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[427]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [429]

:[428]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1110_0"@18728
conv.s.v
push.s "* (It's a book of magic tricks.)/"@18729
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1111_0_b"@18730
conv.s.v
push.s "* (Most of them require orbs or floating hands.)/%"@18731
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[429]
push.v self.y
pushi.e 80
cmp.i.v GT
bf [439]

:[430]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [432]

:[431]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [433]

:[432]
push.e 0

:[433]
pop.v.b local.have_susie
pushloc.v local.have_susie
conv.v.b
bf [438]

:[434]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [436]

:[435]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1124_0"@18732
conv.s.v
push.s "* (There's a book here.^1)&* (You licked the page...)/"@18733
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1126_0_b"@18734
conv.s.v
push.s "* Hey^1, Kris^1, what the HELL are you doing?/"@18735
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1127_0"@18736
conv.s.v
push.s "\\E5* There's a thing called sharing^1, dumbass. Heard of it?/%"@18737
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [437]

:[436]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1131_0"@18738
conv.s.v
push.s "\\E2* Look^1, the books are public for a reason./%"@18739
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[437]
b [439]

:[438]
push.s "obj_readable_room1_slash_Other_10_gml_897_0"@18740
conv.s.v
push.s "* (There's a book here.^1)&* (You lick the page...^1)&* (It's delicious!)/"@18741
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_898_0"@18742
conv.s.v
push.s "* (This must be what they meant by flavor text.)/%"@18743
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[439]
push.v self.x
pushi.e 110
cmp.i.v GT
bf [441]

:[440]
push.s "obj_readable_room1_slash_Other_10_gml_905_0"@18744
conv.s.v
push.s "* (Computer Lab.^1)&* (Please surf the web responsibly.)/"@18745
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_906_0"@18746
conv.s.v
push.s "* (In fact^1, maybe don't do it at all.)/%"@18747
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[441]
push.v self.x
pushi.e 135
cmp.i.v GT
bf [448]

:[442]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [445]

:[443]
push.s "obj_readable_room1_slash_Other_10_gml_911_0"@18748
conv.s.v
push.s "* (You looked through the window to the computer lab...)/"@18749
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_912_0"@18750
conv.s.v
push.s "* (There seems to be a dog inside working at a computer...)/"@18751
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_913_0"@18752
conv.s.v
push.s "* (Seems like it's making a game...)/"@18753
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_914_0"@18754
conv.s.v
push.s "* (Seems like you shouldn't interrupt it...)/"@18755
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_915_0"@18756
conv.s.v
push.s "* (Seems like when the game's finished^1, you can go in...)/"@18757
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_916_0"@18758
conv.s.v
push.s "* (You just have to trust the dog...)/%"@18759
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [445]

:[444]
push.s "obj_readable_room1_slash_Other_10_gml_920_0"@18760
conv.s.v
push.s "* (You looked through the window to the computer lab...)/"@18749
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_921_0"@18761
conv.s.v
push.s "* (Now the dog is just playing the maracas...)/"@18762
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_922_0"@18763
conv.s.v
push.s "* (It's not doing any work...)/"@18764
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_923_0"@18765
conv.s.v
push.s "* (This might take a while...)/%"@18766
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[445]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [448]

:[446]
pushglb.v global.plot
pushi.e 205
cmp.i.v LTE
bf [448]

:[447]
push.s "obj_readable_room1_slash_Other_10_gml_1172_0_b"@18767
conv.s.v
push.s "* No reason to go back in there./%"@18768
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[448]
push.v self.x
pushi.e 190
cmp.i.v GT
bf [451]

:[449]
pushglb.v global.chapter
pushi.e 1
cmp.i.v GTE
bf [451]

:[450]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_931_0"@18769
conv.s.v
push.s "* (There's a crude drawing of an ice-cube wearing a headband.)/"@18770
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_932_0"@18771
conv.s.v
push.s "* (\"The TeenZone: Where Teen's Can Be Kid's.\")/"@18772
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_933_0"@18773
conv.s.v
push.s "* (A feeling of immense relief washes over you.)/%"@18774
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[451]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [458]

:[452]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [454]

:[453]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 185
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[454]
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [458]

:[455]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [457]

:[456]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1193_0"@18775
conv.s.v
push.s "* (Kris^1, we could go anywhere...)/"@18776
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1194_0"@18777
conv.s.v
push.s "\\E1* (And you brought us to the Teen Zone.)/%"@18778
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [458]

:[457]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1198_0"@18779
conv.s.v
push.s "* (It's the weekly cartoon review.)/"@18780
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1199_0"@18781
conv.s.v
push.s "* (Just looking at cartoon criticism is sapping your energy rapidly.)/%"@18782
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[458]
pushbltn.v builtin.room
pushi.e 42
cmp.i.v EQ
bf [468]

:[459]
push.s "obj_readable_room1_slash_Other_10_gml_948_0"@18783
conv.s.v
push.s "* GERSON&* RENOWNED HISTORIAN, AUTHOR, AND TEACHER/%"@18784
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushi.e 150
cmp.i.v GTE
bf [461]

:[460]
push.s "obj_readable_room1_slash_Other_10_gml_951_0"@18785
conv.s.v
push.s "* CRYSTAL&* A SNOWY GEMSTONE FOR A PROUD MOTHER/%"@18786
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[461]
push.v self.x
pushi.e 200
cmp.i.v GTE
bf [463]

:[462]
push.s "obj_readable_room1_slash_Other_10_gml_955_0"@18787
conv.s.v
push.s "* MUTTLER&* A BIG BONE FOR THE LEADER OF THE PACK/%"@18788
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[463]
push.v self.x
pushi.e 290
cmp.i.v GTE
bf [468]

:[464]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [466]

:[465]
push.s "obj_readable_room1_slash_Other_10_gml_961_0"@18789
conv.s.v
push.s "* SHYRA&* A KARAOKE MICROPHONE FOR A BRAVE SINGER/%"@18790
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[466]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [468]

:[467]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1237_0"@18791
conv.s.v
push.s "* ..^1. So^1, uh^1, this is your idea of hanging out^1, Kris?/"@18792
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1238_0"@18793
conv.s.v
push.s "\\EK* Going to the graveyard?/"@18794
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1239_0"@18795
conv.s.v
push.s "\\E2* ..^1. works for me I guess./%"@18796
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[468]
pushbltn.v builtin.room
pushi.e 49
cmp.i.v EQ
bf [475]

:[469]
push.v self.x
pushi.e 180
cmp.i.v GTE
bf [471]

:[470]
push.s "obj_readable_room1_slash_Other_10_gml_983_0"@18797
conv.s.v
push.s "* (It's a painting of the town.)/%"@18798
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[471]
push.v self.x
pushi.e 240
cmp.i.v GTE
bf [473]

:[472]
push.s "obj_readable_room1_slash_Other_10_gml_988_0"@18799
conv.s.v
push.s "* (It's a small pine tree.)/%"@18800
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[473]
push.v self.y
pushi.e 160
cmp.i.v GTE
bf [475]

:[474]
push.s "obj_readable_room1_slash_Other_10_gml_991_0"@18801
conv.s.v
push.s "* (It's a chair.^1)&* (Maybe it's into politics.)/%"@18802
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[475]
pushbltn.v builtin.room
pushi.e 36
cmp.i.v EQ
bf [477]

:[476]
pushi.e 192
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[477]
pushbltn.v builtin.room
pushi.e 48
cmp.i.v EQ
bf [479]

:[478]
push.s "obj_readable_room1_slash_Other_10_gml_1003_0"@18803
conv.s.v
push.s "* (Rave reviews and autographs.^1)&* (... from various normal townspeople.)/%"@18804
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[479]
pushbltn.v builtin.room
pushi.e 50
cmp.i.v EQ
bf [492]

:[480]
push.v self.y
pushi.e 100
cmp.i.v GT
bf [487]

:[481]
push.v self.x
pushi.e 100
cmp.i.v LT
bf [483]

:[482]
push.s "obj_readable_room1_slash_Other_10_gml_1010_0"@18805
conv.s.v
push.s "* (It's a cash register.^1)&* (There's not much change inside.)/%"@18806
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[483]
push.v self.x
pushi.e 70
cmp.i.v LT
bf [485]

:[484]
push.s "obj_readable_room1_slash_Other_10_gml_1011_0"@18807
conv.s.v
push.s "* (It's a flower.)/%"@18808
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[485]
push.v self.x
pushi.e 50
cmp.i.v LT
bf [487]

:[486]
push.s "obj_readable_room1_slash_Other_10_gml_1012_0"@18809
conv.s.v
push.s "* (It's some kind of catalogue..^1. There's a car magazine underneath.)/%"@18810
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[487]
push.v self.y
pushi.e 80
cmp.i.v LT
bf [492]

:[488]
push.v self.x
pushi.e 140
cmp.i.v EQ
bf [490]

:[489]
push.s "obj_readable_room1_slash_Other_10_gml_1017_0"@18811
conv.s.v
push.s "* (It's an expertly trimmed arrangement.)/%"@18812
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[490]
push.v self.x
pushi.e 140
cmp.i.v NEQ
bf [492]

:[491]
push.s "obj_readable_room1_slash_Other_10_gml_1018_0"@18813
conv.s.v
push.s "* (There are various flowers inside.)/%"@18814
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[492]
pushbltn.v builtin.room
pushi.e 51
cmp.i.v EQ
bf [511]

:[493]
push.v self.y
pushi.e 50
cmp.i.v LT
bf [495]

:[494]
push.s "obj_readable_room1_slash_Other_10_gml_1027_0"@18815
conv.s.v
push.s "* (It's a door.^1)&* (It's locked.)/%"@18816
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[495]
push.v self.y
pushi.e 60
cmp.i.v GT
bf [502]

:[496]
push.s "obj_readable_room1_slash_Other_10_gml_1031_0"@18817
conv.s.v
push.s "* (Various bags of soil.)/%"@18818
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.x
pushi.e 60
cmp.i.v GTE
bf [498]

:[497]
push.s "obj_readable_room1_slash_Other_10_gml_1032_0"@18819
conv.s.v
push.s "* (It's a dirty watering can.)/%"@18820
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[498]
push.v self.x
pushi.e 180
cmp.i.v GTE
bf [500]

:[499]
push.s "obj_readable_room1_slash_Other_10_gml_1034_0"@18821
conv.s.v
push.s "* (There is some dirty fur stuck in the drain.)/%"@18822
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[500]
push.v self.x
pushi.e 260
cmp.i.v GTE
bf [502]

:[501]
push.s "obj_readable_room1_slash_Other_10_gml_1037_0"@18823
conv.s.v
push.s "* (It's a small TV.)&* (On top are some superhero comics.)/%"@18824
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[502]
push.v self.y
pushi.e 120
cmp.i.v GT
bf [509]

:[503]
push.v self.x
pushi.e 160
cmp.i.v LT
bf [505]

:[504]
push.s "obj_readable_room1_slash_Other_10_gml_1044_0"@18825
conv.s.v
push.s "* (It's a note.)&* (It says...)/"@18826
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1045_0"@18827
conv.s.v
push.s "* No rent received. Again.&* Stop giving away flowers.&* Start selling them./"@18828
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1046_0"@18829
conv.s.v
push.s "* You have one month.& &         - C/%"@18830
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
b [509]

:[505]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [507]

:[506]
push.s "obj_readable_room1_slash_Other_10_gml_1052_0"@18831
conv.s.v
push.s "* (It's an air mattress.^1)&* (It's certainly not king-sized...)/"@18832
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_asgface(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1054_0"@18833
conv.s.v
push.s "* Kris^1, do you want to sleep over?/"@18834
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1055_0"@18835
conv.s.v
push.s "\\E1* You could use that air mattress^1, and I could.../"@18836
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1056_0"@18837
conv.s.v
push.s "\\E2* Er^1, use those bags of soil..^1.&* Perhaps not./%"@18838
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[507]
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [509]

:[508]
push.s "obj_readable_room1_slash_Other_10_gml_1060_0"@18839
conv.s.v
push.s "* (It's an air mattress.^1)&* (It's certainly not king-sized...)/%"@18840
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[509]
push.v self.x
pushi.e 225
cmp.i.v EQ
bf [511]

:[510]
pushi.e 210
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[511]
pushbltn.v builtin.room
pushi.e 53
cmp.i.v EQ
bf [523]

:[512]
push.v self.x
pushi.e 130
cmp.i.v LTE
bf [518]

:[513]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [515]

:[514]
push.s "obj_readable_room1_slash_Other_10_gml_1077_0"@18841
conv.s.v
push.s "* (It's a saucer of milk.)/%"@18842
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[515]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [517]

:[516]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1353_0"@18843
conv.s.v
push.s "\\E7* Hey Kris^1, this free milk? It's amazing./"@18844
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1354_0"@18845
conv.s.v
push.s "\\E2* It just magically refreshes itself over night./%"@18846
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[517]
b [523]

:[518]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [521]

:[519]
push.s "obj_readable_room1_slash_Other_10_gml_1091_0"@18847
conv.s.v
push.s "* (It's a dirty trash can.)/%"@18848
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.y
pushi.e 100
cmp.i.v LTE
bf [521]

:[520]
push.s "obj_readable_room1_slash_Other_10_gml_1094_0"@18849
conv.s.v
push.s "* (It's a trash can full of well-kept flowers.)/%"@18850
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[521]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [523]

:[522]
push.s "bratty"@3864
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1371_0"@18851
conv.s.v
push.s "\\E3* (Um^1, HEY? That's MY trash from other people's houses.)/"@18852
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1372_0"@18853
conv.s.v
push.s "\\E6* (Like^1, PRIVACY much? God^1, living with Azzy made you weird.)/%"@18854
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[523]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [540]

:[524]
push.v self.x
pushi.e 100
cmp.i.v LTE
bf [531]

:[525]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [527]

:[526]
push.s "obj_readable_room1_slash_Other_10_gml_1111_0"@18855
conv.s.v
push.s "* (Police tape is blocking the way.)/"@18856
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1112_0"@18857
conv.s.v
push.s "* (The tape simply reads \"NGAHHHHH!!!\")/%"@18858
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[527]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [531]

:[528]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [530]

:[529]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1393_0"@18859
conv.s.v
push.s "* (There's more police tape.)/"@18860
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1394_0"@18861
conv.s.v
push.s "* (It says \"NGAHHHH!!^1! I MEAN IT!!!\")/"@18862
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1395_0"@18863
conv.s.v
push.s "* (It's not clear what is meant by that.)/%"@18864
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [531]

:[530]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1399_0"@18865
conv.s.v
push.s "* (There's a lot of police tape.)/%"@18866
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[531]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [533]

:[532]
push.v self.x
pushi.e 300
cmp.i.v LT
b [534]

:[533]
push.e 0

:[534]
bf [540]

:[535]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [539]

:[536]
pushi.e 49
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1119_0"@18867
conv.s.v
push.s "* (You knocked on the door to the Police Station.)/"@18868
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1120_0"@18869
conv.s.v
push.s "* (...)/"@1566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1121_0"@18870
conv.s.v
push.s "* (Someone's coming up to the window.)/%"@18871
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 79
pushenv [538]

:[537]
pushi.e 50
pop.v.i self.con

:[538]
popenv [537]
b [540]

:[539]
push.s "obj_readable_room1_slash_Other_10_gml_1126_0"@18872
conv.s.v
push.s "* (Seems like the police aren't really feelin' it right now...)/%"@18873
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[540]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [569]

:[541]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [543]

:[542]
push.s "obj_readable_room1_slash_Other_10_gml_1136_0"@18874
conv.s.v
push.s "* (Here at ICE-E'S PEZZA, You're Family.)/"@18875
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1137_0"@18876
conv.s.v
push.s "* (... Is Going to Love it!)/%"@18877
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[543]
push.v self.x
pushi.e 300
cmp.i.v GTE
bf [545]

:[544]
push.s "obj_readable_room1_slash_Other_10_gml_1141_0"@18878
conv.s.v
push.s "* (The entrance is locked.^1)&* (No one's inside.)/"@18879
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1142_0"@18880
conv.s.v
push.s "* (Seems like all of the employees are outside in costume.)/%"@18881
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[545]
push.v self.x
pushi.e 360
cmp.i.v GTE
bf [547]

:[546]
push.s "obj_readable_room1_slash_Other_10_gml_1146_0"@18882
conv.s.v
push.s "* (Ice E's P\"E\"ZZA, You're number \"#1\" Spot for a piping hot pe\"E\"ce of PEZZA.)/%"@18883
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[547]
push.v self.x
pushi.e 1240
cmp.i.v GTE
bf [569]

:[548]
pushi.e 49
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [550]

:[549]
push.s "obj_readable_room1_slash_Other_10_gml_1154_0"@18884
conv.s.v
push.s "* (Knock knock knock...)/"@18885
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1444_0"@18886
conv.s.v
push.s "* (...)/"@1566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1156_0"@18887
conv.s.v
push.s "* (No response...^1)&* (... but the distant trousle of bones.)/%"@18888
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[550]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [552]

:[551]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1451_0"@18889
conv.s.v
push.s "* (Knock knock knock.)/"@18890
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1452_0"@18891
conv.s.v
push.s "* (Faintly...^1. faintly^1, a trousle..^1. growing further away...)/%"@18892
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[552]
push.v self.x
pushi.e 1500
cmp.i.v GTE
bf [557]

:[553]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [555]

:[554]
push.s "obj_readable_room1_slash_Other_10_gml_1170_0"@18893
conv.s.v
push.s "* Ooo^1, are you the human that lives at the top of town?/"@18894
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1171_0"@18895
conv.s.v
push.s "* Wow^1, my mommy told me about you.../"@18896
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1172_0"@18897
conv.s.v
push.s "* Does it hurt to be made of blood???/%"@18898
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[555]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [557]

:[556]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1483_0"@4224
conv.s.v
push.s "* (Knock knock knock)/"@4225
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1467_0"@18899
conv.s.v
push.s "* Oooo^1, is that a humannnn?!/"@18900
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1468_0"@18901
conv.s.v
push.s "* If humans are made of bones.../"@18902
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1469_0"@18903
conv.s.v
push.s "* Where does skeletons come from...?/%"@18904
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[557]
push.v self.x
pushi.e 1640
cmp.i.v GTE
bf [562]

:[558]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [560]

:[559]
push.s "obj_readable_room1_slash_Other_10_gml_1187_0"@18905
conv.s.v
push.s "* Huh..^1. that sounds like the knock of a beginner./"@18906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1188_0"@18907
conv.s.v
push.s "* Come back when you've gotten better at knocking!/%"@18908
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[560]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [562]

:[561]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1483_0"@4224
conv.s.v
push.s "* (Knock knock knock)/"@4225
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1484_0"@18909
conv.s.v
push.s "* Hmm..^1. that knocking..^1. it's amateur!/"@18910
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1485_0"@18911
conv.s.v
push.s "* You've still got a long way to go!/%"@18912
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[562]
push.v self.x
pushi.e 1860
cmp.i.v GTE
bf [569]

:[563]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [565]

:[564]
push.s "obj_readable_room1_slash_Other_10_gml_1204_0"@18913
conv.s.v
push.s "* OY^1, Snowy^1, whaddid I TELL YAH about knockin' the door so hahd!/"@18914
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1205_0"@18915
conv.s.v
push.s "* Don't^1!&* Do^1!&* It!/"@18916
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1206_0"@18917
conv.s.v
push.s "* It's REALLY gonna hurt yah face^1! We don't have arms^1, yah know!/%"@18918
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[565]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [569]

:[566]
pushi.e -5
pushi.e 315
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b local.visitedshelter
pushloc.v local.visitedshelter
conv.v.b
not.b
bf [568]

:[567]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1504_0"@18920
conv.s.v
push.s "* (Knock knock knock)/"@4225
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "C"@9479
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1506_0"@18921
conv.s.v
push.s "\\EC* Hey^1, uh^1, Kris..^1. what are you doing?/"@18922
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1507_0"@18923
conv.s.v
push.s "\\E1* We're going to your house^1, right?/%"@18924
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [569]

:[568]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1510_0"@18925
conv.s.v
push.s "* (Knock knock knock)/"@4225
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1511_0"@18926
conv.s.v
push.s "* (Yo^1, uhh^1, Kris..^1. haha. Is that you? Haha...)/"@18927
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1512_0"@18928
conv.s.v
push.s "* (We're not hanging out if Susie's with you!)/"@18929
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1513_0"@18930
conv.s.v
push.s "* (Kris..^1. Susie sucks^1! Why didn't you stop her^1, haha...)/%"@18931
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[569]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [605]

:[570]
push.v self.x
pushi.e 250
cmp.i.v LTE
bf [572]

:[571]
push.s "obj_readable_room1_slash_Other_10_gml_1236_0"@18932
conv.s.v
push.s "* (It's an ornate gate.^1)&* (It appears to be locked.)/%"@18933
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[572]
push.v self.x
pushi.e 500
cmp.i.v GTE
bf [574]

:[573]
push.v self.x
pushi.e 570
cmp.i.v LTE
b [575]

:[574]
push.e 0

:[575]
bf [580]

:[576]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [578]

:[577]
pushi.e 16
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 6
pop.v.i global.fe
push.s "obj_readable_room1_slash_Other_10_gml_1245_0"@18934
conv.s.v
push.s "* Aww^1, Kris^1, like^1, if you wanna come in.../"@18935
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1246_0"@18936
conv.s.v
push.s "\\E4* Our cat-flap^1, is like^1, always open to you.../%"@18937
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[578]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [580]

:[579]
push.s "obj_readable_room1_slash_Other_10_gml_1539_0"@18938
conv.s.v
push.s "* (There's a cat flap.)/"@18939
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1540_0"@18940
conv.s.v
push.s "* (It's locked.)/"@18941
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1541_0"@18942
conv.s.v
push.s "* (Somehow.)/%"@18943
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[580]
push.v self.x
pushi.e 580
cmp.i.v GTE
bf [582]

:[581]
push.s "obj_readable_room1_slash_Other_10_gml_1258_0"@18944
conv.s.v
push.s "* (Various cat-themed junk is piled up inside the house.)/"@18945
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1259_0"@18946
conv.s.v
push.s "* (It seems to be a bit of a cat-sty...)/%"@18947
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[582]
push.v self.x
pushi.e 650
cmp.i.v GTE
bf [584]

:[583]
push.s "obj_readable_room1_slash_Other_10_gml_1263_0"@18948
conv.s.v
push.s "* (It's a broken grill.)/"@18949
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1264_0"@18950
conv.s.v
push.s "* (... It smells like burnt cat food.)/%"@18951
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[584]
push.v self.x
pushi.e 800
cmp.i.v GTE
bf [590]

:[585]
push.s "obj_readable_room1_slash_Other_10_gml_1268_0"@18952
conv.s.v
push.s "* (There's some kind of scratching noise coming from inside...)/%"@18953
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [587]

:[586]
push.v self.x
pushi.e 900
cmp.i.v GT
b [588]

:[587]
push.e 0

:[588]
bf [590]

:[589]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1563_0"@18954
conv.s.v
push.s "* (There's some kind of scratching and hissing from inside.)/%"@18955
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[590]
push.v self.x
pushi.e 1090
cmp.i.v GTE
bf [592]

:[591]
push.v self.x
pushi.e 1130
cmp.i.v LTE
b [593]

:[592]
push.e 0

:[593]
bf [599]

:[594]
pushi.e 49
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [597]

:[595]
push.s "obj_readable_room1_slash_Other_10_gml_1276_0"@18956
conv.s.v
push.s "* (Knock knock knock...)/"@18885
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1277_0"@18957
conv.s.v
push.s "* Ah, I'm afraid no one's home right now^1, darling./"@18958
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1278_0"@18959
conv.s.v
push.s "* Now^1, why don't you prance on home?/%"@18960
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.read
pushi.e 1
cmp.i.v GTE
bf [597]

:[596]
push.s "obj_readable_room1_slash_Other_10_gml_1282_0"@18961
conv.s.v
push.s "* I'm telling you^1, they're not home right now./"@18962
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1283_0"@18963
conv.s.v
push.s "* ... Ah^1, you just wanted to talk to me...?/"@18964
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1284_0"@18965
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_readable_room1_slash_Other_10_gml_1285_0"@18966
conv.s.v
push.s "* My apologies^1, beautiful^1.&* I'm afraid I'm a bit of a nobody./%"@18967
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg

:[597]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [599]

:[598]
pushi.e 1055
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[599]
push.v self.x
pushi.e 1427
cmp.i.v EQ
bf [602]

:[600]
push.v self.y
pushi.e 38
cmp.i.v EQ
bf [602]

:[601]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
b [603]

:[602]
push.e 0

:[603]
bf [605]

:[604]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1617_0"@18968
conv.s.v
push.s "* (There's a door behind the flower shop.)/"@18969
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1618_0"@18970
conv.s.v
push.s "* (... but there's flowers blocking the way.)/%"@18971
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[605]
pushbltn.v builtin.room
pushi.e 43
cmp.i.v EQ
bf [607]

:[606]
push.s "obj_readable_room1_slash_Other_10_gml_1302_0"@18972
conv.s.v
push.s "* (It's locked.)/%"@17702
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[607]
pushbltn.v builtin.room
pushi.e 58
cmp.i.v EQ
bf [627]

:[608]
push.v self.x
pushi.e 40
cmp.i.v GT
bf [610]

:[609]
push.v self.x
pushi.e 80
cmp.i.v LT
b [611]

:[610]
push.e 0

:[611]
bf [613]

:[612]
pushi.e 1022
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[613]
push.v self.y
pushi.e 110
cmp.i.v GT
bf [615]

:[614]
push.v self.y
pushi.e 130
cmp.i.v LT
b [616]

:[615]
push.e 0

:[616]
bf [621]

:[617]
push.v self.x
pushi.e 50
cmp.i.v GT
bf [619]

:[618]
push.s "obj_readable_room1_slash_Other_10_gml_1615_0"@18973
conv.s.v
push.s "* (There's some condiments at the table.)/"@18974
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1616_0"@18975
conv.s.v
push.s "* ICE-E's \"Original\" Parmajohn Che\"E\"ese!/%"@18976
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[619]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [621]

:[620]
push.s "obj_readable_room1_slash_Other_10_gml_1621_0"@18977
conv.s.v
push.s "* (There's some condiments at the table.)/"@18974
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1622_0"@18978
conv.s.v
push.s "* ICE-E'S Squeezable Pasta Now With New \"Shape\"/%"@18979
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[621]
push.v self.y
pushi.e 70
cmp.i.v LT
bf [624]

:[622]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [624]

:[623]
push.v self.x
pushi.e 260
cmp.i.v LT
b [625]

:[624]
push.e 0

:[625]
bf [627]

:[626]
push.s "obj_readable_room1_slash_Other_10_gml_1629_0"@18980
conv.s.v
push.s "* (Try our new CHOCCOLATE PEZZA)/"@18981
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1630_0"@18982
conv.s.v
push.s "* (Melts in your pants not in your mouth)/%"@18983
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[627]
pushbltn.v builtin.room
pushi.e 57
cmp.i.v EQ
bf [716]

:[628]
push.v self.x
pushi.e 120
cmp.i.v GT
bf [630]

:[629]
push.v self.y
pushi.e 90
cmp.i.v LT
b [631]

:[630]
push.e 0

:[631]
bf [633]

:[632]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1640_0"@18984
conv.s.v
push.s "* (Various frozen bagels and treats.)/"@18985
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1642_0"@18986
conv.s.v
push.s "\\E2* Hey Kris^1, wanna see if we can fit inside?/"@18987
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1643_0"@18988
conv.s.v
push.s "\\E5* If you just crouch down under the waffles -/"@18989
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1644_0"@18990
conv.s.v
push.s "\\EK* Damn^1, think someone's looking./%"@18991
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[633]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [636]

:[634]
push.v self.x
pushi.e 250
cmp.i.v LT
bf [636]

:[635]
push.v self.y
pushi.e 90
cmp.i.v LT
b [637]

:[636]
push.e 0

:[637]
bf [639]

:[638]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1651_0"@18992
conv.s.v
push.s "* (It looks like a normal basket of fruit^1, but when you reach in...)/"@18993
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1652_0"@18994
conv.s.v
push.s "* (..^1. It's incredibly deep and holds all sorts of things.)/%"@18995
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[639]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [641]

:[640]
push.v self.y
pushi.e 80
cmp.i.v LT
b [642]

:[641]
push.e 0

:[642]
bf [650]

:[643]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1659_0"@18996
conv.s.v
push.s "* LOOSE EGGS $1/"@18997
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1660_0"@18998
conv.s.v
push.s "* (It's too much responsibility for an egg.)/%"@18999
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e -5
pushi.e 439
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [645]

:[644]
push.s "obj_readable_room1_slash_Other_10_gml_1684_0"@19000
conv.s.v
push.s "* (Seems like there's more eggs here than usual.)/%"@19001
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[645]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
conv.v.b
bf [647]

:[646]
pushi.e -5
pushi.e 439
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [648]

:[647]
push.e 0

:[648]
bf [650]

:[649]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemremove(argc=1)
popz.v
push.i 231332
setowner.e
pushi.e 56
conv.i.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.writersnd
push.s "obj_readable_room1_slash_Other_10_gml_1691_0_b"@19002
conv.s.v
push.s "* (It's a pile of eggs.)/"@19003
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1692_0"@19004
conv.s.v
push.s "* (...)/"@1566
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1693_0"@19005
conv.s.v
push.s "\\S1* (You put the Egg into the eggpile.)/"@19006
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1695_0_b"@19007
conv.s.v
push.s "* ... did you just^1, uh^1, reverse-steal that egg?/%"@19008
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_keyitemremove(argc=1)
popz.v
pushi.e 0
pop.v.i self.skip
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 439
pop.v.v [array]self.flag

:[650]
push.v self.x
pushi.e 280
cmp.i.v GT
bf [653]

:[651]
push.v self.x
pushi.e 310
cmp.i.v LT
bf [653]

:[652]
push.v self.y
pushi.e 90
cmp.i.v LT
b [654]

:[653]
push.e 0

:[654]
bf [656]

:[655]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1667_0"@19009
conv.s.v
push.s "* (Grapes^1, melons^1, oranges^1, and the scent of fresh pineapples...)/%"@19010
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[656]
push.v self.x
pushi.e 265
cmp.i.v GT
bf [659]

:[657]
push.v self.x
pushi.e 280
cmp.i.v LT
bf [659]

:[658]
push.v self.y
pushi.e 90
cmp.i.v LT
b [660]

:[659]
push.e 0

:[660]
bf [662]

:[661]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1674_0"@19011
conv.s.v
push.s "* (It looks like a normal palm tree^1, but it's chock-full of useful groceries.)/%"@19012
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[662]
push.v self.x
pushi.e 425
cmp.i.v GT
bf [665]

:[663]
push.v self.x
pushi.e 445
cmp.i.v LT
bf [665]

:[664]
push.v self.y
pushi.e 90
cmp.i.v LT
b [666]

:[665]
push.e 0

:[666]
bf [670]

:[667]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [669]

:[668]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1683_0"@19013
conv.s.v
push.s "* (It's a rack of candy^1, jerky^1, and various nuts.)/"@19014
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
push.s "obj_readable_room1_slash_Other_10_gml_1685_0"@19015
conv.s.v
push.s "\\EA* See? Jerky is candy. ..^1. And^1, uh^1, peanuts too./"@19016
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1687_0"@19017
conv.s.v
push.s "\\E5* actually they're a legume./"@19018
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1689_0"@19019
conv.s.v
push.s "\\E1* Peanuts?/"@19020
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1691_0"@19021
conv.s.v
push.s "\\E2* jerky./%"@19022
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [670]

:[669]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1695_0"@19023
conv.s.v
push.s "* How about we don't look at anything.../"@19024
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1696_0"@19025
conv.s.v
push.s "\\E1* That's gonna make him say something stupid./"@19026
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "sans"@429
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1698_0"@19027
conv.s.v
push.s "\\E5* ..^1. pickings are looking slim^1, ma'am./%"@19028
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[670]
push.v self.x
pushi.e 140
cmp.i.v GT
bf [672]

:[671]
push.v self.y
pushi.e 150
cmp.i.v GT
b [673]

:[672]
push.e 0

:[673]
bf [677]

:[674]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [676]

:[675]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1708_0"@19029
conv.s.v
push.s "* Ice-E's Pizza Pin-Ups Mangazine./"@19030
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1709_0"@19031
conv.s.v
push.s "* HOt and fresh chease^1, pepperonie^1, Just like in your Dream's.../%"@19032
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [677]

:[676]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1716_0"@19033
conv.s.v
push.s "* Hot Piza Picks! Now with 3 Pixels Or MOre, In Hot and Spicy REsolution!/%"@19034
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[677]
push.v self.x
pushi.e 170
cmp.i.v GT
bf [679]

:[678]
push.v self.y
pushi.e 150
cmp.i.v GT
b [680]

:[679]
push.e 0

:[680]
bf [684]

:[681]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [683]

:[682]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1726_0"@19035
conv.s.v
push.s "* There're some car magazines on the racks./"@19036
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1727_0"@19037
conv.s.v
push.s "* It might be fun to look at them^1,/"@19038
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1728_0"@19039
conv.s.v
push.s "* But there's other people around.../%"@19040
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [684]

:[683]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1734_0"@19041
conv.s.v
push.s "* It's a fluffy dog magazine^1. The inside has samples like fragrance ads.../"@19042
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1735_0"@19043
conv.s.v
push.s "* But it's all different dog fur for you to touch./"@19044
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1737_0"@19045
conv.s.v
push.s "\\E5* Hey^1, don't hog the ads!!/%"@19046
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[684]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [686]

:[685]
push.v self.y
pushi.e 150
cmp.i.v GT
b [687]

:[686]
push.e 0

:[687]
bf [689]

:[688]
push.s "obj_readable_room1_slash_Other_10_gml_1746_0"@19047
conv.s.v
push.s "* It's a zine for Jockington fans. Seems popular./%"@19048
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[689]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [691]

:[690]
push.v self.y
pushi.e 150
cmp.i.v GT
b [692]

:[691]
push.e 0

:[692]
bf [694]

:[693]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1753_0"@19049
conv.s.v
push.s "* It's a bunch of cards and heart shaped chocolates./"@19050
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1755_0"@19051
conv.s.v
push.s "* \"Get well soon!\"&* \"I'm glad your bike crashed\"/%"@19052
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[694]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [697]

:[695]
push.v self.x
pushi.e 420
cmp.i.v LT
bf [697]

:[696]
push.v self.y
pushi.e 80
cmp.i.v LT
b [698]

:[697]
push.e 0

:[698]
bf [702]

:[699]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [701]

:[700]
pushi.e 3
pop.v.i self.onebuffer

:[701]
popenv [700]
exit.i

:[702]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [705]

:[703]
push.v self.x
pushi.e 415
cmp.i.v LT
bf [705]

:[704]
push.v self.y
pushi.e 160
cmp.i.v GT
b [706]

:[705]
push.e 0

:[706]
bf [708]

:[707]
push.s "sans"@429
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1774_0"@19053
conv.s.v
push.s "\\E2* that stuff? it's used. half off./"@19054
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1776_0"@19055
conv.s.v
push.s "* ..^1. What is it?/"@19056
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "sans"@429
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1778_0"@19057
conv.s.v
push.s "\\E5* trash./%"@19058
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[708]
push.v self.x
pushi.e 435
cmp.i.v GT
bf [711]

:[709]
push.v self.x
pushi.e 445
cmp.i.v LT
bf [711]

:[710]
push.v self.y
pushi.e 150
cmp.i.v GT
b [712]

:[711]
push.e 0

:[712]
bf [716]

:[713]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [715]

:[714]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1787_0"@19059
conv.s.v
push.s "* (You can't reach the top^1, rendering it impossible to get a basket.)/"@19060
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1788_0"@19061
conv.s.v
push.s "* (You'll never be able to buy something in this state...)/%"@19062
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [716]

:[715]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1792_0"@19063
conv.s.v
push.s "* (One was the Throne of God's^1, this is the Throne of Evil's.)/%"@19064
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[716]
pushbltn.v builtin.room
pushi.e 56
cmp.i.v EQ
bf [737]

:[717]
push.v self.x
pushi.e 110
cmp.i.v GT
bf [721]

:[718]
push.v self.x
pushi.e 130
cmp.i.v LT
bf [721]

:[719]
push.v self.y
pushi.e 60
cmp.i.v GT
bf [721]

:[720]
push.v self.y
pushi.e 80
cmp.i.v LT
b [722]

:[721]
push.e 0

:[722]
bf [724]

:[723]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1806_0"@19065
conv.s.v
push.s "* (You skimmed a news article about Undyne.)/"@19066
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1807_0"@19067
conv.s.v
push.s "* New Police Chief Undyne's Explosive Debut/"@19068
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1808_0"@19069
conv.s.v
push.s "* ..^1. passionate young rookie..^1. becomes the new police chief./"@19070
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1809_0"@19071
conv.s.v
push.s "* Though energetic^1, it may be hard to live up to the legacy.../"@19072
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1810_0"@19073
conv.s.v
push.s "* ..^1. after Asgore Dreemurr was removed from the force.../"@19074
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1811_0"@19075
conv.s.v
push.s "* (..^1. there's no need to read any more.)/%"@19076
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[724]
push.v self.x
pushi.e 80
cmp.i.v GT
bf [728]

:[725]
push.v self.x
pushi.e 90
cmp.i.v LT
bf [728]

:[726]
push.v self.y
pushi.e 150
cmp.i.v LT
bf [728]

:[727]
push.v self.y
pushi.e 140
cmp.i.v GT
b [729]

:[728]
push.e 0

:[729]
bf [731]

:[730]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1818_0"@19077
conv.s.v
push.s "* (Photos of Chief Undyne and Deputy Napstablook.)/"@19078
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1819_0"@19079
conv.s.v
push.s "* (Undyne is rescuing all of Catti's family from a tree.)/"@19080
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1820_0"@19081
conv.s.v
push.s "* (..^1. Napstablook is also stuck in the tree somehow.)/%"@19082
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[731]
push.v self.x
pushi.e 60
cmp.i.v GT
bf [734]

:[732]
push.v self.x
pushi.e 70
cmp.i.v LT
bf [734]

:[733]
push.v self.y
pushi.e 170
cmp.i.v GT
b [735]

:[734]
push.e 0

:[735]
bf [737]

:[736]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1827_0"@19083
conv.s.v
push.s "* (Well-cared-for flowers.)/%"@19084
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[737]
pushbltn.v builtin.room
pushi.e 81
cmp.i.v EQ
bf [774]

:[738]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [740]

:[739]
push.v self.x
pushi.e 200
cmp.i.v LT
b [741]

:[740]
push.e 0

:[741]
bf [743]

:[742]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1837_0"@19085
conv.s.v
push.s "* It's a wardrobe full of all sorts of different clothes./"@19086
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1838_0"@19087
conv.s.v
push.s "* You could wear whatever you want./%"@19088
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[743]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [745]

:[744]
push.v self.x
pushi.e 280
cmp.i.v LT
b [746]

:[745]
push.e 0

:[746]
bf [748]

:[747]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1845_0"@19089
conv.s.v
push.s "* It's a shelf./"@19090
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1846_0"@19091
conv.s.v
push.s "* All sorts of keepsakes could be put here./%"@19092
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[748]
push.v self.x
pushi.e 310
cmp.i.v GT
bf [750]

:[749]
push.v self.x
pushi.e 390
cmp.i.v LT
b [751]

:[750]
push.e 0

:[751]
bf [755]

:[752]
pushi.e -5
pushi.e 207
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [754]

:[753]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1855_0"@19093
conv.s.v
push.s "* It's a trash can./"@19094
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1857_0"@19095
conv.s.v
push.s "\\E3* Here^1, Kris^1! In case I make another manual.../"@19096
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1858_0"@19097
conv.s.v
push.s "\\E2* You can throw it directly in here!/%"@19098
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [755]

:[754]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1861_0"@19099
conv.s.v
push.s "* It's a stand for your Manual./"@19100
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1863_0"@19101
conv.s.v
push.s "\\E2* I thought you might want to keep it here in case you want to read it!/%"@19102
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[755]
push.v self.x
pushi.e 390
cmp.i.v GT
bf [758]

:[756]
push.v self.x
pushi.e 500
cmp.i.v LT
bf [758]

:[757]
push.v self.y
pushi.e 280
cmp.i.v LT
b [759]

:[758]
push.e 0

:[759]
bf [765]

:[760]
pushi.e -5
pushi.e 409
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [762]

:[761]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 409
pop.v.v [array]self.flag

:[762]
pushi.e -5
pushi.e 252
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [764]

:[763]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1875_0"@19103
conv.s.v
push.s "* It's a bed that's been carefully crafted./"@19104
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1876_0"@19105
conv.s.v
push.s "* It's suitable for a bed inspector./%"@19106
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [765]

:[764]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1880_0"@19107
conv.s.v
push.s "* It's your bed./"@19108
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1881_0"@19109
conv.s.v
push.s "* It feels incredibly soft. Like sleeping on a dream.../%"@19110
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[765]
push.v self.x
pushi.e 450
cmp.i.v GT
bf [767]

:[766]
push.v self.y
pushi.e 360
cmp.i.v GT
b [768]

:[767]
push.e 0

:[768]
bf [774]

:[769]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
pop.v.v local.haveSusie
pushloc.v local.haveSusie
conv.v.b
bf [771]

:[770]
push.s "/"@4448
conv.s.v
b [772]

:[771]
push.s "/%"@4449
conv.s.v

:[772]
pop.v.v local.sentenceEnd
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1921_0_b"@19111
conv.s.v
pushloc.v local.sentenceEnd
push.s "* It's some decorative moss. Looks delicious.~1"@19112
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushloc.v local.haveSusie
conv.v.b
bf [774]

:[773]
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1925_0_b"@19113
conv.s.v
push.s "\\EK* Why the hell does YOUR room get moss!?/%"@19114
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[774]
pushbltn.v builtin.room
pushi.e 82
cmp.i.v EQ
bf [799]

:[775]
push.v self.x
pushi.e 140
cmp.i.v GT
bf [777]

:[776]
push.v self.x
pushi.e 250
cmp.i.v LT
b [778]

:[777]
push.e 0

:[778]
bf [782]

:[779]
pushi.e -5
pushi.e 410
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [781]

:[780]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 410
pop.v.v [array]self.flag

:[781]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1896_0"@19115
conv.s.v
push.s "\\E2* Cool^1, spike bed./"@19116
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1897_0"@19117
conv.s.v
push.s "\\EA* Now I can stab myself during the night./"@19118
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1898_0"@19119
conv.s.v
push.s "\\E2* Finally some convenience./%"@19120
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[782]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [784]

:[783]
push.v self.x
pushi.e 315
cmp.i.v LT
b [785]

:[784]
push.e 0

:[785]
bf [789]

:[786]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [788]

:[787]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1907_0"@19121
conv.s.v
push.s "\\E7* Damn^1, there's everything in here!/"@19122
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1908_0"@19123
conv.s.v
push.s "* Pinecones^1, chalk^1, moss^1, jars of salsa^1,/"@19124
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1909_0"@19125
conv.s.v
push.s "* Pieces of ice^1, black crumbs from the toaster^1, jawbreakers.../"@19126
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1910_0"@19127
conv.s.v
push.s "\\E2* ..^1. Oh^1, and like actual food^1, too./%"@19128
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [789]

:[788]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1913_0"@19129
conv.s.v
push.s "\\E5* Hey Kris^1, stop eye-bogarting my snacks./%"@19130
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[789]
push.v self.x
pushi.e 340
cmp.i.v GT
bf [791]

:[790]
push.v self.x
pushi.e 430
cmp.i.v LT
b [792]

:[791]
push.e 0

:[792]
bf [794]

:[793]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1921_0"@19131
conv.s.v
push.s "\\E0* Susie^1, you didn't get to read the manual.../"@19132
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1922_0"@19133
conv.s.v
push.s "\\E2* So I put it over here for you./"@19134
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 21
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1924_0"@19135
conv.s.v
push.s "\\EL* Cool^1, I'll read it before bed./"@19136
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1925_0"@19137
conv.s.v
push.s "\\E2* That'll put me to sleep./%"@19138
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[794]
push.v self.x
pushi.e 430
cmp.i.v GT
bf [796]

:[795]
push.v self.x
pushi.e 500
cmp.i.v LT
b [797]

:[796]
push.e 0

:[797]
bf [799]

:[798]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1932_0"@19139
conv.s.v
push.s "* It's a clothes drawer full of spikey and dangerous clothing./"@19140
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1933_0"@19141
conv.s.v
push.s "* All the clothes are ripping each other up into shreds./"@19142
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1935_0"@19143
conv.s.v
push.s "\\E2* Hell yeah!!^1! Jealous^1, Kris!?/%"@19144
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[799]
pushbltn.v builtin.room
pushi.e 77
cmp.i.v EQ
bf [815]

:[800]
push.v self.x
pushi.e 350
cmp.i.v GT
bf [802]

:[801]
push.v self.x
pushi.e 450
cmp.i.v LT
b [803]

:[802]
push.e 0

:[803]
bf [805]

:[804]
push.s "obj_readable_room1_slash_Other_10_gml_1943_0"@19145
conv.s.v
push.s "* (2F : LIVING QUARTERS)/%"@19146
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[805]
push.v self.x
pushi.e 570
cmp.i.v GT
bf [807]

:[806]
push.v self.x
pushi.e 680
cmp.i.v LT
b [808]

:[807]
push.e 0

:[808]
bf [810]

:[809]
push.s "obj_readable_room1_slash_Other_10_gml_1948_0"@19147
conv.s.v
push.s "* (The door is locked.)/%"@18509
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[810]
push.v self.x
pushi.e 950
cmp.i.v GT
bf [812]

:[811]
push.v self.x
pushi.e 1050
cmp.i.v LT
b [813]

:[812]
push.e 0

:[813]
bf [815]

:[814]
push.s "obj_readable_room1_slash_Other_10_gml_1953_0"@19148
conv.s.v
push.s "* (BF : LIVING QUARTERS FOR BAD GUYS)/%"@19149
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[815]
pushbltn.v builtin.room
pushi.e 78
cmp.i.v EQ
bf [823]

:[816]
push.v self.x
pushi.e 1040
cmp.i.v GT
bf [818]

:[817]
push.v self.x
pushi.e 1150
cmp.i.v LT
b [819]

:[818]
push.e 0

:[819]
bf [823]

:[820]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [822]

:[821]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1964_0"@19150
conv.s.v
push.s "\\EA* Hey Ralsei^1, what's up here?/"@19151
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1966_0"@19152
conv.s.v
push.s "\\E2* Oh^1, just more rooms I'm renovating!/"@19153
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1968_0"@19154
conv.s.v
push.s "\\E2* ..^1. so is your room up there?/"@19155
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1970_0"@19156
conv.s.v
push.s "\\EQ* Er^1, yes^1! I still^1, um^1, haven't dusted it though.../"@19157
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1972_0"@19158
conv.s.v
push.s "\\E2* Yeah^1, like we need to see your nerdy glasses collection anyway./%"@19159
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [823]

:[822]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1976_0"@19160
conv.s.v
push.s "\\EG* Sorry^1, work in progress!/%"@19161
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[823]
pushbltn.v builtin.room
pushi.e 173
cmp.i.v EQ
bf [832]

:[824]
push.v self.y
pushi.e 170
cmp.i.v LT
bf [826]

:[825]
push.v self.visible
pushi.e 0
cmp.i.v EQ
b [827]

:[826]
push.e 0

:[827]
bf [831]

:[828]
pushi.e 1031
pushenv [830]

:[829]
pushi.e 1
pop.v.i self.con

:[830]
popenv [829]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2031_0"@19162
conv.s.v
push.s "* (A secret switch...!)/"@19163
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2032_0"@19164
conv.s.v
push.s "* (You heard something opening.)/%"@19165
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
pop.v.b self.selfdestruct
b [832]

:[831]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1989_0"@19166
conv.s.v
push.s "* I'm the hacker. I got the feeling there's a secret backdoor in this room..^1. but.../"@19167
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_1990_0"@19168
conv.s.v
push.s "* Where could it be...? Hmmmmmmmmm..../%"@19169
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[832]
pushbltn.v builtin.room
pushi.e 174
cmp.i.v EQ
bf [846]

:[833]
pushi.e -5
pushi.e 340
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [835]

:[834]
push.v self.read
pushi.e 0
cmp.i.v EQ
b [836]

:[835]
push.e 0

:[836]
bf [838]

:[837]
pushi.e 1
pop.v.i self.read

:[838]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [842]

:[839]
pushi.e 1032
pushenv [841]

:[840]
pushi.e 1
pop.v.i self.con

:[841]
popenv [840]
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 301
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.b self.skip
b [846]

:[842]
push.v self.read
pushi.e 20
cmp.i.v LT
bf [844]

:[843]
pushi.e 1
push.v self.read
pushi.e 10
conv.i.d
div.d.v
add.v.i
pushi.e 301
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
b [845]

:[844]
pushi.e 3
conv.i.v
pushi.e 301
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v

:[845]
pushi.e 1
pop.v.b self.skip

:[846]
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bf [861]

:[847]
push.v self.y
pushi.e 150
cmp.i.v GT
bf [849]

:[848]
push.v self.read
pushi.e 0
cmp.i.v EQ
b [850]

:[849]
push.e 0

:[850]
bf [854]

:[851]
pushi.e 1028
pushenv [853]

:[852]
pushi.e 1
pop.v.i self.southcon

:[853]
popenv [852]

:[854]
push.v self.y
pushi.e 370
cmp.i.v LT
bf [856]

:[855]
push.v self.read
pushi.e 0
cmp.i.v EQ
b [857]

:[856]
push.e 0

:[857]
bf [861]

:[858]
pushi.e 1028
pushenv [860]

:[859]
pushi.e 1
pop.v.i self.northcon

:[860]
popenv [859]

:[861]
pushbltn.v builtin.room
pushi.e 147
cmp.i.v EQ
bf [871]

:[862]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [868]

:[863]
pushi.e -5
pushi.e 369
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [865]

:[864]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2019_0"@19172
conv.s.v
push.s "\\EL* (S..^1. Susie...!^1! She's right there...!!)/"@19173
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2020_0"@19174
conv.s.v
push.s "\\E6* (But I..^1. I can't get the courage to say anything...)/"@19175
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2021_0"@19176
conv.s.v
push.s "\\E2* (...?)/"@19177
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2022_0"@19178
conv.s.v
push.s "\\E3* (Who's that person she's with^1, anyway...?)/"@19179
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2023_0"@19180
conv.s.v
push.s "\\E2* (It looks kind of like...)/"@19181
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2025_0"@19182
conv.s.v
push.s "\\EE* (Ahhh^1, they're looking over here^1! Let's go!!)/%"@19183
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 369
pop.v.v [array]self.flag
b [866]

:[865]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2030_0"@19184
conv.s.v
push.s "\\EE* (Let's get out of here!)/%"@19185
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[866]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 1
push.v self.mydialoguer
pushi.e -9
pop.v.i [stacktop]self.side
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
exit.i

:[867]
b [871]

:[868]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [870]

:[869]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2043_0"@19186
conv.s.v
push.s "\\EA* ..^1. hey Kris^1, ever think about using these cones?/"@19187
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2045_0"@19188
conv.s.v
push.s "\\EK* ..^1. using them?/"@19189
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "A"@1192
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2047_0"@19190
conv.s.v
push.s "\\EA* For ice cream./%"@19191
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [871]

:[870]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2051_0"@19192
conv.s.v
push.s "* (Just some cones of the non-ice-cream persuasion.)/%"@19193
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[871]
pushbltn.v builtin.room
pushi.e 149
cmp.i.v EQ
bf [886]

:[872]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2087_0"@19194
conv.s.v
push.s "* (It's a poster for Queen Clean brand cleaning agent.)/"@19195
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2088_0"@19196
conv.s.v
push.s "* (\"I Don't Know What This Does\")/%"@19197
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
pop.v.i self.hasNoelle
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [877]

:[873]
pushi.e 276
pushenv [876]

:[874]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [876]

:[875]
pushi.e 1
pop.v.i other.hasNoelle

:[876]
popenv [874]

:[877]
push.v self.hasNoelle
pushi.e 1
cmp.i.v EQ
bf [886]

:[878]
pushi.e -5
pushi.e 445
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [881]

:[879]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 445
pop.v.v [array]self.flag
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.5
cmp.d.v LT
bf [881]

:[880]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2071_0"@19199
conv.s.v
push.s "\\E5* (Queen..^1. She says she wants me to be happy^1, but...)/"@19200
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2072_0"@19201
conv.s.v
push.s "\\E3* (Why would I want to eat a casserole made of wires?)/"@19202
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2073_0"@19203
conv.s.v
push.s "\\EA* (And why can't I... Just... Refuse?)/"@19204
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2074_0"@19205
conv.s.v
push.s "\\E3* (Sometimes I feel like...)/"@19206
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2075_0"@19207
conv.s.v
push.s "\\E8* (Kris and Dad are the only ones I can say no to...)/%"@19208
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[881]
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.5
cmp.d.v GTE
bf [883]

:[882]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [884]

:[883]
push.e 0

:[884]
bf [886]

:[885]
push.s "B"@3500
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2093_0"@19209
conv.s.v
push.s "\\Ee* .../%"@19210
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[886]
pushbltn.v builtin.room
pushi.e 118
cmp.i.v EQ
bf [898]

:[887]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [897]

:[888]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [890]

:[889]
pushi.e -5
pushi.e 446
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [891]

:[890]
push.e 0

:[891]
pop.v.b local.haveNoelle
pushloc.v local.haveNoelle
conv.v.b
bf [893]

:[892]
push.s "/"@4448
conv.s.v
b [894]

:[893]
push.s "/%"@4449
conv.s.v

:[894]
pop.v.v local.sentenceEnd
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2101_0"@19211
conv.s.v
pushloc.v local.sentenceEnd
push.s "* (The door is locked.)~1"@19212
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushloc.v local.haveNoelle
conv.v.b
bf [896]

:[895]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 446
pop.v.v [array]self.flag
push.s "B"@3500
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2106_0"@19213
conv.s.v
push.s "\\EB* Kris...? Wh-why did you bring me here...?/"@19214
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2107_0"@19215
conv.s.v
push.s "\\E4* No one's home..^1. no^1, no one's around at all./"@19216
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2108_0"@19217
conv.s.v
push.s "\\E4* It's..^1. it's so creepy.../"@19218
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2109_0"@19219
conv.s.v
push.s "\\Ee* .../"@19220
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2110_0"@19221
conv.s.v
push.s "\\Ed* (At the same time^1, it's kind of nostalgic...)/%"@19222
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[896]
b [898]

:[897]
pushi.e 1081
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[898]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [905]

:[899]
push.v self.x
pushi.e 1050
cmp.i.v GT
bf [902]

:[900]
push.v self.x
pushi.e 1080
cmp.i.v LT
bf [902]

:[901]
push.v self.y
pushi.e 760
cmp.i.v GTE
b [903]

:[902]
push.e 0

:[903]
bf [905]

:[904]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2124_0"@19223
conv.s.v
push.s "* Mama Miba^1! Welcome to TOP Bakery!/"@19224
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2125_0"@19225
conv.s.v
push.s "* Our special chefs spin baked goods at the TOP of their class!/%"@19226
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[905]
pushbltn.v builtin.room
pushi.e 74
cmp.i.v EQ
bf [921]

:[906]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [908]

:[907]
push.v self.x
pushi.e 300
cmp.i.v LT
b [909]

:[908]
push.e 0

:[909]
bf [914]

:[910]
pushi.e 0
pop.v.i self.myinteract
pushi.e 103
pushenv [913]

:[911]
push.v self.sprite_index
pushi.e 1300
cmp.i.v EQ
bf [913]

:[912]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[913]
popenv [911]
exit.i

:[914]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [916]

:[915]
push.v self.x
pushi.e 400
cmp.i.v LT
b [917]

:[916]
push.e 0

:[917]
bf [921]

:[918]
pushi.e 0
pop.v.i self.myinteract
pushi.e 86
pushenv [920]

:[919]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[920]
popenv [919]
exit.i

:[921]
pushbltn.v builtin.room
pushi.e 68
cmp.i.v EQ
bf [930]

:[922]
push.v self.sprite_index
pushi.e 1672
cmp.i.v EQ
bf [924]

:[923]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2160_0"@19227
conv.s.v
push.s "* (Seems like it's gone stray without its master...)/%"@19228
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[924]
push.v self.sprite_index
pushi.e 1746
cmp.i.v EQ
bf [926]

:[925]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2165_0"@19229
conv.s.v
push.s "* (Squeak...)/%"@19230
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[926]
push.v self.sprite_index
pushi.e 1163
cmp.i.v EQ
bf [928]

:[927]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2170_0"@19231
conv.s.v
push.s "* TANJOUBY.../%"@19232
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[928]
push.v self.sprite_index
pushi.e 2141
cmp.i.v EQ
bf [930]

:[929]
pushi.e 1
pop.v.i self.skip
pushi.e 281
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[930]
pushbltn.v builtin.room
pushi.e 76
cmp.i.v EQ
bf [934]

:[931]
pushi.e -5
pushi.e 412
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [933]

:[932]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 412
pop.v.v [array]self.flag

:[933]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.i 231251
setowner.e
push.s "obj_readable_room1_slash_Other_10_gml_2177_0"@19233
conv.s.v
push.s "* (It's a bed for three people^1, or one three-headed person.)/%"@18555
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[934]
pushbltn.v builtin.room
pushi.e 188
cmp.i.v EQ
bf [956]

:[935]
push.v self.x
pushi.e 1400
cmp.i.v LT
bf [937]

:[936]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2185_0"@19234
conv.s.v
push.s "* There's nothing interesting./%"@19235
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [956]

:[937]
pushi.e 10
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
bf [939]

:[938]
pushi.e 110
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [940]

:[939]
push.e 0

:[940]
bf [942]

:[941]
pushi.e 1131
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[942]
pushi.e 10
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 1
cmp.i.v EQ
bf [944]

:[943]
pushi.e 11
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 0
cmp.i.v EQ
b [945]

:[944]
push.e 0

:[945]
bf [947]

:[946]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2199_0"@19236
conv.s.v
push.s "* (...)/%"@19237
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[947]
pushi.e 11
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
pushi.e 1
cmp.i.v EQ
bf [949]

:[948]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 8
cmp.i.v LT
b [950]

:[949]
push.e 0

:[950]
bf [952]

:[951]
pushi.e 1133
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[952]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 8
cmp.i.v EQ
bf [956]

:[953]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [955]

:[954]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2216_0"@19238
conv.s.v
push.s "* (You tapped the mechanism.)/"@19239
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2217_0"@19240
conv.s.v
push.s "* (..^1. Nothing happened.)/"@19241
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2218_0"@19242
conv.s.v
push.s "* (You shook the mechanism.)/"@19243
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2219_0"@19244
conv.s.v
push.s "* (You hit it.)/"@19245
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2220_0"@19246
conv.s.v
push.s "* (You kicked it.)/"@19247
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2221_0"@19248
conv.s.v
push.s "* (...)/"@1566
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2222_0"@19249
conv.s.v
push.s "* (Nothing happened.)/%"@5061
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [956]

:[955]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2227_0"@19250
conv.s.v
push.s "* (...)/%"@19237
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[956]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [960]

:[957]
pushi.e -5
pushi.e 330
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [959]

:[958]
push.s "obj_readable_room1_slash_Other_10_gml_2238_0"@19251
conv.s.v
push.s "* (Nothing happened.)/%"@5061
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [960]

:[959]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2244_0"@19252
conv.s.v
push.s "* (Click!)&* (You found a hidden switch!)/%"@19253
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 330
pop.v.v [array]self.flag

:[960]
pushbltn.v builtin.room
pushi.e 266
cmp.i.v EQ
bf [964]

:[961]
pushi.e -5
pushi.e 333
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [963]

:[962]
push.s "obj_readable_room1_slash_Other_10_gml_2254_0"@19254
conv.s.v
push.s "* (Nothing happened.)/%"@5061
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [964]

:[963]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2260_0"@19255
conv.s.v
push.s "* (Sounds like a forcefield powering down..^1. or something.)/%"@19256
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 333
pop.v.v [array]self.flag

:[964]
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bf [968]

:[965]
pushi.e -5
pushi.e 332
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [967]

:[966]
push.s "obj_readable_room1_slash_Other_10_gml_2269_0"@19257
conv.s.v
push.s "* (Nothing happened.)/%"@5061
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [968]

:[967]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 193
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2275_0"@19258
conv.s.v
push.s "* (Sounds like a forcefield powering down..^1. or something.)/%"@19256
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 332
pop.v.v [array]self.flag

:[968]
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [971]

:[969]
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [971]

:[970]
push.s "obj_readable_room1_slash_Other_10_gml_2284_0"@19259
conv.s.v
push.s "* (Nubert's gone.)/"@19260
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2285_0"@19261
conv.s.v
push.s "* (Looks like Nubert's screen is moving up in the world...)/%"@19262
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[971]
pushbltn.v builtin.room
pushi.e 103
cmp.i.v EQ
bf [975]

:[972]
pushi.e -5
pushi.e 367
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [974]

:[973]
push.s "obj_readable_room1_slash_Other_10_gml_2291_0"@19263
conv.s.v
push.s "* (It seems to be stuck.)/%"@19264
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [975]

:[974]
push.s "obj_readable_room1_slash_Other_10_gml_2367_0_b"@19265
conv.s.v
push.s "* (It seems to be stupid.)/%"@19266
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[975]
pushbltn.v builtin.room
pushi.e 182
cmp.i.v EQ
bf [977]

:[976]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2373_0"@19267
conv.s.v
push.s "* The door rattles but doesn't open./%"@19268
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[977]
pushbltn.v builtin.room
pushi.e 185
cmp.i.v EQ
bf [982]

:[978]
pushi.e -5
pushi.e 373
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [980]

:[979]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 373
pop.v.v [array]self.flag
pushi.e 45
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2303_0"@19269
conv.s.v
push.s "* (Sounds like a forcefield powering down.)/%"@19270
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [982]

:[980]
pushi.e -5
pushi.e 373
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [982]

:[981]
push.s "obj_readable_room1_slash_Other_10_gml_2307_0"@19271
conv.s.v
push.s "* (Nothing happened.)/%"@5061
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[982]
pushbltn.v builtin.room
pushi.e 54
cmp.i.v EQ
bf [1050]

:[983]
push.v self.x
pushi.e 40
cmp.i.v GT
bf [987]

:[984]
push.v self.x
pushi.e 60
cmp.i.v LT
bf [987]

:[985]
push.v self.y
pushi.e 40
cmp.i.v GT
bf [987]

:[986]
push.v self.y
pushi.e 50
cmp.i.v LT
b [988]

:[987]
push.e 0

:[988]
bf [990]

:[989]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2318_0"@19272
conv.s.v
push.s "* (The closet is spacious and full of old electronics.)/"@19273
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2319_0"@19274
conv.s.v
push.s "* (A large person could easily fit inside.)/%"@19275
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[990]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [994]

:[991]
push.v self.x
pushi.e 170
cmp.i.v LT
bf [994]

:[992]
push.v self.y
pushi.e 115
cmp.i.v GT
bf [994]

:[993]
push.v self.y
pushi.e 130
cmp.i.v LT
b [995]

:[994]
push.e 0

:[995]
bf [997]

:[996]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2326_0"@19276
conv.s.v
push.s "* (Looks like the library's state-of-the-art public laptop.)/"@19277
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2327_0"@19278
conv.s.v
push.s "* (Someone left it on.)/%"@19279
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[997]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [1001]

:[998]
push.v self.x
pushi.e 250
cmp.i.v LT
bf [1001]

:[999]
push.v self.y
pushi.e 40
cmp.i.v GT
bf [1001]

:[1000]
push.v self.y
pushi.e 50
cmp.i.v LT
b [1002]

:[1001]
push.e 0

:[1002]
bf [1004]

:[1003]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2334_0"@19280
conv.s.v
push.s "* (It's full of many backup devices^1, like extra mice^1, extra keyboards^1, or extra maracas.)/%"@19281
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1004]
push.v self.x
pushi.e 70
cmp.i.v GT
bf [1008]

:[1005]
push.v self.x
pushi.e 95
cmp.i.v LT
bf [1008]

:[1006]
push.v self.y
pushi.e 90
cmp.i.v GT
bf [1008]

:[1007]
push.v self.y
pushi.e 150
cmp.i.v LT
b [1009]

:[1008]
push.e 0

:[1009]
bf [1011]

:[1010]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2341_0"@19282
conv.s.v
push.s "* (It's a computer. The monitor is flickering brightly.)/%"@19283
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1011]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [1015]

:[1012]
push.v self.x
pushi.e 240
cmp.i.v LT
bf [1015]

:[1013]
push.v self.y
pushi.e 100
cmp.i.v GT
bf [1015]

:[1014]
push.v self.y
pushi.e 110
cmp.i.v LT
b [1016]

:[1015]
push.e 0

:[1016]
bf [1018]

:[1017]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2348_0"@19284
conv.s.v
push.s "* (It's a computer.)/"@18478
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2349_0"@19285
conv.s.v
push.s "* (A dolphin screensaver is advertising some kind of malware.)/%"@19286
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1018]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [1022]

:[1019]
push.v self.x
pushi.e 240
cmp.i.v LT
bf [1022]

:[1020]
push.v self.y
pushi.e 120
cmp.i.v GT
bf [1022]

:[1021]
push.v self.y
pushi.e 140
cmp.i.v LT
b [1023]

:[1022]
push.e 0

:[1023]
bf [1027]

:[1024]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v LT
bf [1026]

:[1025]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2360_0"@19287
conv.s.v
push.s "* (It's a computer.)/"@18478
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2361_0"@19288
conv.s.v
push.s "* (Someone tried to check their email^1, but the Internet is down.)/%"@19289
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [1027]

:[1026]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2366_0"@19290
conv.s.v
push.s "* (It's a computer.)/"@18478
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2367_0"@19291
conv.s.v
push.s "* (... It's nothing but a blue screen. Looks like it crashed.)/%"@19292
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1027]
push.v self.x
pushi.e 120
cmp.i.v GT
bf [1031]

:[1028]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [1031]

:[1029]
push.v self.y
pushi.e 25
cmp.i.v GT
bf [1031]

:[1030]
push.v self.y
pushi.e 40
cmp.i.v LT
b [1032]

:[1031]
push.e 0

:[1032]
bf [1036]

:[1033]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [1035]

:[1034]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2377_0"@19293
conv.s.v
push.s "* (Various posters talking about Internet safety.)/%"@19294
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [1036]

:[1035]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2381_0"@19295
conv.s.v
push.s "* (You suddenly thought about how your day might have been different...)/"@19296
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2382_0"@19297
conv.s.v
push.s "* (..^1. If the poster with that orange cat was still on the wall.)/%"@19298
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1036]
push.v self.x
pushi.e 30
cmp.i.v GT
bf [1040]

:[1037]
push.v self.x
pushi.e 40
cmp.i.v LT
bf [1040]

:[1038]
push.v self.y
pushi.e 170
cmp.i.v GT
bf [1040]

:[1039]
push.v self.x
pushi.e 190
cmp.i.v LT
b [1041]

:[1040]
push.e 0

:[1041]
bf [1043]

:[1042]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2390_0"@19299
conv.s.v
push.s "* (It's a trashcan. You get the feeling it doesn't have any friends.)/"@19300
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2391_0"@19301
conv.s.v
push.s "* (It's hard to explain why you feel this way about a trashcan.)/%"@19302
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1043]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [1047]

:[1044]
push.v self.x
pushi.e 250
cmp.i.v LT
bf [1047]

:[1045]
push.v self.y
pushi.e 170
cmp.i.v GT
bf [1047]

:[1046]
push.v self.y
pushi.e 190
cmp.i.v LT
b [1048]

:[1047]
push.e 0

:[1048]
bf [1050]

:[1049]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2398_0"@19303
conv.s.v
push.s "* (It's a recycling bin.)/"@19304
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2399_0"@19305
conv.s.v
push.s "* (Looks like someone accidentally printed off a lot of useless emails.)/%"@19306
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1050]
pushbltn.v builtin.room
pushi.e 222
cmp.i.v EQ
bf [1052]

:[1051]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2406_0"@19307
conv.s.v
push.s "* Please respect the pottery./%"@19308
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1052]
pushbltn.v builtin.room
pushi.e 162
cmp.i.v EQ
bf [1054]

:[1053]
pushi.e 1189
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[1054]
pushbltn.v builtin.room
pushi.e 55
cmp.i.v EQ
bf [1065]

:[1055]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [1057]

:[1056]
push.v self.x
pushi.e 250
cmp.i.v LT
b [1058]

:[1057]
push.e 0

:[1058]
bf [1060]

:[1059]
pushi.e 1149
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[1060]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [1062]

:[1061]
push.v self.x
pushi.e 215
cmp.i.v LT
b [1063]

:[1062]
push.e 0

:[1063]
bf [1065]

:[1064]
pushi.e 1151
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[1065]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [1096]

:[1066]
push.v self.extflag
push.s "ferris"@14151
cmp.s.v EQ
bf [1083]

:[1067]
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1071]

:[1068]
pushi.e 276
pushenv [1070]

:[1069]
push.v self.usprite
pop.v.v self.sprite_index

:[1070]
popenv [1069]

:[1071]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2484_0"@19309
conv.s.v
push.s "* (It's an advertisement for a giant ferris wheel.)/%"@19310
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [1083]

:[1072]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [1075]

:[1073]
pushi.e -5
pushi.e 319
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bf [1075]

:[1074]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
b [1076]

:[1075]
push.e 0

:[1076]
bf [1078]

:[1077]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2492_0"@19311
conv.s.v
push.s "* (It's an advertisement for a giant ferris wheel.)/"@5711
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "1"@9475
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2494_0"@19312
conv.s.v
push.s "\\E1* (Susie is surely thinking of her ride with Noelle...)/"@19313
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2496_0"@19314
conv.s.v
push.s "\\EK* (The hell is a ferris^1, anyway?)/"@19315
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2497_0"@19316
conv.s.v
push.s "\\EC* (Some kind of tank with giant wheels?)/%"@19317
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [1083]

:[1078]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [1080]

:[1079]
pushi.e -5
pushi.e 440
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [1081]

:[1080]
push.e 0

:[1081]
bf [1083]

:[1082]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 440
pop.v.v [array]self.flag
pushi.e 1191
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[1083]
push.v self.extflag
push.s "weird"@14299
cmp.s.v EQ
bf [1096]

:[1084]
push.v self.read
pushi.e 4
cmp.i.v LT
bf [1095]

:[1085]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [1087]

:[1086]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2512_0"@19318
conv.s.v
push.s "\\Ec* (Why are they..^1. staring into my eyes like that?)/%"@19319
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1087]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bt [1089]

:[1088]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
b [1090]

:[1089]
push.e 1

:[1090]
bf [1092]

:[1091]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2517_0"@19320
conv.s.v
push.s "\\Ec* (What are they looking at?)/%"@19321
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1092]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [1094]

:[1093]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2522_0"@19322
conv.s.v
push.s "\\Ec* (I..^1. I can't see what they're doing^1, but...)/"@19323
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2523_0"@19324
conv.s.v
push.s "\\Ec* (Aren't they staring at me...?)/%"@19325
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1094]
b [1096]

:[1095]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2529_0"@19326
conv.s.v
push.s "\\Ec* (Why don't they step on the switch...?)/%"@19327
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1096]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [1097]

:[1097]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [1100]

:[1098]
push.v self.extflag
push.s "shortcut"@14188
cmp.s.v EQ
bf [1100]

:[1099]
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2545_0"@19328
conv.s.v
push.s "* Left: Shortcut to 1F/%"@19329
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1100]
pushbltn.v builtin.room
pushi.e 198
cmp.i.v EQ
bf [1102]

:[1101]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2553_0"@19330
conv.s.v
push.s "* (It's a video of someone creating a strange pillar of smoke.)/"@19331
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2554_0"@19332
conv.s.v
push.s "* (There's so much smoke^1, it's hard to tell who it is.)/%"@19333
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1102]
pushbltn.v builtin.room
pushi.e 152
cmp.i.v EQ
bf [1122]

:[1103]
push.v self.x
pushi.e 150
cmp.i.v LT
bf [1121]

:[1104]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v EQ
bf [1119]

:[1105]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
pop.v.v local.haveSusie
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
pop.v.v local.haveNoelle
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [1107]

:[1106]
pushi.e -5
pushi.e 920
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [1108]

:[1107]
push.e 0

:[1108]
bf [1114]

:[1109]
pushi.e 106
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1113]

:[1110]
pushi.e 106
pushenv [1112]

:[1111]
pushi.e 1
pop.v.i self.moss_con

:[1112]
popenv [1111]
exit.i

:[1113]
b [1118]

:[1114]
pushloc.v local.haveNoelle
conv.v.b
bf [1116]

:[1115]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2578_0"@19334
conv.s.v
push.s "\\E4* (I guess marimos and stuff are kind of cute...?)/"@19335
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2579_0"@19336
conv.s.v
push.s "\\E8* (..^1. What the heck am I saying?)/%"@19337
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1116]
pushloc.v local.haveSusie
conv.v.b
bf [1118]

:[1117]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2585_0"@19338
conv.s.v
push.s "* (Moss. There's not enough to eat.)/%"@19339
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1118]
b [1120]

:[1119]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2591_0"@19340
conv.s.v
push.s "* (It's some moss...)/%"@19341
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1120]
b [1122]

:[1121]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2596_0"@19342
conv.s.v
push.s "* (The room between..^1. There is a room between.)/%"@19343
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1122]
pushbltn.v builtin.room
pushi.e 151
cmp.i.v EQ
bf [1126]

:[1123]
pushi.e -5
pushi.e 917
push.v [array]self.flag
pushi.e 3
cmp.i.v LT
bf [1125]

:[1124]
pushi.e 1173
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [1126]

:[1125]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2609_0"@19344
conv.s.v
push.s "* Well^1, there was not a man here./%"@5574
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1126]
pushbltn.v builtin.room
pushi.e 140
cmp.i.v EQ
bf [1135]

:[1127]
push.v self.x
pushi.e 110
cmp.i.v GT
bf [1129]

:[1128]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2618_0"@19345
conv.s.v
push.s "* (Buy Queen Clean^1! The most popular cleaning flavors!)/%"@19346
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1129]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [1131]

:[1130]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2624_0"@19347
conv.s.v
push.s "* (Queen Clean^1! Made of 100`% acid!)/%"@19348
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1131]
push.v self.x
pushi.e 750
cmp.i.v GT
bf [1135]

:[1132]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [1134]

:[1133]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2632_0"@19349
conv.s.v
push.s "* (The poster is torn^1, revealing a faded one underneath.)/"@19350
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2633_0"@19351
conv.s.v
push.s "* BIG SHOT AUTOS^1! TAKE A RIDE AROUND TOWN IN OUR SPECIAL/"@19352
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2634_0"@19353
conv.s.v
push.s "* (The rest is cut off.)/%"@19354
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [1135]

:[1134]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2638_0"@19355
conv.s.v
push.s "* (It's a torn poster.)/%"@19356
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1135]
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [1152]

:[1136]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.x
pushi.e 320
cmp.i.v EQ
bf [1138]

:[1137]
push.v self.y
pushi.e 180
cmp.i.v EQ
b [1139]

:[1138]
push.e 0

:[1139]
bf [1143]

:[1140]
pushglb.v global.plot
pushi.e 72
cmp.i.v LT
bf [1142]

:[1141]
push.s "obj_readable_room1_slash_Other_10_gml_2665_0"@19357
conv.s.v
push.s "* (It's a hole for mice to enter into.)/%"@19358
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [1143]

:[1142]
push.s "obj_readable_room1_slash_Other_10_gml_2670_0"@19359
conv.s.v
push.s "* (There are mice inside scampering pleasingly.)/%"@19360
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1143]
push.v self.x
pushi.e 254
cmp.i.v EQ
bf [1145]

:[1144]
push.v self.y
pushi.e 151
cmp.i.v EQ
b [1146]

:[1145]
push.e 0

:[1146]
bf [1148]

:[1147]
push.s "obj_readable_room1_slash_Other_10_gml_2633_0_b"@19361
conv.s.v
push.s "* (Mice will rotate 90 degrees when they collide with the block.)/"@19362
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2634_0_b"@19363
conv.s.v
push.s "* (Citizens must push blocks to get mice in the holes. Use the bell to reset.)/%"@19364
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1148]
push.v self.x
pushi.e 200
cmp.i.v EQ
bf [1152]

:[1149]
pushglb.v global.plot
pushi.e 72
cmp.i.v LT
bf [1151]

:[1150]
push.s "obj_readable_room1_slash_Other_10_gml_2651_0"@19365
conv.s.v
push.s "* (It's a hole for mice to come from.)/%"@19366
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [1152]

:[1151]
push.s "obj_readable_room1_slash_Other_10_gml_2656_0"@19367
conv.s.v
push.s "* (The hole is empty.)/%"@19368
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1152]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [1169]

:[1153]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.x
pushi.e 758
cmp.i.v EQ
bf [1155]

:[1154]
push.s "obj_readable_room1_slash_Other_10_gml_2640_0"@19369
conv.s.v
push.s "* (It's a citizen's duty to properly rotate and release mice using the traffic signs.)/"@19370
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2641_0"@19371
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 1
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 3
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
pushi.e 4
conv.i.v
call.i gml_Script_scr_get_input_name(argc=1)
push.s "* ~1: Engage and Disengage.&* ~2 ~3: Rotate.&* ~4: Release./%"@19372
conv.s.v
call.i gml_Script_msgnextsubloc(argc=6)
popz.v
b [1169]

:[1155]
push.v self.x
pushi.e 524
cmp.i.v EQ
bf [1163]

:[1156]
pushglb.v global.plot
pushi.e 77
cmp.i.v LT
bt [1158]

:[1157]
pushi.e 287
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [1159]

:[1158]
push.e 1

:[1159]
bf [1161]

:[1160]
push.s "obj_readable_room1_slash_Other_10_gml_2651_0"@19365
conv.s.v
push.s "* (It's a hole for mice to come from.)/%"@19366
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [1162]

:[1161]
push.s "obj_readable_room1_slash_Other_10_gml_2656_0"@19367
conv.s.v
push.s "* (The hole is empty.)/%"@19368
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1162]
b [1169]

:[1163]
push.v self.x
pushi.e 684
cmp.i.v EQ
bf [1168]

:[1164]
pushi.e -5
pushi.e 368
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [1166]

:[1165]
push.s "obj_readable_room1_slash_Other_10_gml_2665_0"@19357
conv.s.v
push.s "* (It's a hole for mice to enter into.)/%"@19358
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [1167]

:[1166]
push.s "obj_readable_room1_slash_Other_10_gml_2670_0"@19359
conv.s.v
push.s "* (There are mice inside scampering pleasingly.)/%"@19360
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1167]
b [1169]

:[1168]
pushi.e 1
pop.v.i self.skip

:[1169]
pushbltn.v builtin.room
pushi.e 216
cmp.i.v EQ
bf [1175]

:[1170]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [1174]

:[1171]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2681_0"@19373
conv.s.v
push.s "\\E0* It's locked.../"@19374
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2682_0"@19375
conv.s.v
push.s "\\E1* What's with this giant empty room anyway!?/%"@19376
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1196
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [1173]

:[1172]
pushi.e 1
pop.v.i 1196.con

:[1173]
b [1175]

:[1174]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2688_0"@19377
conv.s.v
push.s "* (The door is locked.)/%"@18509
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1175]
pushbltn.v builtin.room
pushi.e 163
cmp.i.v EQ
bf [1179]

:[1176]
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
bf [1178]

:[1177]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2698_0"@19378
conv.s.v
push.s "* (These Darkbulbs will cast a bright shadow on the ground.)/"@19379
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2699_0"@19380
conv.s.v
push.s "* (Fill in the space with dark to unlock the way.)/%"@19381
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [1179]

:[1178]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2703_0"@19382
conv.s.v
push.s "* (The other 2 puzzle rooms have been removed unceremoniously by a giant hand.)/"@19383
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2704_0"@19384
conv.s.v
push.s "* (We ask our guests for their understanding and kinda hope they weren't in there.)/%"@19385
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1179]
pushbltn.v builtin.room
pushi.e 164
cmp.i.v EQ
bf [1181]

:[1180]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2711_0"@19386
conv.s.v
push.s "* (This puzzle is for staff only^1! Guests^1, please head back to your rooms.)/%"@19387
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1181]
pushbltn.v builtin.room
pushi.e 165
cmp.i.v EQ
bf [1183]

:[1182]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2717_0"@19388
conv.s.v
push.s "* (Staff^1! If you're stuck^1, please don't call for help.)/"@19389
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2718_0"@19390
conv.s.v
push.s "* (No one can hear you. Not in this beloved death trap of a mansion...)/%"@19391
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1183]
pushbltn.v builtin.room
pushi.e 218
cmp.i.v EQ
bf [1185]

:[1184]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2724_0"@19392
conv.s.v
push.s "* (The supreme table.)/"@19393
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2725_0"@19394
conv.s.v
push.s "* (You won't be able to use this without the \\cYThrone of the Gods\\cW...)/%"@19395
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1185]
pushbltn.v builtin.room
pushi.e 211
cmp.i.v EQ
bf [1211]

:[1186]
push.v self.x
pushi.e 230
cmp.i.v GT
bf [1188]

:[1187]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2734_0"@19396
conv.s.v
push.s "* (There are all sorts of clothes inside.)/"@19397
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2736_0"@19398
conv.s.v
push.s "\\E0* (..^1. huh^1, never seen Noelle wear anything like this...?)/%"@19399
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1188]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [1190]

:[1189]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2743_0"@19400
conv.s.v
push.s "* (There are catalogues of search results.)/"@19401
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2744_0"@19402
conv.s.v
push.s "* (Seems like most things couldn't be made into objects...)/%"@19403
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1190]
push.v self.x
pushi.e 430
cmp.i.v GT
bf [1192]

:[1191]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2751_0"@19404
conv.s.v
push.s "* (It's a calendar.)/"@19405
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2752_0"@19406
conv.s.v
push.s "* (Every page is the last month^1, every day is the twenty-fifth.)/%"@19407
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1192]
push.v self.x
pushi.e 570
cmp.i.v GT
bf [1209]

:[1193]
pushi.e -5
pushi.e 413
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [1195]

:[1194]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 413
pop.v.v [array]self.flag

:[1195]
pushi.e -5
pushi.e 409
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [1200]

:[1196]
pushi.e -5
pushi.e 410
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [1200]

:[1197]
pushi.e -5
pushi.e 411
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [1200]

:[1198]
pushi.e -5
pushi.e 412
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [1200]

:[1199]
pushi.e -5
pushi.e 413
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [1201]

:[1200]
push.e 0

:[1201]
pop.v.b local.inspected_all
pushi.e -5
pushi.e 252
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [1203]

:[1202]
pushloc.v local.inspected_all
conv.v.b
b [1204]

:[1203]
push.e 0

:[1204]
bf [1208]

:[1205]
pushi.e -5
pushi.e 414
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [1207]

:[1206]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 414
pop.v.v [array]self.flag

:[1207]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2768_0"@19409
conv.s.v
push.s "* (Noelle's bed.)/"@19410
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2769_0"@19411
conv.s.v
push.s "* (You retained the title of Bed Inspector.)/"@19412
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2771_0"@19413
conv.s.v
push.s "\\EK* (What the hell are you doing?)/%"@19414
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [1209]

:[1208]
pushi.e 1195
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[1209]
push.v self.x
pushi.e 820
cmp.i.v GT
bf [1211]

:[1210]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2783_0"@19415
conv.s.v
push.s "* (It's a wardrobe.)/%"@19416
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1211]
pushbltn.v builtin.room
pushi.e 172
cmp.i.v EQ
bf [1214]

:[1212]
push.v self.extflag
push.s "trafficjam"@14182
cmp.s.v EQ
bf [1214]

:[1213]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2792_0"@19417
conv.s.v
push.s "* (Seems like a mouse-induced traffic jam.)/%"@19418
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1214]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [1216]

:[1215]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2837_0"@19419
conv.s.v
push.s "* Welcome to Cyber City^1! Pedestrians need to press the switch to cross traffic!/%"@19420
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1216]
pushbltn.v builtin.room
pushi.e 142
cmp.i.v EQ
bf [1227]

:[1217]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2862_0"@19421
conv.s.v
push.s "* (It's a ball throwing game. Prizes are seated under the counter.)/%"@19422
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.v self.x
pushi.e 1300
cmp.i.v GTE
bf [1219]

:[1218]
push.v self.x
pushi.e 1450
cmp.i.v LT
b [1220]

:[1219]
push.e 0

:[1220]
bf [1227]

:[1221]
push.s "obj_readable_room1_slash_Other_10_gml_2865_0"@19423
conv.s.v
push.s "* (It's a ball throwing game.)/%"@19424
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushglb.v global.plot
pushi.e 95
cmp.i.v EQ
bf [1224]

:[1222]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [1224]

:[1223]
push.v self.read
pushi.e 0
cmp.i.v EQ
b [1225]

:[1224]
push.e 0

:[1225]
bf [1227]

:[1226]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2869_0"@19425
conv.s.v
push.s "\\E0* ..^1. Hey^1, Noelle. One thing we gotta get straight./"@19426
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 21
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2871_0"@19427
conv.s.v
push.s "\\EL* Y-y-y-yes?/"@19428
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 34
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2873_0"@19429
conv.s.v
push.s "\\EY* Where the hell'd you put that cool box?/"@19430
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 24
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2875_0"@19431
conv.s.v
push.s "\\EO* Umm^1, I..^1. I just sort of..^1. I.../"@19432
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 10
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2877_0"@19433
conv.s.v
push.s "\\EA* Whatever. Just make us another one./"@19434
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 22
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2879_0"@19435
conv.s.v
push.s "\\EM* ..^1. um..^1. o-okay^1, sure!/%"@19436
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1227]
pushbltn.v builtin.room
pushi.e 212
cmp.i.v EQ
bf [1230]

:[1228]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2843_0"@19437
conv.s.v
push.s "* (This castle looks like it has worn many seiges...)/%"@19438
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 240
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [1230]

:[1229]
push.s "obj_readable_room1_slash_Other_10_gml_2890_0"@19439
conv.s.v
push.s "* (It seems that peace has returned to the castle...)/%"@19440
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1230]
pushbltn.v builtin.room
pushi.e 75
cmp.i.v EQ
bf [1232]

:[1231]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2897_0"@19441
conv.s.v
push.s "* (The jukebox is broken.)&* (Feels like you might never find a working one...)/%"@19442
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1232]
pushbltn.v builtin.room
pushi.e 146
cmp.i.v EQ
bf [1234]

:[1233]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2904_0"@19443
conv.s.v
push.s "* (It's closed.)/%"@19444
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1234]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [1253]

:[1235]
pushi.e -5
pushi.e 450
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [1247]

:[1236]
pushi.e 1
pop.v.b local.have_noelle
pushi.e 276
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1241]

:[1237]
pushi.e 276
pushenv [1240]

:[1238]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [1240]

:[1239]
push.v self.image_alpha
pushi.e 1
cmp.i.v EQ
pop.v.b local.have_noelle

:[1240]
popenv [1238]

:[1241]
pushloc.v local.have_noelle
conv.v.b
bf [1246]

:[1242]
push.v self.read
pushi.e 0
cmp.i.v EQ
bf [1244]

:[1243]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2912_0"@19446
conv.s.v
push.s "\\E2* Look Kris^1! Another teacup ride!/"@19447
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2913_0"@19448
conv.s.v
push.s "\\ED* But there's only 3 seats.../"@19449
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 27
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2915_0"@19450
conv.s.v
push.s "\\ER* (M-maybe two of us could..^1. sh-share one?)/"@19451
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2917_0"@19452
conv.s.v
push.s "\\EK* Damn^1, guess we gotta take the stairs./%"@19453
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [1245]

:[1244]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2922_0"@19454
conv.s.v
push.s "* (Deer and teacups..^1. a dangerous combination.)/%"@19455
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1245]
b [1247]

:[1246]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2970_0"@19456
conv.s.v
push.s "* (There doesn't seem to be a reason to ride this.)/%"@19457
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1247]
pushi.e -5
pushi.e 450
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [1251]

:[1248]
pushi.e 349
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [1250]

:[1249]
pushi.e -3
pop.v.i 349.rodeteacup

:[1250]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 450
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.read
exit.i

:[1251]
pushi.e -5
pushi.e 450
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [1253]

:[1252]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_2939_0"@19459
conv.s.v
push.s "\\EK* Hell no^1, like we're doing that again./%"@19460
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[1253]
pushbltn.v builtin.room
pushi.e 121
cmp.i.v EQ
bf [1257]

:[1254]
pushi.e 1
pop.v.i self.skip
push.v self.read
pushi.e 3
cmp.i.v GT
bf [1256]

:[1255]
push.d 1.6
conv.d.v
push.d 0.6
conv.d.v
call.i random_range(argc=2)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=8)
pushi.e 178
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
b [1257]

:[1256]
pushi.e 178
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1257]
pushbltn.v builtin.room
pushi.e 139
cmp.i.v EQ
bf [1259]

:[1258]
pushi.e 1
pop.v.i self.skip
pushi.e 282
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[1259]
pushbltn.v builtin.room
pushi.e 4
cmp.i.v EQ
bf [1261]

:[1260]
pushi.e 1232
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[1261]
pushbltn.v builtin.room
pushi.e 133
cmp.i.v EQ
bf [1263]

:[1262]
pushi.e 49
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_3015_0"@19461
conv.s.v
push.s "* (Knock^1, knock^1, knock)/"@19462
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_3016_0"@19463
conv.s.v
push.s "* You found the only knockable door in the city./"@19464
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_readable_room1_slash_Other_10_gml_3017_0"@19465
conv.s.v
push.s "* This here is my pride and joy.../%"@19466
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[1263]
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [1265]

:[1264]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[1265]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
push.v self.skip
pushi.e 1
cmp.i.v EQ
bf [end]

:[1266]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.skip

:[end]