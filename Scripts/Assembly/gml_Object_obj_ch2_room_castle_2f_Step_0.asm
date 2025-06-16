.localvar 2 arguments
.localvar 15767 sentenceEnd 17284

:[0]
push.v 82.x
push.v self.x
cmp.v.v GT
bf [2]

:[1]
pushglb.v global.plot
pushi.e 13
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 14
pop.v.i global.plot
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
pushi.e 1
pop.v.i self.con

:[8]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [13]

:[9]
pushi.e 3
pop.v.i self.con
pushi.e 3
pop.v.i global.facing
pushi.e 276
pushenv [12]

:[10]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.fun
push.v self.sprite_index
pop.v.v self._remsprite
push.v self.lsprite
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_index

:[12]
popenv [10]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_26_0"@35558
conv.s.v
push.s "\\E1* I..^1. have a surprise for you two...!/"@35559
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_27_0"@35560
conv.s.v
push.s "\\E2* ..^1. I made rooms for you in the castle!/"@35561
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_29_0"@35562
conv.s.v
push.s "\\E6* ..^1. Rooms?/"@35563
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_31_0"@35564
conv.s.v
push.s "\\E2* So you can stay here whenever you want!/"@35565
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_32_0"@35566
conv.s.v
push.s "\\E1* Ummm^1, I'd be happy if this place.../"@35567
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_33_0"@35568
conv.s.v
push.s "\\E2* Could be like a second home to you./"@35569
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_34_0"@35570
conv.s.v
push.s "\\E0* A place that you can go.../"@35571
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_35_0"@35572
conv.s.v
push.s "\\EI* No matter what's happening outside./"@35573
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_37_0"@35574
conv.s.v
push.s "\\E6* .../"@5500
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_38_0"@35575
conv.s.v
push.s "\\EA* Heh^1, well^1, we'll take a look./%"@35576
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[13]
push.v 82.x
push.v self.x
cmp.v.v LT
bf [15]

:[14]
pushglb.v global.plot
pushi.e 14
cmp.i.v EQ
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [26]

:[20]
pushi.e 4
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
push.v self.x
pushi.e 4
add.i.v
pop.v.v 82.x
push.v self.leaveCounter
push.e 1
add.i.v
pop.v.v self.leaveCounter
push.v self.leaveCounter
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.s "/"@4448
conv.s.v
b [23]

:[22]
push.s "/%"@4449
conv.s.v

:[23]
pop.v.v local.sentenceEnd
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_54_0"@35577
conv.s.v
pushloc.v local.sentenceEnd
push.s "\\E5* Hey^1, lemme look at my freaking room a sec!~1"@35578
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
push.v self.leaveCounter
pushi.e 1
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_58_0"@35579
conv.s.v
push.s "\\EP* Damn^1, all you wanna do is run off and steal cake./"@35580
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 33
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_60_0"@35581
conv.s.v
push.s "\\EX* (..^1. is that projection?)/%"@35582
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[25]
call.i gml_Script_d_make(argc=0)
popz.v

:[26]
push.v 82.x
push.v self.x
cmp.v.v LT
bf [29]

:[27]
pushglb.v global.plot
pushi.e 15
cmp.i.v EQ
bf [29]

:[28]
pushi.e -5
pushi.e 432
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [30]

:[29]
push.e 0

:[30]
bf [32]

:[31]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [33]

:[32]
push.e 0

:[33]
bf [35]

:[34]
pushi.e 4
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 432
pop.v.v [array]self.flag
pushi.e 1
pop.v.i global.facing
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_75_0"@35583
conv.s.v
push.s "\\EK* So^1, what do we do now?/"@35584
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
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_77_0"@35585
conv.s.v
push.s "\\E2* Feel free to explore the town until you're ready to \\cYleave\\c0!/"@35586
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_castle_2f_slash_Step_0_gml_79_0"@35587
conv.s.v
push.s "\\E2* Hah^1! Like we're gonna \\cYleave\\c0 now^1, right^1, Kris?/%"@35588
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[35]
push.v self.con
pushi.e 3
cmp.i.v EQ
bt [37]

:[36]
push.v self.con
pushi.e 4
cmp.i.v EQ
b [38]

:[37]
push.e 1

:[38]
bf [end]

:[39]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[40]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [45]

:[41]
pushi.e 0
pop.v.i global.facing
pushi.e 276
pushenv [44]

:[42]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [44]

:[43]
pushi.e 0
pop.v.i self.fun
push.v self._remsprite
pop.v.v self.sprite_index

:[44]
popenv [42]

:[45]
pushi.e 0
pop.v.i global.interact
pushi.e -1
pop.v.i self.con

:[end]