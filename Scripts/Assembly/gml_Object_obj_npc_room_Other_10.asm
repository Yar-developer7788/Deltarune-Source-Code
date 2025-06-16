.localvar 2 arguments
.localvar 16322 dogchase 7286
.localvar 15767 sentenceEnd 7287
.localvar 16444 susie_text 7288
.localvar 16463 anytalked 7289
.localvar 16783 miceGold 7294

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
push.d 0.2
pop.v.d self.image_speed

:[4]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_13_0"@15792
conv.s.v
push.s "* The gash weaves down as if you cry./%"@15793
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
call.i gml_Script_scr_debug(argc=0)
conv.v.b
bf [6]

:[5]
push.s "* [NO TEXT] (obj_npc_room)/%"@15794
conv.s.v
call.i gml_Script_stringset(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[6]
pushbltn.v builtin.room
pushi.e 28
cmp.i.v EQ
bf [11]

:[7]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_npc_room_slash_Other_10_gml_20_0"@15795
conv.s.v
push.s "* It's a red wagon with a rusty birdcage in it./"@15796
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_21_0"@15797
conv.s.v
push.s "* Looks like it's seen quite a few crashes./%"@15798
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[9]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_npc_room_slash_Other_10_gml_27_0"@15799
conv.s.v
push.s "* It's a birdcage. When the door's closed^1, there's no escape./%"@15800
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[11]
pushbltn.v builtin.room
pushi.e 31
cmp.i.v EQ
bf [14]

:[12]
push.s "obj_npc_room_slash_Other_10_gml_32_0"@15801
conv.s.v
push.s "* (It's Chairiel^1, the beloved living room chair.)/%"@15802
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.plot
pushi.e 250
cmp.i.v GTE
bf [14]

:[13]
pushi.e 455
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 7
pop.v.i global.typer
pushi.e 4
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe

:[14]
pushbltn.v builtin.room
pushi.e 61
cmp.i.v EQ
bf [16]

:[15]
pushi.e 100
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 4
pop.v.i global.fc

:[16]
pushbltn.v builtin.room
pushi.e 66
cmp.i.v EQ
bf [51]

:[17]
push.s "obj_npc_room_slash_Other_10_gml_52_0"@15803
conv.s.v
push.s "* (It's just a dummy.)/%"@15804
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [51]

:[18]
pushglb.v global.plot
pushi.e 12
cmp.i.v LT
bf [23]

:[19]
pushi.e -5
pushi.e 300
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1010
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [22]

:[21]
push.s "obj_npc_room_slash_Other_10_gml_66_0"@15805
conv.s.v
push.s "* (You're all hugged out.)/%"@15806
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[22]
b [51]

:[23]
push.v self.sprite_index
pushi.e 1551
cmp.i.v EQ
bf [27]

:[24]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushi.e 1093
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [27]

:[26]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_79_0"@15807
conv.s.v
push.s "* (It's a mannequin dressed in poor taste.)/%"@15808
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[27]
push.v self.sprite_index
pushi.e 1213
cmp.i.v EQ
bf [31]

:[28]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [30]

:[29]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_88_0"@15809
conv.s.v
push.s "* Without trees^1, I must gain nutrients by eating clothes.../"@15810
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_89_0"@15811
conv.s.v
push.s "* Such is the way of the worm./%"@15812
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [31]

:[30]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_93_0"@15813
conv.s.v
push.s "* I'm a worm. I don't understand taxes and values./%"@15814
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[31]
push.v self.sprite_index
pushi.e 1211
cmp.i.v EQ
bf [43]

:[32]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [42]

:[33]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [38]

:[34]
pushi.e -5
pushi.e 314
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [36]

:[35]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_106_0"@15815
conv.s.v
push.s "* Mr. Society left^1, didn't he..^1. Hm./"@15816
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_107_0"@15817
conv.s.v
push.s "* I reckon I knew'n this would'n happen.../"@15818
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_108_0"@15819
conv.s.v
push.s "* It's not'n no fault of yours./"@15820
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_109_0"@15821
conv.s.v
push.s "* He'll'n be back one day./%"@15822
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [37]

:[36]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_113_0"@15823
conv.s.v
push.s "* Whoa^1, horsies. You've'n brought us to a great new place./"@15824
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_114_0"@15825
conv.s.v
push.s "* We'll'n be puttin' our own elbow grease into fixin' it^1, too./"@15826
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_115_0"@15827
conv.s.v
push.s "* Well'n^1, maybe not elbow'n grease. That's gross./"@15828
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_116_0"@15829
conv.s.v
push.s "* Nostril grease?/%"@15830
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[37]
b [41]

:[38]
pushi.e -5
pushi.e 314
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [40]

:[39]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_123_0"@15831
conv.s.v
push.s "* It's not'n no fault of yours./"@15820
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_124_0"@15832
conv.s.v
push.s "* He'll'n be back one day./%"@15822
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [41]

:[40]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_128_0"@15833
conv.s.v
push.s "* We'll'n be tryin' our best too. Greasily./%"@15834
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[41]
b [43]

:[42]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_134_0"@15835
conv.s.v
push.s "* We're'n building up the area to be a bit'n more board-like./"@15836
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_135_0"@15837
conv.s.v
push.s "* The ponmen'll be happy^1, too./%"@15838
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[43]
push.v self.sprite_index
pushi.e 1269
cmp.i.v EQ
bf [45]

:[44]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_142_0"@15839
conv.s.v
push.s "* (Looks like it costs money just to have a free sample.)/%"@15840
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[45]
push.v self.sprite_index
pushi.e 1270
cmp.i.v EQ
bf [49]

:[46]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [48]

:[47]
push.s "obj_npc_room_slash_Other_10_gml_149_0"@15841
conv.s.v
push.s "Don't yell that from across town!!"@15842
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "middle"@5597
conv.s.v
pushi.e 150
conv.i.v
pushi.e 23
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_150_0"@15843
conv.s.v
push.s "Hey Lancer!!"@15844
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 7
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_151_0"@15845
conv.s.v
push.s "Hi Susie!!"@15846
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 1
conv.i.v
push.s "lancer"@4751
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_154_0"@15847
conv.s.v
push.s "\\EL* Wh..^1. who did this to my mannequin!?/"@15848
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_155_0"@15849
conv.s.v
push.s "\\EN* A-as your prince^1, I..^1. I demand someone fix this!!/"@15850
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_156_0"@15851
conv.s.v
push.s "\\EM* .../"@15852
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_157_0"@15853
conv.s.v
push.s "\\EK* Umm^1, is..^1. is anybody listening...?/"@15854
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "8"@9477
conv.s.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_159_0"@15855
conv.s.v
push.s "\\E8* I was listening~!\\f0\\f1\\f2/%"@15856
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [49]

:[48]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_163_0"@15857
conv.s.v
push.s "\\E0* (If Noelle was here...)/"@15858
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_164_0"@15859
conv.s.v
push.s "\\EA* (She'd probably dress it up like a Christmas tree.)/"@15860
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_165_0"@15861
conv.s.v
push.s "\\EK* (..^1. Huh? Why am I thinking that^1, anyway?)/%"@15862
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[49]
push.v self.sprite_index
pushi.e 1237
cmp.i.v EQ
bf [51]

:[50]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_172_0"@15863
conv.s.v
push.s "* This place is a great deal!^1! All kinds of new customers!!/"@15864
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_173_0"@15865
conv.s.v
push.s "* Want a free sample? Just $4.99 to try a bite of these clothes!!/%"@15866
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[51]
pushbltn.v builtin.room
pushi.e 71
cmp.i.v EQ
bf [56]

:[52]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_183_0"@15867
conv.s.v
push.s "\\E0* So Ralsei^1, you're not gonna put your hat back on?/"@15868
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
push.s "obj_npc_room_slash_Other_10_gml_185_0"@15869
conv.s.v
push.s "\\E1* Why? Did I look cuter before?/"@15870
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_187_0"@15871
conv.s.v
push.s "\\EK* Uhhhh^1, NO^1, I just mean.../"@15872
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_189_0"@15873
conv.s.v
push.s "\\E1* You..^1. you think I look cuter now?/"@15874
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "H"@5303
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_191_0"@15875
conv.s.v
push.s "\\EH* It was just NICER seeing LESS of you! \\f0/%"@15876
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_192_0"@15877
conv.s.v
push.s "You're making me blush!"@15878
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 17
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [54]

:[53]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_197_0"@15879
conv.s.v
push.s "\\E5* Hurry the hell up^1, Kris./"@15880
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_198_0"@15881
conv.s.v
push.s "\\EK* Longer you take^1, longer I gotta spend with THIS weirdo./"@15882
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "H"@5303
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_200_0"@15883
conv.s.v
push.s "\\EH* If you're bored^1, Susie^1, we could crochet some team scarves.../"@15884
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "6"@3595
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_202_0"@15885
conv.s.v
push.s "\\E6* Wait^1, \"Kro-shay?\" Isn't that the^1, uh^1, game with the hammer?/"@15886
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 19
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_204_0"@15887
conv.s.v
push.s "\\EJ* Er..^1. it's like knitting./"@15888
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_206_0"@15889
conv.s.v
push.s "\\E2* Alright. Long as I get to use the hammer./%"@15890
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[54]
pushi.e -5
pushi.e 300
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [56]

:[55]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_211_0"@15891
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_212_0"@15892
conv.s.v
push.s "\\E1* .../"@1054
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_214_0"@15893
conv.s.v
push.s "\\E2* ..^1. so the hell were you hugging that Ralsei Statue?/"@15894
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 26
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_216_0"@15895
conv.s.v
push.s "\\EQ* Let Kris do what they want^1, Susie! \\f0/"@15896
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_217_0"@15897
conv.s.v
push.s "Also, it's not a statue?"@15898
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "mid"@5602
conv.s.v
pushi.e 33
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "0"@3491
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_220_0"@15899
conv.s.v
push.s "\\E0* The hell you even have a Ralsei statue anyway?/"@15900
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_222_0"@15901
conv.s.v
push.s "\\E1* Susie wants to practice hugging too? \\f1 ^1 /%"@15902
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_223_0"@15903
conv.s.v
push.s "KRIS HURRY UP ALREADY!"@15904
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
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[56]
pushbltn.v builtin.room
pushi.e 270
cmp.i.v EQ
bf [64]

:[57]
push.s "obj_npc_room_slash_Other_10_gml_232_0"@15905
conv.s.v
push.s "* Oh^1! Let us take your coat^1!&* And put it in the TOILET^1! HA^1!&* ... which^1, we don't even have./"@15906
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_233_0"@15907
conv.s.v
push.s "* Please try the baseballs~^1!&* Yeah^1! Eat so many you CHOKE^1!&* ... do they eat sports?/"@15908
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_234_0"@15909
conv.s.v
push.s "* Then we can all play Twister~^1!&* Just stay OUT OF OUR WAY^1!&* ... we lose even by ourselves./%"@15910
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e -5
pushi.e 522
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.s "obj_npc_room_slash_Other_10_gml_237_0"@15911
conv.s.v
push.s "* Were you invited^1?&* YOU WEREN'T!!^1!&* You DID hurt us.../"@15912
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_238_0"@15913
conv.s.v
push.s "* Awkward..^1.&* You wanna REMATCH!^1?&* You'd better leave.../%"@15914
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[59]
push.v self.x
pushi.e 160
cmp.i.v LT
bf [61]

:[60]
push.s "obj_npc_room_slash_Other_10_gml_243_0"@15915
conv.s.v
push.s "* I'm the first party member^1.&* I'm in charge of the DPS^1.&* (Dancin' Party Soundtrack.)/%"@15916
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[61]
push.v self.x
pushi.e 400
cmp.i.v GT
bf [64]

:[62]
push.s "obj_npc_room_slash_Other_10_gml_247_0"@15917
conv.s.v
push.s "* (Hathy is the second party member^1. It's the healer.)/"@15918
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_248_0"@15919
conv.s.v
push.s "* (She was in charge of catering the party.)/"@15920
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_249_0"@15921
conv.s.v
push.s "* (Unfortunately the cake she commissioned was destroyed in a field somewhere.)/%"@15922
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [64]

:[63]
push.s "obj_npc_room_slash_Other_10_gml_252_0"@15923
conv.s.v
push.s "* (That's a risk that one always runs when ordering a cake.)/%"@15924
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[64]
pushbltn.v builtin.room
pushi.e 46
cmp.i.v EQ
bf [72]

:[65]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [70]

:[66]
pushi.e 55
pop.v.i global.typer
pushi.e 15
pop.v.i global.fc
pushi.e 2
pop.v.i global.fe
pushi.e -5
pushi.e 255
push.v [array]self.flag
pushi.e 2
cmp.i.v LT
bf [68]

:[67]
pushi.e 180
pop.v.i global.msc
b [69]

:[68]
pushi.e 181
pop.v.i global.msc

:[69]
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[70]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [72]

:[71]
pushi.e 1047
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[72]
pushbltn.v builtin.room
pushi.e 52
cmp.i.v EQ
bf [75]

:[73]
push.s "obj_npc_room_slash_Other_10_gml_281_0"@15925
conv.s.v
push.s "* I love reading books^1.&* Especially the books upstairs^1.&* You should really./"@15926
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_282_0"@15927
conv.s.v
push.s "* Read them!/%"@15928
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [75]

:[74]
push.s "obj_npc_room_slash_Other_10_gml_286_0"@15929
conv.s.v
push.s "* I love reading books^1.&* Especially.../"@15930
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_287_0"@15931
conv.s.v
push.s "* The books./%"@15932
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[75]
pushbltn.v builtin.room
pushi.e 42
cmp.i.v EQ
bf [80]

:[76]
push.v self.sprite_index
pushi.e 1094
cmp.i.v EQ
bf [78]

:[77]
pushi.e 190
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[78]
push.v self.sprite_index
pushi.e 1142
cmp.i.v EQ
bf [80]

:[79]
pushi.e 1045
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[80]
pushbltn.v builtin.room
pushi.e 49
cmp.i.v EQ
bf [99]

:[81]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [90]

:[82]
push.s "obj_npc_room_slash_Other_10_gml_310_0"@15933
conv.s.v
push.s "* Hey^1 short-stuff^1.&* Why would YOU possibly need to talk to the mayor?/"@15934
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_311_0"@15935
conv.s.v
push.s "* Your allowance too low^1?&* Ate too much candies^1?&* Lost your frisbee in the wash?/"@15936
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_312_0"@15937
conv.s.v
push.s "* Hey^1, short-stuff.../"@15938
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_313_0"@15939
conv.s.v
push.s "* That's what the cops are for./%"@15940
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [84]

:[83]
push.s "obj_npc_room_slash_Other_10_gml_317_0"@15941
conv.s.v
push.s "* What^1? Don't talk to you like you're a \"kid^1?\" Fine.../"@15942
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_318_0"@15943
conv.s.v
push.s "* If you need someone to change your diaper^1, go ask the Cop's./%"@15944
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[84]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [87]

:[85]
push.s "obj_npc_room_slash_Other_10_gml_323_0"@15945
conv.s.v
push.s "* I'm sorry^1, I'm sorry^1.&* The mayor is busy right now./"@15946
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_324_0"@15947
conv.s.v
push.s "* If you need to see her^1, please try causing some terrible crisis./%"@15948
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [87]

:[86]
push.s "obj_npc_room_slash_Other_10_gml_328_0"@15949
conv.s.v
push.s "* I'm sorry^1, I'm sorry^1.&* Are you here to complain about your teacher?/"@15950
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_329_0"@15951
conv.s.v
push.s "* If you don't like her^1, please blame your mother for getting her hired.../%"@15952
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[87]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [90]

:[88]
push.s "obj_npc_room_slash_Other_10_gml_335_0"@15953
conv.s.v
push.s "* The mayor's charisma is about zero^1.&* No^1, it's negative./"@15954
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_336_0"@15955
conv.s.v
push.s "* But she works hard and has a good track record^1, so she runs unopposed./"@15956
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_337_0"@15957
conv.s.v
push.s "* Thaaaaaat's politics^1.&* Rarely./%"@15958
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [90]

:[89]
push.s "obj_npc_room_slash_Other_10_gml_341_0"@15959
conv.s.v
push.s "* Not only does she act icy^1, she always keeps her office's AC on full blast./"@15960
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_342_0"@15961
conv.s.v
push.s "* That chill I feel..^1. is..^1.&* Is this what politics feels like?/%"@15962
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[90]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [99]

:[91]
push.v self.sprite_index
pushi.e 1104
cmp.i.v EQ
bf [93]

:[92]
push.s "obj_npc_room_slash_Other_10_gml_352_0"@15963
conv.s.v
push.s "* Oh^1, I'm sorry. You're looking for the mayor./"@15964
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_353_0"@15965
conv.s.v
push.s "* She's very^1, very busy preparing for the festival./%"@15966
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[93]
push.v self.sprite_index
pushi.e 1103
cmp.i.v EQ
bf [97]

:[94]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [96]

:[95]
push.s "obj_npc_room_slash_Other_10_gml_360_0"@15967
conv.s.v
push.s "* Well well. If it isn't the teens. Our beloved \"rats of the city.\"/"@15968
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_361_0"@15969
conv.s.v
push.s "* You wanna get into Politics? Heh./"@15970
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_362_0"@15971
conv.s.v
push.s "* You better graduate from Diaper School first./"@15972
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_363_0"@15973
conv.s.v
push.s "* That's what I did. And look at me now./"@15974
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_364_0"@15975
conv.s.v
push.s "* I don't even work here./%"@15976
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [97]

:[96]
push.s "obj_npc_room_slash_Other_10_gml_366_0"@15977
conv.s.v
push.s "* This Briefscase^1, is full of Diapers. Or^1, to the Pro's^1, \"Diaps.\"/"@15978
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_367_0"@15979
conv.s.v
push.s "* You're gonna have to level up to understand a Man's World./%"@15980
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[97]
push.v self.sprite_index
pushi.e 1105
cmp.i.v EQ
bf [99]

:[98]
push.s "obj_npc_room_slash_Other_10_gml_373_0"@15981
conv.s.v
push.s "* That bald guy keeps trying to show me something from his briefcase./"@15982
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_374_0"@15983
conv.s.v
push.s "* Is it a bribe...? I'm really deep into politics now.../%"@15984
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[99]
pushbltn.v builtin.room
pushi.e 48
cmp.i.v EQ
bf [158]

:[100]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [128]

:[101]
push.v self.sprite_index
pushi.e 1054
cmp.i.v EQ
bf [104]

:[102]
pushi.e 13
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
push.s "obj_npc_room_slash_Other_10_gml_388_0"@15985
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_389_0"@15986
conv.s.v
push.s "\\E1* You're alive./"@15987
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_390_0"@15988
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_391_0"@15989
conv.s.v
push.s "\\E2* Nice./"@15990
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_393_0"@15991
conv.s.v
push.s "\\E1* .../"@1054
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_394_0_b"@15992
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_394_0"@15993
conv.s.v
push.s "\\E1* I'm working./%"@15994
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [104]

:[103]
push.s "obj_npc_room_slash_Other_10_gml_398_0"@15995
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_399_0"@15996
conv.s.v
push.s "\\E1* This uniform's.../"@15997
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_400_0"@15998
conv.s.v
push.s "\\E0* Mandatory./%"@15999
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[104]
push.v self.sprite_index
pushi.e 1052
cmp.i.v EQ
bf [107]

:[105]
push.s "obj_npc_room_slash_Other_10_gml_406_0"@16000
conv.s.v
push.s "* Uh^1, we'll take the special^1, and do you have any edible glitter...?/"@16001
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_407_0"@16002
conv.s.v
push.s "* The youngest one won't eat anything if it doesn't look like treasure.../%"@16003
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [107]

:[106]
push.s "obj_npc_room_slash_Other_10_gml_409_0"@16004
conv.s.v
push.s "* In a pinch^1, sprinkles will work^1, too.../%"@16005
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[107]
push.v self.x
pushi.e 120
cmp.i.v GTE
bf [109]

:[108]
push.v self.x
pushi.e 140
cmp.i.v LTE
b [110]

:[109]
push.e 0

:[110]
bf [114]

:[111]
push.s "obj_npc_room_slash_Other_10_gml_415_0"@16006
conv.s.v
push.s "* Don't be a stranger now^1, alright^1, hun?/%"@16007
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e -5
pushi.e 261
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [114]

:[112]
push.s "obj_npc_room_slash_Other_10_gml_421_0"@16008
conv.s.v
push.s "* Hey there^1!&* Haven't seen you in a while^1, hun./"@16009
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_423_0"@16010
conv.s.v
push.s "* I remember^1, back on Sundays^1, after service.../"@16011
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_424_0"@16012
conv.s.v
push.s "* You and your family would come in and order the special./"@16013
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_425_0"@16014
conv.s.v
push.s "* 'Course^1, things happened^1, and then.../"@16015
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_426_0"@16016
conv.s.v
push.s "* Y'all..^1.&* Stopped comin' together./"@16017
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_427_0"@16018
conv.s.v
push.s "* But every Sunday^1, you and your brother'd still come in./"@16019
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_428_0"@16020
conv.s.v
push.s "* He'd order you a hot chocolate.../"@16021
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_429_0"@16022
conv.s.v
push.s "* And you two'd sit down at that table in the corner.../"@16023
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_430_0"@16024
conv.s.v
push.s "* ... drawin' shapes in the window with your breath./"@16025
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_431_0"@16026
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 9
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_432_0"@16027
conv.s.v
push.s "* You must really miss him^1, huh?/"@16028
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_433_0"@16029
conv.s.v
push.s "* ... Here^1, how about this?/"@16030
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_434_0"@16031
conv.s.v
push.s "* (Kris got the Hot Chocolate.)/"@16032
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_435_0"@16033
conv.s.v
push.s "* On the house, hun./%"@16034
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 261
pop.v.v [array]self.flag
pushi.e 0
pop.v.i self.noroom
pushi.e 1
conv.i.v
call.i gml_Script_scr_litemget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 261
pop.v.v [array]self.flag
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_442_0"@16035
conv.s.v
push.s "* ... You know^1, I'd give you a hot chocolate on the house.../"@16036
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 11
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_443_0"@16037
conv.s.v
push.s "* ... But it looks like you've got enough things already./"@16038
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_444_0"@16039
conv.s.v
push.s "* Take it easy^1, okay^1, hun?/%"@16040
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg

:[114]
push.v self.x
pushi.e 240
cmp.i.v GT
bf [115]

:[115]
push.v self.y
pushi.e 140
cmp.i.v GT
bf [122]

:[116]
push.v self.x
pushi.e 180
cmp.i.v GT
bf [119]

:[117]
push.s "obj_npc_room_slash_Other_10_gml_468_0"@16041
conv.s.v
push.s "* So^1, for you two girls^1, that'll be the crepes^1, a cinnamon latte.../"@16042
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_469_0"@16043
conv.s.v
push.s "* Two bunny parfaits, and... a piece of firewood...?/%"@16044
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [119]

:[118]
push.s "obj_npc_room_slash_Other_10_gml_472_0"@16045
conv.s.v
push.s "* And^1, how would you like that firewood done?/%"@16046
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[119]
push.v self.x
pushi.e 260
cmp.i.v GT
bf [122]

:[120]
push.s "obj_npc_room_slash_Other_10_gml_482_0"@16047
conv.s.v
push.s "* Dude^1, remember when we used to skip the first hour of class to come here?/"@16048
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_483_0"@16049
conv.s.v
push.s "* YOU were fine^1, but I almost had to repeat the year 'cause of it.../"@16050
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_484_0"@16051
conv.s.v
push.s "* Those crepes were MAD worth^1, though^1! Delinquency is the best condiment!/%"@16052
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [122]

:[121]
push.s "obj_npc_room_slash_Other_10_gml_487_0"@16053
conv.s.v
push.s "* Dude^1, if we didn't bring Gerson our leftovers^1, I bet I would have failed HARD.../%"@16054
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[122]
push.v self.sprite_index
pushi.e 1049
cmp.i.v EQ
bf [125]

:[123]
push.s "obj_npc_room_slash_Other_10_gml_496_0"@16055
conv.s.v
push.s "* Looking at my rugged body^1, you must wonder what kind of secrets I hold.../"@16056
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_497_0"@16057
conv.s.v
push.s "* My secret is^1, I put all my leftover pancakes in this giant hat./%"@16058
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [125]

:[124]
push.s "obj_npc_room_slash_Other_10_gml_501_0"@16059
conv.s.v
push.s "* Whew^1!&* I sure love PANCAKE!/%"@16060
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[125]
push.v self.sprite_index
pushi.e 1047
cmp.i.v EQ
bf [128]

:[126]
push.s "obj_npc_room_slash_Other_10_gml_507_0"@16061
conv.s.v
push.s "* Ice Wolf does not like ice in drink./"@16062
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_508_0"@16063
conv.s.v
push.s "* Ice Wolf likes ice.../"@16064
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_509_0"@16065
conv.s.v
push.s "* ... to BE drink!/%"@16066
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [128]

:[127]
push.s "obj_npc_room_slash_Other_10_gml_513_0"@16067
conv.s.v
push.s "* Ice Wolf also like ice-themed mascots./%"@16068
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[128]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [158]

:[129]
push.v self.sprite_index
pushi.e 1054
cmp.i.v EQ
bf [133]

:[130]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [132]

:[131]
pushi.e 1041
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [133]

:[132]
pushi.e 1043
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[133]
push.v self.sprite_index
pushi.e 1048
cmp.i.v EQ
bf [140]

:[134]
pushi.e -5
pushi.e 261
push.v [array]self.flag
pushi.e 1
cmp.i.v NEQ
bf [139]

:[135]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [137]

:[136]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_542_0"@16069
conv.s.v
push.s "* Catti's family is always asking when her next shift is.../"@16070
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_543_0"@16071
conv.s.v
push.s "* So they can come in and cheer her on./"@16072
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_544_0"@16073
conv.s.v
push.s "* Never seen anything like it^1, but it's kind of nice^1, isn't it?/%"@16074
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [138]

:[137]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_548_0"@16075
conv.s.v
push.s "* How you doin'^1, hon?/"@16076
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_549_0"@16077
conv.s.v
push.s "* ..^1. what? Sorry^1, couldn't hear you over the noise./%"@16078
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[138]
b [140]

:[139]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_563_0"@16079
conv.s.v
push.s "* Hey hon^1, how did you like the hot chocolate?/"@16080
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_564_0"@16081
conv.s.v
push.s "* ..^1. well^1, I'm gonna take it that means you enjoyed it./"@16082
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_565_0"@16083
conv.s.v
push.s "* Take it easy^1, okay? I'm sure your brother will be back in no time./%"@16084
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[140]
push.v self.sprite_index
pushi.e 945
cmp.i.v EQ
bf [144]

:[141]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [143]

:[142]
push.s "jockington"@5670
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_575_0"@16085
conv.s.v
push.s "* Catti's^1, My friend. And./"@16086
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_576_0"@16087
conv.s.v
push.s "* I support my friends^1, through thick^1, and thin./"@16088
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_577_0"@16089
conv.s.v
push.s "* Long^1, and short. Cold^1, and hot./"@16090
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_578_0"@16091
conv.s.v
push.s "* Whatever shape^1, the world takes^1, I'll be there./%"@16092
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [144]

:[143]
push.s "jockington"@5670
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_582_0"@16093
conv.s.v
push.s "* Life is a big^1, ballgame^1,/"@16094
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_583_0"@16095
conv.s.v
push.s "* And when the man is on the field./"@16096
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_584_0"@16097
conv.s.v
push.s "* He does a big dunk./"@16098
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_585_0"@16099
conv.s.v
push.s "* Try^1, to be that dunk./%"@16100
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[144]
push.v self.sprite_index
pushi.e 1147
cmp.i.v EQ
bf [148]

:[145]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [147]

:[146]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_595_0"@16101
conv.s.v
push.s "* Our little Catti^1, she's doin' us proud./"@16102
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_596_0"@16103
conv.s.v
push.s "* Workin' hard. Supportin' us./"@16104
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_597_0"@16105
conv.s.v
push.s "* Servin' us pickles^1, terrifyin' us with their shape^1,/"@16106
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_598_0"@16107
conv.s.v
push.s "* Tryin' to get us to leave./"@16108
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_599_0"@16109
conv.s.v
push.s "* Proud of her./%"@16110
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [148]

:[147]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_602_0"@16111
conv.s.v
push.s "* My favorite meal? Gotta be the catfood pancakes!/"@16112
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_603_0"@16113
conv.s.v
push.s "* And the fish with bones that looks like it's from a cartoon./%"@16114
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[148]
push.v self.sprite_index
pushi.e 1148
cmp.i.v EQ
bf [150]

:[149]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_611_0"@16115
conv.s.v
push.s "* To tell you the truth^1, I thought this was the post office.../"@16116
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_612_0"@16117
conv.s.v
push.s "* But by the time I realized..^1. I'd already sat down.../"@16118
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_613_0"@16119
conv.s.v
push.s "* I'm not hungry^1, so I've just been telling the waitress I'm still deciding for.../"@16120
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_614_0"@16121
conv.s.v
push.s "* ..^1. a few hours now. How am I supposed to get out of this one!?/%"@16122
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[150]
push.v self.sprite_index
pushi.e 1152
cmp.i.v EQ
bf [154]

:[151]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [153]

:[152]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_630_0"@16123
conv.s.v
push.s "* I don't know if you noticed^1, but I've been getting stronger./"@16124
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_631_0"@16125
conv.s.v
push.s "* You could say I'm bulking up for the winter./%"@16126
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [154]

:[153]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_635_0"@16127
conv.s.v
push.s "* Oh boy^1! I love BULKING./%"@16128
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[154]
push.v self.sprite_index
pushi.e 1157
cmp.i.v EQ
bf [158]

:[155]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [157]

:[156]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_649_0"@16129
conv.s.v
push.s "* This guy next to me^1, he's really bulked up. I admire that./%"@16130
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [158]

:[157]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_645_0"@16131
conv.s.v
push.s "* I don't know if you do that^1, bulking up for the winter.../%"@16132
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[158]
pushbltn.v builtin.room
pushi.e 39
cmp.i.v EQ
bf [191]

:[159]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [164]

:[160]
push.v self.sprite_index
pushi.e 1098
cmp.i.v EQ
bf [162]

:[161]
push.s "obj_npc_room_slash_Other_10_gml_620_0"@16133
conv.s.v
push.s "* H-How am I supposed to get past this blue lady...!^1?&* I'm stuck!!/"@16134
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_621_0"@16135
conv.s.v
push.s "* I-I guess I should just run away.../%"@16136
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[162]
push.v self.sprite_index
pushi.e 1099
cmp.i.v EQ
bf [164]

:[163]
push.s "obj_npc_room_slash_Other_10_gml_625_0"@16137
conv.s.v
push.s "* Police Chief Undyne is supposed to be directing traffic.../"@16138
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_626_0"@16139
conv.s.v
push.s "* But all she's doing is standing in the middle of the street yelling \"GET OUT OF MY WAY!!!\"/"@16140
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_627_0"@16141
conv.s.v
push.s "* She's the best^1, huh!^1?&* I feel really directed!!!/%"@16142
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[164]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [167]

:[165]
pushglb.v global.plot
pushi.e 15
cmp.i.v GTE
bf [167]

:[166]
pushglb.v global.plot
pushi.e 200
cmp.i.v LTE
b [168]

:[167]
push.e 0

:[168]
bf [191]

:[169]
push.v self.sprite_index
pushi.e 1099
cmp.i.v EQ
bf [173]

:[170]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [172]

:[171]
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_680_0"@16143
conv.s.v
push.s "* Traffic's moving at a snail's pace./"@16144
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_681_0"@16145
conv.s.v
push.s "* I love snails. Could today get any better!?/%"@16146
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [173]

:[172]
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_684_0"@16147
conv.s.v
push.s "* Wow^1, my first traffic jam!!/"@16148
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_685_0"@16149
conv.s.v
push.s "* I can't help but feel a sense of pride.../%"@16150
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[173]
push.v self.sprite_index
pushi.e 1098
cmp.i.v EQ
bf [177]

:[174]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [176]

:[175]
push.s "man"@16151
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_694_0_b"@16152
conv.s.v
push.s "* I heard a dog was doing \"donuts\" so I sped over here./"@16153
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_695_0_b"@16154
conv.s.v
push.s "* But I just learned \"Donuts\" is actually the name of a special attack for cars./"@16155
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_696_0_b"@16156
conv.s.v
push.s "* Why is my life stuck in a loop of doughy disappointment...?/%"@16157
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [177]

:[176]
push.s "man"@16151
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_699_0"@16158
conv.s.v
push.s "* My life^1, like a donut^1, is stuck in a loop of doughy disappointment.../%"@16159
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[177]
pushi.e 0
pop.v.i self.cardialogue
push.v self.sprite_index
pushi.e 3161
cmp.i.v EQ
bf [179]

:[178]
pushi.e 1
pop.v.i self.cardialogue

:[179]
push.v self.sprite_index
pushi.e 3163
cmp.i.v EQ
bf [181]

:[180]
pushi.e 1
pop.v.i self.cardialogue

:[181]
push.v self.sprite_index
pushi.e 3160
cmp.i.v EQ
bf [183]

:[182]
pushi.e 1
pop.v.i self.cardialogue

:[183]
push.v self.sprite_index
pushi.e 3162
cmp.i.v EQ
bf [185]

:[184]
pushi.e 1
pop.v.i self.cardialogue

:[185]
push.v self.cardialogue
pushi.e 1
cmp.i.v EQ
bf [191]

:[186]
push.s "none"@562
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_712_0_b"@16161
conv.s.v
push.s "* (Looks like a car.)/%"@16162
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e -5
pushi.e 910
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [188]

:[187]
pushi.e -5
pushi.e 913
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [189]

:[188]
push.e 0

:[189]
bf [191]

:[190]
push.s "obj_npc_room_slash_Other_10_gml_715_0"@16163
conv.s.v
push.s "* (Looks like a car.)/"@16164
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_716_0"@16165
conv.s.v
push.s "* (There is even a man inside this one.)/"@16166
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_717_0"@16167
conv.s.v
push.s "* (He waves at you happily.)/%"@16168
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 913
pop.v.v [array]self.flag

:[191]
pushbltn.v builtin.room
pushi.e 37
cmp.i.v EQ
bf [212]

:[192]
push.v self.sprite_index
pushi.e 1069
cmp.i.v EQ
bf [194]

:[193]
pushi.e 340
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[194]
push.v self.sprite_index
pushi.e 958
cmp.i.v EQ
bf [197]

:[195]
push.i 231251
setowner.e
push.s "obj_npc_room_slash_Other_10_gml_691_0"@16169
conv.s.v
push.s "* Yo^1, Kris^1!&* You survived Susie^1, haha!/"@16170
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_692_0"@16171
conv.s.v
push.s "* I mean^1, I never saw her beat anyone up^1, but^1, uh^1, I'd be careful./"@16172
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_693_0"@16173
conv.s.v
push.s "* Like^1, one time me^1, Snowy^1, and Jockington were playing handball,/"@16174
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_694_0"@16175
conv.s.v
push.s "* And she just kept creepily watching us from the corner./"@16176
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_695_0"@16177
conv.s.v
push.s "* Then^1, when the ball rolled over to her she just^1, uh^1, froze solid.../"@16178
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_696_0"@16179
conv.s.v
push.s "* ... and kicked the ball as hard as she could^1, right into Officer Undyne's car!/"@16180
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_697_0"@16181
conv.s.v
push.s "* Then^1, Undyne came out^1, smiling^1, cracked her knuckles^1, and totally wiped us at handball.../"@16182
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_698_0"@16183
conv.s.v
push.s "* Anyway^1, Susie sucks^1, Kris^1, haha. /%"@16184
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [197]

:[196]
push.s "obj_npc_room_slash_Other_10_gml_702_0"@16185
conv.s.v
push.s "* Yo^1, Kris^1, you look kind of annoyed^1.&* Everything OK?/"@16186
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_703_0"@16187
conv.s.v
push.s "* You can calm down now^1, dude^1! Susie's not here^1, haha!/"@16188
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_704_0"@16189
conv.s.v
push.s "* ... Huh^1?&* You look even more annoyed.../%"@16190
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[197]
push.v self.sprite_index
pushi.e 953
cmp.i.v EQ
bf [199]

:[198]
push.s "obj_npc_room_slash_Other_10_gml_710_0"@16191
conv.s.v
push.s "* HOOH!^1!&* You're lucky^1, Kris!! /"@16192
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_711_0"@16193
conv.s.v
push.s "* You got to miss class with Alphys^1! It's not fair^1! Ha ha ha^1!/"@16194
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_712_0"@16195
conv.s.v
push.s "* If I skipped class^1, my dad'd never let me hear the end of it!!^1! Ha ha ha!!!/"@16196
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_713_0"@16197
conv.s.v
push.s "* ... That's actually not even remotely funny./%"@16198
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[199]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [212]

:[200]
push.v self.sprite_index
pushi.e 1099
cmp.i.v EQ
bf [204]

:[201]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [203]

:[202]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_765_0"@16199
conv.s.v
push.s "* This is a great parking place!/"@16200
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_766_0"@16201
conv.s.v
push.s "* I can see myself settling down here.../%"@16202
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [204]

:[203]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_770_0"@16203
conv.s.v
push.s "* Home is where the car is!/%"@16204
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[204]
push.v self.sprite_index
pushi.e 1098
cmp.i.v EQ
bf [208]

:[205]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [207]

:[206]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_779_0"@16205
conv.s.v
push.s "* I just wanna go home^1, but I'm still stuck in a traffic jam.../"@16206
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_780_0"@16207
conv.s.v
push.s "* ..^1. even though it's only one other person.../%"@16208
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [208]

:[207]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_784_0"@16209
conv.s.v
push.s "* That's the trouble with cars./"@16210
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_785_0"@16211
conv.s.v
push.s "* If you wanna do donuts^1, you have to be prepared for jam!/%"@16212
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[208]
push.v self.sprite_index
pushi.e 1155
cmp.i.v EQ
bf [212]

:[209]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [211]

:[210]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_794_0"@16213
conv.s.v
push.s "* You kids came out of the library^1, didn't you? Studying..^1. How wonderful./"@16214
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_795_0"@16215
conv.s.v
push.s "* Personally^1, I hate libraries^1, but.../%"@16216
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [212]

:[211]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_799_0"@16217
conv.s.v
push.s "* Libraries are outdated. We have things like newspapers now./%"@16218
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[212]
pushbltn.v builtin.room
pushi.e 35
cmp.i.v EQ
bf [232]

:[213]
push.v self.sprite_index
pushi.e 1078
cmp.i.v EQ
bf [215]

:[214]
pushi.e 16
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 215
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[215]
push.v self.sprite_index
pushi.e 1075
cmp.i.v EQ
bf [219]

:[216]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [218]

:[217]
push.s "obj_npc_room_slash_Other_10_gml_731_0"@16219
conv.s.v
push.s "* Hey neighbor-beighbor^1! When's yah brother Doug gonna come by^1? Huh huh huh!/"@16220
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_732_0"@16221
conv.s.v
push.s "* My girls'd love to see him^1! He's a sweet little man!/"@16222
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_733_0"@16223
conv.s.v
push.s "* He's just got one problem..^1.&* He doesn't like my wife's cookin'!/"@16224
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_734_0"@16225
conv.s.v
push.s "* What's wrong^1, Douglas^1?&* You don't like frozen cat food^1? Huh huh huh!/%"@16226
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
b [219]

:[218]
push.s "obj_npc_room_slash_Other_10_gml_738_0"@16227
conv.s.v
push.s "* Can't blame yah brother for leavin' town./"@16228
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_739_0"@16229
conv.s.v
push.s "* He's out there^1, gettin' a big brain in the big school./"@16230
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_740_0"@16231
conv.s.v
push.s "* Hope when he becomes a big shot^1, he remembers us little guys down the street./"@16232
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_741_0"@16233
conv.s.v
push.s "* Eatin' oranges and gettin' our stomachs pumped./%"@16234
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg

:[219]
push.v self.sprite_index
pushi.e 1077
cmp.i.v EQ
bf [221]

:[220]
pushi.e 17
pop.v.i global.fc
pushi.e 5
pop.v.i global.typer
pushi.e 220
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[221]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [232]

:[222]
push.v self.sprite_index
pushi.e 1149
cmp.i.v EQ
bf [226]

:[223]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [225]

:[224]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_848_0"@16235
conv.s.v
push.s "* Ribbit^1, ribbit./"@16236
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_849_0"@16237
conv.s.v
push.s "* (I sometimes hear beautiful singing from that house over there.)/"@16238
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_850_0"@16239
conv.s.v
push.s "* (How eerie..^1. could it be a ghost?)/%"@16240
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [226]

:[225]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_854_0"@16241
conv.s.v
push.s "* Ribbit./"@16242
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_855_0"@16243
conv.s.v
push.s "* (That would make sense. A ghost lives there.)/%"@16244
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[226]
push.v self.sprite_index
pushi.e 1150
cmp.i.v EQ
bf [228]

:[227]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_862_0"@16245
conv.s.v
push.s "* My brother's too old to take for a walk anymore..^1. hm.../"@16246
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_863_0"@16247
conv.s.v
push.s "* I'm aimless..^1. wish I had someone to whip me into shape./%"@16248
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[228]
push.v self.sprite_index
pushi.e 1154
cmp.i.v EQ
bf [232]

:[229]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [231]

:[230]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_871_0"@16249
conv.s.v
push.s "* I wanted to buy flowers^1, but the store's closed./"@16250
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_872_0"@16251
conv.s.v
push.s "* The door around back's unlocked^1, but I don't think I should go in.../%"@16252
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [232]

:[231]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_876_0"@16253
conv.s.v
push.s "* I saw a bed through the back window..^1. Wonder what the deal is./%"@16254
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[232]
pushbltn.v builtin.room
pushi.e 41
cmp.i.v EQ
bf [252]

:[233]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [235]

:[234]
pushi.e 345
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[235]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [252]

:[236]
push.v self.sprite_index
pushi.e 1139
cmp.i.v EQ
bf [238]

:[237]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_895_0"@16255
conv.s.v
push.s "* I'm not Jerry. I'm Terry./"@16256
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_896_0"@16257
conv.s.v
push.s "* I'm super cool./"@16258
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_897_0"@16259
conv.s.v
push.s "* I totally DON'T have to go to the bathroom./%"@16260
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[238]
push.v self.sprite_index
pushi.e 1232
cmp.i.v EQ
bt [241]

:[239]
push.v self.sprite_index
pushi.e 1233
cmp.i.v EQ
bt [241]

:[240]
push.v self.sprite_index
pushi.e 1234
cmp.i.v EQ
b [242]

:[241]
push.e 1

:[242]
bf [244]

:[243]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_903_0"@16261
conv.s.v
push.s "* Oh!!^1! Terry!^1! Say it again!!/"@16262
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_904_0"@16263
conv.s.v
push.s "* Say you don't have to go to the bathroom again!!/%"@16264
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[244]
push.v self.sprite_index
pushi.e 1101
cmp.i.v EQ
bf [246]

:[245]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_910_0"@16265
conv.s.v
push.s "* Nothing like admiring the great paint job^1, me and my bro did on our church./%"@16266
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[246]
push.v self.sprite_index
pushi.e 1102
cmp.i.v EQ
bf [248]

:[247]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_916_0"@16267
conv.s.v
push.s "* ...^1. missed a spot./%"@16268
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[248]
push.v self.sprite_index
pushi.e 1153
cmp.i.v EQ
bf [252]

:[249]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [251]

:[250]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_924_0"@16269
conv.s.v
push.s "* We tried to play baseball^1, but that kid kept dancing in the middle of the lot./"@16270
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_925_0"@16271
conv.s.v
push.s "* I..^1. don't feel like there's any way to stop him.../%"@16272
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [252]

:[251]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_929_0"@16273
conv.s.v
push.s "* If I can't stop him..^1. Should I join him? No..^1. no./%"@16274
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[252]
pushbltn.v builtin.room
pushi.e 44
cmp.i.v EQ
bf [262]

:[253]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [258]

:[254]
push.s "obj_npc_room_slash_Other_10_gml_796_0"@16275
conv.s.v
push.s "* Oh^1, it's you^1.&* Are you here to play the piano again?/"@16276
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_797_0"@16277
conv.s.v
push.s "* The patients can't hear it well from here^1, but I personally enjoy it./%"@16278
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [256]

:[255]
push.s "obj_npc_room_slash_Other_10_gml_801_0"@16279
conv.s.v
push.s "* Sometimes the police chief comes in to play the piano./"@16280
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_802_0"@16281
conv.s.v
push.s "* Her playing is nice^1, but when she starts singing.../"@16282
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_803_0"@16283
conv.s.v
push.s "* We have to ask her to leave./%"@16284
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg

:[256]
push.v self.tempvar
pushi.e 1
cmp.i.v GTE
bf [258]

:[257]
push.s "obj_npc_room_slash_Other_10_gml_809_0"@16285
conv.s.v
push.s "* Hmmm..^1. you usually play the piano a bit more..^1. beautifully./"@16286
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_810_0"@16287
conv.s.v
push.s "* Is everything OK^1?&* You DO seem a little sick.../%"@16288
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[258]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [262]

:[259]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [261]

:[260]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_962_0"@16289
conv.s.v
push.s "* Here to make an appointment...?/"@16290
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "0"@3491
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_964_0"@16291
conv.s.v
push.s "\\E0* Nah^1, just here to hang out./"@16292
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_966_0"@16293
conv.s.v
push.s "* ..^1. I see./%"@16294
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [262]

:[261]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_970_0"@16295
conv.s.v
push.s "* Should I pencil you in for hanging out?/%"@16296
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[262]
pushbltn.v builtin.room
pushi.e 36
cmp.i.v EQ
bf [268]

:[263]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [268]

:[264]
push.v self.sprite_index
pushi.e 1101
cmp.i.v EQ
bf [266]

:[265]
push.s "obj_npc_room_slash_Other_10_gml_821_0"@16297
conv.s.v
push.s "* Nothin' better than hangin' at the lake with my best bro.../"@16298
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_822_0"@16299
conv.s.v
push.s "* Watchin' the waves go by.../%"@16300
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[266]
push.v self.sprite_index
pushi.e 1102
cmp.i.v EQ
bf [268]

:[267]
push.s "obj_npc_room_slash_Other_10_gml_826_0"@16301
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_room_slash_Other_10_gml_827_0"@16302
conv.s.v
push.s "* ... true./%"@16303
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[268]
pushbltn.v builtin.room
pushi.e 58
cmp.i.v EQ
bf [277]

:[269]
push.v self.sprite_index
pushi.e 1143
cmp.i.v EQ
bf [271]

:[270]
pushi.e 1020
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[271]
push.v self.sprite_index
pushi.e 1121
cmp.i.v EQ
bf [273]

:[272]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1031_0"@16304
conv.s.v
push.s "* Wow^1, my co-worker seems so energetic lately!!/"@16305
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1032_0"@16306
conv.s.v
push.s "* I don't know what's happened^1, but..../"@16307
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1033_0"@16308
conv.s.v
push.s "* Seeing him happy makes me happy too!!/"@16309
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1034_0"@16310
conv.s.v
push.s "* Oh!!^1! A customer!^1! Would you like a blue soft-serve!?/%"@16311
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[273]
push.v self.sprite_index
pushi.e 1047
cmp.i.v EQ
bf [277]

:[274]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [276]

:[275]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1042_0"@16312
conv.s.v
push.s "* Double-Ice pizza..^1. great!/"@16313
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1043_0"@16314
conv.s.v
push.s "* Ice Wolf^1, big customer!/"@16315
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1044_0"@16316
conv.s.v
push.s "* ..^1. Ice Wolf^1, maybe only customer./%"@16317
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [277]

:[276]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1048_0"@16318
conv.s.v
push.s "* Ice Wolf^1, thinks ICE-E is cute./"@16319
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1049_0"@16320
conv.s.v
push.s "* Ice Wolf^1, big fan.../%"@16321
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[277]
pushbltn.v builtin.room
pushi.e 56
cmp.i.v EQ
bf [289]

:[278]
push.v self.sprite_index
pushi.e 1124
cmp.i.v EQ
bf [289]

:[279]
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.dogchase
pushloc.v local.dogchase
conv.v.b
bf [286]

:[280]
pushi.e -5
pushi.e 317
push.v [array]self.flag
pushi.e 2
cmp.i.v NEQ
bf [284]

:[281]
pushi.e 108
pushenv [283]

:[282]
pushi.e 0
pop.v.i self.con

:[283]
popenv [282]
push.s "napstablook"@5429
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1067_0"@16323
conv.s.v
push.s "* oh....^1. jailbreak..../"@16324
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1068_0"@16325
conv.s.v
push.s "* i'll sound the alarm..../%"@16326
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [285]

:[284]
push.s "napstablook"@5429
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1071_0"@16327
conv.s.v
push.s "* i made the jailbreak alarm my mixtape.../"@16328
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1072_0"@16329
conv.s.v
push.s "* it's a nice beat to study or relax to while you escape from prison/%"@16330
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[285]
b [289]

:[286]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [288]

:[287]
push.s "napstablook"@5429
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1078_0"@16331
conv.s.v
push.s "* (oh no...^1. i accidentally ended up as a police officer...)/"@16332
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1079_0"@16333
conv.s.v
push.s "* (oh no...^1. i can't quit because my cousins are relying on me...)/"@16334
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1080_0"@16335
conv.s.v
push.s "* oh..^1. hey.../"@16336
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1081_0"@16337
conv.s.v
push.s "* don't do anything illegal..^1. please.../%"@16338
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [289]

:[288]
push.s "napstablook"@5429
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1085_0"@16339
conv.s.v
push.s "* oh..^1. sorry..^1. did i intimidate you too much.../"@16340
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1086_0"@16341
conv.s.v
push.s "* oh..../"@16342
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1087_0"@16343
conv.s.v
push.s "* it's ok to do a little crime sometimes./"@16344
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1088_0"@16345
conv.s.v
push.s "* like if you eat candy off the floor.../"@16346
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1089_0"@16347
conv.s.v
push.s "* even after 5 seconds.../"@16348
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1090_0"@16349
conv.s.v
push.s "* i won't arrest you./%"@16350
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[289]
pushbltn.v builtin.room
pushi.e 57
cmp.i.v EQ
bf [298]

:[290]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [296]

:[291]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [293]

:[292]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1103_0"@16351
conv.s.v
push.s "* Yea i'm tha sicko that looks at all the milks to find the best expiration date/"@16352
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1104_0"@16353
conv.s.v
push.s "* You got something about it?/%"@16354
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [296]

:[293]
pushi.e -5
pushi.e 308
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [295]

:[294]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1110_0"@16355
conv.s.v
push.s "* Don't talk to me unless you want to look at milk/%"@16356
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [296]

:[295]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1114_0"@16357
conv.s.v
push.s "* Can your family not come in here when I'm looking at milk/%"@16358
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[296]
push.v self.sprite_index
pushi.e 1151
cmp.i.v EQ
bf [298]

:[297]
push.s "obj_npc_room_slash_Other_10_gml_1121_0"@16359
conv.s.v
push.s "* Sometimes the hoofed girl comes here^1,/"@16360
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1122_0"@16361
conv.s.v
push.s "* Opens the freezer door.../"@16362
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1123_0"@16363
conv.s.v
push.s "* Then stands in front of it^1, lost in thought./"@16364
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1124_0"@16365
conv.s.v
push.s "* Guess she really likes the cold. Or waffles./%"@16366
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[298]
pushbltn.v builtin.room
pushi.e 53
cmp.i.v EQ
bf [300]

:[299]
pushi.e 1037
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[300]
pushbltn.v builtin.room
pushi.e 269
cmp.i.v EQ
bf [314]

:[301]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [309]

:[302]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [304]

:[303]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1106_0"@16367
conv.s.v
push.s "\\E9* Lancer!^1! Hey^1, Lancer!^1! How you feeling!?/"@16368
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1108_0"@16369
conv.s.v
push.s "\\E3* (huff^1, puff...) One-hundred percent^1, my purplish pal!/"@16370
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 20
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1110_0_b"@16371
conv.s.v
push.s "\\EK* Uhh^1, you sure? You're breathing kinda heavy./"@16372
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1112_0"@16373
conv.s.v
push.s "\\E2* Haha^1! Just a little winded from jumping from Kris's POCKET!/"@16374
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1113_0"@16375
conv.s.v
push.s "\\E3* Feel free to clown around town. I'll be in your ITEMs!/"@16376
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 10
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1115_0"@16377
conv.s.v
push.s "\\EA* No idea what you mean^1, but^1, sure./%"@16378
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [308]

:[304]
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
bf [306]

:[305]
push.s "obj_npc_room_slash_Other_10_gml_1121_0_c"@16379
conv.s.v
push.s "\\E3* Susie^1, Susie^1! Can you carry me on your back?/"@16380
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [307]

:[306]
push.s "obj_npc_room_slash_Other_10_gml_1119_0"@16381
conv.s.v
push.s "\\E3* Susie^1, Susie^1! Can you carry me on your back again?/"@16382
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[307]
pushi.e 34
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1121_0_b"@16383
conv.s.v
push.s "\\EY* Heh^1, sure^1! If you can stay on when I'm at full speed!/"@16384
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1123_0_b"@16385
conv.s.v
push.s "\\E1* Wow!^1! The Susie-train!^1! Castle Town's most exciting attraction!!!/"@16386
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 19
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1125_0"@16387
conv.s.v
push.s "\\EJ* .../"@16388
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1127_0"@16389
conv.s.v
push.s "\\EH* YOU AND KRIS STOP FORMING A LINE!!/%"@16390
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[308]
b [314]

:[309]
pushglb.v global.plot
pushi.e 15
cmp.i.v GTE
bf [311]

:[310]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1139_0"@16391
conv.s.v
push.s "\\E9* Lancer^1, you aren't gonna believe how sick my room is!/"@16392
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1141_0"@16393
conv.s.v
push.s "\\E2* A room as sick as you?^1! Woah!^1! I want to see!!/"@16394
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1142_0"@16395
conv.s.v
push.s "* I'll keep digging holes until I reach your room!!/"@16396
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1144_0"@16397
conv.s.v
push.s "\\EK* Uhh^1, it's got a door^1, y'know./"@16398
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1146_0"@16399
conv.s.v
push.s "\\E1* A door!? Wow^1, peachboy^1, you went all out!!!/%"@16400
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [312]

:[311]
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1150_0"@16401
conv.s.v
push.s "\\E1* This is the best room ever!!!/"@16402
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1151_0"@16403
conv.s.v
push.s "\\E2* How'd you know what I like??/"@16404
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "2"@4175
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1153_0"@16405
conv.s.v
push.s "\\E2* Err^1, I just sort of^1, had a hunch.../"@16406
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1155_0"@16407
conv.s.v
push.s "\\E1* The quasimodo of kindness^1, people!!/%"@16408
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[312]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [314]

:[313]
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1124_0_b"@16409
conv.s.v
push.s "\\E1* I love that my floor is full of holes!/%"@16410
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[314]
pushbltn.v builtin.room
pushi.e 79
cmp.i.v EQ
bf [330]

:[315]
push.v self.sprite_index
pushi.e 1193
cmp.i.v EQ
bf [318]

:[316]
push.v self.x
pushi.e 60
cmp.i.v GT
bf [318]

:[317]
push.v self.x
pushi.e 100
cmp.i.v LT
b [319]

:[318]
push.e 0

:[319]
bf [321]

:[320]
push.s "obj_npc_room_slash_Other_10_gml_975_0"@16411
conv.s.v
push.s "* (I'm Goulden Sam.)/%"@16412
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[321]
push.v self.sprite_index
pushi.e 1193
cmp.i.v EQ
bf [323]

:[322]
push.v self.x
pushi.e 100
cmp.i.v GT
b [324]

:[323]
push.e 0

:[324]
bf [326]

:[325]
push.s "obj_npc_room_slash_Other_10_gml_1168_0"@16413
conv.s.v
push.s "* (This is a nice prison!)/%"@16414
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[326]
push.v self.sprite_index
pushi.e 1222
cmp.i.v EQ
bf [328]

:[327]
push.s "obj_npc_room_slash_Other_10_gml_1173_0"@16415
conv.s.v
push.s "* We're still behind bars for some reason^1, but it's OK!/"@16416
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1174_0"@16417
conv.s.v
push.s "* We've grown to love this hellish place^1, where we dress as animals!/%"@16418
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[328]
push.v self.sprite_index
pushi.e 1221
cmp.i.v EQ
bf [330]

:[329]
push.s "obj_npc_room_slash_Other_10_gml_1179_0"@16419
conv.s.v
push.s "* (We decided to dress as kings. It's cultural exchange.)/%"@16420
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[330]
pushbltn.v builtin.room
pushi.e 160
cmp.i.v EQ
bf [335]

:[331]
push.v self.sprite_index
pushi.e 2835
cmp.i.v EQ
bf [333]

:[332]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1188_0"@16421
conv.s.v
push.s "* (It's dozens and dozens of bath bombs.)/"@16422
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1189_0"@16423
conv.s.v
push.s "* (From search query: diy bath bomb)/%"@16424
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[333]
push.v self.sprite_index
pushi.e 2847
cmp.i.v EQ
bf [335]

:[334]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1210_0"@16425
conv.s.v
push.s "* (It seems to have been overloaded by shovel requests.)/"@16426
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1211_0"@16427
conv.s.v
push.s "* (This is known as a Dozens and Dozens of Shovels attack.)/%"@16428
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[335]
pushbltn.v builtin.room
pushi.e 161
cmp.i.v EQ
bf [349]

:[336]
push.v self.sprite_index
pushi.e 2859
cmp.i.v EQ
bf [340]

:[337]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [339]

:[338]
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1220_0"@16429
conv.s.v
push.s "\\E2* Look^1, I know what you're thinking./"@16430
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1221_0"@16431
conv.s.v
push.s "\\EA* And NO^1, the skateboard game doesn't work on this./%"@16432
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [340]

:[339]
push.s "obj_npc_room_slash_Other_10_gml_1220_0_b"@16433
conv.s.v
push.s "* (Susie's computer.^1)&* (Doesn't seem compatible with the skateboard game.)/%"@16434
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[340]
push.v self.sprite_index
pushi.e 2856
cmp.i.v EQ
bf [342]

:[341]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1227_0"@16435
conv.s.v
push.s "* (It's a painted egg..^1. It's warm.)/"@16436
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1228_0"@16437
conv.s.v
push.s "* (From search query: can harboil eggs hatch)/%"@16438
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[342]
push.v self.sprite_index
pushi.e 2862
cmp.i.v EQ
bf [349]

:[343]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [348]

:[344]
push.s "obj_npc_room_slash_Other_10_gml_1233_0"@16439
conv.s.v
push.s "(Why are you using that face now?)"@16440
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 30
conv.i.v
push.s "ralsei"@72
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [346]

:[345]
push.s "\\f0/%"@16441
conv.s.v
b [347]

:[346]
push.s "/%"@4449
conv.s.v

:[347]
pop.v.v local.sentenceEnd
push.s "obj_npc_room_slash_Other_10_gml_1236_0"@16442
conv.s.v
pushloc.v local.sentenceEnd
push.s "\\E8* You think it would torch the other side?~1"@16443
conv.s.v
call.i gml_Script_stringsetsubloc(argc=3)
pop.v.v local.susie_text
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1239_0"@16445
conv.s.v
push.s "\\E7* Hey Kris^1, if you blasted flames down this horn thing.../"@16446
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushloc.v local.susie_text
call.i gml_Script_msgnext(argc=1)
popz.v
b [349]

:[348]
push.s "obj_npc_room_slash_Other_10_gml_1248_0"@16447
conv.s.v
push.s "* (Susie's talk tube thing. Looks a bit bigger for her larger head.)/%"@16448
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[349]
pushbltn.v builtin.room
pushi.e 123
cmp.i.v EQ
bf [359]

:[350]
push.v self.sprite_index
pushi.e 1252
cmp.i.v EQ
bf [359]

:[351]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [356]

:[352]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [354]

:[353]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1253_0"@16449
conv.s.v
push.s "* I heard the rollercoasters are undergoing maintenance./"@16450
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1254_0"@16451
conv.s.v
push.s "* That's a pain because it's our only form of public transit./%"@16452
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [355]

:[354]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1258_0"@16453
conv.s.v
push.s "* Are the roller coasters still broken? Too bad./"@16454
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1259_0"@16455
conv.s.v
push.s "* I keep petitioning for a public merry-go-round^1, but.../%"@16456
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[355]
b [359]

:[356]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [358]

:[357]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1267_0"@16457
conv.s.v
push.s "* Yes. The teacup ride is privately owned./%"@16458
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [359]

:[358]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1271_0"@16459
conv.s.v
push.s "* There was some ex-famous guy^1, some salesman-lobbyist-type.../"@16460
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1272_0"@16461
conv.s.v
push.s "* He was afraid of clowns^1, so he kept it from happening./%"@16462
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[359]
pushbltn.v builtin.room
pushi.e 127
cmp.i.v EQ
bf [375]

:[360]
pushglb.v global.plot
pushi.e 85
cmp.i.v LT
bf [368]

:[361]
pushi.e 0
pop.v.b local.anytalked
pushi.e 103
pushenv [364]

:[362]
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [364]

:[363]
pushi.e 1
pop.v.b local.anytalked

:[364]
popenv [362]
pushloc.v local.anytalked
conv.v.b
not.b
bf [366]

:[365]
push.s "obj_npc_room_slash_Other_10_gml_1293_0"@16464
conv.s.v
push.s "Advertisements now only $9.99!"@16465
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 1
conv.i.v
push.s "empty"@6222
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1296_0"@16466
conv.s.v
push.s "* We are Addisons^1! All we do is advertise!!/"@16467
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1297_0"@16468
conv.s.v
push.s "* This is an advertisement too!\\f0/%"@16469
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [367]

:[366]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1300_0"@16470
conv.s.v
push.s "* Don't like advertisements? Block ads for only $9.99!/"@16471
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1301_0"@16472
conv.s.v
push.s "* Change your mind? Bring them back for only $9.99!/%"@16473
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[367]
b [371]

:[368]
push.v self.y
pushi.e 270
cmp.i.v GT
bf [370]

:[369]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1308_0"@16474
conv.s.v
push.s "* Spamton? ..^1. Haven't heard that name in a long time./%"@16475
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [371]

:[370]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1312_0"@16476
conv.s.v
push.s "* Spamton? ..^1. We don't talk about that around here./%"@16477
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[371]
push.v self.sprite_index
pushi.e 1245
cmp.i.v EQ
bf [375]

:[372]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [374]

:[373]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1321_0"@16478
conv.s.v
push.s "* I wanted to buy something.../"@16479
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1322_0"@16480
conv.s.v
push.s "* But I think all of the shopkeepers went to the trash dump.../%"@16481
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [375]

:[374]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1326_0"@16482
conv.s.v
push.s "* That's a shame..^1. I wanted to get ripped off./%"@16483
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[375]
pushbltn.v builtin.room
pushi.e 128
cmp.i.v EQ
bf [381]

:[376]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [378]

:[377]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1336_0"@16484
conv.s.v
push.s "* Since everyone else got plugged they're a lot more agreeable./"@16485
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1337_0"@16486
conv.s.v
push.s "* It's nice./%"@16487
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [381]

:[378]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [380]

:[379]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1343_0"@16488
conv.s.v
push.s "* Pretty much everyone else is a Werewire now./"@16489
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1344_0"@16490
conv.s.v
push.s "* Kind of wondering if I'm holding everything back.../%"@16491
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [381]

:[380]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1348_0"@16492
conv.s.v
push.s "* I'm not even sure I would make a good Werewire./%"@16493
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[381]
pushbltn.v builtin.room
pushi.e 148
cmp.i.v EQ
bf [386]

:[382]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1356_0"@16494
conv.s.v
push.s "* Hey^1, got any way to deal with crushing^1, existential dread?/"@16495
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1357_0"@16496
conv.s.v
push.s "* Asking for a friend./"@16497
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1358_0"@16498
conv.s.v
push.s "* A friend that looks^1, and sounds^1, exactly like me./%"@16499
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 1038
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [386]

:[383]
pushi.e 1038
pushenv [385]

:[384]
pushi.e 1
pop.v.i self.con

:[385]
popenv [384]

:[386]
pushbltn.v builtin.room
pushi.e 129
cmp.i.v EQ
bf [399]

:[387]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [398]

:[388]
pushi.e 0
pop.v.b local.anytalked
pushi.e 103
pushenv [391]

:[389]
push.v self.talked
pushi.e 0
cmp.i.v GT
bf [391]

:[390]
pushi.e 1
pop.v.b local.anytalked

:[391]
popenv [389]
pushloc.v local.anytalked
conv.v.b
not.b
bf [393]

:[392]
pushi.e -5
pushi.e 441
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [394]

:[393]
push.e 0

:[394]
bf [396]

:[395]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 441
pop.v.v [array]self.flag
pushi.e 1069
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [397]

:[396]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1382_0"@16500
conv.s.v
push.s "* Ah^1, you two don't look together!/"@16501
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1383_0"@16502
conv.s.v
push.s "* Can I interest you in some brand new Divorcing Shoes...?/%"@16503
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[397]
b [399]

:[398]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1364_0"@16504
conv.s.v
push.s "* Ah^1, you three look together^1! How about some marriage shoes?/%"@16505
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[399]
pushbltn.v builtin.room
pushi.e 132
cmp.i.v EQ
bf [416]

:[400]
push.v self.sprite_index
pushi.e 1237
cmp.i.v EQ
bf [404]

:[401]
pushglb.v global.plot
pushi.e 85
cmp.i.v LT
bf [403]

:[402]
pushi.e 1073
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
b [404]

:[403]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1398_0"@16506
conv.s.v
push.s "* Spamton? ..^1. No idea who you're talking about./%"@16507
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[404]
push.v self.sprite_index
pushi.e 1239
cmp.i.v EQ
bf [414]

:[405]
pushglb.v global.plot
pushi.e 85
cmp.i.v LT
bf [413]

:[406]
pushi.e 16
conv.i.v
call.i gml_Script_scr_armorcheck_inventory(argc=1)
pushi.e 1
cmp.i.v EQ
bt [408]

:[407]
pushi.e 16
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_armorcheck_equipped(argc=2)
pushi.e 1
cmp.i.v EQ
b [409]

:[408]
push.e 1

:[409]
bf [411]

:[410]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1385_0"@16508
conv.s.v
push.s "* Buy^1! Buy^1! Buy^1! We're sold out^1! Buy!/%"@16509
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [412]

:[411]
pushi.e 1075
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[412]
b [414]

:[413]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1411_0"@16510
conv.s.v
push.s "* Spamton? ..^1. We don't talk about that around here./%"@16477
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[414]
push.v self.sprite_index
pushi.e 1241
cmp.i.v EQ
bf [416]

:[415]
pushi.e 1077
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[416]
pushbltn.v builtin.room
pushi.e 73
cmp.i.v EQ
bf [430]

:[417]
push.v self.sprite_index
pushi.e 1192
cmp.i.v EQ
bf [419]

:[418]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1427_0"@16511
conv.s.v
push.s "* (It's a bit scary moving to a new place. But^1, as a ball...)/"@16512
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1428_0"@16513
conv.s.v
push.s "* (There's nothing to sphere except sphere itself.)/%"@16514
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[419]
push.v self.sprite_index
pushi.e 1266
cmp.i.v EQ
bf [421]

:[420]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1434_0"@16515
conv.s.v
push.s "* (With this windfall^1, I've ceased to be spherical.)/"@16516
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1435_0"@16517
conv.s.v
push.s "* (Nubert..^1. you're one-of-a-kind.)/%"@16518
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[421]
push.v self.sprite_index
pushi.e 1268
cmp.i.v EQ
bf [428]

:[422]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [427]

:[423]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [425]

:[424]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1445_0"@16519
conv.s.v
push.s "* Prince Ralsei^1, I will keep your hat a-racked until you need it!/%"@16520
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [426]

:[425]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1449_0"@16521
conv.s.v
push.s "* Until then^1, please allow me to pretend to be a wizard^1! Hi-ya!/%"@16522
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[426]
b [428]

:[427]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1455_0"@16523
conv.s.v
push.s "* Ho ho!^1! Who is this guy!^1! He's scary!!/%"@16524
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[428]
push.v self.sprite_index
pushi.e 1255
cmp.i.v EQ
bf [430]

:[429]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1462_0"@16525
conv.s.v
push.s "* Nubert's had a wild ride. Time to settle down./"@16526
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1463_0"@16527
conv.s.v
push.s "* Give my riches to the weak.../%"@16528
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[430]
pushbltn.v builtin.room
pushi.e 72
cmp.i.v EQ
bf [493]

:[431]
push.v self.sprite_index
pushi.e 1161
cmp.i.v EQ
bf [435]

:[432]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [434]

:[433]
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1481_0"@16529
conv.s.v
push.s "* Ah^1! Thou hast Transplantedeth us to Thine Castle Towne.../"@16530
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1482_0"@16531
conv.s.v
push.s "\\E2* And^1, Trulye^1, a maginificenth Towne of Castles^1, it art!/"@16532
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1483_0"@16533
conv.s.v
push.s "\\E6* But ho^1! Hmmm..^1. Something art..^1. Lackingth^1, it Feeleth./"@16534
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1484_0"@16535
conv.s.v
push.s "\\E1* Couldth thou guys..^1. Perhapsth.../"@16536
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1485_0"@16537
conv.s.v
push.s "\\E6* Bringe in an Evil Rulere...^1. Or some Thinge...?/%"@16538
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [435]

:[434]
push.s "rouxls"@6221
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1489_0"@16539
conv.s.v
push.s "\\E0* Lancer hath benounced me \"Vice Fathere...\"/"@16540
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1490_0"@16541
conv.s.v
push.s "\\E5* Forthhence^1, I do All the Cookinge and Cleaninge./"@16542
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1491_0"@16543
conv.s.v
push.s "\\E6* Perhapsth^1, I shouldst seeketh a New Employere.../%"@16544
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[435]
push.v self.sprite_index
pushi.e 1557
cmp.i.v EQ
bf [463]

:[436]
push.v self.x
pushi.e 620
cmp.i.v GT
bf [440]

:[437]
push.v self.x
pushi.e 630
cmp.i.v LT
bf [440]

:[438]
push.v self.y
pushi.e 770
cmp.i.v GT
bf [440]

:[439]
push.v self.y
pushi.e 780
cmp.i.v LT
b [441]

:[440]
push.e 0

:[441]
bf [450]

:[442]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [447]

:[443]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [445]

:[444]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1504_0"@16545
conv.s.v
pushglb.v global.truename
push.s "* Oho. Welcome to&~1Town!/"@16546
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1505_0"@16547
conv.s.v
push.s "* Or so I heard it's called./%"@16548
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [446]

:[445]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1509_0"@16549
conv.s.v
push.s "* Oho. Welcome home./"@16550
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1510_0"@16551
conv.s.v
pushglb.v global.truename
push.s "* Things have changed again here in&~1Town!/%"@16552
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v

:[446]
pushi.e 1
pop.v.i self.jpspecial
b [450]

:[447]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [449]

:[448]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1517_0"@16553
conv.s.v
push.s "* Come to think of it^1,/"@16554
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1518_0"@16555
conv.s.v
push.s "* Welcome to me too^1! Haha!/"@16556
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1519_0"@16557
conv.s.v
push.s "* I think we're gonna like living here!/%"@16558
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [450]

:[449]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1523_0"@16559
conv.s.v
push.s "* This is a dream that grows with love and care./"@16560
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1524_0"@16561
conv.s.v
push.s "* Don't be afraid to dream!/%"@16562
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[450]
push.v self.x
pushi.e 310
cmp.i.v GT
bf [454]

:[451]
push.v self.x
pushi.e 330
cmp.i.v LT
bf [454]

:[452]
push.v self.y
pushi.e 910
cmp.i.v GT
bf [454]

:[453]
push.v self.y
pushi.e 930
cmp.i.v LT
b [455]

:[454]
push.e 0

:[455]
bf [463]

:[456]
pushi.e -5
pushi.e 635
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [458]

:[457]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1541_0"@16563
conv.s.v
push.s "* Ha ha^1! That's right^1! They took so long on their turn.../"@16564
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1542_0"@16565
conv.s.v
push.s "* What!? A horned girl? I never got to see her!/%"@16566
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [463]

:[458]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1535_0"@16567
conv.s.v
push.s "* This guy always seems like he's enjoying life more than me./"@16568
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1536_0"@16569
conv.s.v
push.s "* Maybe it's because he's a higher level...?/%"@16570
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [460]

:[459]
pushi.e -5
pushi.e 248
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [461]

:[460]
push.e 0

:[461]
bf [463]

:[462]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1574_0_b"@16571
conv.s.v
push.s "* Is this guy seriously sucking up to you already^1? Even though you hurt us?/"@16572
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1575_0_b"@16573
conv.s.v
push.s "* He could at least wait until later today!/%"@16574
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[463]
push.v self.sprite_index
pushi.e 1576
cmp.i.v EQ
bf [477]

:[464]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bt [466]

:[465]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 4
cmp.i.v LT
b [467]

:[466]
push.e 1

:[467]
bf [476]

:[468]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1560_0"@16575
conv.s.v
push.s "* (Seems like Hathy likes this place.)/"@16576
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1561_0"@16577
conv.s.v
push.s "* (She hopes you'll like it too.)/%"@16578
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [470]

:[469]
pushi.e -5
pushi.e 248
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [471]

:[470]
push.e 0

:[471]
bf [473]

:[472]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1594_0"@16579
conv.s.v
push.s "* (Seems like Hathy likes this place.)/"@16576
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1595_0_b"@16580
conv.s.v
push.s "* (You feel an aura of forgiveness...)/%"@16581
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[473]
pushi.e -5
pushi.e 252
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [475]

:[474]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1554_0"@16582
conv.s.v
push.s "* (Seems Hathy likes this place.)/"@16583
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1555_0"@16584
conv.s.v
push.s "* (She hopes you'll find enough beds to inspect.)/"@16585
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1556_0"@16586
conv.s.v
push.s "* (You'll lose your bed inspector title if you don't inspect enough beds.)/%"@16587
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[475]
b [477]

:[476]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1566_0"@16588
conv.s.v
push.s "* (Hathy's happy to see so many new faces.)/"@16589
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1567_0"@16590
conv.s.v
push.s "* (Happy's hathy.)/%"@16591
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[477]
push.v self.sprite_index
pushi.e 1264
cmp.i.v EQ
bf [479]

:[478]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1574_0"@16592
conv.s.v
push.s "* It's a clean start for us here!/"@16593
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1575_0"@16594
conv.s.v
push.s "* (Sukkiri...)/%"@16595
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[479]
push.v self.sprite_index
pushi.e 1252
cmp.i.v EQ
bf [481]

:[480]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1581_0"@16596
conv.s.v
push.s "* Thanks for getting rid of Queen!/"@16597
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1582_0"@16598
conv.s.v
push.s "* ..^1. yeah^1, this form is much cooler^1, so I'm keeping it.../%"@16599
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[481]
push.v self.sprite_index
pushi.e 1610
cmp.i.v EQ
bf [483]

:[482]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1588_0"@16600
conv.s.v
push.s "* Thanks to you^1, commander^1, we've been liberated!/"@16601
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1589_0"@16602
conv.s.v
push.s "* I hereby declare today National Ham Sandwich Day of Independence!/%"@16603
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[483]
push.v self.sprite_index
pushi.e 1245
cmp.i.v EQ
bf [485]

:[484]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1595_0"@16604
conv.s.v
push.s "* Wh..^1. what a wonderful place..^1. thank you.../"@16605
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1596_0"@16606
conv.s.v
push.s "* This town^1, not that restaurant. It looks weird. I'm not going in.../%"@16607
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[485]
push.v self.sprite_index
pushi.e 1194
cmp.i.v EQ
bf [489]

:[486]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [488]

:[487]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1604_0"@16608
conv.s.v
push.s "* Bow bow./"@16609
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1605_0"@16610
conv.s.v
push.s "* (I'm bjust a block.)/%"@16611
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [489]

:[488]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1609_0"@16612
conv.s.v
push.s "* (I don't bget it.)/"@16613
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1610_0"@16614
conv.s.v
push.s "* (Did bwe go somebwhere?)/%"@16615
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[489]
push.v self.sprite_index
pushi.e 1294
cmp.i.v EQ
bf [493]

:[490]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [492]

:[491]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1604_0_b"@16616
conv.s.v
push.s "\\EK* I..^1. thought you were racing?/"@16617
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1606_0"@16618
conv.s.v
push.s "\\E2* Yeah^1! I wanna be the egg!!/%"@16619
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [493]

:[492]
push.s "lancer"@4751
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1610_0_b"@16620
conv.s.v
push.s "\\E1* You won't get through your teen years without at least one Egg./%"@16621
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[493]
pushbltn.v builtin.room
pushi.e 75
cmp.i.v EQ
bf [531]

:[494]
push.v self.sprite_index
pushi.e 1214
cmp.i.v EQ
bf [496]

:[495]
pushi.e 1099
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[496]
push.v self.sprite_index
pushi.e 1557
cmp.i.v EQ
bf [498]

:[497]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1626_0"@16622
conv.s.v
push.s "* Hey^1, boss^1! I'll have a Dark Candy Starfait!/%"@10480
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[498]
push.v self.sprite_index
pushi.e 1576
cmp.i.v EQ
bf [500]

:[499]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1632_0"@16623
conv.s.v
push.s "* (Hathy is going to order a heart-foam latte.)/%"@10491
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[500]
push.v self.sprite_index
pushi.e 1614
cmp.i.v EQ
bf [502]

:[501]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1638_0"@16624
conv.s.v
push.s "* Lemonade? ..^1. Please./%"@10535
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[502]
push.v self.sprite_index
pushi.e 1600
cmp.i.v EQ
bf [504]

:[503]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1644_0"@16625
conv.s.v
push.s "* (Looks like it wants to osmose some flavorful cubes.)/%"@10502
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[504]
push.v self.sprite_index
pushi.e 1264
cmp.i.v EQ
bf [506]

:[505]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1650_0"@16626
conv.s.v
push.s "* (Looks like it wants to be dabbed with rubbing alcohol.)/%"@10513
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[506]
push.v self.sprite_index
pushi.e 1622
cmp.i.v EQ
bf [508]

:[507]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1656_0"@16627
conv.s.v
push.s "* Everything tastes better with a normally-shaped body!/%"@10524
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[508]
push.v self.sprite_index
pushi.e 1607
cmp.i.v EQ
bf [510]

:[509]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1662_0"@16628
conv.s.v
push.s "* Boss...? You're treating me...? Oh^1, you shouldn't have^1! (smile)/%"@10557
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[510]
push.v self.sprite_index
pushi.e 1578
cmp.i.v EQ
bf [512]

:[511]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1668_0"@16629
conv.s.v
push.s "* (Head Hathy drinks an ice tea in silence...)/%"@10568
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[512]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [531]

:[513]
push.v self.sprite_index
pushi.e 1275
cmp.i.v EQ
bf [515]

:[514]
pushi.e 1135
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[515]
push.v self.sprite_index
pushi.e 1283
cmp.i.v EQ
bf [517]

:[516]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1722_0"@16630
conv.s.v
push.s "* Good evening^1, boss^1. Today's meal is Crisped `#E23D28./"@16631
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1723_0"@16632
conv.s.v
push.s "* It's been deep-fried with the finest JPEG artifacting.../"@16633
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1724_0"@16634
conv.s.v
push.s "* I hope it suits your palette..^1. er^1, palate./%"@16635
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[517]
push.v self.sprite_index
pushi.e 1271
cmp.i.v EQ
bf [522]

:[518]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1729_0"@16636
conv.s.v
push.s "* Boss^1, this Cafe is so unrefined. So plain./"@16637
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1730_0"@16638
conv.s.v
push.s "* Why don't we make it into an animal cafe?/"@16639
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1731_0"@16640
conv.s.v
push.s "* ..^1. you can be one of the animals^1, too^1, boss./%"@16641
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 116
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [522]

:[519]
pushi.e 116
pushenv [521]

:[520]
pushi.e 1
pop.v.i self.tm_con

:[521]
popenv [520]

:[522]
push.v self.sprite_index
pushi.e 1746
cmp.i.v EQ
bf [524]

:[523]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1737_0"@16643
conv.s.v
push.s "* (Seems well behaved.)/%"@16644
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[524]
push.v self.sprite_index
pushi.e 1669
cmp.i.v EQ
bf [529]

:[525]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1743_0"@16645
conv.s.v
push.s "* (Seems well behaved.)/%"@16644
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 116
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [529]

:[526]
pushi.e 116
pushenv [528]

:[527]
pushi.e 1
pop.v.i self.t_con

:[528]
popenv [527]

:[529]
push.v self.sprite_index
pushi.e 1644
cmp.i.v EQ
bf [531]

:[530]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1749_0"@16647
conv.s.v
push.s "* RIKO RIKO!/%"@16648
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[531]
pushbltn.v builtin.room
pushi.e 74
cmp.i.v EQ
bf [536]

:[532]
push.v self.sprite_index
pushi.e 1300
cmp.i.v EQ
bf [534]

:[533]
pushi.e 1103
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[534]
push.v self.sprite_index
pushi.e 1214
cmp.i.v EQ
bf [536]

:[535]
pushi.e 1099
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[536]
pushbltn.v builtin.room
pushi.e 69
cmp.i.v EQ
bf [545]

:[537]
push.v self.sprite_index
pushi.e 1212
cmp.i.v EQ
bf [541]

:[538]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 314
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1777_0"@16649
conv.s.v
push.s "* Oh^1, it's quite a wonderful town^1, really. Thank you!/"@16650
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1778_0"@16651
conv.s.v
push.s "* ..^1. so..^1. why am I alone here?/"@16652
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1779_0"@16653
conv.s.v
push.s "* A bit of self-reflection^1, I suppose./"@16654
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1780_0"@16655
conv.s.v
push.s "* I do realize I was quite a coward before.../"@16656
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1781_0"@16657
conv.s.v
push.s "* So..^1. I wanted to say..^1. well.../"@16658
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1782_0"@16659
conv.s.v
push.s "* I STILL AM!!!!/"@16660
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1783_0"@16661
conv.s.v
push.s "* My cards^1, I cannot handle society!/"@16662
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1784_0"@16663
conv.s.v
push.s "* For now^1, I'll be living at the top of this cliff!/"@16664
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1785_0"@16665
conv.s.v
push.s "* When I'm ready to meet society again^1, I will be back!/"@16666
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1786_0"@16667
conv.s.v
push.s "* Thank you^1, thank you for the wonderful home^1! I will NOT use it!/%"@16668
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 118
pushenv [540]

:[539]
pushi.e 1
pop.v.i self.con

:[540]
popenv [539]

:[541]
push.v self.sprite_index
pushi.e 1230
cmp.i.v EQ
bf [545]

:[542]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [544]

:[543]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1748_0"@16669
conv.s.v
push.s "* Thanks a lot for the lovely city./"@16670
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1749_0_b"@16671
conv.s.v
push.s "* It's nearly as good as the one I made in Minecrap./%"@16672
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [545]

:[544]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1753_0"@16673
conv.s.v
push.s "* I need to mine ten-hundred blocks of Bubsidian to make my dog 3 colors./%"@16674
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[545]
pushbltn.v builtin.room
pushi.e 68
cmp.i.v EQ
bf [563]

:[546]
push.v self.sprite_index
pushi.e 1626
cmp.i.v EQ
bf [559]

:[547]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [549]

:[548]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1801_0"@16675
conv.s.v
push.s "* ..^1. I like being like this./"@16676
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1802_0"@16677
conv.s.v
push.s "* Don't tell anybody./%"@16678
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [559]

:[549]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [551]

:[550]
pushi.e 2
conv.i.v
call.i gml_Script_scr_get_total_recruits(argc=1)
pushi.e 0
cmp.i.v GT
b [552]

:[551]
push.e 0

:[552]
bf [558]

:[553]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1808_0"@16679
conv.s.v
push.s "* These animals are stray...?/"@16680
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1809_0"@16681
conv.s.v
push.s "* No^1, they are practicing a special loneliness style./"@16682
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1810_0"@16683
conv.s.v
push.s "* ..^1. Just like me./"@16684
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1811_0"@16685
conv.s.v
push.s "* Lone wolves have to stick together./%"@16686
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 119
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [557]

:[554]
pushi.e 119
pushenv [556]

:[555]
pushi.e 1
pop.v.i self.howl_con

:[556]
popenv [555]

:[557]
b [559]

:[558]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1817_0"@16688
conv.s.v
push.s "* Train at the party dojo? Ha.../"@16689
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1818_0"@16690
conv.s.v
push.s "* We will make our own dojo..^1. for introverts./%"@16691
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[559]
push.v self.sprite_index
pushi.e 1627
cmp.i.v EQ
bf [563]

:[560]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [562]

:[561]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1828_0"@16692
conv.s.v
push.s "* ..^1. I've been training./"@16693
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1829_0"@16694
conv.s.v
push.s "* ..^1. Don't ask what I've been training^1, though./%"@16695
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [563]

:[562]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1833_0"@16696
conv.s.v
push.s "* ..^1. are you impressed...?/%"@16697
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[563]
pushbltn.v builtin.room
pushi.e 76
cmp.i.v EQ
bf [584]

:[564]
push.v self.sprite_index
pushi.e 1584
cmp.i.v EQ
bf [576]

:[565]
pushi.e -5
pushi.e 640
push.v [array]self.flag
pushi.e 1
cmp.i.v NEQ
bt [567]

:[566]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
b [568]

:[567]
push.e 1

:[568]
bf [573]

:[569]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [571]

:[570]
call.i gml_Script_scr_miniface_init_clover(argc=0)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1848_0"@16698
conv.s.v
push.s "\\m1*		Wow^1, our house is a dojo?!&\\m2	Makes me wanna FIGHT...&\\m3	(Can't we go to sleep?)/%"@16699
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [572]

:[571]
call.i gml_Script_scr_miniface_init_clover(argc=0)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1852_0"@16700
conv.s.v
push.s "\\m1*		It's a PARTY every day!&\\m2	And I'M the oldest!&\\m3	(We're the same age...)/%"@16701
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[572]
b [576]

:[573]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [575]

:[574]
call.i gml_Script_scr_miniface_init_clover(argc=0)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1860_0"@16702
conv.s.v
push.s "\\m1*		Who's that tall-dark-and...&\\m2	Kinda creepy person!?&\\m3	You mean the... Werewire?/%"@16703
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [576]

:[575]
call.i gml_Script_scr_miniface_init_clover(argc=0)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1864_0"@16704
conv.s.v
push.s "\\m1*		Their neck just&	looks so...fluffy~&\\m2	So!? Like I care!?/"@16705
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1865_0"@16706
conv.s.v
push.s "\\m3*		(She wants to rub her face&	in it...)/%"@16707
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[576]
push.v self.sprite_index
pushi.e 1274
cmp.i.v EQ
bf [578]

:[577]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1875_0"@16708
conv.s.v
push.s "* He he he... Looks like fighting wasn't in the cards for us./"@16709
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1876_0"@16710
conv.s.v
push.s "* Lucky for you... Just hope you don't meet my friends!/%"@16711
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[578]
push.v self.sprite_index
pushi.e 2082
cmp.i.v EQ
bf [580]

:[579]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1882_0"@16712
conv.s.v
push.s "* (Looks like it won't forgive you for sparing it...)/"@16713
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1883_0"@16714
conv.s.v
push.s "* (Unless you can beat it in a fight.)/%"@16715
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[580]
push.v self.sprite_index
pushi.e 1623
cmp.i.v EQ
bf [584]

:[581]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [583]

:[582]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1928_0"@16716
conv.s.v
push.s "* Finally a dojo for people that are normal-shaped/"@16717
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1929_0"@16718
conv.s.v
push.s "* I will train my self for the tournament/%"@16719
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [584]

:[583]
push.s "d"@6706
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1938_0"@16720
conv.s.v
push.s "* My power level is falling behind the others/"@16721
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1939_0"@16722
conv.s.v
push.s "* All I can do now is gasp and comment on the battle/%"@16723
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[584]
pushbltn.v builtin.room
pushi.e 92
cmp.i.v EQ
bf [589]

:[585]
push.v self.sprite_index
pushi.e 1255
cmp.i.v EQ
bf [589]

:[586]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [588]

:[587]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1959_0"@16724
conv.s.v
push.s "* Looks like you got past Nubert's forcefield./"@16725
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1960_0"@16726
conv.s.v
push.s "* Nubert doesn't know how that forcefield got there./"@16727
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1961_0"@16728
conv.s.v
push.s "* But it's Nubert's forcefield./"@16729
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1962_0"@16730
conv.s.v
push.s "* As a prize, have Nubert's treasure./"@16731
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1963_0"@16732
conv.s.v
push.s "* Nubert doesn't know what's inside./"@16733
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1964_0"@16734
conv.s.v
push.s "* But Nubert will give it to you./%"@16735
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [589]

:[588]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1968_0"@16736
conv.s.v
push.s "* That's Nubert's treasure./"@16737
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1969_0"@16738
conv.s.v
push.s "* Remember. You're just borrowing it./"@16739
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1970_0"@16740
conv.s.v
push.s "* Forever./%"@16741
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[589]
pushbltn.v builtin.room
pushi.e 104
cmp.i.v EQ
bf [593]

:[590]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [592]

:[591]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1980_0"@16742
conv.s.v
push.s "* All my friends turned into Werewires^1, but it's no big deal./"@16743
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1981_0"@16744
conv.s.v
push.s "* I've been on Queen's side since the beginning^1, so I'm safe!/%"@16745
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [593]

:[592]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1985_0"@16746
conv.s.v
push.s "* Complain about Queen^1, but she gets a lot done!/%"@16747
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[593]
pushbltn.v builtin.room
pushi.e 97
cmp.i.v EQ
bf [598]

:[594]
push.v self.extflag
push.s "capn"@14116
cmp.s.v EQ
bf [596]

:[595]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_1994_0"@16748
conv.s.v
push.s "* Heh^1, good luck figuring out which ride to take!/%"@16749
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[596]
push.v self.extflag
push.s "kk"@14117
cmp.s.v EQ
bf [598]

:[597]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2000_0"@16750
conv.s.v
push.s "* This right ride is the right one./%"@16751
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[598]
pushbltn.v builtin.room
pushi.e 55
cmp.i.v EQ
bf [603]

:[599]
push.v self.sprite_index
pushi.e 1107
cmp.i.v EQ
bf [603]

:[600]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [602]

:[601]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2011_0"@16752
conv.s.v
push.s "* I love reading books./"@16753
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2012_0"@16754
conv.s.v
push.s "* Especially the books upstairs./%"@16755
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [603]

:[602]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2016_0"@16756
conv.s.v
push.s "* I love reading./"@16757
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2017_0"@16758
conv.s.v
push.s "* Especially books./%"@16759
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[603]
pushbltn.v builtin.room
pushi.e 213
cmp.i.v EQ
bf [609]

:[604]
pushi.e 0
pop.v.i self.image_index
pushi.e 1212
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [609]

:[605]
push.v 1212.swatchLines
pushi.e 0
cmp.i.v EQ
bf [607]

:[606]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2030_0"@16761
conv.s.v
push.s "* Thank you for your help./"@16762
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2031_0"@16763
conv.s.v
push.s "* I had gone up there to do \n\\cYa little house cleaning\\cW and got stuck./%"@16764
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[607]
push.v 1212.swatchLines
pushi.e 1
cmp.i.v EQ
bf [609]

:[608]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2037_0"@16765
conv.s.v
push.s "* .../%"@14954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[609]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [612]

:[610]
push.v self.sprite_index
pushi.e 1280
cmp.i.v EQ
bf [612]

:[611]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2026_0"@16766
conv.s.v
push.s "* It's terrible... The butlers are all trapped in the cafe.../"@16767
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2027_0"@16768
conv.s.v
push.s "* Queen is nowhere to be found^1, and.../"@16769
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2028_0"@16770
conv.s.v
push.s "* With no one to defend it^1, a strange force has taken over the mansion!/%"@16771
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[612]
pushbltn.v builtin.room
pushi.e 190
cmp.i.v EQ
bf [641]

:[613]
push.v self.sprite_index
pushi.e 1283
cmp.i.v EQ
bf [617]

:[614]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [616]

:[615]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2049_0"@16772
conv.s.v
push.s "* Welcome to the 2F Dinner Party Section A./"@16773
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2050_0"@16774
conv.s.v
push.s "* Please help yourself to anybody's food./%"@16775
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [617]

:[616]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2054_0"@16776
conv.s.v
push.s "* Normally I'm terrified of mice^1, but it's OK because that one is wearing a wig./%"@16777
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[617]
push.v self.sprite_index
pushi.e 1277
cmp.i.v EQ
bf [627]

:[618]
pushi.e -5
pushi.e 374
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [620]

:[619]
pushi.e -5
pushi.e 375
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [621]

:[620]
push.e 0

:[621]
bf [626]

:[622]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [624]

:[623]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2063_0"@16778
conv.s.v
push.s "* I am Mousemillian. I stand leagues and inches above all the other mice./"@16779
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2064_0"@16780
conv.s.v
push.s "* Only Nubert remains above me still.../%"@16781
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [625]

:[624]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2068_0"@16782
conv.s.v
push.s "* Only Nubert remains above me still.../%"@16781
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[625]
b [627]

:[626]
pushi.e -5
pushi.e 374
push.v [array]self.flag
pushi.e 20
mul.i.v
pushi.e -5
pushi.e 375
push.v [array]self.flag
add.v.v
pop.v.v local.miceGold
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2041_0"@16784
conv.s.v
push.s "* (What have you done!?)/"@16785
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2042_0"@16786
conv.s.v
pushloc.v local.miceGold
call.i string(argc=1)
push.s "* (You gave the other mice $~1 during that puzzle!)/"@16787
conv.s.v
call.i gml_Script_msgnextsubloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2043_0"@16788
conv.s.v
push.s "* (At this rate^1, EVERY mouse is going to be wearing a wig...)/%"@16789
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[627]
push.v self.sprite_index
pushi.e 1258
cmp.i.v EQ
bf [629]

:[628]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2075_0"@16790
conv.s.v
push.s "* Nubert's movin' up in the world./%"@16791
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[629]
push.v self.sprite_index
pushi.e 1279
cmp.i.v EQ
bf [631]

:[630]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2081_0"@16792
conv.s.v
push.s "* Yes^1! Yes^1! Queen is right^1!&* Send error report^1!&* Send error report!/%"@16793
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[631]
push.v self.sprite_index
pushi.e 1278
cmp.i.v EQ
bf [633]

:[632]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2089_0"@16794
conv.s.v
push.s "* Couldn't agree more^1!&* Send error report^1!&* Send error report!/%"@16795
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[633]
push.v self.sprite_index
pushi.e 3252
cmp.i.v EQ
bf [637]

:[634]
pushi.e -5
pushi.e 339
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [636]

:[635]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2097_0"@16796
conv.s.v
push.s "* Psst..^1. Hey^1, it's me^1, the Hacker. No one figured it out but it's me./"@16797
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2098_0"@16798
conv.s.v
push.s "* Keep it on the download./%"@16799
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [637]

:[636]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2076_0"@16800
conv.s.v
push.s "* Psst..^1. I'm the Hacker. Nobody figured it out yet but it's me./"@16801
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2077_0"@16802
conv.s.v
push.s "* There's an east treasure's hallway leading to BASEMENT on 1F.../"@16803
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2078_0"@16804
conv.s.v
push.s "* Come down there and I'll help you crack the code./%"@16805
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[637]
push.v self.sprite_index
pushi.e 1280
cmp.i.v EQ
bf [641]

:[638]
pushi.e -5
pushi.e 357
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [640]

:[639]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2106_0"@16806
conv.s.v
push.s "* This guy keeps telling everyone at the party he's a hacker./"@16807
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2107_0"@16808
conv.s.v
push.s "* I don't know what to do with this information./%"@16809
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [641]

:[640]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2111_0"@16810
conv.s.v
push.s "* There's supposed to be another guest here^1, but they're late./"@16811
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2112_0"@16812
conv.s.v
push.s "* They called and said something about blue checkmarks.../%"@16813
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[641]
pushbltn.v builtin.room
pushi.e 166
cmp.i.v EQ
bf [653]

:[642]
push.v self.sprite_index
pushi.e 1283
cmp.i.v EQ
bf [651]

:[643]
push.v self.x
pushi.e 600
cmp.i.v LT
bf [648]

:[644]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [646]

:[645]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2126_0"@16814
conv.s.v
push.s "* This downstairs table will be for our special guests./"@16815
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2127_0"@16816
conv.s.v
push.s "* There's a dinner party on the 2nd floor for everyone else./%"@16817
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [647]

:[646]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2131_0"@16818
conv.s.v
push.s "* Combined^1, we have enough seats for everyone in the world./%"@16819
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[647]
b [651]

:[648]
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
bf [650]

:[649]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2138_0"@16820
conv.s.v
push.s "* Everything here is tailored for you..^1. right?/%"@16821
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [651]

:[650]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2142_0"@16822
conv.s.v
push.s "* Ralsei^1, good luck./"@16823
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2143_0"@16824
conv.s.v
push.s "* Although you only joined us for minutes^1, we'll miss you./%"@16825
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[651]
push.v self.sprite_index
pushi.e 195
cmp.i.v EQ
bf [653]

:[652]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2153_0"@16826
conv.s.v
push.s "* (He seems to be well-taken care of.)/%"@16827
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[653]
pushbltn.v builtin.room
pushi.e 197
cmp.i.v EQ
bf [656]

:[654]
push.v self.sprite_index
pushi.e 1159
cmp.i.v EQ
bf [656]

:[655]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2167_0"@16828
conv.s.v
push.s "* When are they gonna be done in there?/%"@16829
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[656]
pushbltn.v builtin.room
pushi.e 199
cmp.i.v EQ
bf [660]

:[657]
pushi.e -5
pushi.e 345
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [659]

:[658]
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 345
pop.v.v [array]self.flag
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2177_0"@16830
conv.s.v
push.s "* (The statue of Berdly is wedged in the toilet.)/"@16831
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2178_0"@16832
conv.s.v
push.s "* (You glanced back at the bathroom door sign.)/"@16833
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2179_0"@16834
conv.s.v
push.s "* (The sign has a silhouette of a Berdly statue.)/"@16835
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2180_0"@16836
conv.s.v
push.s "* (Everything checks out.)/%"@16837
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [660]

:[659]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2184_0"@16838
conv.s.v
push.s "* (No problem here.)/%"@16839
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[660]
pushbltn.v builtin.room
pushi.e 198
cmp.i.v EQ
bf [673]

:[661]
push.v self.x
pushi.e 100
cmp.i.v GT
bf [665]

:[662]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [664]

:[663]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2195_0"@16840
conv.s.v
push.s "* This is today's dinner entertainment./"@16841
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2196_0"@16842
conv.s.v
push.s "* I've heard it's called \"The Birth of a Fountain.\"/"@16843
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2197_0"@16844
conv.s.v
push.s "* What an elegant name./%"@16845
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [665]

:[664]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2201_0"@16846
conv.s.v
push.s "* How elegantly quixotic!/%"@16847
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[665]
push.v self.x
pushi.e 200
cmp.i.v GT
bf [669]

:[666]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [668]

:[667]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2210_0"@16848
conv.s.v
push.s "* The QUEEN has been very interested in this video recently./"@16849
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2211_0"@16850
conv.s.v
push.s "* Where the KNIGHT creates the Fountain by its own hand.../"@16851
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2212_0"@16852
conv.s.v
push.s "* Well^1, it's that and Cyber City's Funniest Home Videos./%"@16853
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [669]

:[668]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2216_0"@16854
conv.s.v
push.s "* We are often forced to star in those videos./%"@16855
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[669]
push.v self.x
pushi.e 350
cmp.i.v GT
bf [673]

:[670]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [672]

:[671]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2225_0"@16856
conv.s.v
push.s "* The KNIGHT created the FOUNTAIN^1, and this WORLD./"@16857
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2226_0"@16858
conv.s.v
push.s "* It might be even more powerful than Queen./"@16859
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2227_0"@16860
conv.s.v
push.s "* ..^1. for now./%"@16861
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [673]

:[672]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2231_0"@16862
conv.s.v
push.s "* ..^1. for now./%"@16861
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[673]
pushbltn.v builtin.room
pushi.e 131
cmp.i.v EQ
bf [690]

:[674]
push.v self.extflag
pushi.e 0
cmp.i.v EQ
bf [678]

:[675]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [677]

:[676]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2241_0"@16863
conv.s.v
push.s "* I came to support the rebels^1, but they aren't here./"@16864
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2242_0"@16865
conv.s.v
push.s "* ..^1. Not really sure how I would support them^1, though./%"@16866
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [678]

:[677]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2246_0"@16867
conv.s.v
push.s "* I don't really want to eat bagels./%"@16868
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[678]
push.v self.extflag
push.s "left"@5994
cmp.s.v EQ
bt [680]

:[679]
push.v self.extflag
push.s "mid"@5602
cmp.s.v EQ
b [681]

:[680]
push.e 1

:[681]
bf [683]

:[682]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2219_0"@16869
conv.s.v
push.s "* (It's a box.)/%"@16870
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[683]
push.v self.extflag
push.s "right"@4637
cmp.s.v EQ
bf [690]

:[684]
pushi.e -5
pushi.e 423
push.v [array]self.flag
pushi.e 4
cmp.i.v GTE
bf [686]

:[685]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 0
cmp.i.v GT
b [687]

:[686]
push.e 0

:[687]
bf [689]

:[688]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "scr_text_slash_scr_text_gml_7378_0"@5992
conv.s.v
push.s "* (There aren't any bagels left in the box.)/%"@5993
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [690]

:[689]
pushi.e 1220
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v

:[690]
pushbltn.v builtin.room
pushi.e 120
cmp.i.v EQ
bf [704]

:[691]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [694]

:[692]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
bf [694]

:[693]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
not.b
b [695]

:[694]
push.e 0

:[695]
bf [697]

:[696]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2255_0"@16871
conv.s.v
push.s "* Don't look sad. You're never alone./"@16872
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2256_0"@16873
conv.s.v
push.s "* You got Nubert./%"@16874
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[697]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [699]

:[698]
pushi.e 3
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [700]

:[699]
push.e 0

:[700]
bf [702]

:[701]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2262_0"@16875
conv.s.v
push.s "* I'm Nubert. Everybody loves me./"@16876
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2263_0"@16877
conv.s.v
push.s "* That's why I live in the trash./%"@16878
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[702]
pushi.e 4
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
bf [704]

:[703]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2269_0"@16879
conv.s.v
push.s "* Nuelle^1, eh? Not a bad name^1, says Nubert./%"@16880
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[704]
pushbltn.v builtin.room
pushi.e 86
cmp.i.v EQ
bf [709]

:[705]
push.v self.x
pushi.e 250
cmp.i.v GT
bf [707]

:[706]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2278_0"@16881
conv.s.v
push.s "* ..^1. e-everyone else has been.../%"@16882
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[707]
push.v self.x
pushi.e 350
cmp.i.v GT
bf [709]

:[708]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2284_0"@16883
conv.s.v
push.s "* S-save us^1, she's going to.../%"@16884
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[709]
pushbltn.v builtin.room
pushi.e 90
cmp.i.v EQ
bf [718]

:[710]
pushglb.v global.plot
pushi.e 65
cmp.i.v LT
bf [715]

:[711]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [713]

:[712]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2295_0"@16885
conv.s.v
push.s "* I was running from Queen's control plugs^1, and got stuck up here./"@16886
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2296_0"@16887
conv.s.v
push.s "* I'm..^1. I'm too scared to go down the slide./"@16888
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2297_0"@16889
conv.s.v
push.s "* ..^1. But you know what? Talking to you has increased my confidence!/%"@16890
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [714]

:[713]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2301_0"@16891
conv.s.v
push.s "* I now have less social anxiety./"@16892
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2302_0"@16893
conv.s.v
push.s "* But^1, I'm afraid of slides./%"@16894
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[714]
b [718]

:[715]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [717]

:[716]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2309_0"@16895
conv.s.v
push.s "* You came back from pretty far just to talk to me./"@16896
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2310_0"@16897
conv.s.v
push.s "* That's really increasing my confidence./"@16898
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2311_0"@16899
conv.s.v
push.s "* I bet I could be a hit at parties..^1. the slide? That's not happening./%"@16900
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [718]

:[717]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2315_0"@16901
conv.s.v
push.s "* Now that I think about it^1, I don't think I could go to parties./"@16902
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2316_0"@16903
conv.s.v
push.s "* Someone might put on a slideshow.../%"@16904
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[718]
pushbltn.v builtin.room
pushi.e 91
cmp.i.v EQ
bf [737]

:[719]
push.v self.sprite_index
pushi.e 1248
cmp.i.v EQ
bf [728]

:[720]
pushglb.v global.plot
pushi.e 65
cmp.i.v LT
bf [725]

:[721]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [723]

:[722]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2330_0"@16905
conv.s.v
push.s "* Recently^1, something called \"Internet\" is having an \"outage\"./"@16906
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2331_0"@16907
conv.s.v
push.s "* Some say it was the secret to Queen's know-how./"@16908
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2332_0"@16909
conv.s.v
push.s "* Since then^1, it seems like she's become quite extreme.../%"@16910
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [724]

:[723]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2336_0"@16911
conv.s.v
push.s "* I'm really only interested in cute digital cats./"@16912
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2337_0"@16913
conv.s.v
push.s "* I don't think the \"Internet\" has anything to do with that!/%"@16914
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[724]
b [728]

:[725]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [727]

:[726]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2344_0"@16915
conv.s.v
push.s "* I like cats the best^1, but I heard \"Poppup\" is cute^1, too./"@16916
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2345_0"@16917
conv.s.v
push.s "* What? It's considered a household pest? No way.../%"@16918
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [728]

:[727]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2349_0"@16919
conv.s.v
push.s "* Next you are gonna tell me that mice are vermin!/%"@16920
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[728]
push.v self.sprite_index
pushi.e 1249
cmp.i.v EQ
bf [737]

:[729]
pushglb.v global.plot
pushi.e 65
cmp.i.v LT
bf [734]

:[730]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [732]

:[731]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2361_0"@16921
conv.s.v
push.s "* Lightners^1! I haven't seen many of you recently./"@16922
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2362_0"@16923
conv.s.v
push.s "* If you didn't know^1, an evil ruler is taking over this world./"@16924
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2363_0"@16925
conv.s.v
push.s "* I don't really like politics^1, so I have no opinion on this./%"@16926
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [733]

:[732]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2367_0"@16927
conv.s.v
push.s "* If you try to talk to me about politics^1,/"@16928
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2368_0"@16929
conv.s.v
push.s "* We will have no choice but to cross swords.../%"@16930
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[733]
b [737]

:[734]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [736]

:[735]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2375_0"@16931
conv.s.v
push.s "* Did Queen take over the world yet? I wouldn't know.../%"@16932
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
b [737]

:[736]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2379_0"@16933
conv.s.v
push.s "* I'm not asking you to tell me. Actually^1, if you do^1,/"@16934
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2380_0"@16935
conv.s.v
push.s "* We will have no choice but to cross swords..../%"@16936
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[737]
pushbltn.v builtin.room
pushi.e 94
cmp.i.v EQ
bf [756]

:[738]
push.v self.sprite_index
pushi.e 1251
cmp.i.v EQ
bf [742]

:[739]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [741]

:[740]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2393_0"@16937
conv.s.v
push.s "* I heard there's a rebel team resisting Queen.../"@16938
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2394_0"@16939
conv.s.v
push.s "* So far all I found are overpriced bagels.../%"@16940
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [742]

:[741]
call.i gml_Script_scr_miniface_init_sweet(argc=0)
popz.v
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2399_0"@16941
conv.s.v
push.s "* Bagels^1, doughnuts .../"@16942
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2400_0"@16943
conv.s.v
push.s "* Why is it round dough is always so overpriced?/"@16944
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2401_0"@16945
conv.s.v
push.s "\\m2		*The hole is expensive!/%"@16946
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[742]
push.v self.sprite_index
pushi.e 1244
cmp.i.v EQ
bf [756]

:[743]
pushglb.v global.plot
pushi.e 60
cmp.i.v LT
bf [748]

:[744]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [746]

:[745]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2412_0"@16947
conv.s.v
push.s "* I want to go back to the city^1, but the way is blocked.../"@16948
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2413_0"@16949
conv.s.v
push.s "* I'm no country boy^1! Let me out of Cyber Field!/%"@16950
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [747]

:[746]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2417_0"@16951
conv.s.v
push.s "* Cuisine is so unrefined out here in the (memory) sticks./%"@16952
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[747]
b [756]

:[748]
pushglb.v global.plot
pushi.e 65
cmp.i.v LT
bf [753]

:[749]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [751]

:[750]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2426_0"@16953
conv.s.v
push.s "* The way to the city is now open./"@16954
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2427_0"@16955
conv.s.v
push.s "* I think I'll stay in the countryside a bit longer though./%"@16956
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [752]

:[751]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2431_0"@16957
conv.s.v
push.s "* Everything is so naturally green here./"@16958
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2432_0"@16959
conv.s.v
push.s "* I'm charmed by the local music and flavors./%"@16960
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[752]
b [756]

:[753]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [755]

:[754]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2439_0"@16961
conv.s.v
push.s "* I really got used to the countryside./"@16962
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2440_0"@16963
conv.s.v
push.s "* Perhaps I'm just a farmboy at heart.../%"@16964
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [756]

:[755]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2444_0"@16965
conv.s.v
push.s "* Plus^1, I haven't seen a single Poppup yet./%"@16966
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[756]
pushbltn.v builtin.room
pushi.e 99
cmp.i.v EQ
bf [760]

:[757]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [759]

:[758]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2456_0"@16967
conv.s.v
push.s "* I heard this unassuming store is the rebel base.../"@16968
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2457_0"@16969
conv.s.v
push.s "* But^1, I realized I don't really know how I would help them.../%"@16970
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [760]

:[759]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2461_0"@16971
conv.s.v
push.s "* I don't really want to buy any more bagels.../%"@16972
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[760]
pushbltn.v builtin.room
pushi.e 162
cmp.i.v EQ
bf [774]

:[761]
push.v self.x
pushi.e 1050
cmp.i.v GT
bf [765]

:[762]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [764]

:[763]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2503_0"@16973
conv.s.v
push.s "* Did you enjoy your room?/"@16974
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2504_0"@16975
conv.s.v
push.s "* There was a mint under your electric cage.../%"@16976
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [765]

:[764]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2508_0"@16977
conv.s.v
push.s "* Don't make a mistake^1, this is not a hotel./%"@16978
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[765]
push.v self.x
pushi.e 1290
cmp.i.v GT
bf [774]

:[766]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [771]

:[767]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [769]

:[768]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2474_0"@16979
conv.s.v
push.s "* Spamton? This used to be his room.../"@16980
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2475_0"@16981
conv.s.v
push.s "* Though it's not like he used it^1, after a while./"@16982
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2476_0"@16983
conv.s.v
push.s "* Eventually^1, he just spent all his time in the basement..^1. praying./%"@16984
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [770]

:[769]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2480_0"@16985
conv.s.v
push.s "* When things went downhill^1, he became obsessed with that artifact./"@16986
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2481_0"@16987
conv.s.v
push.s "* Maybe he thought it would give him another big break?/%"@16988
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[770]
b [774]

:[771]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [773]

:[772]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2488_0"@16989
conv.s.v
push.s "* This mansion used to be a luxurious home for upper class citizens./"@16990
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2489_0"@16991
conv.s.v
push.s "* Your room? It belonged to a prestigious big shot.../%"@16992
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [774]

:[773]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2493_0"@16993
conv.s.v
push.s "* Sadly^1, his name has been erased from the records.../%"@16994
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[774]
pushbltn.v builtin.room
pushi.e 119
cmp.i.v EQ
bf [787]

:[775]
push.v self.x
pushi.e 150
cmp.i.v GT
bf [777]

:[776]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2518_0"@16995
conv.s.v
push.s "* The day he was to be evicted from the Queen's mansion^1,/"@16996
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2519_0"@16997
conv.s.v
push.s "* I went to his room to check on him.../"@16998
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2520_0"@16999
conv.s.v
push.s "* But he wasn't there./"@17000
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2521_0"@17001
conv.s.v
push.s "* There was only a phone hanging off the handle./"@17002
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2522_0"@17003
conv.s.v
push.s "* He must've left in the middle of a conversation^1,/"@17004
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2523_0"@17005
conv.s.v
push.s "* Because I could still hear someone on the other end.../"@17006
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2524_0"@17007
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2525_0"@17008
conv.s.v
push.s "* But when I put the receiver to my ear.../"@17009
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2526_0"@17010
conv.s.v
push.s "* There was nothing but garbage noise./%"@17011
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[777]
push.v self.x
pushi.e 500
cmp.i.v GT
bf [779]

:[778]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2532_0"@17012
conv.s.v
push.s "* Even so^1, he only got more and more successful./"@17013
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2533_0"@17014
conv.s.v
push.s "* He moved into a luxurious room in the Queen's mansion.../"@17015
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2534_0"@17016
conv.s.v
push.s "* He started bragging about big TV deals^1, big cars^1, big commercials.../"@17017
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2535_0"@17018
conv.s.v
push.s "* But then things started to crack./"@17019
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2536_0"@17020
conv.s.v
push.s "* It seems like whatever was helping him.../"@17021
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2537_0"@17022
conv.s.v
push.s "* Disappeared./"@17023
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2538_0"@17024
conv.s.v
push.s "* His sales dropped to zero.../"@17025
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2539_0"@17026
conv.s.v
push.s "* And everything came crashing down./%"@17027
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[779]
push.v self.x
pushi.e 600
cmp.i.v GT
bf [781]

:[780]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2545_0"@17028
conv.s.v
push.s "* Suddenly^1, he got really good at his job./"@17029
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2546_0"@17030
conv.s.v
push.s "* The clicks started piling up.../"@17031
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2547_0"@17032
conv.s.v
push.s "* What? What did he do?/"@17033
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2548_0"@17034
conv.s.v
push.s "* Why did HE deserve this?/"@17035
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2549_0"@17036
conv.s.v
push.s "* We were all so jealous of him^1,/"@17037
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2550_0"@17038
conv.s.v
push.s "* We stopped going out with him./"@17039
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2551_0"@17040
conv.s.v
push.s "* I mean^1, wasn't he a big shot?/"@17041
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2552_0"@17042
conv.s.v
push.s "* He didn't need us anymore^1, did he...?/%"@17043
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[781]
push.v self.x
pushi.e 750
cmp.i.v GT
bf [783]

:[782]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2558_0"@17044
conv.s.v
push.s "* He started to get a little desperate./"@17045
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2559_0"@17046
conv.s.v
push.s "* I heard he started looking for any way to become more popular./"@17047
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2560_0"@17048
conv.s.v
push.s "* Somehow^1, he made the right phone call^1, and found someone./"@17049
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2561_0"@17050
conv.s.v
push.s "* Or^1, was he..^1. found BY someone?/"@17051
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2562_0"@17052
conv.s.v
push.s "* They must have been helping him^1, because suddenly^1,/"@17053
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2563_0"@17054
conv.s.v
push.s "* He was on the phone all the time.../%"@17055
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[783]
push.v self.x
pushi.e 850
cmp.i.v GT
bf [785]

:[784]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2569_0"@17056
conv.s.v
push.s "* Night after night^1, when we all went to the same cyber grill^1,/"@17057
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2570_0"@17058
conv.s.v
push.s "* He'd shoot his mouth about making it big someday./"@17059
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2571_0"@17060
conv.s.v
push.s "* \"You just watch!\"/"@17061
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2572_0"@17062
conv.s.v
push.s "* \"Someday^1,/"@17063
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2573_0"@17064
conv.s.v
push.s "* I'm gonna be a big shot!\"/%"@17065
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[785]
push.v self.x
pushi.e 950
cmp.i.v GT
bf [787]

:[786]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2579_0"@17066
conv.s.v
push.s "* He was..^1. Like the rest of us./"@17067
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2580_0"@17068
conv.s.v
push.s "* Just..^1. a little unlucky./"@17069
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2581_0"@17070
conv.s.v
push.s "* For some reason^1, his products never seemed to hit.../"@17071
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2582_0"@17072
conv.s.v
push.s "* ..^1. and the Lightners never even looked his way./"@17073
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2583_0"@17074
conv.s.v
push.s "* ..^1. Poor guy./%"@17075
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[787]
pushbltn.v builtin.room
pushi.e 134
cmp.i.v EQ
bf [789]

:[788]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2590_0"@17076
conv.s.v
push.s "\\E5* I wonder what we did wrong..^1. The forcefield is still up./%"@17077
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[789]
pushbltn.v builtin.room
pushi.e 173
cmp.i.v EQ
bf [793]

:[790]
push.v self.talked
pushi.e 0
cmp.i.v EQ
bf [792]

:[791]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2598_0"@17078
conv.s.v
push.s "* I'm retiring from hacking the main frame./"@17079
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2599_0"@17080
conv.s.v
push.s "* I decided to use my powers for the good of society./"@17081
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2600_0"@17082
conv.s.v
push.s "* I'm going to reverse engineer the code to Super SMashing Fighters./"@17083
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2579_0_b"@17084
conv.s.v
push.s "* So I can put my favorite cartoon characters into the game./%"@17085
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [793]

:[792]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2604_0"@17086
conv.s.v
push.s "* Hacking is hard work. Whoof. I need to drink a jpeg of water./"@17087
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2605_0"@17088
conv.s.v
push.s "* (He's using the app that lets you drink water from your phone.)/%"@17089
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[793]
pushbltn.v builtin.room
pushi.e 85
cmp.i.v EQ
bf [795]

:[794]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2612_0"@17090
conv.s.v
push.s "* I saw you stand up to Queen^1! That was amazing!/"@17091
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2613_0"@17092
conv.s.v
push.s "* I'll definitely become a Werewire if you can just free me!/%"@17093
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[795]
pushbltn.v builtin.room
pushi.e 202
cmp.i.v EQ
bf [802]

:[796]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2619_0"@17094
conv.s.v
push.s "* I was fishing for lost pottery in the acid when I found this photo./"@17095
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2620_0"@17096
conv.s.v
push.s "* Please take a look./"@17097
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [798]

:[797]
pushi.e 1
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2625_0"@17098
conv.s.v
push.s "\\E1* U-umm^1, it sure is a nice photo.../"@17099
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2626_0"@17100
conv.s.v
push.s "\\E2* Susie^1, do you want it for your room?/"@17101
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 17
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2628_0"@17102
conv.s.v
push.s "\\EH* The hell would I want this for!?/%"@17103
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[798]
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [800]

:[799]
pushi.e 2
conv.i.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2634_0"@17104
conv.s.v
push.s "\\E2* Kris^1, you look nice in this one!/%"@17105
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[800]
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 3
cmp.i.v EQ
bf [802]

:[801]
push.s "Y"@5384
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2640_0"@17106
conv.s.v
push.s "\\EY* Hahaha!^1! That's awesome^1, Kris!/%"@17107
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[802]
pushbltn.v builtin.room
pushi.e 170
cmp.i.v EQ
bf [809]

:[803]
pushi.e 0
pop.v.i self.alt
pushi.e 1261
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [805]

:[804]
push.v 1261.readtrigger
pop.v.v self.alt

:[805]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.alt
pushi.e 0
cmp.i.v EQ
bf [807]

:[806]
push.s "obj_npc_room_slash_Other_10_gml_2643_0"@17110
conv.s.v
push.s "* Please do not race the pottery./%"@17111
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[807]
push.v self.alt
pushi.e 1
cmp.i.v EQ
bf [809]

:[808]
push.s "obj_npc_room_slash_Other_10_gml_2678_0"@17112
conv.s.v
push.s "* Yes, we see you. You are the master of balance./%"@17113
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[809]
pushbltn.v builtin.room
pushi.e 143
cmp.i.v EQ
bf [812]

:[810]
push.v self.sprite_index
pushi.e 724
cmp.i.v EQ
bf [812]

:[811]
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_room_slash_Other_10_gml_2686_0"@17114
conv.s.v
push.s "\\E4* (Kris^1, don't take too long^1, okay?)/%"@17115
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[812]
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
push.v self.jpspecial
push.v self.mydialoguer
pushi.e -9
pop.v.v [stacktop]self.jpspecial
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]