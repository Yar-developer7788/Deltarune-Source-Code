.localvar 2 arguments

:[0]
pushi.e 1
pop.v.i global.interact
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 1
pop.v.i self.con
push.i 169479
setowner.e
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_11_0"@37569
conv.s.v
push.s "(Powerless!?)"@37570
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 0
pop.v.v [array]self.small
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_13_0"@37571
conv.s.v
push.s "SIMPLETON?"@37572
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.small
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_14_0"@37573
conv.s.v
push.s "... H-huh? Berdly?"@37574
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 2
pop.v.v [array]self.small
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_15_0"@37575
conv.s.v
push.s "BERDLY??? BERDLY KNOWS???"@37576
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.small
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_16_0"@37577
conv.s.v
push.s "..."@2873
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 4
pop.v.v [array]self.small
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_17_0"@37578
conv.s.v
push.s "Berdly..."@37579
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.small
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_18_0"@37580
conv.s.v
push.s "WHY THAT!?"@37581
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -1
pushi.e 6
pop.v.v [array]self.small
push.v self.jp
conv.v.b
bf [3]

:[2]
pushi.e -1
pushi.e 0
push.v [array]self.small
pushi.e 68
conv.i.v
pushi.e 420
conv.i.v
pushi.e 8
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.small
pushi.e 68
conv.i.v
pushi.e 400
conv.i.v
pushi.e 8
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.small
pushi.e 68
conv.i.v
pushi.e 260
conv.i.v
pushi.e 2
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 3
push.v [array]self.small
pushi.e 68
conv.i.v
pushi.e 260
conv.i.v
pushi.e 23
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 4
push.v [array]self.small
pushi.e 68
conv.i.v
pushi.e 400
conv.i.v
pushi.e 10
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 5
push.v [array]self.small
pushi.e 30
conv.i.v
pushi.e 400
conv.i.v
pushi.e 6
conv.i.v
push.s "noelle"@74
conv.s.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 6
push.v [array]self.small
pushi.e 68
conv.i.v
pushi.e 410
conv.i.v
pushi.e 8
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
b [4]

:[3]
pushi.e -1
pushi.e 0
push.v [array]self.small
push.s "bottom"@4636
conv.s.v
pushi.e 176
conv.i.v
pushi.e 8
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 1
push.v [array]self.small
push.s "bottom"@4636
conv.s.v
pushi.e 275
conv.i.v
pushi.e 8
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 2
push.v [array]self.small
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 2
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 3
push.v [array]self.small
push.s "bottom"@4636
conv.s.v
push.s "middle"@5597
conv.s.v
pushi.e 23
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 4
push.v [array]self.small
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 10
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 5
push.v [array]self.small
pushi.e 44
conv.i.v
pushi.e 300
conv.i.v
pushi.e 6
conv.i.v
push.s "noelle"@74
conv.s.v
pushi.e 8
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v
pushi.e -1
pushi.e 6
push.v [array]self.small
push.s "bottom"@4636
conv.s.v
push.s "right"@4637
conv.s.v
pushi.e 8
conv.i.v
push.s "noelle_cropped"@6218
conv.s.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_smallface(argc=6)
popz.v

:[4]
push.s "berdly"@4870
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_21_0"@37582
conv.s.v
push.s "\\E5* Ahh^1, Kris. Stuck on this puzzle^1, I see?/"@37583
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_22_0"@37584
conv.s.v
push.s "\\E7* I thought I heard Noelle calling for help^1, but.../"@37585
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_23_0"@37586
conv.s.v
push.s "\\EE* I get what that sound was now. Kris./"@37587
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_24_0"@37588
conv.s.v
push.s "\\E7* Your brain must be crying./"@37589
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_25_0"@37590
conv.s.v
push.s "\\E0* Poor^1, sweet^1, Noelle. Where could she be now./"@37591
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_26_0"@37592
conv.s.v
push.s "\\EG* Stuck on a puzzle just like this one^1, no doubt./"@37593
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_27_0"@37594
conv.s.v
push.s "\\EH* If only I was there to do it for her./"@37595
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_28_0"@37596
conv.s.v
push.s "\\E8* She's but a powerless doe without my help...\\f2 ^1/"@37597
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_29_0"@37598
conv.s.v
push.s "\\E1* Though being alone might be better than being with you!/"@37599
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_30_0"@37600
conv.s.v
push.s "\\E7* Kris^1, you would only get in the way!/"@37601
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_31_0"@37602
conv.s.v
push.s "\\EI* After all^1, you can't understand Noelle like I can./"@37603
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_32_0"@37604
conv.s.v
push.s "\\E4* Yes^1, you may have been her lifelong neighbor. But./"@37605
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_33_0"@37606
conv.s.v
push.s "\\EJ* I am a maestro of emotional intelligence./"@37607
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_34_0"@37608
conv.s.v
push.s "\\E7* I can read her feelings like a strategy guide./"@37609
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_35_0"@37610
conv.s.v
push.s "\\EC* Which^1, I have NEVER needed by the way!/"@37611
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_36_0"@37612
conv.s.v
push.s "\\EE* You may see her as the simpleton girl next door.\\f4 ^1/"@37613
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_37_0"@37614
conv.s.v
push.s "\\EI* But the reality. Is that she is./"@37615
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_38_0"@37616
conv.s.v
push.s "\\EG* A lovestruck girl with her heart on her sleeve.\\f5 ^1/"@37617
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_39_0"@37618
conv.s.v
push.s "\\E3* And..^1. Kris..^1. The target of her affection.../"@37619
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_40_0"@37620
conv.s.v
push.s "\\EI* May be surprising to you.\\f6 ^1/"@37621
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_41_0"@37622
conv.s.v
push.s "\\E8* It's..^1. Truly sad. Such love..^1. May never fruit.\\f7 ^1/"@37623
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_42_0"@37624
conv.s.v
push.s "\\E9* But still^1, I have to support her^1, Kris./"@37625
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_43_0"@37626
conv.s.v
push.s "\\E5* She's my friend.\\f8 ^1/"@37627
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_44_0"@37628
conv.s.v
push.s "\\EE* Also^1, my only worthy opponent at racing games.\\f9 ^1/%"@37629
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [12]

:[11]
pushi.e 99
pop.v.i self.con
push.s "noelle"@74
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_61_0"@37630
conv.s.v
push.s "\\E8* (Is that really what you're gonna end it on!?)/%"@37631
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
call.i gml_Script_d_make(argc=0)
pop.v.v self.d
pushi.e 0
push.v self.d
pushi.e -9
pop.v.i [stacktop]self.side

:[12]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [14]

:[13]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
pushi.e 64
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[18]
push.v 64.halt
pushi.e 0
cmp.i.v NEQ
bf [24]

:[19]
push.v self.msgtimer
push.e 1
add.i.v
pop.v.v self.msgtimer
push.v self.msgtimer
pushi.e 60
cmp.i.v GTE
bf [23]

:[20]
pushi.e 64
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.forcebutton1

:[22]
popenv [21]
pushi.e 0
pop.v.i self.msgtimer

:[23]
b [end]

:[24]
pushi.e 0
pop.v.i self.msgtimer

:[end]