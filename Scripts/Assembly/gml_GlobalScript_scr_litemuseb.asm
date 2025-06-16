.localvar 2 arguments
.localvar 423 consume_item 293
.localvar 425 have_susie 294
.localvar 426 sans_npc 295
.localvar 428 alphys_npc 296

:[0]
b [128]

> gml_Script_scr_litemuseb (locals=4, argc=2)
:[1]
push.v arg.argument1
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [16]

:[2]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [17]

:[3]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [18]

:[4]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [19]

:[5]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [20]

:[6]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [21]

:[7]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [22]

:[8]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [23]

:[9]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [24]

:[10]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [25]

:[11]
dup.v 0
pushi.e 10
cmp.i.v EQ
bt [26]

:[12]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [54]

:[13]
dup.v 0
pushi.e 201
cmp.i.v EQ
bt [68]

:[14]
dup.v 0
pushi.e 202
cmp.i.v EQ
bt [126]

:[15]
b [127]

:[16]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_6_0"@401
conv.s.v
push.s "* You grasped at nothing./%%"@402
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
b [127]

:[17]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_9_0"@403
conv.s.v
push.s "* You drank the hot chocolate^1.&* It tasted wonderful^1.&* Your throat tightened.../%"@404
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 180
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
pushi.e 0
conv.i.v
push.v arg.argument0
push.i [function]gml_Script_scr_litemshift
conv.i.v
call.i script_execute(argc=3)
popz.v
b [127]

:[18]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_18_0"@406
conv.s.v
push.s "* You equipped the Pencil./%"@407
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_lweaponeq(argc=2)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[19]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_26_0"@408
conv.s.v
push.s "* You re-applied the bandage."@409
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
push.i [function]gml_Script_scr_lrecoitem
conv.i.v
call.i script_execute(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v arg.argument0
push.i [function]gml_Script_scr_litemshift
conv.i.v
call.i script_execute(argc=3)
popz.v
b [127]

:[20]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_34_0"@410
conv.s.v
push.s "* You held out the flowers^1.&* A floral scent fills the air^1.&* Nothing happened./%"@411
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[21]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_42_0"@412
conv.s.v
push.s "* You looked at the junk ball in admiration^1.&* Nothing happened./%"@413
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[22]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_48_0"@414
conv.s.v
push.s "* You equipped the Halloween Pencil./%"@415
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_lweaponeq(argc=2)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[23]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_56_0"@416
conv.s.v
push.s "* You equipped the Lucky Pencil./%"@417
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_scr_lweaponeq(argc=2)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[24]
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_63_0"@418
conv.s.v
push.s "* You used the Egg./%"@419
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 56
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[25]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_69_0"@420
conv.s.v
push.s "* You held the cards^1.&* They felt flimsy between your fingers./%"@421
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[26]
pushi.e 0
pop.v.i local.consume_item
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
pop.v.v local.have_susie
pushi.e 0
pop.v.i local.sans_npc
pushi.e 129
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [35]

:[27]
pushi.e 129
pushenv [34]

:[28]
push.v self.sprite_index
pushi.e 1079
cmp.i.v EQ
bf [31]

:[29]
push.v 82.x
push.v self.x
sub.v.v
call.i abs(argc=1)
pushi.e 20
cmp.i.v LTE
bf [31]

:[30]
push.v 82.y
push.v self.y
sub.v.v
call.i abs(argc=1)
pushi.e 40
cmp.i.v LTE
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i local.sans_npc

:[34]
popenv [28]

:[35]
pushi.e 0
pop.v.i local.alphys_npc
pushi.e 105
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [44]

:[36]
pushi.e 105
pushenv [43]

:[37]
push.v self.sprite_index
pushi.e 919
cmp.i.v EQ
bf [40]

:[38]
push.v 82.x
push.v self.x
sub.v.v
call.i abs(argc=1)
pushi.e 20
cmp.i.v LTE
bf [40]

:[39]
push.v 82.y
push.v self.y
sub.v.v
call.i abs(argc=1)
pushi.e 40
cmp.i.v LTE
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 1
pop.v.i local.alphys_npc

:[43]
popenv [37]

:[44]
pushloc.v local.sans_npc
conv.v.b
bf [46]

:[45]
pushi.e 1
pop.v.i local.consume_item
push.v global.lgold
pushi.e 5
add.i.v
pop.v.v global.lgold
push.i 5605156
setowner.e
pushi.e 4
conv.i.v
pushi.e -5
pushi.e 342
pop.v.v [array]self.flag
push.s "sans"@429
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_107_0"@431
conv.s.v
push.s "* what? a heart shaped box of chocolates?/"@432
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_108_0"@433
conv.s.v
push.s "\\E3* oh^1, i get it./"@434
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_109_0"@436
conv.s.v
push.s "\\E2* heh./"@437
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_110_0"@438
conv.s.v
push.s "* wow./"@439
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_111_0"@440
conv.s.v
push.s "\\E0* you're really.../"@441
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_112_0"@442
conv.s.v
push.s "* hm./"@443
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_113_0"@444
conv.s.v
push.s "\\E1* alright^1, alright./"@445
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_114_0"@446
conv.s.v
push.s "\\E0* ..^1. okay./"@447
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_115_0"@448
conv.s.v
push.s "\\E3* you wanna make a return on these^1, don't you?/"@449
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_116_0_b"@450
conv.s.v
push.s "\\E5* okay^1, okay^1, no need to break my heart./"@451
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_117_0_b"@452
conv.s.v
push.s "\\E0* here's five dollars./"@453
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_119_0"@456
conv.s.v
push.s "* (You traded the chocolates for 5 dollars.)/%"@457
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [51]

:[46]
pushloc.v local.alphys_npc
conv.v.b
bf [48]

:[47]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_123_0"@458
conv.s.v
push.s "* (You could give Alphys the chocolate if you talk to her.)/%"@459
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [51]

:[48]
pushloc.v local.have_susie
conv.v.b
bf [50]

:[49]
pushi.e 1
pop.v.i local.consume_item
pushi.e 19
pop.v.i global.lhp
push.i 5605156
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 342
pop.v.v [array]self.flag
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_131_0"@460
conv.s.v
push.s "\\E7* Woah^1, Kris^1, where the hell'd you get that?/"@461
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_132_0"@462
conv.s.v
push.s "\\E6* ..^1. someone gave it to you?/"@463
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_133_0"@464
conv.s.v
push.s "\\EY* HAHAHA!^1! YEAH RIGHT!!^1! You stole it^1, didn't you!?/"@465
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_134_0"@466
conv.s.v
push.s "\\E2* Well^1, c'mon!^1! Let's eat it and hide the evidence!!/"@467
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_136_0_b"@468
conv.s.v
push.s "* (You and Susie shared the heart-shaped box of candies.)/"@469
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_137_0_b"@470
conv.s.v
push.s "* (Both of you had a feeling in your chest...)/"@471
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 12
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_139_0"@472
conv.s.v
push.s "\\EC* Ow^1, my stomach.../"@473
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_141_0"@474
conv.s.v
push.s "* (..^1. that you shouldn't have eaten all of it.)/%"@475
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [51]

:[50]
pushi.e 1
pop.v.i local.consume_item
pushi.e 19
pop.v.i global.lhp
push.i 5605156
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 342
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_149_0"@476
conv.s.v
push.s "* (You unhesitatingly devoured the box of heart shaped candies.)/"@477
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_150_0"@478
conv.s.v
push.s "* (Your guts are being destroyed.)/"@479
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_151_0"@480
conv.s.v
push.s "* (You accept this destruction as part of life...)/%"@481
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v

:[51]
call.i gml_Script_d_make(argc=0)
popz.v
pushloc.v local.consume_item
conv.v.b
bf [53]

:[52]
pushi.e 0
conv.i.v
push.v arg.argument0
push.i [function]gml_Script_scr_litemshift
conv.i.v
call.i script_execute(argc=3)
popz.v

:[53]
b [127]

:[54]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [56]

:[55]
pushi.e -5
pushi.e 953
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
push.i 5605156
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 953
pop.v.v [array]self.flag
push.s "scr_litemuseb_slash_scr_litemuseb_gml_168_0_b"@483
conv.s.v
push.s "* You looked through the glass./"@484
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_169_0"@485
conv.s.v
push.s "* For some strange reason^1, for just a brief moment.../"@486
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_170_0_b"@487
conv.s.v
push.s "* You thought you saw Susie glaring at you^1, coldly.../"@488
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_171_0_b"@489
conv.s.v
push.s "* But when you moved the glass away^1,/"@490
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_172_0_b"@491
conv.s.v
push.s "* You see her looking at you^1, smiling and making a rude gesture./%"@492
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [67]

:[59]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [61]

:[60]
pushi.e -5
pushi.e 281
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
push.i 5605156
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 281
pop.v.v [array]self.flag
push.s "scr_litemuseb_slash_scr_litemuseb_gml_168_0_b"@483
conv.s.v
push.s "* You looked through the glass./"@484
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_169_0"@485
conv.s.v
push.s "* For some strange reason^1, for just a brief moment.../"@486
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_182_0_b"@493
conv.s.v
push.s "* You thought you saw through your hand./%"@494
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [67]

:[64]
pushi.e -5
pushi.e 951
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
push.i 5605156
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 951
pop.v.v [array]self.flag
push.s "scr_litemuseb_slash_scr_litemuseb_gml_178_0"@495
conv.s.v
push.s "* You looked through the glass./"@484
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_179_0"@496
conv.s.v
push.s "* ..^1. but nothing happened./%"@497
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [67]

:[66]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_182_0"@498
conv.s.v
push.s "* It doesn't seem very useful./%"@499
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[67]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[68]
pushi.e 0
pop.v.i self.tempsaid
pushi.e 1
conv.i.v
push.d 0.7
conv.d.v
pushi.e 54
conv.i.v
call.i gml_Script_snd_play_x(argc=3)
popz.v
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_116_0"@501
conv.s.v
push.s "* Ring.../"@502
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_117_0"@503
conv.s.v
push.s "* No one picked up./%"@504
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushbltn.v builtin.room
pushi.e 28
cmp.i.v EQ
bt [71]

:[69]
pushbltn.v builtin.room
pushi.e 29
cmp.i.v EQ
bt [71]

:[70]
pushbltn.v builtin.room
pushi.e 32
cmp.i.v EQ
b [72]

:[71]
push.e 1

:[72]
bf [74]

:[73]
pushi.e 1
pop.v.i self.tempsaid
push.i 5605156
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 268
pop.v.v [array]self.flag
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_torface(argc=2)
popz.v
push.i 5605203
setowner.e
push.s "scr_litemuseb_slash_scr_litemuseb_gml_126_0"@507
conv.s.v
push.s "\\E0* Hello?&* Dreemurr residence...&* Who might this be...?/"@508
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_127_0"@509
conv.s.v
push.s "\\E3* ... Kris?/"@510
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_128_0"@511
conv.s.v
push.s "\\E5* Sigh... Do not make me come over there./"@512
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
call.i gml_Script_scr_noface(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_130_0"@514
conv.s.v
push.s "* Click.../%"@515
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[74]
pushbltn.v builtin.room
pushi.e 31
cmp.i.v EQ
bf [76]

:[75]
pushi.e 1
pop.v.i self.tempsaid
push.s "scr_litemuseb_slash_scr_litemuseb_gml_136_0"@516
conv.s.v
push.s "* Ring.../"@502
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_137_0"@517
conv.s.v
push.s "* (The phone is ringing^1, but you can't get it.)/"@518
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_138_0"@519
conv.s.v
push.s "* (You're already on the phone^1, after all...)/%"@520
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[76]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [88]

:[77]
push.v self.tempsaid
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
b [80]

:[79]
push.e 0

:[80]
bf [88]

:[81]
pushi.e -5
pushi.e 272
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [83]

:[82]
pushi.e 365
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[83]
pushi.e -5
pushi.e 272
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_156_0"@522
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_torface(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_158_0"@524
conv.s.v
push.s "* Kris^1, honey^1, what is it?/"@525
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_159_0"@526
conv.s.v
push.s "\\E3* What^1? No^1, I am not giving you a ride home./"@527
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_160_0"@528
conv.s.v
push.s "\\E1* Our house is not far^1. It is just at the top of town./"@529
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_161_0"@530
conv.s.v
push.s "\\E4* Try walking^1. It builds character^1, honey./"@531
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
call.i gml_Script_scr_noface(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_163_0"@532
conv.s.v
push.s "* (Click...)/%"@533
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg

:[85]
pushi.e -5
pushi.e 272
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
bf [87]

:[86]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_168_0"@534
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_torface(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_170_0"@535
conv.s.v
push.s "* Kris^1, I am grading papers./"@536
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_171_0"@537
conv.s.v
push.s "\\E0* I can talk to you when you get back^1, alright?/"@538
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "scr_litemuseb_slash_scr_litemuseb_gml_172_0"@539
conv.s.v
push.s "\\E0* Our house is only at the top of town^1, you know./"@540
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 5
conv.i.v
call.i gml_Script_scr_noface(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_174_0"@541
conv.s.v
push.s "* (Click...)/%"@533
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg

:[87]
push.i 5605156
setowner.e
pushi.e -5
pushi.e 272
dup.i 1
push.v [array]self.flag
pushi.e 1
add.i.v
pop.i.v [array]self.flag

:[88]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [125]

:[89]
pushglb.v global.plot
pushi.e 9
cmp.i.v GTE
bf [91]

:[90]
pushglb.v global.plot
pushi.e 20
cmp.i.v LTE
b [92]

:[91]
push.e 0

:[92]
bf [108]

:[93]
pushbltn.v builtin.room
pushi.e 60
cmp.i.v EQ
bf [95]

:[94]
pushglb.v global.plot
pushi.e 9
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [105]

:[97]
pushi.e -5
pushi.e 306
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [103]

:[98]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 306
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 305
pop.v.v [array]self.flag
push.s "no name"@542
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_271_0"@543
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_273_0"@545
conv.s.v
push.s "\\M1\\E1* Oh^1, excuse me^1, I seem to be receiving a phone call./"@546
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_274_0"@547
conv.s.v
push.s "\\E0* Kris...? What is it^1, honey?/"@548
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e -5
pushi.e 303
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_275_0"@549
conv.s.v
push.s "\\E3* What? You are \"normal?\"/"@550
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[100]
pushi.e -5
pushi.e 303
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [102]

:[101]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_276_0"@551
conv.s.v
push.s "\\E3* What? You made a \"trash orb\"?/"@552
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[102]
push.s "scr_litemuseb_slash_scr_litemuseb_gml_277_0"@553
conv.s.v
push.s "\\E4* ..^1. Could you explain what you mean by that?/"@554
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_279_0"@556
conv.s.v
push.s "\\E6* (Kris^1, d-don't give the phone to me!!!)/"@557
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_281_0"@558
conv.s.v
push.s "\\E1* Oh^1, you are going to the library later?/"@559
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_282_0"@560
conv.s.v
push.s "\\E0* Well^1, thank you for telling me this time^1! Have a nice time!/"@561
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_284_0"@563
conv.s.v
push.s "\\M0* (Click...)/%"@564
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [104]

:[103]
push.s "no name"@542
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_289_0"@565
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_291_0"@566
conv.s.v
push.s "\\M1\\E1* Kris^1, do not worry about the library./"@567
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_293_0"@568
conv.s.v
push.s "\\M0* (Click...)/%"@564
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[104]
b [108]

:[105]
pushi.e -5
pushi.e 305
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [107]

:[106]
push.s "no name"@542
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_302_0"@569
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_304_0"@570
conv.s.v
push.s "\\E0* Ah^1, Kris^1! You are going to do your project...?/"@571
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_305_0"@572
conv.s.v
push.s "\\E1* Oh^1, are you calling to ask for my help!?/"@573
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_306_0"@574
conv.s.v
push.s "\\E4* I will go find our homemade scented glue-sticks!/"@575
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_307_0"@576
conv.s.v
push.s "\\E8* ..^1. Oh? You have a partner this time?/"@577
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_308_0"@578
conv.s.v
push.s "\\E9* Kris!^1! That's wonderful!!/"@579
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_309_0"@580
conv.s.v
push.s "\\E4* I hope they like butterscotch-scented gluesticks!/"@581
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_311_0"@582
conv.s.v
push.s "* (Click...)/%"@533
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 305
pop.v.v [array]self.flag
b [108]

:[107]
push.s "no name"@542
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_317_0"@583
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_319_0"@584
conv.s.v
push.s "\\E0* Kris^1, do not worry about going to the library./"@585
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_320_0"@586
conv.s.v
push.s "\\E5* If Berdly harasses you about our debt.../"@587
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_321_0"@588
conv.s.v
push.s "\\E4* I will come and throw a smoke bomb so you can escape./"@589
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_322_0"@590
conv.s.v
push.s "\\E0* ..^1. maybe not. Hee hee hee. Try your best^1, honey./"@591
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_324_0"@592
conv.s.v
push.s "* (Click...)/%"@533
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[108]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [110]

:[109]
pushglb.v global.plot
pushi.e 210
cmp.i.v LT
b [111]

:[110]
push.e 0

:[111]
bf [115]

:[112]
pushi.e -5
pushi.e 380
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 380
pop.v.v [array]self.flag
push.s "no name"@542
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_336_0"@593
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_338_0"@594
conv.s.v
push.s "\\E0* Hi honey^1! How was your group project?/"@595
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_339_0"@596
conv.s.v
push.s "\\E0* I can give you a ride home in a minute^1, I am just.../"@597
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_340_0"@598
conv.s.v
push.s "\\E1* ..^1. oh? No need?/"@599
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_341_0"@600
conv.s.v
push.s "\\E8* You are still spending time with a friend...?/"@601
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_342_0"@602
conv.s.v
push.s "\\E4* Oh dear^1! Two days in a row^1, Kris^1! Is that a record?/"@603
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_343_0"@604
conv.s.v
push.s "\\E0* Have fun^1, honey^1! Be back before sunset!/"@605
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_345_0"@606
conv.s.v
push.s "* (Click...)/%"@533
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [115]

:[114]
push.s "no name"@542
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_349_0"@607
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "4"@608
conv.s.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_351_0"@609
conv.s.v
push.s "\\E4* Calling me again? What must your friend think?/"@610
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_352_0"@611
conv.s.v
push.s "\\E0* Have fun with your friend^1, honey!/"@612
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_354_0"@613
conv.s.v
push.s "* (Click...)/%"@533
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[115]
pushglb.v global.plot
pushi.e 210
cmp.i.v EQ
bt [117]

:[116]
pushglb.v global.plot
pushi.e 211
cmp.i.v EQ
b [118]

:[117]
push.e 1

:[118]
bf [125]

:[119]
pushi.e -5
pushi.e 436
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [124]

:[120]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 436
pop.v.v [array]self.flag
pushbltn.v builtin.room
pushi.e 32
cmp.i.v EQ
bf [122]

:[121]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_366_0"@614
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_368_0"@615
conv.s.v
push.s "\\E0* Hello^1, Dreemurr residence./"@616
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_369_0"@617
conv.s.v
push.s "\\E8* What? You would like to talk to \"Susie\"?/"@618
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_370_0"@619
conv.s.v
push.s "\\E3* .../"@620
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_371_0"@621
conv.s.v
push.s "\\E4* Of course^1, here you are./"@622
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_373_0"@623
conv.s.v
push.s "\\EH* KRIS FINISH WASHING YOUR DAMN HANDS!!!/%"@624
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [123]

:[122]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_378_0"@625
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "toriel"@544
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_380_0"@626
conv.s.v
push.s "\\E1* Kris^1, the phone is going./"@627
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_381_0"@628
conv.s.v
push.s "\\E0* Would you mind getting it for me while I.../"@629
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_382_0"@630
conv.s.v
push.s "\\E8* .../"@631
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_383_0"@632
conv.s.v
push.s "\\E3* Kris? Why are you calling our house?/%"@633
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[123]
b [125]

:[124]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_389_0"@634
conv.s.v
push.s "* (Ring^1, ring...)/"@523
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "scr_litemuseb_slash_scr_litemuseb_gml_390_0"@635
conv.s.v
push.s "* (Everybody seems too busy to pick up the phone...)/%"@636
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[125]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@50
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_writetext(argc=4)
popz.v
b [127]

:[126]
pushi.e 375
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
b [127]

:[127]
popz.v
exit.i

:[128]
push.i [function]gml_Script_scr_litemuseb
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_litemuseb
popz.v

:[end]