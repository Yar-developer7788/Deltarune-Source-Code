.localvar 2 arguments
.localvar 107 i 16223
.localvar 9170 _xoff 16224
.localvar 9172 _yoff 16225
.localvar 31147 _shard 16226

:[0]
push.v 82.x
push.v self.x
cmp.v.v GT
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
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_volume(argc=3)
popz.v

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [9]

:[6]
pushi.e 2
pop.v.i self.con
pushi.e 82
pushenv [8]

:[7]
pushi.e 0
pop.v.i self.visible

:[8]
popenv [7]
pushi.e 0
pop.v.i global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 3
pop.v.i self.qu
pushi.e 893
conv.i.v
pushi.e 188
conv.i.v
pushi.e 1410
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 94
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 4
pop.v.i self.ar
pushi.e 893
conv.i.v
pushi.e -180
conv.i.v
pushi.e 1310
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.ar_actor
push.s "arcade"@27035
conv.s.v
push.v self.ar_actor
push.v self.ar
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 108
push.v self.ar_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4000
push.v self.ar_actor
pushi.e -9
pop.v.i [stacktop]self.depthbonus
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
pop.v.i self.st
pushi.e 893
conv.i.v
pushi.e -300
conv.i.v
pushi.e 1230
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.st_actor
push.s "statue"@31077
conv.s.v
push.v self.st_actor
push.v self.st
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 96
push.v self.st_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2000
push.v self.st_actor
pushi.e -9
pop.v.i [stacktop]self.depthbonus
push.v self.st
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 6
pop.v.i self.be
pushi.e 893
conv.i.v
pushi.e -200
conv.i.v
pushi.e 1250
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 668
push.v self.be_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 232289
setowner.e
push.v self.id
push.v self.cutscene_master
pushi.e -9
pushi.e 0
pop.v.v [array]self.save_object

:[9]
push.v self.con
pushi.e 2
cmp.i.v EQ
bt [11]

:[10]
call.i gml_Script_scr_cutscene_loaded(argc=0)
conv.v.b
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
pushi.e 3
pop.v.i self.con
pushi.e 283
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 717
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_70_0"@31078
conv.s.v
push.s "\\EE* Kris^1, it's Queen..^1. She's right over there!/"@31079
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_71_0"@31080
conv.s.v
push.s "\\E8* C-Can you distract her somehow!!?/%"@31081
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 40
conv.i.v
pushi.e 7
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 98
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 41
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 175
conv.i.v
pushi.e 600
conv.i.v
push.s "setxy"@9876
conv.s.v
pushi.e 42
conv.i.v
call.i gml_Script_c_delaycmd4(argc=6)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 239
conv.i.v
pushi.e 1170
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 24
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 20
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "queen.ogg"@20919
conv.s.v
push.s "initloop"@9840
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_95_0"@31082
conv.s.v
push.s "\\ED* Oh/"@31083
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_96_0"@31084
conv.s.v
push.s "\\EN* Lmao/"@31085
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_97_0"@31086
conv.s.v
push.s "\\E9* You're here/%"@31087
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 92
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -5
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 290
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 0
conv.i.v
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
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 94
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_119_0"@31088
conv.s.v
push.s "\\E1* Sorry Kris While I've Been Looking For Noelle/"@31089
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_120_0"@31090
conv.s.v
push.s "\\E9* I've Had Like 4 Of These All-Ages Appropriate/%"@31091
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 88
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_126_0"@31092
conv.s.v
push.s "\\E1* Glasses of Pure Battery Acid/%"@31093
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 89
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -30
conv.i.v
pushi.e -70
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 1
conv.i.v
push.s "wineglasscon"@24665
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 283
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 70
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 55
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
pushi.e 772
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_162_0"@31094
conv.s.v
push.s "\\E1* Don't Worry That Was My Throwing Glass It's Safe/%"@31095
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_169_0"@31096
conv.s.v
push.s "\\ED* Look Kris/%"@31097
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 188
conv.i.v
push.v 82.x
pushi.e 315
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_177_0"@31098
conv.s.v
push.s "\\E9* Kris Cross Applesauce/%"@31099
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 7
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.d 2.5
conv.d.v
push.d 0.35
conv.d.v
pushi.e 341
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 7
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 2
conv.i.v
push.d 0.35
conv.d.v
pushi.e 341
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 771
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_185_0"@31100
conv.s.v
push.s "\\E1* Now That We Are Trucies I Feel Like We Are On The Same/%"@31101
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 188
conv.i.v
push.v 82.x
pushi.e 200
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 7
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.d 2.2
conv.d.v
push.d 0.25
conv.d.v
pushi.e 341
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 7
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 1
conv.i.v
push.d 0.35
conv.d.v
pushi.e 341
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 7
conv.i.v
push.d 0.5
conv.d.v
pushi.e 65
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.d 1.8
conv.d.v
push.d 0.25
conv.d.v
pushi.e 341
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_194_0"@31102
conv.s.v
push.s "\\E9* Mathematical Wavelength/%"@31103
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 20
conv.i.v
pushi.e 188
conv.i.v
push.v 82.x
pushi.e 164
add.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 105
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 217
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e -15
conv.i.v
pushi.e -45
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_211_0"@31104
conv.s.v
push.s "\\E1* You Get Me Kris/%"@31105
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 106
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_219_0"@31106
conv.s.v
push.s "\\E1* You Do Not Do Crazy Things Like \"Have Opinions\"/"@31107
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_220_0"@31108
conv.s.v
push.s "\\EB* Or Scream When I Capture You/%"@31109
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 107
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_226_0"@31110
conv.s.v
push.s "\\E9* Or Tell Me Horrible Plans For Smartboy Theme Park/%"@31111
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 104
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_233_0"@31112
conv.s.v
push.s "\\E5* I Just Cannot Compute It/"@31113
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_234_0"@31114
conv.s.v
push.s "\\E5* Why Everyone Else Is So..^1. Ungrateful/%"@31115
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 773
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 188
conv.i.v
push.v 82.x
pushi.e 150
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 188
conv.i.v
push.v 82.x
pushi.e 190
add.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 152
conv.i.v
push.v 82.x
pushi.e 180
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 89
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 290
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 284
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e -1
conv.i.v
push.s "wineglasscon"@24665
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1340
conv.i.v
push.s "x"@50
conv.s.v
push.v self.glassexplosion
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 295
conv.i.v
push.s "y"@52
conv.s.v
push.v self.glassexplosion
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.glassexplosion
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "image_index"@274
conv.s.v
push.v self.glassexplosion
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 90
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
push.v self.glassexplosion
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 50
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 188
conv.i.v
push.v 82.x
pushi.e 220
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_284_0"@31116
conv.s.v
push.s "\\E1* Whoops That Was My Extra Dangerous Glass/%"@31117
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_292_0"@31118
conv.s.v
push.s "\\ED* Kris/%"@31119
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 773
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_298_0"@31120
conv.s.v
push.s "\\EP* I Just Want To Make Everyone Smile/%"@31121
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 188
conv.i.v
push.v 82.x
pushi.e 350
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_305_0"@31122
conv.s.v
push.s "\\E9* And If I Become An Evil Villain To Accomplish That/%"@31123
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_313_0"@31124
conv.s.v
push.s "\\ED* Is That Bad?/%"@31125
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_320_0"@31126
conv.s.v
push.s "\\E1* It's Okay/"@31127
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_321_0"@31128
conv.s.v
push.s "\\E1* You Do Not Have To Answer/%"@31129
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 293
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.d 0.3
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
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
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_337_0"@31130
conv.s.v
push.s "\\EN* You Would Be Wrong/%"@31131
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 772
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_343_0"@31132
conv.s.v
push.s "\\E5* But Kris..^1. While We're Still Trucies/"@31133
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_344_0"@31134
conv.s.v
push.s "\\ED* Maybe We Could..^1. Make The Most Of It/%"@31135
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 46
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 250
conv.i.v
pushi.e 1310
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 62
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 109
conv.i.v
push.s "sprite"@9580
conv.s.v
pushi.e 15
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 173
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_365_0"@31136
conv.s.v
push.s "\\E1* We Could Play That Game Again/"@31137
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_366_0"@31138
conv.s.v
push.s "\\E9* Wasn't That..^1. Fun^1, Kris/%"@31139
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 218
conv.i.v
pushi.e 1255
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 40
conv.i.v
pushi.e 166
conv.i.v
pushi.e 1330
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_379_0"@31140
conv.s.v
push.s "\\E1* Just You And Me/%"@31141
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waittalk(argc=0)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_385_0"@31142
conv.s.v
push.s "\\EQ* Having A Good Time/"@31143
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_386_0"@31144
conv.s.v
push.s "\\ED* No One Else To Get In The Way/%"@31145
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.st
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 30
conv.i.v
pushi.e 1232
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.v self.ar
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.s "image_yscale"@280
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 6
conv.i.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
push.s "image_xscale"@279
conv.s.v
call.i gml_Script_c_var_lerp(argc=4)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
pushi.e 189
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 238
conv.i.v
pushi.e 1180
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 2
conv.i.v
pushi.e 186
conv.i.v
pushi.e 1450
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[14]
push.v self.wineglasscon
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2068
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 6
add.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.glass_marker
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 500
add.i.v
push.v self.glass_marker
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 0
pop.v.i self.wineglasscon
b [21]

:[16]
push.v self.wineglasscon
pushi.e -1
cmp.i.v EQ
bf [21]

:[17]
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [20]

:[19]
push.d 0.5235987755982988
pushloc.v local.i
mul.v.d
call.i sin(argc=1)
pushi.e 50
mul.i.v
pushi.e 10
add.i.v
pop.v.v local._xoff
push.d 0.5235987755982988
pushloc.v local.i
mul.v.d
call.i cos(argc=1)
pushi.e -15
mul.i.v
pop.v.v local._yoff
pushi.e 47
conv.i.v
push.v self.glass_marker
pushi.e -9
push.v [stacktop]self.y
pushi.e 142
add.i.v
pushloc.v local._yoff
add.v.v
push.v self.glass_marker
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._xoff
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local._shard
pushi.e 1
pushloc.v local._shard
pushi.e -9
pop.v.b [stacktop]self.destroyoffscreen
pushi.e 1908
pushloc.v local._shard
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushloc.v local._shard
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.i
pushloc.v local._shard
pushi.e -9
pop.v.v [stacktop]self.image_index
pushloc.v local._shard
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._shard
pushi.e -9
push.v [stacktop]self.x
push.v self.glass_marker
pushi.e -9
push.v [stacktop]self.y
pushi.e 142
add.i.v
push.v self.glass_marker
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
pushloc.v local._shard
pushi.e -9
pop.v.v [stacktop]self.direction
pushi.e 2
pushloc.v local._shard
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
pushloc.v local._shard
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pushloc.v local._shard
pushi.e -9
pop.v.i [stacktop]self.gravity
pushi.e 35
conv.i.v
pushi.e 25
conv.i.v
call.i random_range(argc=2)
pushloc.v local._shard
pushi.e -9
pop.v.v [stacktop]self.speed
pushi.e 90
conv.i.v
pushi.e -90
conv.i.v
call.i choose(argc=2)
pushloc.v local._shard
pushi.e -9
pop.v.v [stacktop]self.rotation
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[20]
push.v self.glass_marker
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.wineglasscon

:[21]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 0

:[24]
bf [39]

:[25]
push.v self.explodetimer
push.e 1
add.i.v
pop.v.v self.explodetimer
push.v self.explodetimer
pushi.e 1
cmp.i.v EQ
bf [30]

:[26]
pushi.e 0
pop.v.i local.i

:[27]
pushloc.v local.i
pushi.e 6
cmp.i.v LT
bf [29]

:[28]
push.i 171869
setowner.e
pushi.e 129
conv.i.v
pushi.e 250
conv.i.v
pushi.e 1220
pushloc.v local.i
pushi.e 40
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.explosion_marker
push.i 133637
setowner.e
push.v self.st_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 5
sub.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.explosion_marker
pushi.e -9
pop.v.v [stacktop]self.depth
push.i 133642
setowner.e
pushi.e 2275
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.explosion_marker
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [27]

:[29]
b [37]

:[30]
pushi.e 129
pushenv [36]

:[31]
push.v self.sprite_index
pushi.e 2275
cmp.i.v EQ
bf [33]

:[32]
push.v self.image_index
pushi.e 16
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [31]

:[37]
push.v self.explodetimer
pushi.e 17
cmp.i.v GTE
bf [39]

:[38]
pushi.e 4
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[39]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [41]

:[40]
pushi.e 5
pop.v.i self.con
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 94
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 230
conv.i.v
pushi.e 1230
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 45
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
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_spin(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_498_0"@31148
conv.s.v
push.s "\\E6* Queen!^1! I've been looking everywhere to show you this!!/%"@31149
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3335
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_507_0"@31150
conv.s.v
push.s "\\EJ* A monument to our greatness..^1. Together./"@31151
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_510_0"@31152
conv.s.v
push.s "\\EI* Oh/%"@31153
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_518_0"@31154
conv.s.v
push.s "* Um/%"@31155
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
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_525_0"@31156
conv.s.v
push.s "\\s0* Oh%%"@31157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_529_0"@31158
conv.s.v
push.s "\\s0* Uh%%"@31159
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_535_0"@31160
conv.s.v
push.s "\\s0* It%%"@31161
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
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_541_0"@31162
conv.s.v
push.s "\\s0* It's%%"@31163
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_545_0"@31164
conv.s.v
push.s "\\s0* Oh%%"@31157
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_549_0"@31165
conv.s.v
push.s "\\s0* Well%%"@31166
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_555_0"@31167
conv.s.v
push.s "\\s0* Um%%"@31168
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
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_561_0"@31169
conv.s.v
push.s "\\s0* Mmm%%"@31170
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "I"@9483
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_565_0"@31171
conv.s.v
push.s "\\s0* It's%%"@31163
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_571_0"@31172
conv.s.v
push.s "\\ED* How Do I Put This/"@31173
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_572_0"@31174
conv.s.v
push.s "\\E1* Very.../"@31175
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_573_0"@31176
conv.s.v
push.s "\\ED* .../%"@31177
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_581_0"@31178
conv.s.v
push.s "\\EK* Smart/"@31179
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_582_0"@31180
conv.s.v
push.s "\\EK* So Smart You Are/"@31181
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_583_0"@31182
conv.s.v
push.s "\\EK* I Love Tolerating You/%"@31183
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3347
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_592_0"@31184
conv.s.v
push.s "\\EL* Haha!^1! I KNEW you'd be enamored. Such perfect taste./%"@31185
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_601_0"@31186
conv.s.v
push.s "\\EK* Very Cool Statues/"@31187
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_602_0"@31188
conv.s.v
push.s "\\ED* I Did Not Know You Had..^1. Nipples/%"@31189
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 3335
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_610_0"@31190
conv.s.v
push.s "\\E6* Haha..^1. I will SOON..^1. in our IDEAL WORLD./%"@31191
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_617_0"@31192
conv.s.v
push.s "\\EE* Kris^1, feel free to admire our artisanship./%"@31193
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_621_0"@31194
conv.s.v
push.s "\\E1* Queen and I have PLANs to consider./"@31195
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_628_0"@31196
conv.s.v
push.s "\\E1* Haha Yes Oooh So Good Looking Forward To That/%"@31197
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_632_0"@31198
conv.s.v
push.s "\\E1* MMmmm Yum Yum Yum Yum Yum/%"@31199
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_638_0"@31200
conv.s.v
push.s "\\ED* Let's Go Burghley/%"@31201
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 50
conv.i.v
pushi.e 10
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 769
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.2
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_662_0"@31202
conv.s.v
push.s "\\EK* Keep Going I Am Right Behind You/%"@31203
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.d 0.1
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
pushi.e 186
conv.i.v
pushi.e 1500
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_668_0"@31204
conv.s.v
push.s "\\E1* Procedurally Lowering The Volume Of My Voice/%"@31205
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 186
conv.i.v
push.v 82.x
pushi.e 200
add.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_678_0"@31206
conv.s.v
push.s "\\ED* Sorry Kris I Must Alt Tab Out Of Here/%"@31207
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 60
conv.i.v
pushi.e 186
conv.i.v
pushi.e 320
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 120
conv.i.v
pushi.e 8
conv.i.v
push.s "u"@6708
conv.s.v
pushi.e 71
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
pushi.e 60
conv.i.v
push.v self.no_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 40
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_msgzurasu(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_694_0"@31208
conv.s.v
push.s "\\ED* Wow Cool Face/%"@31209
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 100
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 218
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 210
sub.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 56
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 60
conv.i.v
pushi.e 233
conv.i.v
push.v self.no_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 500
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 55
conv.i.v
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
call.i gml_Script_c_panspeed_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_723_0"@31210
conv.s.v
push.s "\\E3* Phew.../"@31211
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_724_0"@31212
conv.s.v
push.s "\\E2* Looks like my disguise worked./%"@31213
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 110
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 35
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_746_0"@31214
conv.s.v
push.s "\\E8* It's silly looking^1, but it beats hiding.../%"@31215
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
pushi.e 111
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 35
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 98
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e -2
conv.i.v
pushi.e 0
conv.i.v
push.v self.no_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_763_0"@31216
conv.s.v
push.s "\\E4* Let's get going^1, Kris!/%"@31217
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 216
conv.i.v
pushi.e 970
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
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

:[41]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [43]

:[42]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [44]

:[43]
push.e 0

:[44]
bf [46]

:[45]
pushi.e 50
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing

:[46]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [48]

:[47]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [49]

:[48]
push.e 0

:[49]
bf [53]

:[50]
pushi.e 55
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 1
push.v self.statuenpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 1
push.v self.noellebox
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 276
pushenv [52]

:[51]
pushi.e 0
pop.v.i self.visible

:[52]
popenv [51]
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[53]
push.v self.con
pushi.e 55
cmp.i.v EQ
bf [59]

:[54]
push.v self.noellelost
conv.v.b
not.b
bf [59]

:[55]
push.v 82.x
pushi.e 1100
cmp.i.v NEQ
bt [57]

:[56]
push.v 82.y
pushi.e 233
cmp.i.v NEQ
b [58]

:[57]
push.e 1

:[58]
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
push.d 0.25
push.v self.noellebox
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 1
pop.v.b self.noellelost

:[62]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [69]

:[63]
pushi.e 893
pushenv [65]

:[64]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[65]
popenv [64]
pushi.e 21
pop.v.i self.con
push.v 82.x
push.v self.noellebox
pushi.e -9
push.v [stacktop]self.x
cmp.v.v LT
bf [67]

:[66]
pushi.e 1
conv.i.v
b [68]

:[67]
pushi.e 3
conv.i.v

:[68]
pop.v.v global.facing
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 3
pop.v.i self.no
pushi.e 893
conv.i.v
pushi.e 218
conv.i.v
pushi.e 1222
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 112
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.8
conv.d.v
pushi.e 1
conv.i.v
pushi.e 52
conv.i.v
call.i gml_Script_c_soundplay_x(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
push.i 97300
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 113
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v
pushi.e 0
push.v self.noellebox
pushi.e -9
pop.v.i [stacktop]self.visible

:[69]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [73]

:[70]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
bf [73]

:[71]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [73]

:[72]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [74]

:[73]
push.e 0

:[74]
bf [78]

:[75]
pushi.e 60
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 25
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_859_0"@31218
conv.s.v
push.s "\\E8* Just realized..^1. I can't see anything..^1. haha.../%"@31219
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 98
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.v 82.y
pushi.e 165
cmp.i.v GT
bf [77]

:[76]
push.i 800000
conv.i.v
call.i gml_Script_c_depth(argc=1)
popz.v

:[77]
pushi.e 110
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 145
conv.i.v
pushi.e 1202
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 33
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 718
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v self.no_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_878_0"@31220
conv.s.v
push.s "\\E4* Guess I'll try not to wear it unless I have to./"@31221
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_scene13_slash_Step_0_gml_879_0"@31222
conv.s.v
push.s "\\ET* OK^1, let's go for real this time!!/%"@31223
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autodepth(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_actormoveparty(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[78]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [80]

:[79]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [81]

:[80]
push.e 0

:[81]
bf [87]

:[82]
pushi.e 276
pushenv [84]

:[83]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[84]
popenv [83]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.con
pushi.e 75
pop.v.i global.plot
pushi.e 276
pushenv [86]

:[85]
pushi.e 1
pop.v.i self.visible

:[86]
popenv [85]

:[87]
push.v self.noellelost
pushi.e 1
cmp.b.v EQ
bf [end]

:[88]
push.v self.noellebox
pushi.e -9
pushenv [90]

:[89]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[90]
popenv [89]
pushi.e 5
conv.i.v
pushi.e 1240
conv.i.v
push.v self.noellebox
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_scr_movetowards(argc=3)
push.v self.noellebox
pushi.e -9
pop.v.v [stacktop]self.x
pushi.e 2
conv.i.v
pushi.e 159
conv.i.v
push.v self.noellebox
pushi.e -9
push.v [stacktop]self.y
call.i gml_Script_scr_movetowards(argc=3)
push.v self.noellebox
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.noellebox
pushi.e -9
push.v [stacktop]self.x
pushi.e 1215
cmp.i.v GTE
bf [end]

:[91]
pushi.e 0
pop.v.b self.noellelost
pushi.e 20
pop.v.i self.con

:[end]