.localvar 2 arguments
.localvar 34216 su_depth 17042
.localvar 34217 ral_xpos 17043

:[0]
push.v 82.x
pushi.e 550
cmp.i.v LT
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [13]

:[6]
pushi.e 3
pop.v.i self.con
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "susieunhappy"@10172
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "d"@6706
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.y
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
cmp.v.v LT
bf [8]

:[7]
push.i 98000
conv.i.v
b [9]

:[8]
push.i 95000
conv.i.v

:[9]
pop.v.v local.su_depth
pushloc.v local.su_depth
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 55
conv.i.v
pushi.e 0
conv.i.v
pushi.e -4
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 55
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 56
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 645
cmp.i.v GT
bf [11]

:[10]
pushi.e 70
conv.i.v
b [12]

:[11]
pushi.e 60
conv.i.v

:[12]
pop.v.v local.ral_xpos
pushloc.v local.ral_xpos
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_48_0"@34218
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_49_0"@34219
conv.s.v
push.s "\\E1* Hey so..^1. are we seriously.../%"@34220
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_57_0"@34221
conv.s.v
push.s "\\E0* NOT gonna talk about any of that?/"@34222
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_58_0"@34223
conv.s.v
push.s "\\EC* That was god damn weird./%"@34224
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_65_0"@34225
conv.s.v
push.s "\\E0* Puppets..^1. strings..^1. hands.../"@34226
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_66_0"@34227
conv.s.v
push.s "\\E1* What the hell does any of that mean?/"@34228
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_67_0"@34229
conv.s.v
push.s "\\ED* And the way he just..^1. broke./%"@34230
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_74_0"@34231
conv.s.v
push.s "\\E6* I..^1. don't think it meant anything^1, Susie./"@34232
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_75_0"@34233
conv.s.v
push.s "\\E4* It seems like it was just a corrupted program./%"@34234
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_83_0"@34235
conv.s.v
push.s "\\EI* He turned into our ally^1, so let's just accept it./%"@34236
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 14
sub.i.v
pushi.e 380
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1129
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[13]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [15]

:[14]
pushi.e 30
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 324
pop.v.v [array]self.flag
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_116_0"@34237
conv.s.v
push.s "\\E0* .../%"@3988
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_124_0"@34238
conv.s.v
push.s "\\EC* (If you say it all strained like that^1,)/"@34239
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_125_0"@34240
conv.s.v
push.s "\\E1* (..^1. I'm not gonna think you're OK...)/"@34241
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_126_0"@34242
conv.s.v
push.s "\\E0* (...)/%"@34243
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_133_0"@34244
conv.s.v
push.s "\\EC* (Hey Ralsei^1, you think Kris is OK?)/%"@34245
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_144_0"@34246
conv.s.v
push.s "\\E4* (Hmm..^1. well^1, they seem a bit shocked^1, but...)/"@34247
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_145_0"@34248
conv.s.v
push.s "\\EI* (Kris doesn't want us to worry^1, so...)/"@34249
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_146_0"@34250
conv.s.v
push.s "\\EQ* (Let's not push them for now...)/%"@34251
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 31
conv.i.v
pushi.e 168
conv.i.v
pushi.e 284
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 9
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 7
sub.i.v
pushi.e 263
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_159_0"@34252
conv.s.v
push.s "\\E2* Kris^1, I'll make some cake for you later^1, OK?/"@34253
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_160_0"@34254
conv.s.v
push.s "\\EQ* I could even make it chocolate-flavored^1,/"@34255
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_161_0"@34256
conv.s.v
push.s "\\EQ* Butterscotch^1, cinnamon..^1. whatever you want./%"@34257
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_169_0"@34258
conv.s.v
push.s "\\E0* .../%"@3988
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_176_0"@34259
conv.s.v
push.s "\\E2* Well^1, their stomach's rumbling but the goosebumps aren't gone./%"@34260
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_184_0"@34261
conv.s.v
push.s "\\E1* Kris^1, if you're cold^1, you can share my scarf.../"@34262
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_185_0"@34263
conv.s.v
push.s "\\EJ* Huh? Or^1, um^1, sure^1, Susie could...?/%"@34264
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 996
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_196_0"@34265
conv.s.v
push.s "\\E5* What? No^1, hell if I'm giving you MY jacket!/%"@34266
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 819
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_206_0"@34267
conv.s.v
push.s "\\EY* You make ME cold^1, I'm burning you knuckleheads for warmth./"@34268
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "U"@4641
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_208_0"@34269
conv.s.v
push.s "\\EU* Susie!!!/"@34270
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_210_0"@34271
conv.s.v
push.s "\\E2* Too late^1, already imagining you guys as idiot-scented candles./"@34272
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_211_0"@34273
conv.s.v
push.s "\\EL* (..^1. Heh^1, that got Kris smiling. Let's go.)/%"@34274
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 40
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[15]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [22]

:[16]
pushi.e 30
pop.v.i self.con
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 324
pop.v.v [array]self.flag
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 31
conv.i.v
pushi.e 168
conv.i.v
pushi.e 264
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 9
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
pushi.e 253
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_245_0"@34275
conv.s.v
push.s "\\EQ* K..^1. Kris? Are you OK? You're yelling.../%"@34276
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 811
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
push.d 0.15
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 75
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 812
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e -6
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_c_addxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 11
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
b [19]

:[18]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v

:[19]
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_304_0"@34277
conv.s.v
push.s "\\EB* There^1, there..^1. everything's alright./"@34278
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_305_0"@34279
conv.s.v
push.s "\\EQ* Don't think about what happened too hard^1, OK?/"@34280
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_306_0"@34281
conv.s.v
push.s "\\E0* Just take some deep breaths and think about.../"@34282
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_307_0"@34283
conv.s.v
push.s "\\EQ* Something you like. Something nice..^1. something soft./"@34284
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_308_0"@34285
conv.s.v
push.s "\\E2* I'll be right next to you until you feel better^1, Kris./"@34286
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_309_0"@34287
conv.s.v
push.s "\\E1* .../%"@33759
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_326_0"@34288
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_327_0"@34289
conv.s.v
push.s "\\E1* Guess Ralsei's right^1, Kris./"@34290
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_328_0"@34291
conv.s.v
push.s "\\E0* Whatever just happened..^1. I guess.../"@34292
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_329_0"@34293
conv.s.v
push.s "\\E1* Maybe it didn't mean anything./"@34294
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_330_0"@34295
conv.s.v
push.s "\\E0* I dunno why you came here^1, but.../"@34296
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_331_0"@34297
conv.s.v
push.s "\\EY* Let's just be glad you didn't get killed. Heh./"@34298
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_332_0"@34299
conv.s.v
push.s "\\E0* .../"@2604
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_333_0"@34300
conv.s.v
push.s "\\EK* (Just..^1. tell us next time...)/"@34301
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_334_0"@34302
conv.s.v
push.s "\\EY* (You're gonna do something stupid like this^1, OK?)/%"@34303
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_350_0"@34304
conv.s.v
push.s "\\EK* .../"@5000
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_351_0"@34305
conv.s.v
push.s "\\E5* What? No^1, I'M not giving YOU a hug!/"@34306
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_352_0"@34307
conv.s.v
push.s "\\EH* That's what Ralsei's for!^1! He's like a portable teddy bear!/"@34308
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "J"@9484
conv.s.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_354_0"@34309
conv.s.v
push.s "\\EJ* But Susie^1, because you never give out hugs./"@34310
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_355_0"@34311
conv.s.v
push.s "\\EG* That increases their value. It's the law of supply and demand./"@34312
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "H"@5303
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_357_0"@34313
conv.s.v
push.s "\\EH* Well^1, I demand^1, you supply me^1, with^1, uh -/"@34314
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_358_0"@34315
conv.s.v
push.s "\\E5* Ugh^1, enough of you guys!/%"@34316
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
call.i gml_Script_c_panspeed(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 22
conv.i.v
pushi.e 8
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 60
conv.i.v
pushi.e 8
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 29
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "ralsei"@72
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_sceneex3_slash_Step_0_gml_409_0"@34317
conv.s.v
push.s "\\E2* ..^1. I think everything will be OK^1, Kris./%"@34318
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 26
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 80
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 27
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 44
conv.i.v
pushi.e 4
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 80
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
pushi.e 50
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 130
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
b [22]

:[21]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 50
conv.i.v
pushi.e 4
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v

:[22]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [34]

:[23]
pushi.e 59
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i global.facing
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e -5
pushi.e 324
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [26]

:[25]
push.e 0

:[26]
bf [33]

:[27]
pushi.e 276
pushenv [30]

:[28]
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [28]
pushi.e 276
pushenv [32]

:[31]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[32]
popenv [31]

:[33]
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[34]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [36]

:[35]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [44]

:[38]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e -5
pushi.e 324
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e -5
pushi.e 325
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [43]

:[42]
pushi.e 62
pop.v.i self.con
b [44]

:[43]
pushi.e 0
pop.v.i self.con

:[44]
push.v self.con
pushi.e 62
cmp.i.v EQ
bf [end]

:[45]
pushi.e 99
pop.v.i self.con
pushi.e 3
pop.v.i global.interact
pushi.e 20
pop.v.i global.entrance
pushi.e 192
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 174
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]