.localvar 2 arguments

:[0]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 14
sub.i.v
push.v 82.x
pushi.e 60
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 82
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 276
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.visible

:[5]
popenv [4]
pushi.e 0
pop.v.i self.kr
pushi.e 893
conv.i.v
pushi.e 200
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.kr_actor
push.s "kris"@68
conv.s.v
push.v self.kr_actor
push.v self.kr
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 663
push.v self.kr_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.su
pushi.e 893
conv.i.v
pushi.e 220
conv.i.v
pushi.e 150
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.su_actor
push.s "susie"@70
conv.s.v
push.v self.su_actor
push.v self.su
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 854
push.v self.su_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
pop.v.i self.no
pushi.e 893
conv.i.v
pushi.e 90
conv.i.v
pushi.e 133
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.no_actor
push.s "noelle"@74
conv.s.v
push.v self.no_actor
push.v self.no
call.i gml_Script_scr_actor_setup(argc=3)
popz.v
pushi.e 753
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[6]
push.v self.gamecon
pushi.e 0
cmp.i.v GT
bf [10]

:[7]
push.v self.gamecon
pushi.e 2
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.d 0.08
push.v self.no_actor
pushi.e -9
pop.v.d [stacktop]self.image_speed
b [10]

:[9]
pushi.e 0
push.v self.no_actor
pushi.e -9
pop.v.i [stacktop]self.image_speed

:[10]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [17]

:[11]
pushi.e 2
pop.v.i self.con
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
push.d 0.08
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 15
conv.i.v
pushi.e 3
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
push.s "r"@6696
conv.s.v
pushi.e 16
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 25
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 23
conv.i.v
pushi.e 3
conv.i.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 8
conv.i.v
pushi.e 3
conv.i.v
push.s "l"@6707
conv.s.v
pushi.e 24
conv.i.v
call.i gml_Script_c_delaywalk(argc=4)
popz.v
push.s "u"@6708
conv.s.v
pushi.e 33
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
bf [15]

:[12]
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_68_0"@35662
conv.s.v
push.s "\\E2* Silver Drake^1, huh? That's a new one./"@35663
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_69_0_b"@35664
conv.s.v
push.s "\\E3* Alright^1, what's the plan^1, honey?/"@35665
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "8"@9477
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_71_0"@35666
conv.s.v
push.s "\\E8* Hmm..^1. maybe we could try.../"@35667
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_72_0_b"@35668
conv.s.v
push.s "\\E4* Iceshock?/"@35669
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 5
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_74_0_b"@35670
conv.s.v
push.s "\\E5* Ice on the Ice Palace boss?/"@35671
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_75_0"@35672
conv.s.v
push.s "\\E4* Don't you wanna try Fireshock or something?/%"@35673
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 756
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_83_0_b"@35674
conv.s.v
push.s "\\E2* H-huh? Yeah^1, you're right./"@35675
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_85_0"@35676
conv.s.v
push.s "\\E7* Here^1, how about letting me control for a bit?/%"@35677
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 755
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "gamecon"@35660
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_94_0_b"@35678
conv.s.v
push.s "\\E2* N-no^1! I'll..^1. control it myself./"@35679
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 2
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_96_0"@35680
conv.s.v
push.s "\\E2* Not like you to be a controller hog^1, honey./"@35681
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_97_0_b"@35682
conv.s.v
push.s "\\E4* You feeling alright?/%"@35683
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 756
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_104_0"@35684
conv.s.v
push.s "\\E3* Huh? Me? Of course^1! I'm fine^1, dad.../%"@35685
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 755
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_111_0"@35686
conv.s.v
push.s "\\Ee* I just.../%"@35687
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 756
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_118_0"@35688
conv.s.v
push.s "\\E8* I fell asleep in the library^1, and.../"@35689
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_119_0"@35690
conv.s.v
push.s "\\E4* ..^1. you know^1, just had a weird dream. Haha./"@35691
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 1
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_121_0_b"@35692
conv.s.v
push.s "\\E1* Noelle.../"@35693
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_122_0"@35694
conv.s.v
push.s "\\E2* I knew that birdbrain'd put you to sleep^1! Haha!/"@35695
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_123_0_b"@35696
conv.s.v
push.s "\\E3* What'd he do? Start lecturing you on his theorum.../"@35697
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_124_0"@35698
conv.s.v
push.s "\\E7* Of the inequality in children's fighter games?/%"@35699
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_130_0"@35700
conv.s.v
push.s "\\E4* Hahah^1, no^1, no^1! He.../%"@35701
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 755
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_137_0"@35702
conv.s.v
push.s "\\Ee* ..^1. he fell asleep^1, too./"@35703
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 7
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_139_0"@35704
conv.s.v
push.s "\\E7* Wow^1, he even put himself to sleep? Ha!/%"@35705
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 756
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_146_0"@35706
conv.s.v
push.s "\\E8* Haha^1, yeah^1, I guess so!/"@35707
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_148_0"@35708
conv.s.v
push.s "\\E0* Well. Sounds like.../"@35709
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_149_0"@35710
conv.s.v
push.s "\\E4* You two've been hitting the books too hard./"@35711
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_150_0"@35712
conv.s.v
push.s "\\E0* Why don't you go home and hibernate?/"@35713
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_151_0"@35714
conv.s.v
push.s "\\E2* I'll see you tomorrow at church./%"@35715
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_157_0_b"@35716
conv.s.v
push.s "\\E2* Dad? Are you gonna be okay to go...?/"@35717
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_159_0_b"@35718
conv.s.v
push.s "\\E3* Of course^1! You take it easy^1, honey./%"@35719
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_165_0_b"@35720
conv.s.v
push.s "\\E4* Okay then..^1. yeah^1, I'll go home and rest./%"@35721
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 144
pushenv [14]

:[13]
push.v self.y
pushi.e 40
add.i.v
pop.v.v self.y

:[14]
popenv [13]
pushi.e 1
pop.v.i self.doormoved
b [16]

:[15]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_65_0"@35722
conv.s.v
push.s "\\E4* \"Silver Drake?\" I've never beaten this boss before.../"@35723
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 3
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_67_0"@35724
conv.s.v
push.s "\\E3* Alright^1, hand it over^1, honey^1! I got this!/"@35725
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 26
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_69_0"@35726
conv.s.v
push.s "\\EQ* No^1, dad^1! This is my battle!/"@35727
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_70_0"@35728
conv.s.v
push.s "\\E3* ..^1. So^1, um^1, how about just telling me what to do?/"@35729
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_72_0"@35730
conv.s.v
push.s "\\E2* Haha^1, sure^1! How about trying Fireshock?/"@35731
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_74_0"@35732
conv.s.v
push.s "\\E2* I'd love to^1, dad^1, but the mage left the party./"@35733
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_76_0"@35734
conv.s.v
push.s "\\E0* Oh yeah. How about one of your 99 Blaze Potions?/"@35735
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 8
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_78_0"@35736
conv.s.v
push.s "\\E8* Umm^1, I'm saving those?/"@35737
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 3
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_80_0"@35738
conv.s.v
push.s "\\E3* For what? Your birthday? C'mon^1, live a little!/"@35739
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 28
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_82_0"@35740
conv.s.v
push.s "\\ES* OK^1, dad^1! This one's for you^1! Hiyah!/"@35741
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_83_0"@35742
conv.s.v
push.s "\\E2* .../"@15724
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_84_0"@35743
conv.s.v
push.s "\\E8* It..^1. reflects fire attacks./"@35744
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "7"@9476
conv.s.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_86_0"@35745
conv.s.v
push.s "\\E7* Hahaha^1! Whoops - hey^1, you gotta heal!/"@35746
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 4
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_88_0"@35747
conv.s.v
push.s "\\E4* I wish I knew healing magic in real life./"@35748
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_89_0"@35749
conv.s.v
push.s "\\E9* Then I'd make you better and.../"@35750
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_90_0"@35751
conv.s.v
push.s "\\E7* It wouldn't..^1. just be me and mom./"@35752
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_92_0"@35753
conv.s.v
push.s "\\E5* .../"@2857
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_93_0"@35754
conv.s.v
push.s "\\E4* ..^1. your mother is.../"@35755
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_94_0"@35756
conv.s.v
push.s "\\E2* Hey^1, it's ok^1, sweetheart. I'm getting better./"@35757
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_95_0"@35758
conv.s.v
push.s "\\E3* Might even be able to go to church tomorrow./"@35759
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "4"@608
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_97_0"@35760
conv.s.v
push.s "\\E4* ..^1. really? Are you..^1. sure you're okay?/"@35761
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 2
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_99_0"@35762
conv.s.v
push.s "\\E2* \"Holidays happen whether you like it or not!\"/"@35763
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 8
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_101_0"@35764
conv.s.v
push.s "\\E8* \"Even though everyone likes holidays.\"/"@35765
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_102_0"@35766
conv.s.v
push.s "\\E9* ..^1. Well^1, gotta go home soon or mom will call./%"@35767
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[16]
pushi.e 0
conv.b.v
push.s "noellegame"@35659
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "gamecon"@35660
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 757
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_imageindex(argc=1)
popz.v
push.d 0.08
conv.d.v
call.i gml_Script_c_imagespeed(argc=1)
popz.v
pushi.e 18
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 750
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
pushi.e 89
conv.i.v
pushi.e 114
conv.i.v
call.i gml_Script_c_setxy(argc=2)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 2
conv.i.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_121_0"@35768
conv.s.v
push.s "\\E3* See you tomorrow^1, honey./"@35769
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
pushi.e 4
conv.i.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_123_0"@35770
conv.s.v
push.s "\\E4* Bye^1, dad. Love you!/%"@35771
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[17]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [19]

:[18]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [24]

:[21]
pushi.e 3
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 102
pushenv [23]

:[22]
pushi.e 1036
pop.v.i self.sprite_index
push.v self.x
pushi.e 4
add.i.v
pop.v.v self.x

:[23]
popenv [22]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[24]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [35]

:[25]
pushi.e 4
pop.v.i self.con
pushi.e 10
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 759
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_154_0"@35772
conv.s.v
push.s "Hell if I know???"@35773
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pop.v.v self.susstring
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [30]

:[26]
pushglb.v global.is_console
pushi.e 1
cmp.b.v EQ
bf [28]

:[27]
push.v self.susstring
pushi.e 180
conv.i.v
pushi.e 426
conv.i.v
pushi.e 20
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
b [29]

:[28]
push.v self.susstring
pushi.e 170
conv.i.v
pushi.e 440
conv.i.v
pushi.e 20
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[29]
b [31]

:[30]
push.v self.susstring
push.s "top"@6226
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 20
conv.i.v
push.s "susie"@70
conv.s.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[31]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
bf [33]

:[32]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_269_0"@35775
conv.s.v
push.s "\\EB* Kris!?/"@35776
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_270_0"@35777
conv.s.v
push.s "\\EB* Kris^1, what are you doing here?/"@35778
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 12
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_272_0"@35779
conv.s.v
push.s "\\EC* Hell if I know./%"@35780
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
call.i gml_Script_c_shakeobj(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_280_0"@35781
conv.s.v
push.s "\\EE* S-SUSIE!?/"@35782
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
b [34]

:[33]
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_157_0"@35783
conv.s.v
push.s "\\EE* SUSIE!?!? WHY ARE YOU HERE!?\\f1 ^1/"@35784
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "7"@9476
conv.s.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_159_0"@35785
conv.s.v
push.s "\\E7* Sorry guys^1, this game's only one-player!/%"@35786
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_163_0"@35787
conv.s.v
push.s "\\EM* Ummm..^1. dad..^1. this is..^1. umm^1, Susie!/"@35788
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v

:[34]
pushi.e 7
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_165_0"@35789
conv.s.v
push.s "\\E7* Ohhhhhhh^1! THIS is Susie!/"@35790
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_166_0"@35791
conv.s.v
push.s "\\E2* Susie^1! Nice^1! Heard a lot about you!/"@35792
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "C"@9479
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_168_0"@35793
conv.s.v
push.s "\\EC* You^1, uh..^1. have???/"@35794
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
push.s "K"@4777
conv.s.v
push.s "noelle"@74
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_170_0"@35795
conv.s.v
push.s "\\EK* COOL^1, THINK I HAVE TO GO NOW!!!/%"@35796
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
push.v self.no
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 6
conv.i.v
pushi.e 8
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 7
conv.i.v
pushi.e 8
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk_wait(argc=3)
popz.v
pushi.e 20
conv.i.v
pushi.e 8
conv.i.v
push.s "d"@6706
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
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
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_autowalk(argc=1)
popz.v
pushi.e 5
conv.i.v
pushi.e 5
conv.i.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_walk(argc=3)
popz.v
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "u"@6708
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_197_0"@35797
conv.s.v
push.s "\\E0* Susie^1, huh?/"@35798
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "1"@9475
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_199_0"@35799
conv.s.v
push.s "\\E1* ..^1. Yeah./"@35800
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_201_0"@35801
conv.s.v
push.s "\\E6* Lay a finger on her and I'll kick your ass./%"@35802
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 21
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "susie"@70
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_207_0"@35803
conv.s.v
push.s "\\EF* Huh?/%"@35804
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
pushi.e 854
conv.i.v
call.i gml_Script_c_sprite(argc=1)
popz.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_c_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_213_0"@35805
conv.s.v
push.s "\\E7* Hahaha!^1! Hahahaha!^1! Just kidding!!/"@35806
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_c_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_214_0"@35807
conv.s.v
push.s "\\E3* Well^1, kinda kidding./%"@35808
conv.s.v
call.i gml_Script_c_msgnextloc(argc=2)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v
call.i gml_Script_c_waitcustom(argc=0)
popz.v

:[35]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [37]

:[36]
push.v self.customcon
pushi.e 1
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [42]

:[39]
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 234
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 102
pushenv [41]

:[40]
pushi.e 1037
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[41]
popenv [40]
call.i gml_Script_c_waitcustom_end(argc=0)
popz.v

:[42]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [44]

:[43]
pushi.e 50
pop.v.i self.con
pushi.e 30
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[44]
push.v self.con
pushi.e 50
cmp.i.v EQ
bf [46]

:[45]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [47]

:[46]
push.e 0

:[47]
bf [55]

:[48]
pushi.e 102
pushenv [50]

:[49]
pushi.e 1036
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed

:[50]
popenv [49]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 316
pop.v.v [array]self.flag
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
bf [52]

:[51]
pushi.e 19
conv.i.v
pushi.e -5
pushi.e 915
pop.v.v [array]self.flag

:[52]
push.v self.doormoved
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
call.i instance_destroy(argc=0)
popz.v
b [55]

:[54]
pushi.e 60
pop.v.i self.con

:[55]
push.v self.con
pushi.e 60
cmp.i.v EQ
bf [58]

:[56]
push.v 82.y
pushi.e 200
cmp.i.v GTE
bf [58]

:[57]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
pushi.e 61
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_401_0"@35809
conv.s.v
push.s "* Hey^1, Susie. Mind if I have a word with you a sec?/"@35810
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_403_0"@35811
conv.s.v
push.s "* Uhh...?/"@35812
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_room_town_hospital_slash_Step_0_gml_404_0"@35813
conv.s.v
push.s "* (Guess I'll be a sec^1, Kris...?)/%"@35814
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d

:[61]
push.v self.con
pushi.e 61
cmp.i.v EQ
bf [end]

:[62]
push.v self.d
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [end]

:[63]
pushi.e 144
pushenv [65]

:[64]
push.v self.y
pushi.e 40
sub.i.v
pop.v.v self.y
pushi.e 1
pop.v.i self.doorFadeMusic
pushi.e 60
pop.v.i self.doorFadeMusicTime
pushi.e 65
pop.v.i self.doorDelay

:[65]
popenv [64]
pushi.e 62
pop.v.i self.con

:[end]