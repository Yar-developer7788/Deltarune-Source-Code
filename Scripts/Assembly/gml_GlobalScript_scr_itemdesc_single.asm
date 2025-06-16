.localvar 2 arguments
.localvar 7922 healamount 1467

:[0]
b [77]

> gml_Script_scr_itemdesc_single (locals=1, argc=1)
:[1]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_1_0"@8300
conv.s.v
push.s "---"@8074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [36]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [37]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [38]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [39]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [42]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [43]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [44]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [45]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [49]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [50]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [51]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [52]

:[13]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [53]

:[14]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [54]

:[15]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [55]

:[16]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [56]

:[17]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [57]

:[18]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [58]

:[19]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [59]

:[20]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [60]

:[21]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [61]

:[22]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [62]

:[23]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [63]

:[24]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [64]

:[25]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [65]

:[26]
dup.v 0
pushi.e 25
cmp.i.v EQ
bt [66]

:[27]
dup.v 0
pushi.e 26
cmp.i.v EQ
bt [67]

:[28]
dup.v 0
pushi.e 27
cmp.i.v EQ
bt [68]

:[29]
dup.v 0
pushi.e 28
cmp.i.v EQ
bt [69]

:[30]
dup.v 0
pushi.e 29
cmp.i.v EQ
bt [70]

:[31]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [71]

:[32]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [72]

:[33]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [73]

:[34]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [74]

:[35]
b [75]

:[36]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_5_0"@8302
conv.s.v
push.s "---"@8074
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[37]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_8_0"@8303
conv.s.v
push.s "Heals 40 HP. A red-and-black star#that tastes like marshmallows."@8304
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[38]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_11_0"@8305
conv.s.v
push.s "Heals a fallen ally to MAX HP.#A minty green crystal."@8306
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[39]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_14_0"@8307
conv.s.v
push.s "A shimmering shard.#Its use is unknown."@8308
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
pushglb.v global.chapter
pushi.e 2
cmp.i.v GTE
bf [41]

:[40]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_17_0_b"@8309
conv.s.v
push.s "A shimmering shard.#Its value increases each Chapter."@8310
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc

:[41]
b [75]

:[42]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_17_0"@8311
conv.s.v
push.s "Ralsei's handmade book full of#various tips and tricks."@8312
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[43]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_20_0"@8313
conv.s.v
push.s "Though broken, it seethes with power.#A master smith could fix it."@8086
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[44]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_23_0"@8314
conv.s.v
push.s "This cake will make your taste buds#spin! Heals 160 HP to the team."@8315
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[45]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 80
conv.i.v
b [48]

:[47]
pushi.e 140
conv.i.v

:[48]
pop.v.v local.healamount
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_27_0"@8316
conv.s.v
pushloc.v local.healamount
call.i string(argc=1)
push.s "A pastry in the shape of a top.#Heals ~1 HP to the team."@8317
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v self.__itemdesc
b [75]

:[49]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_30_0"@8318
conv.s.v
push.s "A mysterious black burger made of...#Hey, this is just burnt! +70HP"@8319
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[50]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_33_0"@8320
conv.s.v
push.s "A cookie shaped like Lancer's face.#Maybe not a cookie. Heals 1 HP?"@8321
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[51]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_36_0"@8322
conv.s.v
push.s "An enormous salad... but, it's just#lettuce, so it's worthless. +4HP"@8323
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[52]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_39_0"@8324
conv.s.v
push.s "A sandwich that can be split into 3.#Heals 70 HP to the team."@8325
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[53]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_42_0"@8326
conv.s.v
push.s "Hearts, don't it!? It's filled with#divisive, clotty red jam. +??HP"@8327
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[54]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_45_0"@8328
conv.s.v
push.s "It's quite small, but some#people REALLY like it. +??HP"@8329
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[55]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_48_0"@8330
conv.s.v
push.s "You'd think it tastes perfect.#Heals 500HP."@8331
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[56]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_51_0"@8332
conv.s.v
push.s "A dark roux with a delicate aroma.#Also... has worms in it. +50HP"@8333
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[57]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_54_0"@8334
conv.s.v
push.s "A bagel with a reflective inside.#Makes music with each bite. +80HP"@8335
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[58]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_57_0"@8336
conv.s.v
push.s "It's a mannequin with the clothes#permanently attached. Useless"@8337
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[59]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_60_0"@8338
conv.s.v
push.s "It's own-flavored tea.#The flavor just says \"Kris.\""@8339
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[60]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_63_0"@8340
conv.s.v
push.s "It's own-flavored tea.#The flavor just says \"Noelle.\""@8341
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[61]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_66_0"@8342
conv.s.v
push.s "It's own-flavored tea.#The flavor just says \"Ralsei.\""@8343
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[62]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_69_0"@8344
conv.s.v
push.s "It's own-flavored tea.#The flavor just says \"Susie.\""@8345
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[63]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_72_0"@8346
conv.s.v
push.s "It's the Double-Dark-Burger.#It'll take two bites to finish!"@8347
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[64]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_75_0"@8348
conv.s.v
push.s "White candy with a chalky texture.#It'll recover 120HP."@8349
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[65]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_78_0"@8350
conv.s.v
push.s "It's short for ButlerJuice.#It changes color with temperature."@8351
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[66]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_81_0"@8352
conv.s.v
push.s "Spaghetti woven by master coders, made#of macarons and ribbons. +30HP to all."@8353
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[67]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_84_0"@8354
conv.s.v
push.s "A coffee-and-chocolate flavored cookie.#Words spark out when you bite it."@8355
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[68]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_87_0"@8356
conv.s.v
push.s "Raises TP by 32% in battle."@8357
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[69]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_90_0"@8358
conv.s.v
push.s "Raises TP by 50% in battle."@8359
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[70]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_93_0"@8360
conv.s.v
push.s "Raises TP to full in battle."@8361
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[71]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_96_0"@8362
conv.s.v
push.s "A minty powder that revives all#fallen party members to 25% HP."@8363
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[72]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_99_0"@8364
conv.s.v
push.s "A breakable mint that revives all#fallen party members to 100% HP."@8365
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[73]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_102_0"@8366
conv.s.v
push.s "A strange concoction made of#colorful squares. Will poison you."@8367
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[74]
push.s "scr_itemdesc_single_slash_scr_itemdesc_single_gml_109_0"@8368
conv.s.v
push.s "A dollar with a certain dog on it.#Its value decreases each Chapter."@8369
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.__itemdesc
b [75]

:[75]
popz.v
push.v self.__itemdesc
ret.v

:[76]
exit.i

:[77]
push.i [function]gml_Script_scr_itemdesc_single
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemdesc_single
popz.v

:[end]