.localvar 2 arguments
.localvar 36688 ballX 18308
.localvar 36689 ballY 18309

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v self.idealString
call.i string_length(argc=1)
pop.v.v self.idealLength
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.idealLength
cmp.v.v LT
bf [4]

:[3]
push.i 174452
setowner.e
pushi.e 1
push.v self.i
add.v.i
push.v self.idealString
call.i string_char_at(argc=2)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.idealLetter
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[4]
pushi.e 1
pop.v.i self.init

:[5]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i self.timer
pushi.e 11
pop.v.i self.con
pushi.e 1
pop.v.i self.lost

:[10]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [36]

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [13]

:[12]
pushi.e 152
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[13]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [30]

:[14]
push.v self.lastPressedTile
pushi.e -9
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.bouncecon

:[16]
popenv [15]
pushi.e 160
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 544
conv.i.v
push.v 82.y
pushi.e 40
sub.i.v
push.v 82.x
pushi.e 10
sub.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.ball
push.d 0.5
push.v self.ball
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 100
push.v self.ball
pushi.e -9
pop.v.i [stacktop]self.depth
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [25]

:[17]
pushi.e 80
pop.v.i self.krisStartX
pushi.e 220
pop.v.i self.krisStartY
push.v self.firstTileX
pushi.e 420
cmp.i.v GT
bf [21]

:[18]
pushi.e 522
pop.v.i self.krisStartX
push.v self.use_ja
conv.v.b
bf [20]

:[19]
push.v self.krisStartX
pushi.e 16
add.i.v
pop.v.v self.krisStartX

:[20]
b [25]

:[21]
push.v self.firstTileX
pushi.e 180
cmp.i.v GT
bf [23]

:[22]
pushi.e 302
pop.v.i self.krisStartX
pushi.e 312
pop.v.i self.krisStartY
b [25]

:[23]
push.v self.use_ja
conv.v.b
bf [25]

:[24]
push.v self.krisStartX
pushi.e 16
sub.i.v
pop.v.v self.krisStartX

:[25]
push.v self.krisStartX
pushi.e 10
sub.i.v
pop.v.v local.ballX
push.v self.krisStartY
pushi.e 40
sub.i.v
pop.v.v local.ballY
push.v self.ball
pushi.e -9
pushenv [27]

:[26]
pushi.e 20
conv.i.v
pushi.e 30
conv.i.v
pushloc.v local.ballY
pushloc.v local.ballX
call.i gml_Script_scr_jump_to_point(argc=4)
popz.v

:[27]
popenv [26]
pushi.e 82
pushenv [29]

:[28]
push.v other.ball
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.x
push.v other.ball
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.y
pushi.e 0
pop.v.i self.visible

:[29]
popenv [28]
pushi.e 0
pop.v.i self.letterCount
push.s ""@157
pop.v.s self.addString
push.s ""@157
pop.v.s self.currentString
pushi.e 0
pop.v.i self.lost

:[30]
push.v self.timer
pushi.e 80
cmp.i.v EQ
bf [36]

:[31]
push.v self.krisStartX
pop.v.v 82.x
push.v self.krisStartY
pop.v.v 82.y
pushi.e 0
pop.v.i global.facing
push.v self.ball
pushi.e -9
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]
pushi.e 82
pushenv [35]

:[34]
pushi.e 1
pop.v.i self.visible

:[35]
popenv [34]
pushi.e 0
pop.v.i global.interact
push.v self.failcount
push.e 1
add.i.v
pop.v.v self.failcount

:[36]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [38]

:[37]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing
pushi.e 0
pop.v.i self.timer
pushi.e 21
pop.v.i self.con

:[41]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [63]

:[42]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [46]

:[43]
pushi.e 1
pop.v.i self.won
push.v self.puzzle_id
pushi.e 2
cmp.i.v NEQ
bf [45]

:[44]
pushi.e 58
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
b [46]

:[45]
pushi.e 93
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[46]
push.v self.puzzle_id
pushi.e 2
cmp.i.v EQ
bf [53]

:[47]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [49]

:[48]
pushi.e 2401
pop.v.i self.victorySprite

:[49]
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [51]

:[50]
pushi.e 2403
pop.v.i self.victorySprite
pushi.e 1
pop.v.b self.hacked
pushi.e 1
pop.v.i self.image_timer
b [53]

:[51]
push.v self.timer
pushi.e 80
cmp.i.v EQ
bf [53]

:[52]
pushi.e 0
pop.v.b self.hacked
push.d -0.25
pop.v.d self.image_timer
pushi.e 279
pop.v.i self.victorySprite

:[53]
push.v self.timer
pushi.e 90
cmp.i.v EQ
bf [63]

:[54]
push.v self.puzzle_id
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v NEQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
b [62]

:[59]
pushi.e 22
pop.v.i self.con
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [61]

:[60]
pushi.e 296
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 2400
pop.v.i self.victorySprite
b [62]

:[61]
pushi.e 0
pop.v.i self.victorySprite

:[62]
pushi.e 0
pop.v.i self.timer

:[63]
push.v self.con
pushi.e 22
cmp.i.v EQ
bf [68]

:[64]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 10
cmp.i.v EQ
bf [66]

:[65]
pushi.e 2
pop.v.i global.facing
b [68]

:[66]
push.v self.timer
pushi.e 30
cmp.i.v EQ
bf [68]

:[67]
pushi.e 23
pop.v.i self.con

:[68]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [74]

:[69]
pushbltn.v builtin.room
pushi.e 96
cmp.i.v EQ
bf [71]

:[70]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_160_0"@36690
conv.s.v
push.s "\\E1* You Typed: Agree 2 All/"@36691
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_161_0"@36692
conv.s.v
push.s "* Thank You For Agreeing 2 This Peon Release Form/"@36693
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_162_0"@36694
conv.s.v
push.s "\\EC* Now You Are All Legally My Minions/"@36695
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_163_0"@36696
conv.s.v
push.s "\\ED* And I Can Use Your Likeness For Funny Statues/"@36697
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_165_0"@36698
conv.s.v
push.s "\\E0* What if we just..^1. don't do what you say?/"@36699
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_167_0"@36700
conv.s.v
push.s "\\E6* In That Case I Would Be Forced To/"@36701
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_168_0"@36702
conv.s.v
push.s "\\EF* Use Another Guy Probably/"@36703
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_170_0"@36704
conv.s.v
push.s "\\E0* Uh^1. Better get started on that then./"@36705
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_172_0"@36706
conv.s.v
push.s "\\E6* Okay But I'm Still Going To Use Your Likeness/%"@36707
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v
pushi.e 24
pop.v.i self.con
b [73]

:[71]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 60
cmp.i.v EQ
bf [73]

:[72]
pushi.e 2402
pop.v.i self.victorySprite
pushi.e 0
pop.v.i global.interact
pushi.e 263
conv.i.v
pushi.e 80
conv.i.v
push.v self.monitorx
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.checkscreen
pushi.e 4
push.v self.checkscreen
pushi.e -9
pop.v.i [stacktop]self.extflag
pushi.e 10
push.v self.checkscreen
pushi.e -9
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.checkscreen
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.con

:[73]
b [end]

:[74]
push.v self.con
pushi.e 24
cmp.i.v EQ
bf [end]

:[75]
pushi.e 63
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [end]

:[76]
pushi.e 2399
pop.v.i self.victorySprite
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.con

:[end]