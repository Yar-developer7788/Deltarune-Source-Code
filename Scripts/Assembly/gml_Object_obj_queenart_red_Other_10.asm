.localvar 2 arguments
.localvar 20337 itemget 8585

:[0]
push.v self.flippable
pushi.e 1
cmp.b.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.b self.flip

:[2]
push.v self.isswitch
pushi.e 1
cmp.b.v EQ
bf [50]

:[3]
pushbltn.v builtin.room
pushi.e 191
cmp.i.v EQ
bf [14]

:[4]
push.v self.extflag
push.s "a"@7017
cmp.s.v EQ
bf [9]

:[5]
pushi.e -5
pushi.e 395
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [8]

:[6]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 395
pop.v.v [array]self.flag
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
push.v self.shine
pushi.e -4
cmp.i.v NEQ
bf [8]

:[7]
push.v self.shine
call.i instance_destroy(argc=1)
popz.v

:[8]
pushi.e 0
pop.v.b self.isswitch

:[9]
push.v self.extflag
push.s "b"@10271
cmp.s.v EQ
bf [14]

:[10]
pushi.e -5
pushi.e 396
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [13]

:[11]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 396
pop.v.v [array]self.flag
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
push.v self.shine
pushi.e -4
cmp.i.v NEQ
bf [13]

:[12]
push.v self.shine
call.i instance_destroy(argc=1)
popz.v

:[13]
pushi.e 0
pop.v.b self.isswitch

:[14]
pushbltn.v builtin.room
pushi.e 168
cmp.i.v EQ
bf [50]

:[15]
push.v self.extflag
push.s "treasureswitch"@20335
cmp.s.v EQ
bf [17]

:[16]
pushi.e -5
pushi.e 398
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [28]

:[19]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 270
pushenv [22]

:[20]
push.v self.extflag
push.s "treasure"@20321
cmp.s.v EQ
bf [22]

:[21]
pushi.e 271
conv.i.v
push.v self.y
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.treasure
pushi.e 0
push.v self.treasure
pushi.e -9
pop.v.b [stacktop]self.flippable
push.s "treasure"@20321
push.v self.treasure
pushi.e -9
pop.v.s [stacktop]self.extflag
pushi.e 1
push.v self.treasure
pushi.e -9
pop.v.b [stacktop]self.isswitch
pushi.e 2923
push.v self.treasure
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2931
push.v self.treasure
pushi.e -9
pop.v.i [stacktop]self.spriteindex2
pushi.e 1
push.v self.treasure
pushi.e -9
pop.v.b [stacktop]self.flip
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [20]
pushi.e 268
pushenv [25]

:[23]
push.v self.extflag
push.s "bottom"@4636
cmp.s.v EQ
bf [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [23]
push.v self.shine
pushi.e -4
cmp.i.v NEQ
bf [27]

:[26]
push.v self.shine
call.i instance_destroy(argc=1)
popz.v

:[27]
pushi.e 1
pop.v.b self.skip
pushi.e 0
pop.v.b self.isswitch
pushi.e 0
pop.v.i self.extflag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 398
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.dontshine

:[28]
push.v self.extflag
push.s "treasure"@20321
cmp.s.v EQ
bf [37]

:[29]
pushi.e -5
pushi.e 138
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [35]

:[30]
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 138
pop.v.i self.itemflag
push.s "item"@229
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_itemget_anytype_text(argc=2)
pop.v.v local.itemget
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_queenart_red_slash_Other_10_gml_91_0"@20338
conv.s.v
push.s "* (You found a ReviveMint!)/"@20339
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushloc.v local.itemget
call.i gml_Script_msgnext(argc=1)
popz.v
push.v self.noroom
pushi.e 0
cmp.i.v EQ
bf [32]

:[31]
pushi.e 1
conv.i.v
pushi.e -5
push.v self.itemflag
conv.v.i
pop.v.v [array]self.flag

:[32]
push.v self.shine
pushi.e -4
cmp.i.v NEQ
bf [34]

:[33]
push.v self.shine
call.i instance_destroy(argc=1)
popz.v

:[34]
b [36]

:[35]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_queenart_red_slash_Other_10_gml_107_0"@20340
conv.s.v
push.s "* (There's nothing here.)/%"@20341
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[36]
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[37]
push.v self.extflag
push.s "fireswitch"@20336
cmp.s.v EQ
bf [39]

:[38]
pushi.e -5
pushi.e 399
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [40]

:[39]
push.e 0

:[40]
bf [50]

:[41]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 399
pop.v.v [array]self.flag
pushi.e 1
pop.v.i self.dontshine
pushi.e 0
pop.v.b self.isswitch
pushi.e 0
pop.v.b self.decor
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.flipcon
pushi.e 1
pop.v.b self.flip
pushi.e 193
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
push.v self.shine
pushi.e -9
pushenv [43]

:[42]
call.i instance_destroy(argc=0)
popz.v

:[43]
popenv [42]
pushi.e 270
pushenv [46]

:[44]
push.v self.extflag
push.s "exitblocker"@20325
cmp.s.v EQ
bf [46]

:[45]
pushi.e 271
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.decor
pushi.e 1
push.v self.decor
pushi.e -9
pop.v.b [stacktop]self.decorative
pushi.e 2925
push.v self.decor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2925
push.v self.decor
pushi.e -9
pop.v.i [stacktop]self.spriteindex2
push.s "decor"@14231
push.v self.decor
pushi.e -9
pop.v.s [stacktop]self.extflag
push.i 998000
push.v self.decor
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 62
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[46]
popenv [44]
pushi.e 268
pushenv [49]

:[47]
push.v self.extflag
push.s "blocker"@14176
cmp.s.v EQ
bf [49]

:[48]
call.i instance_destroy(argc=0)
popz.v

:[49]
popenv [47]

:[50]
pushi.e 3
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
push.v self.skip
pushi.e 0
cmp.i.v NEQ
bf [end]

:[51]
pushi.e 0
pop.v.i global.interact

:[end]