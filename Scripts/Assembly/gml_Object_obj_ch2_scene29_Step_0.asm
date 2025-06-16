.localvar 2 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 1007
pop.v.i 82.x
pushi.e 100
pop.v.i 82.y
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 40
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 69
conv.i.v
pushi.e 958
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 16
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
pushi.e 0
conv.i.v
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 80
conv.i.v
pushi.e 1007
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 20
conv.i.v
pushi.e 1
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 20
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene29_slash_Step_0_gml_38_0"@33687
conv.s.v
push.s "* ..^1. Man^1, it got late^1, didn't it...?/%"@33688
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
push.v self.kr
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
push.s "obj_ch2_scene29_slash_Step_0_gml_47_0"@33689
conv.s.v
push.s "\\E1* ... guess you should go home^1, huh?/%"@33690
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
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene29_slash_Step_0_gml_56_0"@33691
conv.s.v
push.s "\\EQ* Alright^1, you don't have to say it./%"@29681
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "r"@6696
conv.s.v
pushi.e 41
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 40
conv.i.v
pushi.e 94
conv.i.v
pushi.e 979
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene29_slash_Step_0_gml_64_0"@33692
conv.s.v
push.s "\\E2* Don't wanna walk home by yourself^1, huh?/%"@29683
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
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene29_slash_Step_0_gml_71_0"@33693
conv.s.v
push.s "\\EQ* Well^1, if you're gonna MAKE me^1, I guess.../%"@29685
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
push.s "l"@6707
conv.s.v
pushi.e 31
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 30
conv.i.v
pushi.e 94
conv.i.v
pushi.e 1033
conv.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_scene29_slash_Step_0_gml_85_0"@33694
conv.s.v
push.s "\\E2* Let's go./%"@33695
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [7]

:[6]
push.e 0

:[7]
bf [end]

:[8]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con
push.i 231459
setowner.e
push.s "town.ogg"@19771
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 82
pushenv [10]

:[9]
pushi.e 1
pop.v.i self.visible

:[10]
popenv [9]
pushi.e 0
pop.v.i global.facing
pushi.e 205
pop.v.i global.plot
call.i instance_destroy(argc=0)
popz.v

:[end]