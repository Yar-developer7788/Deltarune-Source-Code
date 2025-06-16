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
push.d 0.2
pop.v.d self.image_speed
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.d 0.1
pop.v.d self.image_speed

:[4]
push.i 231251
setowner.e
push.s "obj_npc_facing_slash_Other_10_gml_12_0"@19473
conv.s.v
push.s "* Is that a cut on your face^1, or part of your eye?/%"@19474
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [6]

:[5]
push.s "* [NO TEXT] (obj_npc_facing)/%"@19475
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[6]
pushbltn.v builtin.room
pushi.e 61
cmp.i.v EQ
bf [48]

:[7]
push.v self.utsprite
pushi.e 752
cmp.i.v EQ
bf [13]

:[8]
pushi.e 100
pop.v.i global.msc
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
pushi.e 102
pop.v.i global.msc

:[10]
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 0
pop.v.i global.fe
pushi.e 3
pop.v.i global.fc
pushi.e 12
pop.v.i global.typer
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [13]

:[11]
push.s "obj_npc_facing_slash_Other_10_gml_31_0"@19476
conv.s.v
push.s "* Don't worry^1, Kris!/"@19477
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_32_0"@19478
conv.s.v
push.s "\\E4* I've always thought Susie can't be so bad^1, you know?/"@19479
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_33_0"@19480
conv.s.v
push.s "\\E0* I'm sure everything will turn out fine!/%"@19481
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [13]

:[12]
pushi.e 23
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_39_0"@19482
conv.s.v
push.s "* And^1, if you have time^1, could you say hi to her for me...?/%"@19483
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[13]
push.v self.utsprite
pushi.e 931
cmp.i.v EQ
bf [19]

:[14]
pushi.e 12
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 13
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_50_0"@19484
conv.s.v
push.s "* Ah^1, Kris^1.&* Late again^1, I see./"@19485
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_51_0"@19486
conv.s.v
push.s "\\E0* Hmm? You need a partner?/"@19487
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_52_0"@19488
conv.s.v
push.s "\\E1* Sorry^1, I'm already partners with the 2nd smartest student./"@19489
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_53_0"@19490
conv.s.v
push.s "\\E3* Though..^1. wait^1!&* Kris^1, now that I think about it.../"@19491
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_54_0"@19492
conv.s.v
push.s "\\E4* Your unique skillset might help a LOT on this assignment!/"@19493
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_55_0"@19494
conv.s.v
push.s "\\E2* Pfft^1, NOT^1!&* I actually want to get an \"A!\"/%"@19495
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [16]

:[15]
push.s "obj_npc_facing_slash_Other_10_gml_59_0"@19496
conv.s.v
push.s "* Ask elsewhere^1, Kris! I actually want to get an \"A!\"/"@19497
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_60_0"@19498
conv.s.v
push.s "\\E2* If you can't get anyone^1, maybe your mom will be your partner again!/%"@19499
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[16]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [19]

:[17]
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_67_0"@19500
conv.s.v
push.s "\\E3* Kris^1, didn't I SAY being late was a bad idea?/"@19501
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_68_0"@19502
conv.s.v
push.s "\\E0* Hmm^1, it's almost as if you should have^1, as they say.../"@19503
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_69_0"@19504
conv.s.v
push.s "\\E1* Listened?/%"@19505
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [19]

:[18]
push.s "obj_npc_facing_slash_Other_10_gml_73_0"@19506
conv.s.v
push.s "\\E0* Alas^1, Kris^1.&* I already tried to help you.../%"@19507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[19]
push.v self.utsprite
pushi.e 952
cmp.i.v EQ
bf [25]

:[20]
push.s "obj_npc_facing_slash_Other_10_gml_83_0"@19508
conv.s.v
push.s "* Partn'er^1?&* I hardly know 'er!!/"@19509
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_84_0"@19510
conv.s.v
push.s "* Ha ha ha!^1!&* Whaddya think of that one!^1?&* Funny^1, right???/"@19511
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_85_0"@19512
conv.s.v
push.s "* ... No?/"@19513
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_86_0"@19514
conv.s.v
push.s "* Well^1, I got NEWS for you^1, PAL^1!&* I already GOT a partner!^1!&* SCRAM!/%"@19515
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [22]

:[21]
push.s "obj_npc_facing_slash_Other_10_gml_90_0"@19516
conv.s.v
push.s "* That's right^1, KRIS^1!&* I got the GOOD partner!/"@19517
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_91_0"@19518
conv.s.v
push.s "* And WE'RE going to be laughing all the way to the BANK!/"@19519
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_92_0"@19520
conv.s.v
push.s "* Because I need money^1, and I'm also VERY funny./%"@19521
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[22]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [25]

:[23]
push.s "obj_npc_facing_slash_Other_10_gml_98_0"@19522
conv.s.v
push.s "* Kris^1, don't listen to 'em^1.&* It's not that bad./"@19523
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_99_0"@19524
conv.s.v
push.s "* You'll PROBABLY survive Susie beating you up./"@19525
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_100_0"@19526
conv.s.v
push.s "* You're just gonna fail when she doesn't do ANY of your project!!/"@19527
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_101_0"@19528
conv.s.v
push.s "* It's like we always say^1, Kris..^1.&* You SUZ, you LOSE!!!/"@19529
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_102_0"@19530
conv.s.v
push.s "* ... uhhh^1, that's not very reassuring, huh./%"@19531
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
push.s "obj_npc_facing_slash_Other_10_gml_106_0"@19532
conv.s.v
push.s "\\E0* Hey Kris^1, if you die^1, can I have your brother's CDs?/%"@19533
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[25]
push.v self.utsprite
pushi.e 957
cmp.i.v EQ
bf [31]

:[26]
push.s "obj_npc_facing_slash_Other_10_gml_116_0"@19534
conv.s.v
push.s "* Yo^1, Kris^1!&* Show up earlier next time!/"@19535
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_117_0"@19536
conv.s.v
push.s "* I ended up having to partner with Snowy^1, haha.../"@19537
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_118_0"@19538
conv.s.v
push.s "* Now he keeps turning to me and saying \"Howdy, Partner!\" like a cowboy.../%"@19539
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [28]

:[27]
push.s "obj_npc_facing_slash_Other_10_gml_122_0"@19540
conv.s.v
push.s "* Yo^1, Kris^1, you're lucky^1.&* I'd rather be partnerless than this^1, haha.../%"@19541
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[28]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [31]

:[29]
push.s "obj_npc_facing_slash_Other_10_gml_128_0"@19542
conv.s.v
push.s "* Yo^1! Kris^1! I'm sorry^1!&* If I had just waited to be your partner.../"@19543
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_129_0"@19544
conv.s.v
push.s "* You wouldn't have to be HER'S^1!&* She's gonna pound you to pieces^1, Kris!/"@19545
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_130_0"@19546
conv.s.v
push.s "* And then kick the butts of all those little pieces!/%"@19547
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
push.s "obj_npc_facing_slash_Other_10_gml_134_0"@19548
conv.s.v
push.s "\\E0* Kris^1, just keep running and don't look back!/%"@19549
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[31]
push.v self.utsprite
pushi.e 942
cmp.i.v EQ
bf [34]

:[32]
pushi.e 13
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_147_0"@19550
conv.s.v
push.s "\\E0* (Click, click, tap, tap...)/"@19551
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_148_0"@19552
conv.s.v
push.s "\\E1* ... taken./%"@19553
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [34]

:[33]
push.s "obj_npc_facing_slash_Other_10_gml_152_0"@19554
conv.s.v
push.s "\\E0* (Click, click, tap, tap...)/"@19551
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_153_0"@19555
conv.s.v
push.s "\\E2* ... don't die./%"@19556
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[34]
push.v self.utsprite
pushi.e 943
cmp.i.v EQ
bf [39]

:[35]
pushi.e 14
pop.v.i global.fc
push.s "obj_npc_facing_slash_Other_10_gml_161_0"@19557
conv.s.v
push.s "* Kris^1! You KNOW Jockington and Catti^1, Are ALWAYS partners!/"@19558
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_162_0"@19559
conv.s.v
push.s "* We're the ultimate academic duo^1, Ever since our first gym class!/"@19560
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_163_0"@19561
conv.s.v
push.s "* It was hula hoop day^1, and they ran out of hoops^1, for us.../"@19562
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_164_0"@19563
conv.s.v
push.s "* So she used me instead^1!&* That's our origin story!/%"@19564
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [37]

:[36]
push.s "obj_npc_facing_slash_Other_10_gml_168_0"@19565
conv.s.v
push.s "* We SEEM different^1, but me and Catti have a TON^1, In common!/"@19566
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_169_0"@19567
conv.s.v
push.s "* We both like breathing^1, and unhinging our jaws!/%"@19568
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[37]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [39]

:[38]
push.s "obj_npc_facing_slash_Other_10_gml_176_0"@19569
conv.s.v
push.s "\\E0* Kris^1, if I had arms.../"@19570
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_177_0"@19571
conv.s.v
push.s "\\E2* I would take off this cool hat in rememberance of you./%"@19572
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[39]
push.v self.utsprite
pushi.e 920
cmp.i.v EQ
bf [48]

:[40]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [45]

:[41]
pushi.e 11
pop.v.i global.fc
pushi.e 20
pop.v.i global.typer
pushi.e 3
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_189_0"@19573
conv.s.v
push.s "\\E3* What?&* Wh-what am I watching on my phone?/"@19574
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_190_0"@19575
conv.s.v
push.s "\\E0* It's schoolwork^1, of course./"@19576
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_191_0"@19577
conv.s.v
push.s "\\E4* A..^1. animated schoolwork..^1. and.../"@19578
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_192_0"@19579
conv.s.v
push.s "\\E5* H-hey^1, Kris^1, have you chosen a partner yet?/%"@19580
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [43]

:[42]
pushi.e 7
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_196_0"@19581
conv.s.v
push.s "\\E7* (Don't worry^1, Mew Mew.^1)&* (You'll ALWAYS be MY partner.)/%"@19582
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[43]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [45]

:[44]
pushi.e 5
pop.v.i global.fe
push.s "obj_npc_facing_slash_Other_10_gml_202_0"@19583
conv.s.v
push.s "* Kris^1? What's the hold-up?&* Go out there!/%"@19584
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[45]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [48]

:[46]
push.s "alphys"@555
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_208_0"@19585
conv.s.v
push.s "\\E0* Kris^1, get a good sleep tonight^1, okay?/%"@19586
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
pushi.e 1000
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[48]
pushbltn.v builtin.room
pushi.e 52
cmp.i.v EQ
bf [68]

:[49]
pushbltn.v builtin.room
pushi.e 52
cmp.i.v EQ
bf [68]

:[50]
push.v self.x
pushi.e 140
cmp.i.v LT
bf [60]

:[51]
pushi.e 12
pop.v.i global.fc
pushi.e 13
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_230_0"@19587
conv.s.v
push.s "\\E3* Kris^1!&* You survived Susie^1!&* I was getting worried!/"@19588
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 256
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [53]

:[52]
push.s "obj_npc_facing_slash_Other_10_gml_232_0"@19589
conv.s.v
push.s "\\E0* OK^1, Kris^1, now for something more important./"@19590
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[53]
push.s "obj_npc_facing_slash_Other_10_gml_233_0"@19591
conv.s.v
push.s "\\E1* Now you can finally pay off your family debt./"@19592
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_234_0"@19593
conv.s.v
push.s "\\E0* How to Draw Dragons is 2583 days overdue./"@19594
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_235_0"@19595
conv.s.v
push.s "\\E2* However^1, Kris^1.&* I am a benevolent volunteer assistant./"@19596
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_236_0"@19597
conv.s.v
push.s "\\E4* If you turn it in this week^1, I'll reduce your fine to.../"@19598
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_237_0"@19599
conv.s.v
push.s "\\E2* A mere $64.23^1!&* Consider it^1, Kris!/%"@19600
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [55]

:[54]
push.s "obj_npc_facing_slash_Other_10_gml_241_0"@19601
conv.s.v
push.s "\\E3* Ah^1, did you forget what it looks like?/"@19602
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_242_0"@19603
conv.s.v
push.s "\\E0* The front is^1, perhaps..^1. a mauve dragon wearing lipstick./"@19604
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_243_0"@19605
conv.s.v
push.s "\\E0* And as for her clothes^1, I believe they are^1, well.../"@19606
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_244_0"@19607
conv.s.v
push.s "\\E2* You know^1, Kris^1, I think you'll know it when you see it!/%"@19608
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[55]
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [57]

:[56]
pushi.e -5
pushi.e 256
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
push.s "obj_npc_facing_slash_Other_10_gml_249_0"@19609
conv.s.v
push.s "\\E3* What^1? Hospital window^1? What are you talking about?/"@19610
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_250_0"@19611
conv.s.v
push.s "\\E5* I'm sorry^1, Kris^1.&* I don't have time to do such things./"@19612
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_251_0"@19613
conv.s.v
push.s "\\E0* Because I'm..^1. Hmm..^1. What do they say?/"@19614
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_252_0"@19615
conv.s.v
push.s "\\E2* CONTRIBUTING TO SOCIETY?/"@19616
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_253_0"@19617
conv.s.v
push.s "\\E2* You should try it someday^1, Kris!/"@19618
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_254_0"@19619
conv.s.v
push.s "\\E2* It's actually quite gratifying!/%"@19620
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 256
pop.v.v [array]self.flag
pushi.e -1
pop.v.i self.talked

:[60]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [62]

:[61]
push.v self.x
pushi.e 220
cmp.i.v LT
b [63]

:[62]
push.e 0

:[63]
bf [66]

:[64]
pushi.e 14
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_npc_facing_slash_Other_10_gml_269_0"@19621
conv.s.v
push.s "* Kris^1! What'sup!/"@19622
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_270_0"@19623
conv.s.v
push.s "* Catti's working^1, so I'm starting^1, on our Project!/"@19624
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_271_0"@19625
conv.s.v
push.s "* I've already^1, copied a bunch of pictures./"@19626
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
call.i gml_Script_scr_noface(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_273_0"@19627
conv.s.v
push.s "* (It's the same picture of a soccer ball 73 times.)/%"@19628
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [66]

:[65]
push.s "obj_npc_facing_slash_Other_10_gml_277_0"@19629
conv.s.v
push.s "* You could say I'm having a Ball^1!&* Hah haha!/%"@19630
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[66]
push.v self.x
pushi.e 220
cmp.i.v GT
bf [68]

:[67]
push.s "obj_npc_facing_slash_Other_10_gml_283_0"@19631
conv.s.v
push.s "* gotta go to colleg..^1.&* so tem stuby..^1.&* HARD!!!!/"@19632
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_284_0"@19633
conv.s.v
push.s "* (She's reading a comic full of hot demon guys.)/%"@19634
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[68]
pushbltn.v builtin.room
pushi.e 50
cmp.i.v EQ
bf [71]

:[69]
pushi.e 10
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 18
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_297_0"@19635
conv.s.v
push.s "\\E1* Say^1, Kris..^1.&* I was thinking./"@19636
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_298_0"@19637
conv.s.v
push.s "\\E3* Perhaps when Asriel comes home.../"@19638
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_299_0"@19639
conv.s.v
push.s "\\E0* We could all go to the diner^1, just like old times.../"@19640
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_300_0"@19641
conv.s.v
push.s "\\E6* My treat./"@19642
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_301_0"@19643
conv.s.v
push.s "\\E0* Doesn't that sound yummy?/%"@19644
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [71]

:[70]
push.s "obj_npc_facing_slash_Other_10_gml_305_0"@19645
conv.s.v
push.s "\\E1* Then we could all have a nice drive around town./"@19646
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_306_0"@19647
conv.s.v
push.s "\\E2* I might need to clean out my truck^1, but.../%"@19648
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[71]
pushbltn.v builtin.room
pushi.e 51
cmp.i.v EQ
bf [73]

:[72]
pushi.e 10
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e 18
pop.v.i global.typer
push.s "obj_npc_facing_slash_Other_10_gml_315_0"@19649
conv.s.v
push.s "\\E2* Yes^1, these flowers are still kicking./"@19650
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_facing_slash_Other_10_gml_316_0"@19651
conv.s.v
push.s "\\E0* Quite hard to take care of them in this climate.../%"@19652
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[73]
pushbltn.v builtin.room
pushi.e 53
cmp.i.v EQ
bf [75]

:[74]
pushi.e 11
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 20
pop.v.i global.typer
pushi.e 285
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[75]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [78]

:[76]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
pushi.e 17
pop.v.i global.typer
pushi.e 335
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[78]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [84]

:[79]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 14
pop.v.i global.typer
pushi.e 6
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 370
pop.v.i global.msc
pushi.e -5
pushi.e 273
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [81]

:[80]
pushi.e 371
pop.v.i global.msc

:[81]
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 79
pushenv [83]

:[82]
pushi.e 70
pop.v.i self.con

:[83]
popenv [82]

:[84]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [87]

:[85]
push.v self.dtsprite
pushi.e 749
cmp.i.v EQ
bf [87]

:[86]
pushi.e 385
pop.v.i global.msc
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[87]
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
bf [90]

:[88]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_376_0"@19653
conv.s.v
push.s "\\E2* (Kris^1, go to the old classroom and bring everything back here.)/"@19654
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_377_0"@19655
conv.s.v
push.s "\\E0* (It's where you returned to the Light World last time.)/"@19656
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_378_0"@19657
conv.s.v
push.s "\\E2* (Head EAST after you exit the Dark World.)/%"@19658
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e -5
pushi.e 300
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_383_0"@19659
conv.s.v
push.s "\\E1* .../"@1054
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_384_0"@19660
conv.s.v
push.s "\\EJ* Umm^1, sorry^1! Just thinking.../"@19661
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_385_0"@19662
conv.s.v
push.s "\\E2* Perhaps we don't need that dummy anymore!/"@19663
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_386_0"@19664
conv.s.v
push.s "\\E1* (..^1. maybe you could just use the real thing?)/%"@19665
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[90]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [106]

:[91]
push.v self.x
pushi.e 310
cmp.i.v GT
bf [93]

:[92]
push.v self.x
pushi.e 438
cmp.i.v LT
b [94]

:[93]
push.e 0

:[94]
bf [98]

:[95]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [97]

:[96]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_398_0"@19666
conv.s.v
push.s "\\E2* We got this^1, Kris. We're the good guys^1, right?/"@19667
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_399_0"@19668
conv.s.v
push.s "\\E5* All we have to do is figure out some way to cheat.../%"@19669
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [98]

:[97]
push.s "obj_npc_facing_slash_Other_10_gml_402_0"@19670
conv.s.v
push.s "THEN WHY DOES IT TAKE QUARTERS!?"@19671
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "mid"@5602
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
push.s "obj_npc_facing_slash_Other_10_gml_405_0"@19672
conv.s.v
push.s "\\E2* ..^1. Got it^1! While she's distracted^1,/"@19673
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_406_0"@19674
conv.s.v
push.s "\\E5* I'll reach in the bottom and try to steal a free cola!/"@19675
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_408_0"@19676
conv.s.v
push.s "\\E1* Cola Machine Not Equals Arcade Game\\f0/%"@19677
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[98]
push.v self.x
pushi.e 310
cmp.i.v LT
bf [102]

:[99]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [101]

:[100]
pushi.e 1177
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [102]

:[101]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_420_0"@19678
conv.s.v
push.s "\\EH* Do your best^1, Kris^1! I'll be cheering you with magic pom-poms!/%"@19679
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[102]
push.v self.x
pushi.e 438
cmp.i.v GT
bf [106]

:[103]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [105]

:[104]
push.s "obj_npc_facing_slash_Other_10_gml_427_0"@19680
conv.s.v
push.s "Also, Happy Birthday Susie"@19681
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "top"@6226
conv.s.v
push.s "left"@5994
conv.s.v
pushi.e 12
conv.i.v
push.s "queen"@3525
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_428_0"@19682
conv.s.v
push.s "Happy Birthday!"@19683
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "mid"@5602
conv.s.v
pushi.e 150
conv.i.v
pushi.e 17
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_429_0"@19684
conv.s.v
push.s "IT'S NOT MY BIRTHDAY!!!"@19685
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
pushi.e 250
conv.i.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_432_0"@19686
conv.s.v
push.s "\\E1* Oh Kris Congratulations On: Losing Horribly/"@19687
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_433_0"@19688
conv.s.v
push.s "\\ED* I Advanced My Internal Clock To When I've Already Won/"@19689
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_435_0"@19690
conv.s.v
push.s "\\f0 \\f1\\f2/%"@19691
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [106]

:[105]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_439_0"@19692
conv.s.v
push.s "\\E1* Did You Notice You Have Been Served/"@19693
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_440_0"@19694
conv.s.v
push.s "\\ED* Your Giant Arcade Machine Is Going To Get Cold/%"@19695
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[106]
pushbltn.v builtin.room
pushi.e 126
cmp.i.v EQ
bf [117]

:[107]
pushi.e 1162
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [117]

:[108]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
pushi.e 0
pop.v.i self.scarecount
push.v 1162.scaredAgainCount
pop.v.v self.scarecount
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [110]

:[109]
push.s "obj_npc_facing_slash_Other_10_gml_456_0"@19698
conv.s.v
push.s "\\E0* Kris^1, I think you can push those blocks.../"@19699
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_457_0"@19700
conv.s.v
push.s "\\E3* M-me^1? N-no^1, I couldn't go over there^1, I.../%"@19701
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[110]
push.v self.scarecount
pushi.e 0
cmp.i.v EQ
bf [112]

:[111]
push.v self.talked
pushi.e 0
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
bf [115]

:[114]
push.s "obj_npc_facing_slash_Other_10_gml_461_0"@19702
conv.s.v
push.s "\\E4* Kris..^1. isn't this room strange^1, though?/"@19703
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_462_0"@19704
conv.s.v
push.s "\\E2* Those blocks look like something from Dragon Blazers.../"@19705
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_463_0"@19706
conv.s.v
push.s "\\E8* Maybe if you push them in the mice's way...?/%"@19707
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[115]
push.v self.scarecount
pushi.e 1
cmp.i.v GTE
bf [117]

:[116]
push.s "obj_npc_facing_slash_Other_10_gml_467_0"@19708
conv.s.v
push.s "\\E2* D-don't let the mice hit the walls^1, Kris!/"@19709
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_468_0"@19710
conv.s.v
push.s "\\E3* They'll bounce over here and crawl on me...!/%"@19711
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[117]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [124]

:[118]
pushi.e 1164
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [124]

:[119]
pushi.e 0
pop.v.i self.scarecount
pushi.e 1164
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [121]

:[120]
push.v 1164.scarecount
pop.v.v self.scarecount

:[121]
pushi.e -5
pushi.e 415
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
pushi.e 1183
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [124]

:[123]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_489_0"@19712
conv.s.v
push.s "\\E2* (Y'know^1, I'm pretty sure I know how to solve this.)/"@19713
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_490_0"@19714
conv.s.v
push.s "\\E3* (Just^1, I d-don't think I can do it myself...)/%"@19715
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[124]
pushbltn.v builtin.room
pushi.e 78
cmp.i.v EQ
bf [128]

:[125]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_500_0"@19716
conv.s.v
push.s "\\E1* Ralsei Will Soon Setup.EXE My Room For Me Upstairs/"@17552
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_501_0"@19717
conv.s.v
push.s "\\EA* Do Not Worry/"@19718
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_502_0"@19719
conv.s.v
push.s "\\EP* I Have A Long Spreadsheet Of Demands Ready Ha Ha/"@17556
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_504_0"@19720
conv.s.v
push.s "\\EQ* Umm^1, I-I'll try my best!/"@19721
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_506_0"@19722
conv.s.v
push.s "\\E1* Quick Q How Many Breakable Pots Do You Have/"@19723
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 22
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_508_0"@19724
conv.s.v
push.s "\\EM* I..^1. Let me count and get back to you on that.../%"@19725
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [128]

:[127]
push.s "queen"@3525
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_512_0"@19726
conv.s.v
push.s "\\E1* Kris^1, Do Give Noelle My Regards/"@17578
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_facing_slash_Other_10_gml_513_0"@19727
conv.s.v
push.s "\\EB* Any Leftover Regards You Can Give To Berdly/%"@19728
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[128]
push.v self.image_speed
pop.v.v self.remanimspeed
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]