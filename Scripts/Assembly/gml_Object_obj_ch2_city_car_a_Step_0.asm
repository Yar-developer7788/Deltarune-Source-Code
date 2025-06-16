.localvar 2 arguments
.localvar 15466 xpos 17224
.localvar 14550 ypos 17225
.localvar 35391 tile_speed 17226
.localvar 35393 tile_1_x 17227
.localvar 35394 tile_2_x 17228
.localvar 35395 tile_3_x 17229
.localvar 35398 camera_width 17231
.localvar 107 i 17232
.localvar 220 j 17233
.localvar 35299 readable_cars 17234
.localvar 35300 readable_cars_2 17235

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
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 1144
conv.i.v
pushi.e 200
conv.i.v
pushi.e 760
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.island_collider
pushi.e 8
push.v self.island_collider
pushi.e -9
pop.v.i [stacktop]self.image_xscale
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing
push.v self.actor_count
pushi.e 1
add.i.v
pop.v.v self.qu
pushi.e 893
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 1000
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.qu_actor
push.s "queen"@3525
conv.s.v
push.v self.qu_actor
push.v self.qu
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 768
push.v self.qu_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.actor_count
pushi.e 2
add.i.v
pop.v.v self.be
pushi.e 893
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 1000
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.be_actor
push.s "berdly"@4870
conv.s.v
push.v self.be_actor
push.v self.be
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 670
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
push.v self.traffic_collider_left
call.i instance_deactivate_object(argc=1)
popz.v

:[5]
push.v self.realign
conv.v.b
bf [9]

:[6]
pushi.e 0
pop.v.b self.realign
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 82
add.i.v
pop.v.v local.xpos
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
pop.v.v local.ypos
pushi.e 82
pushenv [8]

:[7]
pushloc.v local.xpos
pop.v.v self.x
pushloc.v local.ypos
pop.v.v self.y

:[8]
popenv [7]

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 610
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 170
conv.i.v
pushi.e 890
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 150
conv.i.v
pushi.e 805
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
push.s "bottom"@4636
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_63_0"@35327
conv.s.v
push.s "\\E9* Noeeeeelle Honey Where Are You/"@35328
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 14
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_65_0"@35329
conv.s.v
push.s "\\EE* (Oh no^1, here she comes...)/%"@35330
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
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
pushi.e 9
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
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 980
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 26
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 507
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_90_0"@35331
conv.s.v
push.s "\\E1* Noelle Come Home I Made You A Battery Acid Pie/%"@35332
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
pushi.e 50
conv.i.v
pushi.e 30
conv.i.v
push.s "!"@6155
conv.s.v
call.i gml_Script_c_emote(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_99_0"@35333
conv.s.v
push.s "\\ED* Oh^1, Kris Perfect Timing/%"@35334
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
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 508
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 40
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
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "break_pie"@35302
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_shake(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 5
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.s "x"@50
conv.s.v
call.i gml_Script_c_flip(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -40
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 768
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_127_0"@35335
conv.s.v
push.s "\\E1* Have You Seen --/%"@35336
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
push.s "obj_ch2_city_car_a_slash_Step_0_gml_137_0"@35337
conv.s.v
push.s "\\E2* Oh my Luxurious Quuuueeeeeenn!!/%"@35338
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
pushi.e 505
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e -20
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
push.s "obj_ch2_city_car_a_slash_Step_0_gml_139_0"@35339
conv.s.v
push.s "\\E8* Oh My Circuits Kris Get In The Car/%"@35340
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 205
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 840
conv.i.v
call.i gml_Script_camerax(argc=0)
pushi.e 800
add.i.v
push.s "x"@50
conv.s.v
push.v self.queencar
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 110
conv.i.v
pushi.e 915
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 65
conv.i.v
pushi.e 915
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 97
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 97
conv.i.v
pushi.e 870
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 206
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.be
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 45
conv.i.v
pushi.e 183
conv.i.v
pushi.e 895
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 509
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 511
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 509
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 511
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "berdly"@4870
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_187_0"@35341
conv.s.v
push.s "\\E7* My Queen!^1! Where are you!!/"@35342
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_188_0"@35343
conv.s.v
push.s "\\E6* I've baked you a Gamer's Delight!!/"@35344
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_189_0"@35345
conv.s.v
push.s "\\E0* Hmm..^1. she's not here.../%"@35346
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 45
conv.i.v
pushi.e 183
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 46
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 15
conv.i.v
push.v self.qu_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 980
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 170
conv.i.v
pushi.e 890
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 98
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 150
conv.i.v
pushi.e 805
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "imageindex"@9827
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 45
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_218_0"@35347
conv.s.v
push.s "\\EF* That Was Close/%"@35348
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
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 100
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_236_0"@35349
conv.s.v
push.s "\\ED* Kris/"@35350
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_237_0"@35351
conv.s.v
push.s "\\EB* Who Is Your Friend/"@35352
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_238_0"@35353
conv.s.v
push.s "\\E9* My Face Recognition Software Does Not Compute Them/%"@35354
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.kr
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
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_254_0"@35355
conv.s.v
push.s "\\EA* ...^1. And Yet/"@35356
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_255_0"@35357
conv.s.v
push.s "\\E5* Something About Them Seems/%"@35358
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 98
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_267_0"@35359
conv.s.v
push.s "\\ED* Cool/"@35360
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_268_0"@35361
conv.s.v
push.s "\\E1* Robotic Even/"@35362
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 16
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_270_0"@35363
conv.s.v
push.s "\\EG* (...)/%"@35364
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
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 102
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "imagespeed"@9826
conv.s.v
pushi.e 18
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_284_0"@35365
conv.s.v
push.s "\\E1* Kris We Must Drive To Find Noelle/"@35366
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_285_0"@35367
conv.s.v
push.s "\\EC* Everyone Get In The Car/%"@35368
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 110
conv.i.v
pushi.e 915
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.qu
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
push.v self.qu_actor
call.i gml_Script_c_arg_objectxy(argc=3)
popz.v
push.v self.y
push.v self.x
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 65
conv.i.v
pushi.e 915
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 97
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.d 0.25
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 97
conv.i.v
pushi.e 870
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "visible"@6533
conv.s.v
pushi.e 20
conv.i.v
call.i gml_Script_c_delaycmd(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 206
conv.i.v
call.i gml_Script_c_soundplay(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 0
conv.i.v
pushi.e 730
conv.i.v
call.i gml_Script_c_pan(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[11]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [18]

:[15]
pushi.e 4
pop.v.i self.con
call.i gml_Script_snd_free_all(argc=0)
popz.v
push.i 231459
setowner.e
push.s "queen_car_radio.ogg"@20922
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 0
conv.i.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
push.v self.queencar
pushi.e -9
pushenv [17]

:[16]
pushi.e 1
pop.v.b self.active

:[17]
popenv [16]

:[18]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [21]

:[19]
push.v self.release_timer
push.e 1
add.i.v
pop.v.v self.release_timer
push.v self.release_timer
pushi.e 90
cmp.i.v EQ
bf [21]

:[20]
pushi.e 1
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 1
pop.v.b self.loop_road
pushi.e 1
pop.v.b self.shift_road

:[21]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [24]

:[22]
push.v self.queencar
pushi.e -9
push.v [stacktop]self.finish_convo
conv.v.b
bf [24]

:[23]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.b self.shift_road
pushi.e 0
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.pause_x_move

:[27]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [29]

:[28]
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 1740
cmp.i.v GTE
b [30]

:[29]
push.e 0

:[30]
bf [38]

:[31]
pushi.e 1
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.pause_x_move
pushi.e 0
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.active
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
pushi.e 208
cmp.i.v GT
bf [33]

:[32]
push.v self.queencar
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 6
sub.i.v
pop.i.v [stacktop]self.y
b [34]

:[33]
push.v self.queencar
pushi.e -9
dup.i 4
push.v [stacktop]self.y
pushi.e 6
add.i.v
pop.i.v [stacktop]self.y

:[34]
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
pushi.e 208
sub.i.v
call.i abs(argc=1)
pushi.e 6
cmp.i.v LTE
bf [36]

:[35]
pushi.e 208
push.v self.queencar
pushi.e -9
pop.v.i [stacktop]self.y

:[36]
push.v self.queencar
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 6
add.i.v
pop.i.v [stacktop]self.x
call.i gml_Script_camerax(argc=0)
pushi.e 3
add.i.v
call.i gml_Script_camerax_set(argc=1)
popz.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 2075
cmp.i.v GTE
bf [38]

:[37]
pushi.e 30
pop.v.i self.con
pushi.e 0
push.v self.queencar
pushi.e -9
pop.v.b [stacktop]self.active
pushi.e 0
pop.v.b self.loop_road

:[38]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [40]

:[39]
pushi.e 49
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_389_0"@35369
conv.s.v
push.s "\\E8* Oh My Circuits It's A Traffic Jam/"@35370
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_390_0"@35371
conv.s.v
push.s "\\EF* A Dog Must Have Wandered In The Road Again/"@35372
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_391_0"@35373
conv.s.v
push.s "\\ED* Kris Be A Dear And Go Press The Walk Button/"@35374
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_392_0"@35375
conv.s.v
push.s "\\E9* It's Just Over On The Other Side Of The Road/%"@35376
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 90
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
pushi.e 80
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1840
conv.i.v
call.i gml_Script_c_pan_wait(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_404_0"@35377
conv.s.v
push.s "\\E8* Umm..^1. I'll go^1, too.../"@35378
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "6"@3595
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_406_0"@35379
conv.s.v
push.s "\\E6* No/"@35380
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_407_0"@35381
conv.s.v
push.s "\\E6* You Must Stay/"@35382
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 14
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_409_0"@35383
conv.s.v
push.s "\\EE* !?/"@35384
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "1"@9475
conv.s.v
push.s "queen"@3525
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_411_0"@35385
conv.s.v
push.s "\\E1* Until You Hear All Of My Mixtape/%"@35386
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 30
conv.i.v
pushi.e 1
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_418_0"@35387
conv.s.v
push.s "\\E2* O-okay.../"@35388
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_city_car_a_slash_Step_0_gml_419_0"@35389
conv.s.v
push.s "\\E8* (Kris..^1. hurry up^1, please...)/%"@35390
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
sub.i.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 90
add.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 20
conv.i.v
pushi.e 5
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 15
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_visible(argc=1)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 1
conv.b.v
push.s "leftside_traffic"@35324
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 15
conv.i.v
push.v self.kr_actor
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v

:[40]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [42]

:[41]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
pushi.e 59
pop.v.i self.con
push.v self.con
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[45]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [47]

:[46]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [48]

:[47]
push.e 0

:[48]
bf [54]

:[49]
pushi.e 0
pop.v.i self.con
pushi.e 80
pop.v.i global.plot
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e -5
pushi.e 465
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 465
pop.v.v [array]self.flag

:[51]
push.v self.traffic_collider_left
call.i instance_activate_object(argc=1)
popz.v
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
push.v self.carnpc
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.queencar
pushi.e -9
push.v [stacktop]self.y
push.v self.carnpc
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.queencar
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [53]

:[52]
push.v self.queencar
call.i instance_destroy(argc=1)
popz.v

:[53]
push.v self.traffic_collider_left
call.i instance_activate_object(argc=1)
popz.v

:[54]
push.v self.break_pie
conv.v.b
bf [61]

:[55]
push.v self.piebreak
pushi.e -1
cmp.i.v EQ
bf [57]

:[56]
pushi.e 189
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 87
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 512
conv.i.v
pushi.e 225
conv.i.v
pushi.e 1030
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.piebreak
pushi.e 0
push.v self.piebreak
pushi.e -9
pop.v.i [stacktop]self.image_index
push.d 0.5
push.v self.piebreak
pushi.e -9
pop.v.d [stacktop]self.image_speed

:[57]
push.v self.break_pie_timer
push.e 1
add.i.v
pop.v.v self.break_pie_timer
push.v self.break_pie_timer
pushi.e 7
cmp.i.v GTE
bf [61]

:[58]
push.v self.piebreak
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [60]

:[59]
push.v self.piebreak
call.i instance_destroy(argc=1)
popz.v

:[60]
pushi.e 0
pop.v.b self.break_pie

:[61]
push.v self.release_car
conv.v.b
bf [64]

:[62]
push.v self.queencar
pushi.e -9
dup.i 4
push.v [stacktop]self.x
pushi.e 5
sub.i.v
pop.i.v [stacktop]self.x
push.v self.queencar
pushi.e -9
push.v [stacktop]self.x
pushi.e 400
cmp.i.v LTE
bf [64]

:[63]
pushi.e 0
pop.v.b self.release_car

:[64]
push.v self.loop_road
conv.v.b
bf [73]

:[65]
pushi.e 6
pop.v.i local.tile_speed
push.v self.tile_1_map_id
call.i tilemap_get_x(argc=1)
pop.v.v local.tile_1_x
push.v self.tile_2_map_id
call.i tilemap_get_x(argc=1)
pop.v.v local.tile_2_x
push.v self.tile_3_map_id
call.i tilemap_get_x(argc=1)
pop.v.v local.tile_3_x
push.v self.shift_road
conv.v.b
bf [67]

:[66]
pushloc.v local.tile_1_x
pushloc.v local.tile_speed
sub.v.v
push.v self.tile_1_map_id
call.i tilemap_x(argc=2)
popz.v
pushloc.v local.tile_2_x
pushloc.v local.tile_speed
sub.v.v
push.v self.tile_2_map_id
call.i tilemap_x(argc=2)
popz.v
pushloc.v local.tile_3_x
pushloc.v local.tile_speed
sub.v.v
push.v self.tile_3_map_id
call.i tilemap_x(argc=2)
popz.v

:[67]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_width(argc=1)
pop.v.v local.camera_width
push.v self.tile_1_map_id
call.i tilemap_get_x(argc=1)
call.i gml_Script_camerax(argc=0)
pushloc.v local.camera_width
sub.v.v
cmp.v.v LTE
bf [69]

:[68]
call.i gml_Script_camerax(argc=0)
pushloc.v local.camera_width
pushi.e 2
mul.i.v
add.v.v
push.v self.tile_1_map_id
call.i tilemap_x(argc=2)
popz.v

:[69]
push.v self.tile_2_map_id
call.i tilemap_get_x(argc=1)
call.i gml_Script_camerax(argc=0)
pushloc.v local.camera_width
pushi.e 2
mul.i.v
sub.v.v
cmp.v.v LTE
bf [71]

:[70]
call.i gml_Script_camerax(argc=0)
pushloc.v local.camera_width
add.v.v
push.v self.tile_2_map_id
call.i tilemap_x(argc=2)
popz.v

:[71]
push.v self.tile_3_map_id
call.i tilemap_get_x(argc=1)
call.i gml_Script_camerax(argc=0)
pushloc.v local.camera_width
pushi.e 3
mul.i.v
sub.v.v
cmp.v.v LTE
bf [73]

:[72]
call.i gml_Script_camerax(argc=0)
push.v self.tile_3_map_id
call.i tilemap_x(argc=2)
popz.v

:[73]
push.v self.leftside_traffic
conv.v.b
bf [end]

:[74]
push.v self.leftside_traffic_timer
push.e 1
add.i.v
pop.v.v self.leftside_traffic_timer
push.v self.leftside_traffic_timer
pushi.e 1
cmp.i.v EQ
bf [84]

:[75]
pushi.e 0
pop.v.i local.i

:[76]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [83]

:[77]
pushi.e 0
pop.v.i local.j

:[78]
pushloc.v local.j
pushi.e 6
cmp.i.v LT
bf [82]

:[79]
pushi.e 1500
pushi.e 85
pushloc.v local.i
mul.v.i
add.v.i
pop.v.v local.xpos
pushi.e 65
pushloc.v local.j
pushi.e 55
mul.i.v
add.v.i
pop.v.v local.ypos
push.i 173881
setowner.e
pushi.e 2373
conv.i.v
pushloc.v local.ypos
pushloc.v local.xpos
call.i gml_Script_scr_dark_marker(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypopaf]self.traffic_car
pushloc.v local.j
conv.v.i
popaf.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.traffic_car
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -9
pushenv [81]

:[80]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[81]
popenv [80]
push.i 133655
setowner.e
push.d 0.15
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.traffic_car
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [78]

:[82]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [76]

:[83]
b [end]

:[84]
push.v self.leftside_traffic_timer
pushi.e 15
cmp.i.v LT
bf [92]

:[85]
pushi.e 0
pop.v.i local.i

:[86]
pushloc.v local.i
push.v self.traffic_car
call.i array_height_2d(argc=1)
cmp.v.v LT
bf [91]

:[87]
pushi.e 0
pop.v.i local.j

:[88]
pushloc.v local.j
pushloc.v local.i
push.v self.traffic_car
call.i array_length_2d(argc=2)
cmp.v.v LT
bf [90]

:[89]
push.i 133617
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.traffic_car
pushloc.v local.j
conv.v.i
pushaf.e
pushi.e -9
dup.i 4
push.v [stacktop]self.x
push.d 13.17
add.d.v
pop.i.v [stacktop]self.x
push.v local.j
push.e 1
add.i.v
pop.v.v local.j
b [88]

:[90]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [86]

:[91]
b [end]

:[92]
pushi.e 133
conv.i.v
pushi.e 120
conv.i.v
pushi.e 2000
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.readable_cars
pushi.e 20
pushloc.v local.readable_cars
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 133
conv.i.v
pushi.e 140
conv.i.v
pushi.e 2300
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.readable_cars_2
pushi.e 10
pushloc.v local.readable_cars_2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.b self.leftside_traffic

:[end]