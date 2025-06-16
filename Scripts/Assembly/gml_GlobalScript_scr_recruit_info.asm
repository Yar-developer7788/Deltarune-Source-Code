.localvar 2 arguments

:[0]
b [43]

> gml_Script_scr_recruit_info (locals=0, argc=1)
:[1]
pushi.e 1
pop.v.i self._recruitcount
pushi.e 2444
pop.v.i self._sprite
pushi.e 0
pop.v.i self._spritex
pushi.e 0
pop.v.i self._spritey
pushi.e 0
pop.v.i self._imagespeed
push.s "scr_recruit_info_slash_scr_recruit_info_gml_10_0"@10453
conv.s.v
push.s "Known Quantity "@10454
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.v arg.argument0
call.i string(argc=1)
add.v.v
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_11_0"@10456
conv.s.v
push.s "It is known."@10457
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s " "@353
pop.v.s self._like
push.s " "@353
pop.v.s self._dislike
pushi.e 0
pop.v.i self._chapter
pushi.e 0
pop.v.i self._level
pushi.e 0
pop.v.i self._attack
pushi.e 0
pop.v.i self._defense
push.s " "@353
pop.v.s self._element
pushi.e 1
pop.v.i self._dialogueboxes
push.i 33065956
setowner.e
push.s "scr_recruit_info_slash_scr_recruit_info_gml_22_0"@10467
conv.s.v
push.s "%%"@2565
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 1
pop.v.i self._placeable
push.v arg.argument0
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [21]

:[2]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [22]

:[3]
dup.v 0
pushi.e 11
cmp.i.v EQ
bt [23]

:[4]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [24]

:[5]
dup.v 0
pushi.e 14
cmp.i.v EQ
bt [25]

:[6]
dup.v 0
pushi.e 15
cmp.i.v EQ
bt [26]

:[7]
dup.v 0
pushi.e 20
cmp.i.v EQ
bt [27]

:[8]
dup.v 0
pushi.e 22
cmp.i.v EQ
bt [28]

:[9]
dup.v 0
pushi.e 23
cmp.i.v EQ
bt [29]

:[10]
dup.v 0
pushi.e 30
cmp.i.v EQ
bt [30]

:[11]
dup.v 0
pushi.e 31
cmp.i.v EQ
bt [31]

:[12]
dup.v 0
pushi.e 32
cmp.i.v EQ
bt [32]

:[13]
dup.v 0
pushi.e 33
cmp.i.v EQ
bt [33]

:[14]
dup.v 0
pushi.e 34
cmp.i.v EQ
bt [34]

:[15]
dup.v 0
pushi.e 35
cmp.i.v EQ
bt [35]

:[16]
dup.v 0
pushi.e 36
cmp.i.v EQ
bt [36]

:[17]
dup.v 0
pushi.e 40
cmp.i.v EQ
bt [37]

:[18]
dup.v 0
pushi.e 42
cmp.i.v EQ
bt [38]

:[19]
dup.v 0
pushi.e 44
cmp.i.v EQ
bt [39]

:[20]
b [40]

:[21]
pushi.e 1557
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_29_0"@10470
conv.s.v
push.s "Rudinn"@7155
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_30_0"@10471
conv.s.v
push.s "Said to be someone's best friend, but maybe not. Shine on, you lazy diamond!"@10472
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_31_0"@10473
conv.s.v
push.s "Shiny Things"@10474
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_32_0"@10475
conv.s.v
push.s "Effort"@10476
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
pushi.e 2
pop.v.i self._level
pushi.e 4
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_37_0"@10477
conv.s.v
push.s "JEWEL"@10478
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_38_0"@10479
conv.s.v
push.s "* Hey^1, boss^1! I'll have a Dark Candy Starfait!/%"@10480
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [40]

:[22]
pushi.e 1576
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_43_0"@10481
conv.s.v
push.s "Hathy"@7162
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_44_0"@10482
conv.s.v
push.s "A heart with a big heart. Always supporting others with her bullets."@10483
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_45_0"@10484
conv.s.v
push.s "Lip Gloss"@10485
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_46_0"@10486
conv.s.v
push.s "Drama"@10487
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
pushi.e 2
pop.v.i self._level
pushi.e 4
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_51_0"@10488
conv.s.v
push.s "HEART"@10489
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_52_0"@10490
conv.s.v
push.s "* (Hathy is going to order a heart-foam latte.)/%"@10491
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [40]

:[23]
pushi.e 1600
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_57_0"@10492
conv.s.v
push.s "Ponman"@7216
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_58_0"@10493
conv.s.v
push.s "A simple organism that takes life one square at a time."@10494
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_59_0"@10495
conv.s.v
push.s "Sleeping"@10496
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_60_0"@10497
conv.s.v
push.s "Moving Backwards"@10498
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
pushi.e 3
pop.v.i self._level
pushi.e 4
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_65_0"@10499
conv.s.v
push.s "ORDER"@10500
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_66_0"@10501
conv.s.v
push.s "* (Looks like it wants to osmose some flavorful cubes.)/%"@10502
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [40]

:[24]
pushi.e 1264
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_71_0"@10503
conv.s.v
push.s "Rabbick"@7226
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_72_0"@10504
conv.s.v
push.s "A real dust bunny. Known to play dirty, but loves to play clean."@10505
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_73_0"@10506
conv.s.v
push.s "Dusty Places"@10507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_74_0"@10508
conv.s.v
push.s "Vacuum"@10509
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
pushi.e 4
pop.v.i self._level
pushi.e 4
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_79_0"@10510
conv.s.v
push.s "RABBIT:DUST"@10511
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_80_0"@10512
conv.s.v
push.s "* (Looks like it wants to be dabbed with rubbing alcohol.)/%"@10513
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [40]

:[25]
pushi.e 1622
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_85_0"@10514
conv.s.v
push.s "Bloxer"@7234
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_86_0"@10515
conv.s.v
push.s "A shape changing fighter. Ironically, blocking is not its forte."@10516
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_87_0"@10517
conv.s.v
push.s "Cross-Trainers"@10518
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_88_0"@10519
conv.s.v
push.s "Formal Shoewear"@10520
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
pushi.e 4
pop.v.i self._level
pushi.e 4
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_93_0"@10521
conv.s.v
push.s "FIGHT"@10522
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_94_0"@10523
conv.s.v
push.s "* Everything tastes better with a normally-shaped body!/%"@10524
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [40]

:[26]
pushi.e 1617
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_99_0"@10525
conv.s.v
push.s "Jigsawry"@7241
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_100_0"@10526
conv.s.v
push.s "It cries tears of joy that you are its boss."@10527
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_101_0"@10528
conv.s.v
push.s "Fitting In"@10529
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_102_0"@10530
conv.s.v
push.s "Susie's Ax"@10531
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
pushi.e 1
pop.v.i self._level
pushi.e 4
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_107_0"@10532
conv.s.v
push.s "MOUSE:PUZZ"@10533
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_108_0"@10534
conv.s.v
push.s "* Lemonade? ..^1. Please./%"@10535
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [40]

:[27]
pushi.e 1628
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_113_0"@10536
conv.s.v
push.s "JEVIL"@7279
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_114_0"@10537
conv.s.v
push.s "An agent of CHAOS, he became DEVILSKNIFE to the pocket."@10538
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_115_0"@10539
conv.s.v
push.s "CHAOS"@10540
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_116_0"@10541
conv.s.v
push.s "BOREDOM"@10542
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
push.s "scr_recruit_info_slash_scr_recruit_info_gml_118_0"@10543
conv.s.v
push.s "???"@9069
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._level
pushi.e 10
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_121_0"@10544
conv.s.v
push.s "CHAOS:CHAOS"@10545
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_122_0"@10546
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 0
pop.v.i self._placeable
b [40]

:[28]
pushi.e 1607
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_128_0"@10547
conv.s.v
push.s "Rudinn Ranger"@7298
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_129_0"@10548
conv.s.v
push.s "Obsessed with ranger shows, it lets everyone know it's better than Rudinn."@10549
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_130_0"@10550
conv.s.v
push.s "Sucking Up"@10551
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_131_0"@10552
conv.s.v
push.s "Show Getting Taped Over"@10553
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
pushi.e 5
pop.v.i self._level
pushi.e 4
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_136_0"@10554
conv.s.v
push.s "JEWEL:BLADE"@10555
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_137_0"@10556
conv.s.v
push.s "* Boss...? You're treating me...? Oh^1, you shouldn't have^1! (smile)/%"@10557
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [40]

:[29]
pushi.e 1578
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_142_0"@10558
conv.s.v
push.s "Head Hathy"@7303
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_143_0"@10559
conv.s.v
push.s "Although stronger than Hathy, seems to have fewer friends."@10560
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_144_0"@10561
conv.s.v
push.s "Peace And Quiet"@10562
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_145_0"@10563
conv.s.v
push.s "Being Alone"@10564
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 1
pop.v.i self._chapter
pushi.e 5
pop.v.i self._level
pushi.e 5
pop.v.i self._attack
pushi.e 5
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_150_0"@10565
conv.s.v
push.s "HEART:ICE"@10566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_151_0"@10567
conv.s.v
push.s "* (Head Hathy drinks an ice tea in silence...)/%"@10568
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
b [40]

:[30]
pushi.e 1630
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_156_0"@10569
conv.s.v
push.s "Ambyu-Lance"@7329
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_157_0"@10570
conv.s.v
push.s "An aggressive antivirus. It's not down with the sickness."@10571
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_158_0"@10572
conv.s.v
push.s "Loud Sirens"@10573
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_159_0"@10574
conv.s.v
push.s "Funny Sound Effects"@10575
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 8
pop.v.i self._level
pushi.e 8
pop.v.i self._attack
pushi.e 8
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_164_0"@10576
conv.s.v
push.s "ORDER:ELEC"@10577
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_165_0"@10578
conv.s.v
push.s "* Pipooo^1! Nothing beats a nice shot of espresso..^1. Want me to give you a \"shot\"^1, too!?/%"@10579
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 4
pop.v.i self._recruitcount
b [40]

:[31]
pushi.e 1644
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_171_0"@10580
conv.s.v
push.s "Poppup"@7347
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_172_0"@10581
conv.s.v
push.s "Known to say ASOBOH, which means \"Let's Play!\" ... does it know that?"@10582
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_173_0"@10583
conv.s.v
push.s "LEEMO FRUIT"@10584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_174_0"@10585
conv.s.v
push.s "ADBLOCK"@10586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 8
pop.v.i self._level
pushi.e 9
pop.v.i self._attack
pushi.e 3
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_179_0"@10587
conv.s.v
push.s "VIRUS"@10588
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_181_0"@10589
conv.s.v
push.s "* NOMU NOMU.&* BERRY GOOD!/%"@10590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 3
pop.v.i self._recruitcount
b [40]

:[32]
pushi.e 1669
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_188_0"@10591
conv.s.v
push.s "Tasque"@7358
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_189_0"@10592
conv.s.v
push.s "This cat loves you!"@10593
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_190_0"@10594
conv.s.v
push.s "Cat Food"@10595
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_191_0"@10596
conv.s.v
push.s "Cat Food"@10595
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 7
pop.v.i self._level
pushi.e 8
pop.v.i self._attack
pushi.e 6
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_196_0"@10597
conv.s.v
push.s "CAT:ELEC"@10598
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_197_0"@10599
conv.s.v
push.s "* (It's drinking K_K's electric milk JPEG.)/%"@10600
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 5
pop.v.i self._recruitcount
b [40]

:[33]
pushi.e 1710
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_203_0"@10601
conv.s.v
push.s "Werewire"@7372
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_204_0"@10602
conv.s.v
push.s "It was controlled by Queen. But, it's stronger and cooler now, so?"@10603
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_205_0"@10604
conv.s.v
push.s "Shock Therapy"@10605
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_206_0"@10606
conv.s.v
push.s "Emotional Therapy"@10607
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 7
pop.v.i self._level
pushi.e 8
pop.v.i self._attack
pushi.e 7
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_211_0"@10608
conv.s.v
push.s "ELEC"@10609
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_212_0"@10610
conv.s.v
push.s "* (It has some kind of energy drink.)/%"@10611
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 6
pop.v.i self._recruitcount
b [40]

:[34]
pushi.e 1746
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_218_0"@10612
conv.s.v
push.s "Maus"@7384
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_219_0"@10613
conv.s.v
push.s "It dreams of re-enacting scenes from cat and mouse cartoons."@10614
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_220_0"@10615
conv.s.v
push.s "Clicking"@10616
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_221_0"@10617
conv.s.v
push.s "Clicking On Poppup"@10618
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 6
pop.v.i self._level
pushi.e 8
pop.v.i self._attack
pushi.e 2
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_226_0"@10619
conv.s.v
push.s "MOUSE:ELEC"@10620
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_227_0"@10621
conv.s.v
push.s "* (It's drinking melted cheese.)/%"@10622
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 3
pop.v.i self._recruitcount
b [40]

:[35]
pushi.e 1797
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_233_0"@10623
conv.s.v
push.s "Virovirokun"@7399
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_234_0"@10624
conv.s.v
push.s "A virus with a slightly criminal streak... and a heart of gold."@10625
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_235_0"@10626
conv.s.v
push.s "Retro Games"@10627
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_236_0"@10628
conv.s.v
push.s "Federal Justice System"@10629
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 7
pop.v.i self._level
pushi.e 8
pop.v.i self._attack
pushi.e 6
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_241_0"@10630
conv.s.v
push.s "VIRUS"@10588
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_242_0"@10631
conv.s.v
push.s "* Wanna share my soda? We'll both get sick that way..^1. Hee hee./%"@10632
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 4
pop.v.i self._recruitcount
b [40]

:[36]
pushi.e 1225
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_248_0"@10633
conv.s.v
push.s "Swatchling"@7410
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_249_0"@10634
conv.s.v
push.s "Colorful and dandy, you can always count on him to work hard."@10635
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_250_0"@10636
conv.s.v
push.s "Paint By Numbers"@10637
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_251_0"@10638
conv.s.v
push.s "Mixed Messages"@10639
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 9
pop.v.i self._level
pushi.e 9
pop.v.i self._attack
pushi.e 9
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_256_0"@10640
conv.s.v
push.s "COLOR"@10641
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_257_0"@10642
conv.s.v
push.s "* Boss? Shall we sit down and enjoy a nice earl grey?/%"@10643
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 5
pop.v.i self._recruitcount
b [40]

:[37]
pushi.e 2082
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_263_0"@10644
conv.s.v
push.s "Werewerewire"@7453
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_264_0"@10645
conv.s.v
push.s "It absorbed the wire with fighting spirit. Gets flustered easily."@10646
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_265_0"@10647
conv.s.v
push.s "Supercharged Fighting"@10648
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_266_0"@10649
conv.s.v
push.s "Interpersonal Relationships"@10650
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 14
pop.v.i self._level
pushi.e 11
pop.v.i self._attack
pushi.e 11
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_271_0"@10651
conv.s.v
push.s "ELEC:FIGHT"@10652
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_272_0"@10653
conv.s.v
push.s "* (..^1. it's crushing its energy drink with its hand...)/%"@10654
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 1
pop.v.i self._recruitcount
b [40]

:[38]
pushi.e 1271
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_279_0"@10655
conv.s.v
push.s "Tasque Manager"@7469
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_280_0"@10656
conv.s.v
push.s "Loves to coordinate outfits. Strongly dislikes clowns."@10657
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_281_0"@10658
conv.s.v
push.s "New Wave Synth Pop"@10659
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_282_0"@10660
conv.s.v
push.s "Mismatched Socks"@10661
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 10
pop.v.i self._level
pushi.e 10
pop.v.i self._attack
pushi.e 7
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_287_0"@10662
conv.s.v
push.s "CAT:ORDER"@10663
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_288_0"@10664
conv.s.v
push.s ""@157
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 0
pop.v.i self._placeable
pushi.e 1
pop.v.i self._recruitcount
b [40]

:[39]
pushi.e 2087
pop.v.i self._sprite
push.s "scr_recruit_info_slash_scr_recruit_info_gml_295_0"@10665
conv.s.v
push.s "Mauswheel"@7494
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._name
push.s "scr_recruit_info_slash_scr_recruit_info_gml_296_0"@10666
conv.s.v
push.s "You recruited 3 big mice and you're stuck with it."@10667
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._desc
push.s "scr_recruit_info_slash_scr_recruit_info_gml_297_0"@10668
conv.s.v
push.s "Pretending To Be A Tire"@10669
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._like
push.s "scr_recruit_info_slash_scr_recruit_info_gml_298_0"@10670
conv.s.v
push.s "Losing Momentum"@10671
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._dislike
pushi.e 2
pop.v.i self._chapter
pushi.e 13
pop.v.i self._level
pushi.e 10
pop.v.i self._attack
pushi.e 11
pop.v.i self._defense
push.s "scr_recruit_info_slash_scr_recruit_info_gml_303_0"@10672
conv.s.v
push.s "MOUSE:MOUSE:MOUSE"@10673
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self._element
push.s "scr_recruit_info_slash_scr_recruit_info_gml_304_0"@10674
conv.s.v
push.s "* (It's getting electricity from the melted cheese like a water wheel)/%"@10675
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self._dialogue
pushi.e 1
pop.v.i self._recruitcount
b [40]

:[40]
popz.v
push.v self._sprite
pushi.e 2444
cmp.i.v EQ
bf [42]

:[41]
pushi.e 500
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self._sprite
pushi.e 0
pop.v.i self._placeable

:[42]
pushi.e -5
push.v arg.argument0
pushi.e 600
add.i.v
conv.v.i
push.v [array]self.flag
pushi.e 1
conv.i.d
push.v self._recruitcount
div.v.d
div.v.v
call.i round(argc=1)
pop.v.v self._recruitcountcurrent
exit.i

:[43]
push.i [function]gml_Script_scr_recruit_info
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_recruit_info
popz.v

:[end]