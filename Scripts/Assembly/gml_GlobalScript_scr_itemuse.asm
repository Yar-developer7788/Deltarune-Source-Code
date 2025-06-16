.localvar 2 arguments
.localvar 8582 heal_amount 1480

:[0]
b [323]

> gml_Script_scr_itemuse (locals=1, argc=1)
:[1]
push.v arg.argument0
pop.v.v self.w
pushi.e 0
pop.v.i self.usable
pushi.e 0
pop.v.i self.replaceable
pushglb.v global.charselect
pushi.e 3
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pop.v.v self._gc

:[3]
pushi.e -1
pop.v.i self.suspos
pushi.e -1
pop.v.i self.ralpos
pushi.e -1
pop.v.i self.noepos
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [12]

:[5]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
push.v self.i
pop.v.v self.suspos

:[7]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
push.v self.i
pop.v.v self.ralpos

:[9]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
push.v self.i
pop.v.v self.noepos

:[11]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[12]
push.v arg.argument0
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [51]

:[13]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [52]

:[14]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [61]

:[15]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [74]

:[16]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [77]

:[17]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [78]

:[18]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [85]

:[19]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [96]

:[20]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [103]

:[21]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [110]

:[22]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [117]

:[23]
dup.v 0
pushi.e 12
cmp.i.v EQ
bt [124]

:[24]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [133]

:[25]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [142]

:[26]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [149]

:[27]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [156]

:[28]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [165]

:[29]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [166]

:[30]
dup.v 0
pushi.e 19
cmp.i.v EQ
bt [180]

:[31]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [195]

:[32]
dup.v 0
pushi.e 21
cmp.i.v EQ
bt [208]

:[33]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [221]

:[34]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [228]

:[35]
dup.v 0
pushi.e 24
cmp.i.v EQ
bt [235]

:[36]
dup.v 0
pushi.e 25
cmp.i.v EQ
bt [242]

:[37]
dup.v 0
pushi.e 26
cmp.i.v EQ
bt [249]

:[38]
dup.v 0
pushi.e 27
cmp.i.v EQ
bt [258]

:[39]
dup.v 0
pushi.e 28
cmp.i.v EQ
bt [259]

:[40]
dup.v 0
pushi.e 29
cmp.i.v EQ
bt [260]

:[41]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [261]

:[42]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [268]

:[43]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [275]

:[44]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [284]

:[45]
dup.v 0
pushi.e 300
cmp.i.v EQ
bt [285]

:[46]
dup.v 0
pushi.e 301
cmp.i.v EQ
bt [286]

:[47]
dup.v 0
pushi.e 302
cmp.i.v EQ
bt [289]

:[48]
dup.v 0
pushi.e 308
cmp.i.v EQ
bt [290]

:[49]
dup.v 0
pushi.e 313
cmp.i.v EQ
bt [313]

:[50]
b [322]

:[51]
push.s " "@353
pop.v.s self.itemnameb
push.s "---"@8074
pop.v.s self.itemdescb
b [322]

:[52]
pushi.e 40
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
push.v self._gc
pushi.e 2
cmp.i.v EQ
bf [54]

:[53]
push.s "scr_itemuse_slash_scr_itemuse_gml_31_0"@8413
conv.s.v
push.s "Yeahh!! That's good!"@8414
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[54]
push.v self._gc
pushi.e 3
cmp.i.v EQ
bf [58]

:[55]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [57]

:[56]
push.s "scr_itemuse_slash_scr_itemuse_gml_36_0"@8415
conv.s.v
push.s "Hey, feed ME!!!"@8416
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[57]
push.s "scr_itemuse_slash_scr_itemuse_gml_38_0"@8417
conv.s.v
push.s "Yummy!!! Marshmallows!!"@8418
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[58]
push.v self._gc
pushi.e 4
cmp.i.v EQ
bf [60]

:[59]
push.s "scr_itemuse_slash_scr_itemuse_gml_42_0"@8419
conv.s.v
push.s "Oh, it's... sticky?"@8420
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[60]
b [322]

:[61]
pushi.e -5
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
conv.v.i
push.v [array]self.maxhp
pushi.e 2
conv.i.d
div.d.v
call.i ceil(argc=1)
pop.v.v self.reviveamt
push.v self.reviveamt
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
push.v self._gc
pushi.e 2
cmp.i.v EQ
bf [66]

:[62]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [64]

:[63]
push.s "scr_itemuse_slash_scr_itemuse_gml_54_0"@8421
conv.s.v
push.s "I'm ALIVE!!!"@8422
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[64]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [66]

:[65]
push.s "scr_itemuse_slash_scr_itemuse_gml_55_0"@8423
conv.s.v
push.s "(You weren't dead)"@8424
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[66]
push.v self._gc
pushi.e 3
cmp.i.v EQ
bf [71]

:[67]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [69]

:[68]
push.s "scr_itemuse_slash_scr_itemuse_gml_60_0"@8425
conv.s.v
push.s "(Don't look it)"@8426
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[69]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [71]

:[70]
push.s "scr_itemuse_slash_scr_itemuse_gml_61_0"@8427
conv.s.v
push.s "Ah, I'm refreshed!"@8428
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[71]
push.v self._gc
pushi.e 4
cmp.i.v EQ
bf [73]

:[72]
push.s "scr_itemuse_slash_scr_itemuse_gml_65_0"@8429
conv.s.v
push.s "Mints? I love mints!"@8430
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[73]
b [322]

:[74]
pushi.e 6
pop.v.i global.interact
pushi.e 277
pushenv [76]

:[75]
pushi.e 0
pop.v.i self.charcon

:[76]
popenv [75]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
push.i 29460307
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_82_0"@8433
conv.s.v
push.s "* (You tried to read the manual^1, but it was so dense it made your head spin...)/%"@8434
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [322]

:[77]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
b [322]

:[78]
pushi.e 160
conv.i.v
call.i gml_Script_scr_healitem_all(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [80]

:[79]
push.s "scr_itemuse_slash_scr_itemuse_gml_94_0"@8435
conv.s.v
push.s "Mmm, seconds!"@8436
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[80]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [82]

:[81]
push.s "scr_itemuse_slash_scr_itemuse_gml_95_0"@8437
conv.s.v
push.s "Whoops."@8438
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[82]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [84]

:[83]
push.s "scr_itemuse_slash_scr_itemuse_gml_96_0"@8439
conv.s.v
push.s "Happy birthday! Haha!"@8440
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.noepos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[84]
pushi.e 1
pop.v.i self.usable
b [322]

:[85]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
pushi.e 80
conv.i.v
call.i gml_Script_scr_healitem_all(argc=1)
popz.v

:[87]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [89]

:[88]
pushi.e 140
conv.i.v
call.i gml_Script_scr_healitem_all(argc=1)
popz.v

:[89]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [91]

:[90]
push.s "scr_itemuse_slash_scr_itemuse_gml_110_0"@8441
conv.s.v
push.s "I'm dizzy."@8442
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[91]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [93]

:[92]
push.s "scr_itemuse_slash_scr_itemuse_gml_111_0"@8443
conv.s.v
push.s "Mmm, thank you!"@8444
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[93]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [95]

:[94]
push.s "scr_itemuse_slash_scr_itemuse_gml_112_0"@8445
conv.s.v
push.s "My eyes are spinning..."@8446
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.noepos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[95]
pushi.e 1
pop.v.i self.usable
b [322]

:[96]
pushi.e 70
pop.v.i self._healchoice
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [98]

:[97]
push.s "scr_itemuse_slash_scr_itemuse_gml_123_0"@8448
conv.s.v
push.s "Cooked to perfection!"@8449
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[98]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [100]

:[99]
push.s "scr_itemuse_slash_scr_itemuse_gml_127_0"@8450
conv.s.v
push.s "A bit burnt...?"@8451
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[100]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [102]

:[101]
pushi.e 20
pop.v.i self._healchoice
push.s "scr_itemuse_slash_scr_itemuse_gml_132_0"@8452
conv.s.v
push.s "I-is this real meat...?"@8453
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[102]
push.v self._healchoice
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
b [322]

:[103]
pushi.e 1
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [105]

:[104]
push.s "scr_itemuse_slash_scr_itemuse_gml_143_0"@8454
conv.s.v
push.s "Mmm... face"@8455
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[105]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [107]

:[106]
push.s "scr_itemuse_slash_scr_itemuse_gml_147_0"@8456
conv.s.v
push.s "(uncomfortable)"@8457
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[107]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [109]

:[108]
push.s "scr_itemuse_slash_scr_itemuse_gml_151_0"@8458
conv.s.v
push.s "Umm, what is this? It's cute..."@8459
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[109]
b [322]

:[110]
pushi.e 4
pop.v.i self._healchoice
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [112]

:[111]
push.s "scr_itemuse_slash_scr_itemuse_gml_161_0"@8460
conv.s.v
push.s "Why this!?"@8461
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[112]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [114]

:[113]
push.s "scr_itemuse_slash_scr_itemuse_gml_165_0"@8462
conv.s.v
push.s "Let's be healthy!"@8463
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[114]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [116]

:[115]
push.s "scr_itemuse_slash_scr_itemuse_gml_169_0"@8464
conv.s.v
push.s "Something to graze on!"@8465
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v
pushi.e 90
pop.v.i self._healchoice

:[116]
push.v self._healchoice
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
b [322]

:[117]
pushi.e 70
conv.i.v
call.i gml_Script_scr_healitem_all(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [119]

:[118]
push.s "scr_itemuse_slash_scr_itemuse_gml_177_0"@8466
conv.s.v
push.s "Quit hogging!"@8467
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[119]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [121]

:[120]
push.s "scr_itemuse_slash_scr_itemuse_gml_178_0"@8468
conv.s.v
push.s "(It's cut evenly...)"@8469
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[121]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [123]

:[122]
push.s "scr_itemuse_slash_scr_itemuse_gml_179_0"@8470
conv.s.v
push.s "(Kris took two thirds of it...)"@8471
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.noepos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[123]
pushi.e 1
pop.v.i self.usable
b [322]

:[124]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [126]

:[125]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v

:[126]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [128]

:[127]
pushi.e 80
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_193_0"@8472
conv.s.v
push.s "Mmm, blood!"@8473
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[128]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [130]

:[129]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_198_0"@8474
conv.s.v
push.s "Aah, sticky..."@8475
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[130]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [132]

:[131]
pushi.e 30
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_203_0"@8476
conv.s.v
push.s "Mmm... what!? It's blood!?"@8477
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[132]
b [322]

:[133]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [135]

:[134]
pushi.e 80
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v

:[135]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [137]

:[136]
pushi.e 20
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_217_0"@8478
conv.s.v
push.s "THAT'S it?"@8479
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[137]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [139]

:[138]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_222_0"@8480
conv.s.v
push.s "Aww, thanks, Kris!"@8481
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[139]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [141]

:[140]
pushi.e 35
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 35
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_229_0"@8482
conv.s.v
push.s "Umm, it's ok, Kris, I'll share..."@8483
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[141]
b [322]

:[142]
pushi.e 1
pop.v.i self.usable
pushi.e 500
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [144]

:[143]
push.s "scr_itemuse_slash_scr_itemuse_gml_239_0"@8484
conv.s.v
push.s "(It's SO good!)"@8485
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[144]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [146]

:[145]
push.s "scr_itemuse_slash_scr_itemuse_gml_243_0"@8486
conv.s.v
push.s "K-Kris!? I..."@8487
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[146]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [148]

:[147]
push.s "scr_itemuse_slash_scr_itemuse_gml_247_0"@8488
conv.s.v
push.s "(Huh? I didn't know Kris liked this flavor.)"@8489
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[148]
b [322]

:[149]
pushi.e 50
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [151]

:[150]
push.s "scr_itemuse_slash_scr_itemuse_gml_257_0"@8490
conv.s.v
push.s "Cool, it's wriggling."@8491
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[151]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [153]

:[152]
push.s "scr_itemuse_slash_scr_itemuse_gml_261_0"@8492
conv.s.v
push.s "Yum, is this spaghetti?"@8493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[153]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [155]

:[154]
push.s "scr_itemuse_slash_scr_itemuse_gml_265_0"@8494
conv.s.v
push.s "Tastes like... jumprope?"@8495
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[155]
b [322]

:[156]
pushi.e 80
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
push.v self._gc
pushi.e 1
cmp.i.v EQ
bf [158]

:[157]
pushi.e 88
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[158]
push.v self._gc
pushi.e 2
cmp.i.v EQ
bf [160]

:[159]
pushi.e 91
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_275_0"@8496
conv.s.v
push.s "It's got crunch."@8497
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[160]
push.v self._gc
pushi.e 3
cmp.i.v EQ
bf [162]

:[161]
pushi.e 90
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_279_0"@8498
conv.s.v
push.s "How elegant!"@8499
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[162]
push.v self._gc
pushi.e 4
cmp.i.v EQ
bf [164]

:[163]
pushi.e 89
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_283_0"@8500
conv.s.v
push.s "What a nice song..."@8501
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[164]
b [322]

:[165]
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_290_0"@8502
conv.s.v
push.s "* (The clothes are stuck to the doll...)/"@8503
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_291_0"@8504
conv.s.v
push.s "* (There's no way you can use this.)/%"@8505
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_scr_itemdialoguer(argc=0)
popz.v
b [322]

:[166]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
conv.i.v
call.i gml_Script_scr_teaamount(argc=2)
pop.v.v self._healamount
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [171]

:[167]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [169]

:[168]
push.s "scr_itemuse_slash_scr_itemuse_gml_303_0"@8508
conv.s.v
push.s "(No reaction?)"@8509
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[169]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [171]

:[170]
push.s "scr_itemuse_slash_scr_itemuse_gml_304_0"@8510
conv.s.v
push.s "(... no reaction?)"@8511
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.noepos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[171]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [174]

:[172]
push.s "scr_itemuse_slash_scr_itemuse_gml_309_0"@8512
conv.s.v
push.s "Hell yeah, apple juice!!"@8513
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [174]

:[173]
push.s "scr_itemuse_slash_scr_itemuse_gml_310_0"@8514
conv.s.v
push.s "Don't drink so fast!!"@8515
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[174]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [177]

:[175]
push.s "scr_itemuse_slash_scr_itemuse_gml_315_0"@8516
conv.s.v
push.s "Tastes like blueberries!"@8517
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [177]

:[176]
push.s "scr_itemuse_slash_scr_itemuse_gml_316_0"@8518
conv.s.v
push.s "Huh? Really?"@8519
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[177]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [179]

:[178]
push.s "scr_itemuse_slash_scr_itemuse_gml_320_0"@8520
conv.s.v
push.s "Tastes like cinnamon! (What is this aftertaste...?)"@8521
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[179]
push.v self._healamount
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
b [322]

:[180]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
conv.i.v
call.i gml_Script_scr_teaamount(argc=2)
pop.v.v self._healamount
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [187]

:[181]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [183]

:[182]
push.s "scr_itemuse_slash_scr_itemuse_gml_332_0"@8522
conv.s.v
push.s "(... do they like it?)"@8523
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[183]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [185]

:[184]
push.s "scr_itemuse_slash_scr_itemuse_gml_333_0"@8524
conv.s.v
push.s "(They're drinking it...)"@8525
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[185]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [187]

:[186]
push.s "scr_itemuse_slash_scr_itemuse_gml_334_0"@8526
conv.s.v
push.s "(Umm, do they like it or not...?)"@8527
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.noepos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[187]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [190]

:[188]
push.s "scr_itemuse_slash_scr_itemuse_gml_339_0"@8528
conv.s.v
push.s "Hell yeah, eggnog!!"@8529
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [190]

:[189]
push.s "scr_itemuse_slash_scr_itemuse_gml_340_0"@8530
conv.s.v
push.s "D-don't drink so fast!"@8531
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[190]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [192]

:[191]
push.s "scr_itemuse_slash_scr_itemuse_gml_345_0"@8532
conv.s.v
push.s "It's soft and sweet."@8533
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[192]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [194]

:[193]
push.s "scr_itemuse_slash_scr_itemuse_gml_349_0"@8534
conv.s.v
push.s "... this is just water! You're pranking me, right?!"@8535
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[194]
push.v self._healamount
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
b [322]

:[195]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
conv.i.v
call.i gml_Script_scr_teaamount(argc=2)
pop.v.v self._healamount
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [200]

:[196]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [198]

:[197]
push.s "scr_itemuse_slash_scr_itemuse_gml_361_0"@8536
conv.s.v
push.s "(No reaction?)"@8509
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[198]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [200]

:[199]
push.s "scr_itemuse_slash_scr_itemuse_gml_362_0"@8537
conv.s.v
push.s "(I'm happy!)"@8538
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[200]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [203]

:[201]
push.s "scr_itemuse_slash_scr_itemuse_gml_367_0"@8539
conv.s.v
push.s "Hey, it's like marshmallows!!"@8540
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [203]

:[202]
push.s "scr_itemuse_slash_scr_itemuse_gml_368_0"@8541
conv.s.v
push.s "D-don't drink so fast!"@8531
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[203]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [205]

:[204]
push.s "scr_itemuse_slash_scr_itemuse_gml_373_0"@8542
conv.s.v
push.s "Um... isn't this water?"@8543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[205]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [207]

:[206]
push.s "scr_itemuse_slash_scr_itemuse_gml_377_0"@8544
conv.s.v
push.s "There's nothing in here!"@8545
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[207]
push.v self._healamount
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
b [322]

:[208]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
conv.i.v
call.i gml_Script_scr_teaamount(argc=2)
pop.v.v self._healamount
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [213]

:[209]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [211]

:[210]
push.s "scr_itemuse_slash_scr_itemuse_gml_389_0"@8546
conv.s.v
push.s "STOP LOOKING AT ME!"@8547
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[211]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [213]

:[212]
push.s "scr_itemuse_slash_scr_itemuse_gml_390_0"@8548
conv.s.v
push.s "(They seem into it)"@8549
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[213]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [215]

:[214]
push.s "scr_itemuse_slash_scr_itemuse_gml_395_0"@8550
conv.s.v
push.s "... this is tea?"@8551
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[215]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [218]

:[216]
push.s "scr_itemuse_slash_scr_itemuse_gml_400_0"@8552
conv.s.v
push.s "It's grape juice!"@8553
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [218]

:[217]
push.s "scr_itemuse_slash_scr_itemuse_gml_401_0"@8554
conv.s.v
push.s "Huh, really?"@8555
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[218]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [220]

:[219]
push.s "scr_itemuse_slash_scr_itemuse_gml_405_0"@8556
conv.s.v
push.s "(Wonder if they sell this in gallons?)"@8557
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[220]
push.v self._healamount
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
b [322]

:[221]
pushi.e 60
pop.v.i self._healchoice
pushi.e 1
pop.v.i self.usable
pushi.e 8
pop.v.i self.replaceable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [223]

:[222]
push.s "scr_itemuse_slash_scr_itemuse_gml_418_0"@8558
conv.s.v
push.s "C'mon, gimme the rest!"@8559
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[223]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [225]

:[224]
push.s "scr_itemuse_slash_scr_itemuse_gml_422_0"@8560
conv.s.v
push.s "M-maybe give Susie the rest?"@8561
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[225]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [227]

:[226]
pushi.e 20
pop.v.i self._healchoice
push.s "scr_itemuse_slash_scr_itemuse_gml_427_0"@8562
conv.s.v
push.s "Th... there's MORE!?"@8563
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[227]
push.v self._healchoice
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
b [322]

:[228]
pushi.e 120
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [230]

:[229]
push.s "scr_itemuse_slash_scr_itemuse_gml_438_0"@8564
conv.s.v
push.s "Hey, this rules!"@8565
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[230]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [232]

:[231]
push.s "scr_itemuse_slash_scr_itemuse_gml_442_0"@8566
conv.s.v
push.s "Nice and chalky."@8567
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[232]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [234]

:[233]
push.s "scr_itemuse_slash_scr_itemuse_gml_446_0"@8568
conv.s.v
push.s "(I-isn't this the chalk I gave her?)"@8569
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[234]
b [322]

:[235]
pushi.e 100
conv.i.v
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [237]

:[236]
push.s "scr_itemuse_slash_scr_itemuse_gml_456_0"@8570
conv.s.v
push.s "Hell'd you call this!?"@8571
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[237]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [239]

:[238]
push.s "scr_itemuse_slash_scr_itemuse_gml_460_0"@8572
conv.s.v
push.s "I made this."@8573
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[239]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [241]

:[240]
push.s "scr_itemuse_slash_scr_itemuse_gml_464_0"@8574
conv.s.v
push.s "B-Brainfreeze! ... kidding!"@8575
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[241]
b [322]

:[242]
pushi.e 30
conv.i.v
call.i gml_Script_scr_healitem_all(argc=1)
popz.v
pushi.e 1
pop.v.i self.usable
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [244]

:[243]
push.s "scr_itemuse_slash_scr_itemuse_gml_472_0"@8576
conv.s.v
push.s "I'm NOT wearing it."@8577
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[244]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [246]

:[245]
push.s "scr_itemuse_slash_scr_itemuse_gml_473_0"@8578
conv.s.v
push.s "How sweet!"@8579
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[246]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [248]

:[247]
push.s "scr_itemuse_slash_scr_itemuse_gml_474_0"@8580
conv.s.v
push.s "Reminds me of one of my sweaters."@8581
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.noepos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[248]
b [322]

:[249]
pushi.e 1
pop.v.i self.usable
pushi.e 90
pop.v.i local.heal_amount
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 1
cmp.i.v EQ
bf [251]

:[250]
pushi.e 100
pop.v.i local.heal_amount

:[251]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [253]

:[252]
push.s "scr_itemuse_slash_scr_itemuse_gml_487_0"@8583
conv.s.v
push.s "It says GUTS!"@8584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[253]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [255]

:[254]
push.s "scr_itemuse_slash_scr_itemuse_gml_491_0"@8585
conv.s.v
push.s "It says Fluffy..."@8586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[255]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [257]

:[256]
push.s "scr_itemuse_slash_scr_itemuse_gml_495_0"@8587
conv.s.v
push.s "I... I can't read these symbols..."@8588
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[257]
pushloc.v local.heal_amount
pushglb.v global.charselect
call.i gml_Script_scr_healitem(argc=2)
popz.v
b [322]

:[258]
pushi.e 0
pop.v.i self.usable
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.i 29460307
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_504_0"@8589
conv.s.v
push.s "* (You felt tense.)/"@8590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_itemuse_slash_scr_itemuse_gml_505_0"@8591
conv.s.v
push.s "* (... try using it in battle.)/%"@8592
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
call.i gml_Script_scr_itemdialoguer(argc=0)
popz.v
b [322]

:[259]
pushi.e 0
pop.v.i self.usable
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.i 29460307
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_512_0"@8593
conv.s.v
push.s "* (You felt tense.)/"@8590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_itemuse_slash_scr_itemuse_gml_513_0"@8594
conv.s.v
push.s "* (... try using it in battle.)/%"@8592
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
call.i gml_Script_scr_itemdialoguer(argc=0)
popz.v
b [322]

:[260]
pushi.e 0
pop.v.i self.usable
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.i 29460307
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_520_0"@8595
conv.s.v
push.s "* (You felt tense.)/"@8590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_itemuse_slash_scr_itemuse_gml_521_0"@8596
conv.s.v
push.s "* (... try using it in battle.)/%"@8592
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
call.i gml_Script_scr_itemdialoguer(argc=0)
popz.v
b [322]

:[261]
pushi.e 1
pop.v.i self.usable
pushi.e 10
conv.i.v
call.i gml_Script_scr_healitem_all(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [263]

:[262]
push.s "scr_itemuse_slash_scr_itemuse_gml_529_0"@8597
conv.s.v
push.s "Don't throw dust at me!"@8598
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[263]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [265]

:[264]
push.s "scr_itemuse_slash_scr_itemuse_gml_530_0"@8599
conv.s.v
push.s "It's minty!"@8600
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[265]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [267]

:[266]
push.s "scr_itemuse_slash_scr_itemuse_gml_531_0"@8601
conv.s.v
push.s "What are you sprinkling?"@8602
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.noepos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[267]
b [322]

:[268]
pushi.e 1
pop.v.i self.usable
pushi.e 50
conv.i.v
call.i gml_Script_scr_healitem_all(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [270]

:[269]
push.s "scr_itemuse_slash_scr_itemuse_gml_538_0"@8603
conv.s.v
push.s "Don't throw mints at me!"@8604
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.suspos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[270]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [272]

:[271]
push.s "scr_itemuse_slash_scr_itemuse_gml_539_0"@8605
conv.s.v
push.s "It's minty!"@8600
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.ralpos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[272]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [274]

:[273]
push.s "scr_itemuse_slash_scr_itemuse_gml_540_0"@8606
conv.s.v
push.s "What are you throwing?"@8607
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v self.noepos
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[274]
b [322]

:[275]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v NEQ
bf [277]

:[276]
push.i 29460187
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self._gc
conv.v.i
push.v [array]self.hp
pushi.e 20
sub.i.v
call.i max(argc=2)
pushi.e -5
push.v self._gc
conv.v.i
pop.v.v [array]self.hp
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[277]
pushi.e 1
pop.v.i self.usable
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 2
cmp.i.v EQ
bf [279]

:[278]
push.s "scr_itemuse_slash_scr_itemuse_gml_553_0"@8608
conv.s.v
push.s "Ugh! ...tastes good?"@8609
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[279]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 3
cmp.i.v EQ
bf [281]

:[280]
push.s "scr_itemuse_slash_scr_itemuse_gml_557_0"@8610
conv.s.v
push.s "Ow... er, thanks, Kris!"@8611
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[281]
pushi.e -5
pushglb.v global.charselect
conv.v.i
push.v [array]self.char
pushi.e 4
cmp.i.v EQ
bf [283]

:[282]
push.s "scr_itemuse_slash_scr_itemuse_gml_561_0"@8612
conv.s.v
push.s "(I'll... just pretend to drink it...)"@8613
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushglb.v global.charselect
call.i gml_Script_scr_itemcomment(argc=2)
popz.v

:[283]
b [322]

:[284]
pushi.e 0
pop.v.i self.usable
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.i 29460307
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_575_0"@8614
conv.s.v
push.s "* (Where'd this come from?)/%"@8615
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_itemdialoguer(argc=0)
popz.v
b [322]

:[285]
b [322]

:[286]
pushi.e 277
pushenv [288]

:[287]
pushi.e 0
pop.v.i self.charcon

:[288]
popenv [287]
pushi.e -1
pop.v.i global.menuno
pushi.e 0
pop.v.i self.charcon
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 6
pop.v.i global.typer
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e 54
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
push.i 29460307
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_426_0"@8616
conv.s.v
push.s "* (You tried to call on the Cell Phone.)"@8617
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 891
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i global.interact
b [322]

:[289]
pushi.e 56
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.s "noone"@5120
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.i 29460307
setowner.e
push.s "scr_itemuse_slash_scr_itemuse_gml_441_0"@8618
conv.s.v
push.s "* (You used the Egg.)/%"@8619
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_itemdialoguer(argc=0)
popz.v
b [322]

:[290]
pushbltn.v builtin.room
pushi.e 160
cmp.i.v EQ
bf [298]

:[291]
pushi.e 957
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [297]

:[292]
pushi.e 277
pushenv [294]

:[293]
pushi.e 0
pop.v.i self.charcon

:[294]
popenv [293]
pushi.e -1
pop.v.i global.menuno
pushi.e 957
pushenv [296]

:[295]
pushi.e 10
pop.v.i self.con

:[296]
popenv [295]

:[297]
b [312]

:[298]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v LT
bt [300]

:[299]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
b [301]

:[300]
push.e 1

:[301]
bf [311]

:[302]
pushglb.v global.plot
pushi.e 90
cmp.i.v GTE
bf [304]

:[303]
pushglb.v global.plot
pushi.e 99
cmp.i.v LT
b [305]

:[304]
push.e 0

:[305]
bf [309]

:[306]
pushi.e 320
pushenv [308]

:[307]
call.i instance_destroy(argc=0)
popz.v

:[308]
popenv [307]
pushi.e 320
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [310]

:[309]
pushi.e 41
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[310]
b [312]

:[311]
pushi.e 202
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 202
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[312]
b [322]

:[313]
pushbltn.v builtin.room
pushi.e 84
cmp.i.v GTE
bf [315]

:[314]
pushi.e -5
pushi.e 952
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [316]

:[315]
push.e 0

:[316]
bf [318]

:[317]
push.i 29460260
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 952
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_616_0"@8620
conv.s.v
push.s "* You held the crystal up to your eye./"@8621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_617_0"@8622
conv.s.v
push.s "* For some strange reason^1, for just a brief moment.../"@486
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_618_0"@8623
conv.s.v
push.s "* You thought you saw the computer lab./"@8624
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_619_0"@8625
conv.s.v
push.s "* ...but^1, it must've just been your imagination./%"@8626
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [321]

:[318]
pushi.e -5
pushi.e 950
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [320]

:[319]
push.i 29460260
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 950
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_624_0"@8627
conv.s.v
push.s "* You held the crystal up to your eye./"@8621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_625_0"@8628
conv.s.v
push.s "* ..^1. but nothing happened./%"@497
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [321]

:[320]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_itemuse_slash_scr_itemuse_gml_629_0"@8629
conv.s.v
push.s "* It doesn't seem very useful./%"@499
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[321]
call.i gml_Script_scr_itemdialoguer(argc=0)
popz.v
b [322]

:[322]
popz.v
exit.i

:[323]
push.i [function]gml_Script_scr_itemuse
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_itemuse
popz.v

:[end]