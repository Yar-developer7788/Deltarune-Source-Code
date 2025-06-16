.localvar 2 arguments
.localvar 17928 sold_out_talk 7364
.localvar 17981 nubert_check 7366
.localvar 15767 sentenceEnd 7367

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
push.i 231251
setowner.e
push.s "obj_npc_room_animated_slash_Other_10_gml_8_0"@17749
conv.s.v
push.s "* The pain itself is reason why./%"@17750
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [4]

:[3]
push.s "* [NO TEXT] (obj_npc_room_animated)/%"@17751
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[4]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [14]

:[5]
push.v self.sprite_index
pushi.e 1066
cmp.i.v EQ
bf [8]

:[6]
push.s "obj_npc_room_animated_slash_Other_10_gml_15_0"@17752
conv.s.v
push.s "* Would you be interested in trying some of our many 24 Pezza Flavors?/"@17753
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_16_0"@17754
conv.s.v
push.s "* We've got Normal,/"@17755
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_17_0"@17756
conv.s.v
push.s "* Cheese,/"@17757
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_18_0"@17758
conv.s.v
push.s "* Ice,/"@17759
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_19_0"@17760
conv.s.v
push.s "* Gravy,/"@17761
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_20_0"@17762
conv.s.v
push.s "* Double Ice,/"@17763
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_21_0"@17764
conv.s.v
push.s "* Peeperoniss,/"@17765
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_22_0"@17766
conv.s.v
push.s "* And more^1!&* Stop on down at ICE-E's PEZZA!/%"@17767
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [8]

:[7]
push.s "obj_npc_room_animated_slash_Other_10_gml_26_0"@17768
conv.s.v
push.s "* Psst^1, can I tell you a mascot secret^1? I only started working here because.../"@17769
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_27_0"@17770
conv.s.v
push.s "* The logo made me think it was an ice-cream shop.../"@17771
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_28_0"@17772
conv.s.v
push.s "* But I ended up really loving my job^1! And my co-workers^1, too^1! Heehee!/%"@17773
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[8]
push.v self.sprite_index
pushi.e 1067
cmp.i.v EQ
bf [10]

:[9]
push.s "obj_npc_room_animated_slash_Other_10_gml_35_0"@17774
conv.s.v
push.s "* ICE ME UP^1!&* ICE ME UP^1, BOSS!!!/%"@17775
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[10]
push.v self.sprite_index
pushi.e 1065
cmp.i.v EQ
bf [14]

:[11]
push.s "obj_npc_room_animated_slash_Other_10_gml_40_0"@17776
conv.s.v
push.s "* (Oh^1, God^1, someone's actually here...)&* Uhhhh.../"@17777
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_41_0"@17778
conv.s.v
push.s "* Ice E's P\"E\"ZZA^1, You're number \"#1\" Spot for a piping hot pe\"E\"ce of PEZZA./"@17779
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_42_0"@17780
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_43_0"@17781
conv.s.v
push.s "* ... H..^1. Hey^1!&* Hey^1, wait a second!/"@17782
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_44_0"@17783
conv.s.v
push.s "* I recognize you!/%"@17784
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 79
pushenv [13]

:[12]
pushi.e 20
pop.v.i self.con

:[13]
popenv [12]

:[14]
pushbltn.v builtin.room
pushi.e 48
cmp.i.v EQ
bf [23]

:[15]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [18]

:[16]
push.s "obj_npc_room_animated_slash_Other_10_gml_51_0"@17785
conv.s.v
push.s "* I like the vibe of the waitresses here^1.&* Maybe I should sign up^1, too.../"@17786
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_52_0"@17787
conv.s.v
push.s "* ... Nah^1, serving drinks wouldn't really suit a fire elemental./"@17788
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_animated_slash_Other_10_gml_53_0"@17789
conv.s.v
push.s "* If I got nervous^1, I'd just melt all the ice./%"@17790
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [18]

:[17]
push.s "obj_npc_room_animated_slash_Other_10_gml_56_0"@17791
conv.s.v
push.s "* What if I just served coffee^1?&* Nah^1, that sounds like a lawsuit waiting to happen.../%"@17792
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[18]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [23]

:[19]
push.v self.sprite_index
pushi.e 1146
cmp.i.v EQ
bf [21]

:[20]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_70_0"@17793
conv.s.v
push.s "* WOO!!^1! Catti!^1! You go^1, girl!!!/"@17794
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_71_0"@17795
conv.s.v
push.s "* Show those customers who's boss^1, little lady!!/"@17796
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_72_0"@17797
conv.s.v
push.s "* Kick their toosh!^1! Woo!!^1! Beat them down!^1! You got this!!/%"@17798
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[21]
push.v self.sprite_index
pushi.e 1145
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1039
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[23]
pushbltn.v builtin.room
pushi.e 270
cmp.i.v EQ
bf [25]

:[24]
push.s "obj_npc_room_animated_slash_Other_10_gml_62_0"@17799
conv.s.v
push.s "* (It's a boombox.^1)&* (It's playing clubs music.)/%"@17800
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[25]
pushbltn.v builtin.room
pushi.e 73
cmp.i.v EQ
bf [28]

:[26]
push.v self.sprite_index
pushi.e 1267
cmp.i.v EQ
bf [28]

:[27]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_94_0_b"@17801
conv.s.v
push.s "* Oh boy^1, oh boy!^1! I'm Trashy!^1! Haha!!/"@17802
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_95_0"@17803
conv.s.v
push.s "* I bet I'm gonna make a lot of new friends!!/%"@17804
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[28]
pushbltn.v builtin.room
pushi.e 77
cmp.i.v EQ
bf [33]

:[29]
pushi.e -5
pushi.e 304
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_94_0"@17805
conv.s.v
push.s "\\E2* Oh!^1! I nearly forgot!^1! This is where I cook!!/"@17806
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_96_0"@17807
conv.s.v
push.s "\\EK* You cook everything in a giant witch's pot...?/"@17808
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_98_0"@17809
conv.s.v
push.s "\\EH* Of course^1! Cauldron-cooking is very convenient!/%"@17810
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [33]

:[31]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_104_0"@17811
conv.s.v
push.s "\\E7* Okay^1, now make a chocolate one!/"@17812
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_106_0"@17813
conv.s.v
push.s "\\EQ* Why don't we go upstairs first?/%"@17814
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushglb.v global.plot
pushi.e 15
cmp.i.v GTE
bf [33]

:[32]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_112_0"@17815
conv.s.v
push.s "\\E7* How 'bout a strawberry cake as a room-warming gift?/"@17816
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_114_0"@17817
conv.s.v
push.s "\\EQ* There's a slice of cake in your fridge^1, Susie!/"@17818
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 22
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_116_0"@17819
conv.s.v
push.s "\\EM* But it's not cauldron-fresh!/%"@17820
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[33]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [43]

:[34]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [37]

:[35]
pushglb.v global.plot
pushi.e 15
cmp.i.v GTE
bf [37]

:[36]
pushglb.v global.plot
pushi.e 200
cmp.i.v LTE
b [38]

:[37]
push.e 0

:[38]
bf [43]

:[39]
push.v self.sprite_index
pushi.e 1108
cmp.i.v EQ
bf [43]

:[40]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.s "undyne"@3641
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_130_0"@17821
conv.s.v
push.s "\\E1* Damn^1, I was just directing traffic as normal.../"@17822
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_131_0"@17823
conv.s.v
push.s "\\E2* When a little dog drove one of those toy cars.../"@17824
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_132_0"@17825
conv.s.v
push.s "\\E1* Into the middle of the street and started doing donuts!/"@17826
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_133_0"@17827
conv.s.v
push.s "\\E4* In the chaos^1, all the cars in town got jammed up!!/"@17828
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_134_0"@17829
conv.s.v
push.s "\\E0* Thankfully^1, no one was hurt..^1. but.../"@17830
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_135_0"@17831
conv.s.v
push.s "\\E2* Ordinary citizens like you gotta get outta here!/"@17832
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_136_0"@17833
conv.s.v
push.s "\\E5* I've got some heavy lifting to do!!!/%"@17834
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [43]

:[42]
push.s "undyne"@3641
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_139_0"@17835
conv.s.v
push.s "\\E5* Don't interrupt me when I'm lifting!!!/%"@17836
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[43]
pushbltn.v builtin.room
pushi.e 58
cmp.i.v EQ
bf [46]

:[44]
push.v self.sprite_index
pushi.e 1122
cmp.i.v EQ
bf [46]

:[45]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_150_0"@17837
conv.s.v
push.s "* THE PIZZA'S SAUCE IS BOILING RED./"@17838
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_151_0"@17839
conv.s.v
push.s "* BURBLING^1, BURNING LIKE MY BLOOD YEARNS FOR BATTLE!!!/"@17840
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_152_0"@17841
conv.s.v
push.s "* HAAAAAAAAAAAAAAAHHHHH!!!!!/"@17842
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_153_0"@17843
conv.s.v
push.s "* I^1, THE WARRIOR^1, SHALL SHOW IT THE WIZARD'S FIST!!!/%"@17844
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[46]
pushbltn.v builtin.room
pushi.e 49
cmp.i.v EQ
bf [49]

:[47]
push.v self.sprite_index
pushi.e 1119
cmp.i.v EQ
bf [49]

:[48]
push.s "obj_npc_room_animated_slash_Other_10_gml_161_0"@17845
conv.s.v
push.s "* PUT ME IN^1, COACH!!!/"@17846
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_162_0"@17847
conv.s.v
push.s "* PUT ME IN!!!/%"@17848
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[49]
pushbltn.v builtin.room
pushi.e 79
cmp.i.v EQ
bf [52]

:[50]
push.v self.sprite_index
pushi.e 1629
cmp.i.v EQ
bf [52]

:[51]
push.s "obj_npc_room_animated_slash_Other_10_gml_170_0"@17849
conv.s.v
push.s "* (It's violently protecting the jail.)/%"@17850
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[52]
pushbltn.v builtin.room
pushi.e 160
cmp.i.v EQ
bf [63]

:[53]
push.v self.sprite_index
pushi.e 2838
cmp.i.v EQ
bf [55]

:[54]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_180_0"@17851
conv.s.v
push.s "* (It's Jongler's Book on Jongleing And Other Tricks)/"@17852
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_181_0"@17853
conv.s.v
push.s "* (From search query: how to use magic)/%"@17854
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[55]
push.v self.sprite_index
pushi.e 2843
cmp.i.v EQ
bf [57]

:[56]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_187_0"@17855
conv.s.v
push.s "* (It's two pixellized Toriels playing the piano.)/"@17856
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_188_0"@17857
conv.s.v
push.s "* (From search query: video game piano tutoriel)/%"@17858
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[57]
push.v self.sprite_index
pushi.e 2845
cmp.i.v EQ
bf [59]

:[58]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_194_0"@17859
conv.s.v
push.s "* (It's a VHS explaining how to install video game piano.)/"@17860
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_195_0"@17861
conv.s.v
push.s "* (From search query: video game piano tutorial)/%"@17862
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[59]
push.v self.sprite_index
pushi.e 2842
cmp.i.v EQ
bf [61]

:[60]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_201_0"@17863
conv.s.v
push.s "* (It's a jelly in the shape of various knives.)/"@17864
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_202_0"@17865
conv.s.v
push.s "* (From search query: sharpest kitchen knife jello)/%"@17866
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[61]
push.v self.sprite_index
pushi.e 2839
cmp.i.v EQ
bf [63]

:[62]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_208_0"@17867
conv.s.v
push.s "* (It's a calendar with college vacation circled.)/"@17868
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_209_0"@17869
conv.s.v
push.s "* (From search query: summer vacation college when.)/%"@17870
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[63]
pushbltn.v builtin.room
pushi.e 161
cmp.i.v EQ
bf [72]

:[64]
push.v self.sprite_index
pushi.e 2860
cmp.i.v EQ
bf [66]

:[65]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_218_0"@17871
conv.s.v
push.s "* (It's a copy of an online skateboarding game.)/"@17872
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_219_0"@17873
conv.s.v
push.s "* (From search query: cool skatebord game online)/%"@17874
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[66]
push.v self.sprite_index
pushi.e 2861
cmp.i.v EQ
bf [68]

:[67]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_225_0"@17875
conv.s.v
push.s "* (It's a skateboarding game but the AI is cheating. It's impossible to win.)/"@17876
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_226_0"@17877
conv.s.v
push.s "* (From search query: cool skateboard game online CHEAT)/%"@17878
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[68]
push.v self.sprite_index
pushi.e 2855
cmp.i.v EQ
bf [70]

:[69]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_232_0"@17879
conv.s.v
push.s "* (It's a vacuum-powered book.)/"@17880
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_233_0"@17881
conv.s.v
push.s "* (From search query: LOSERS!!!^1! THIS LIBRARBY SUCKS!!!!)/%"@17882
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[70]
push.v self.sprite_index
pushi.e 2857
cmp.i.v EQ
bf [72]

:[71]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_239_0"@17883
conv.s.v
push.s "* (Seems to be a somewhat glitched out hologram.)/"@17884
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_240_0"@17885
conv.s.v
push.s "* (From search query: FJFIrejirioEUEUROEI4378789)/%"@17886
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[72]
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [77]

:[73]
push.v self.extflag
push.s "left"@5994
cmp.s.v EQ
bf [75]

:[74]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_257_0"@17887
conv.s.v
push.s "* What are we cleaning up for, you ask?/"@17888
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_258_0"@17889
conv.s.v
push.s "* We don't know. A parade, perhaps?/%"@17890
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[75]
push.v self.extflag
push.s "right"@4637
cmp.s.v EQ
bf [77]

:[76]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_249_0"@17891
conv.s.v
push.s "* A large event is going to happen in the streets later./"@17892
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_251_0"@17893
conv.s.v
push.s "* We were told to make room for something BIG.../%"@17894
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[77]
pushbltn.v builtin.room
pushi.e 131
cmp.i.v EQ
bf [89]

:[78]
push.v self.sprite_index
pushi.e 1262
cmp.i.v EQ
bf [82]

:[79]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [81]

:[80]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_270_0"@17895
conv.s.v
push.s "\\m1		*Yo^1! How's it hangin'?/"@17896
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_271_0"@17897
conv.s.v
push.s "\\m1		*We're making some extra& money by selling in the city!/"@17898
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_272_0"@17899
conv.s.v
push.s "\\m3		*We gotta make those& bucks somehow!^1! Heheh!!/"@17900
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_273_0"@17901
conv.s.v
push.s "\\m1		*Gotta buy new gear!^2!&\\m3	Gotta get new kicks!^2!&\\m2	I wanna be a car^2./"@17902
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_274_0"@17903
conv.s.v
push.s "\\m1		*Good thinkin'^1, K_K^1! Gotta&	have a way to get around^2!&\\m2	Honk^1! Honk^2!/%"@17904
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [82]

:[81]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_278_0"@17905
conv.s.v
push.s "\\m1		*K_K's always got it right^2!&\\m3	That's why he's& second-in-command^2!/"@17906
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_279_0"@17907
conv.s.v
push.s "\\m1		*..^1. who's first^2?&\\m3	Huh? I'm not the leader^2?&\\m2	Can I be third^2?/%"@17908
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[82]
push.v self.sprite_index
pushi.e 1260
cmp.i.v EQ
bt [84]

:[83]
push.v self.sprite_index
pushi.e 1261
cmp.i.v EQ
b [85]

:[84]
push.e 1

:[85]
bf [87]

:[86]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_286_0"@17909
conv.s.v
push.s "\\m2		*Did you like the big statue^2?&\\m3	Building it sucked^2!&\\m1	Took a lot of scrap^2./"@17910
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_287_0"@17911
conv.s.v
push.s "\\m1		*The other job we did was&	way better^2!&\\m2	It was big^2./"@17912
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_288_0"@17913
conv.s.v
push.s "\\m3		*It's gonna blow your mind^2!&\\m2	It was big^2./%"@17914
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[87]
push.v self.sprite_index
pushi.e 1259
cmp.i.v EQ
bf [89]

:[88]
pushi.e 1071
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[89]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [96]

:[90]
push.v self.sprite_index
pushi.e 1253
cmp.i.v EQ
bf [92]

:[91]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_303_0"@17915
conv.s.v
push.s "* Young masters^1! Thank you for such a wide space to clean!/"@17916
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_304_0"@17917
conv.s.v
push.s "* The people here have such clean hearts as well./"@17918
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_305_0"@17919
conv.s.v
push.s "* (Sukkiri.)/%"@17920
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[92]
push.v self.sprite_index
pushi.e 1265
cmp.i.v EQ
bf [94]

:[93]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_311_0"@17921
conv.s.v
push.s "* It's nice to make friends that like good clean fun!/"@17922
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_312_0"@17923
conv.s.v
push.s "* (Sukkiri.)/%"@17920
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[94]
push.v self.sprite_index
pushi.e 1797
cmp.i.v EQ
bf [96]

:[95]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_318_0"@17924
conv.s.v
push.s "* Uh-huh^1, uh-huh^1! I wonder if she'll be back.../"@17925
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_319_0"@17926
conv.s.v
push.s "* 'ey boss^1! We're just reminiscing about fighting you!/%"@17927
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[96]
pushbltn.v builtin.room
pushi.e 94
cmp.i.v EQ
bf [111]

:[97]
push.v self.sprite_index
pushi.e 1259
cmp.i.v EQ
bf [99]

:[98]
pushi.e 1145
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[99]
push.v self.sprite_index
pushi.e 1260
cmp.i.v EQ
bf [111]

:[100]
pushi.e -5
pushi.e 354
push.v [array]self.flag
pushi.e 6
cmp.i.v GTE
bf [110]

:[101]
push.v self.talked
pop.v.v local.sold_out_talk
pushi.e 122
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [106]

:[102]
pushi.e 122
pushenv [105]

:[103]
push.v self.sold_out
conv.v.b
not.b
bf [105]

:[104]
pushi.e 1
pop.v.b self.sold_out
pushi.e 0
pop.v.i local.sold_out_talk

:[105]
popenv [103]

:[106]
pushloc.v local.sold_out_talk
pushi.e 0
cmp.i.v EQ
bf [108]

:[107]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "kk"@14117
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_352_0"@17930
conv.s.v
push.s "\\m2		*Sorry^1, I'm out of bagels.&\\m3	Don't you have 400!?&\\m2	I had 406./"@17931
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_353_0"@17932
conv.s.v
push.s "\\m3		*Then why can't you sell&	anymore?!/"@17933
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_354_0"@17934
conv.s.v
push.s "\\m2		*What if someone asked for&	400 bagels?/%"@17935
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [109]

:[108]
push.s "kk"@14117
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_358_0"@17936
conv.s.v
push.s "\\m2		*Sorry^1, I'm out of bagels./%"@17937
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[109]
b [111]

:[110]
pushi.e 1147
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[111]
pushbltn.v builtin.room
pushi.e 41
cmp.i.v EQ
bf [115]

:[112]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [114]

:[113]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_374_0"@17938
conv.s.v
push.s "* Having a wide-open space is great for us kids./"@17939
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_375_0"@17940
conv.s.v
push.s "* Sometimes it's good to get your freak out./%"@17941
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [115]

:[114]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_379_0"@17942
conv.s.v
push.s "* And sometimes..^1. It's bad to get your freak out./%"@17943
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[115]
pushbltn.v builtin.room
pushi.e 193
cmp.i.v EQ
bf [128]

:[116]
push.v self.x
pushi.e 540
cmp.i.v GT
bf [120]

:[117]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [119]

:[118]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_391_0"@17944
conv.s.v
push.s "* M-m-mouse!!/"@17945
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_392_0"@17946
conv.s.v
push.s "* And it's n-not wearing a wig!!/%"@17947
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [120]

:[119]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_405_0"@17948
conv.s.v
push.s "* Thanks for the help^1. We'll open up the \\cYEAST\\cW dining hall now./%"@17949
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[120]
push.v self.x
pushi.e 660
cmp.i.v GT
bf [124]

:[121]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [123]

:[122]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_408_0"@17950
conv.s.v
push.s "* (Ouch^1, ouch)/"@17951
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_409_0"@17952
conv.s.v
push.s "* The mouse can't get me up here!!/"@17953
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_410_0"@17954
conv.s.v
push.s "* Even if the (ouch^1, ouch) stove is burning my feet!/%"@17955
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [124]

:[123]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_414_0"@17956
conv.s.v
push.s "* (Ouch^1, ouch)/"@17951
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_415_0"@17957
conv.s.v
push.s "* How do I get down from here?/%"@17958
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[124]
push.v self.x
pushi.e 780
cmp.i.v GT
bf [128]

:[125]
pushi.e -5
pushi.e 362
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [127]

:[126]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_425_0"@17959
conv.s.v
push.s "* Oh me^1, oh my^1! The kitchen is infested with..^1. vermin!!!/"@17960
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_426_0"@17961
conv.s.v
push.s "* I knew we should have properly finished dumping all the cheese in that alleyway!/%"@17962
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [128]

:[127]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_430_0"@17963
conv.s.v
push.s "* Queen's making us prepare a massive feast for her upcoming guests./"@17964
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_431_0"@17965
conv.s.v
push.s "* ..^1. I wonder if people can really eat platters^1, though./%"@17966
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[128]
pushbltn.v builtin.room
pushi.e 130
cmp.i.v EQ
bf [137]

:[129]
push.v self.x
pushi.e 1000
cmp.i.v GT
bf [133]

:[130]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_455_0"@17967
conv.s.v
push.s "* Queen told us to take out the garbage./"@17968
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_456_0"@17969
conv.s.v
push.s "* I'd never seen a garbage that big before./%"@17970
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [133]

:[132]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_460_0"@17971
conv.s.v
push.s "* Except for the dancing garbage that lives in the trash heap./%"@17972
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[133]
push.v self.x
pushi.e 1260
cmp.i.v GT
bf [137]

:[134]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [136]

:[135]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_469_0"@17973
conv.s.v
push.s "* It was a horrible statue^1, but the execution was very good./"@17974
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_470_0"@17975
conv.s.v
push.s "* I would give it 2 stars.../"@17976
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_471_0"@17977
conv.s.v
push.s "* One to cover each of the nipples./%"@17978
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [137]

:[136]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_475_0"@17979
conv.s.v
push.s "* It's in a better place now./%"@17980
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[137]
pushbltn.v builtin.room
pushi.e 120
cmp.i.v EQ
bf [163]

:[138]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [140]

:[139]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [141]

:[140]
push.e 0

:[141]
bf [143]

:[142]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
b [144]

:[143]
push.e 0

:[144]
bf [156]

:[145]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [154]

:[146]
pushi.e -5
pushi.e 119
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b local.nubert_check
pushloc.v local.nubert_check
conv.v.b
bf [148]

:[147]
push.s "/"@4448
conv.s.v
b [149]

:[148]
push.s "/%"@4449
conv.s.v

:[149]
pop.v.v local.sentenceEnd
pushloc.v local.nubert_check
conv.v.b
bf [151]

:[150]
push.s "obj_npc_room_animated_slash_Other_10_gml_489_0"@17982
conv.s.v
push.s "Really, where!?"@17983
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 19
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[151]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_492_0"@17984
conv.s.v
push.s "* Oh boy^1, oh boy^1! I'm \\cBTrashy\\cW!/"@17985
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_493_0"@17986
conv.s.v
push.s "* Did you know about adjusting your INVENTORY?/"@17987
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_494_0"@17988
conv.s.v
push.s "* Trashcans like me can HOLD all sorts of things./"@17989
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_495_0"@17990
conv.s.v
push.s "* Just like your STORAGE^1, if you get more than 12 ITEMs!/"@17991
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_497_0"@17992
conv.s.v
push.s "\\E4* Uh..^1. yeah^1, not now dude./"@17993
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "Q"@9489
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_499_0"@17994
conv.s.v
push.s "\\EQ* It was sort of an emotional moment.../"@17995
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_501_0"@17996
conv.s.v
pushloc.v local.sentenceEnd
push.s "* Oh..^1. Oh^1, that's okay...~1"@17997
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
pushloc.v local.nubert_check
conv.v.b
bf [153]

:[152]
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_506_0"@17998
conv.s.v
push.s "\\E7* Oh hell^1, is that Nubert over there!?\\f0/%"@17999
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[153]
b [155]

:[154]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_511_0"@18000
conv.s.v
push.s "* No time for this guy./%"@18001
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[155]
b [163]

:[156]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [162]

:[157]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_518_0"@18002
conv.s.v
push.s "* You can hold a lot more in your STORAGE^1, you know./"@18003
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_519_0"@18004
conv.s.v
push.s "* But^1, you won't be able to use it during BATTLE./"@18005
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_520_0"@18006
conv.s.v
push.s "* Check it and make sure you have what you need!/"@18007
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_521_0"@18008
conv.s.v
push.s "* ..^1. is what I wanted to say^1, but it already got said./%"@18009
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 1
cmp.i.v GTE
bf [159]

:[158]
push.s "obj_npc_room_animated_slash_Other_10_gml_524_0"@18010
conv.s.v
push.s "* A funny little guy was looking for you to the WEST./"@18011
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_525_0_b"@18012
conv.s.v
push.s "* He was muttering something about deals.../%"@18013
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[159]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v GTE
bf [161]

:[160]
push.s "obj_npc_room_animated_slash_Other_10_gml_529_0"@18014
conv.s.v
push.s "* Some funny-looking guys have gathered to the WEST./"@18015
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_530_0"@18016
conv.s.v
push.s "* They were muttering something about muttering something about deals.../%"@18017
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[161]
b [163]

:[162]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_525_0"@18018
conv.s.v
push.s "* I'm Trashy.../%"@18019
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[163]
pushbltn.v builtin.room
pushi.e 93
cmp.i.v EQ
bf [172]

:[164]
pushglb.v global.plot
pushi.e 65
cmp.i.v LT
bf [169]

:[165]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [167]

:[166]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_537_0"@18020
conv.s.v
push.s "* I can't tell you how many of these I've cleaned up./%"@18021
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [168]

:[167]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_541_0"@18022
conv.s.v
push.s "* It's not so bad^1, I like cleaning./%"@18023
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[168]
b [172]

:[169]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [171]

:[170]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_548_0"@18024
conv.s.v
push.s "* I wish there was someone that liked cleaning as much as me./%"@18025
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [172]

:[171]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_552_0"@18026
conv.s.v
push.s "* (Sukkiri...)/%"@16595
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[172]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [176]

:[173]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [175]

:[174]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_562_0"@18027
conv.s.v
push.s "* All the shopkeepers went to the trash dump./"@18028
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_563_0"@18029
conv.s.v
push.s "* So I thought I might steal something^1, but these items are pretty bad.../%"@18030
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [176]

:[175]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_567_0"@18031
conv.s.v
push.s "* Feels like I'll get ripped off even if I don't pay.../%"@18032
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[176]
pushbltn.v builtin.room
pushi.e 85
cmp.i.v EQ
bf [185]

:[177]
push.v self.extflag
push.s "npc1"@14087
cmp.s.v EQ
bf [181]

:[178]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [180]

:[179]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_578_0"@18033
conv.s.v
push.s "* The wires..^1. the wires.../%"@18034
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [181]

:[180]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_583_0"@18035
conv.s.v
push.s "* .../%"@14954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[181]
push.v self.extflag
push.s "npc2"@14088
cmp.s.v EQ
bf [185]

:[182]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [184]

:[183]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_592_0"@18036
conv.s.v
push.s "* Everyone was.../%"@18037
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [185]

:[184]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_597_0"@18038
conv.s.v
push.s "* .../%"@14954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[185]
pushbltn.v builtin.room
pushi.e 78
cmp.i.v EQ
bf [187]

:[186]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_605_0"@18039
conv.s.v
push.s "* I keep ending up in this situation.../"@18040
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_606_0"@18041
conv.s.v
push.s "* Can't say I'm a fan...^1. Or can I?/%"@18042
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[187]
pushbltn.v builtin.room
pushi.e 202
cmp.i.v EQ
bf [189]

:[188]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_612_0"@18043
conv.s.v
push.s "* (Looks like it's completed its migration.)/%"@18044
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[189]
pushbltn.v builtin.room
pushi.e 203
cmp.i.v EQ
bf [193]

:[190]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [192]

:[191]
push.s "obj_npc_room_animated_slash_Other_10_gml_631_0"@18045
conv.s.v
push.s "* Oh boy^1, oh boy^1! Looks like you're almost at the END.../"@18046
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_632_0"@18047
conv.s.v
push.s "* Did you RECRUIT everyone...? You might wanna check!/%"@18048
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [193]

:[192]
push.s "obj_npc_room_animated_slash_Other_10_gml_635_0"@18049
conv.s.v
push.s "* You didn't RECRUIT me^1.&* But I'll be in your TOWN.../%"@18050
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[193]
pushbltn.v builtin.room
pushi.e 66
cmp.i.v EQ
bf [202]

:[194]
push.v self.sprite_index
pushi.e 1262
cmp.i.v EQ
bf [196]

:[195]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_611_0"@18051
conv.s.v
push.s "\\m1		*This town's great!/"@18052
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_612_0_b"@18053
conv.s.v
push.s "\\m1		*Just^1, wish everyone else was&	here^1, too.../%"@18054
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[196]
push.v self.sprite_index
pushi.e 1259
cmp.i.v EQ
bf [200]

:[197]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_622_0"@18055
conv.s.v
push.s "\\m3		*Yo^1, chief. If you \\cYrecruit\\cW&	enough fans for us^1,/"@18056
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_623_0"@18057
conv.s.v
push.s "\\m3		*We might be able to make our&	music shop again.../"@18058
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_624_0"@18059
conv.s.v
push.s "\\m3		*Hey^1, we might even give you a&	\\cYdiscount\\cW!/%"@18060
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [200]

:[199]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_630_0"@18061
conv.s.v
push.s "\\m3		*Ya hear that^1, chief? Keep up&	the recruiting.../%"@18062
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[200]
push.v self.sprite_index
pushi.e 1260
cmp.i.v EQ
bf [202]

:[201]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_animated_slash_Other_10_gml_639_0"@18063
conv.s.v
push.s "\\m2		*I got to keep my box./%"@18064
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[202]
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