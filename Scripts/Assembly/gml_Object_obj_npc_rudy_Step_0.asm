.localvar 2 arguments
.localvar 15766 pickletalk 7265
.localvar 15767 sentenceEnd 7266

:[0]
push.v self.coughcon
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
call.i event_inherited(argc=0)
popz.v

:[2]
push.v self.coughcon
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.coughcon
pushi.e 234
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1037
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[7]
push.v self.coughcon
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [10]

:[9]
push.e 0

:[10]
bf [17]

:[11]
pushi.e 3
pop.v.i self.coughcon
pushi.e 1036
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 308
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
pop.v.b local.pickletalk
pushloc.v local.pickletalk
conv.v.b
bf [13]

:[12]
push.s "/"@4448
conv.s.v
b [14]

:[13]
push.s "/%"@4449
conv.s.v

:[14]
pop.v.v local.sentenceEnd
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_npc_rudy_slash_Step_0_gml_29_0"@15768
conv.s.v
pushloc.v local.sentenceEnd
push.s "\\E0* 'Sides^1, your dad ain't much without his main man!~1"@15769
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
pushloc.v local.pickletalk
conv.v.b
bf [16]

:[15]
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_rudy_slash_Step_0_gml_33_0"@15770
conv.s.v
push.s "\\EK* Yeah he..^1. had to ask the store guy for free pickles./"@15771
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 6
conv.i.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_rudy_slash_Step_0_gml_35_0"@15772
conv.s.v
push.s "\\E6* Dammit man^1! You know I would give you free pickles!/"@15773
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "7"@9476
conv.s.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_rudy_slash_Step_0_gml_37_0"@15774
conv.s.v
push.s "\\E7* I'll kick that store guy's bony little ass!/"@15775
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "5"@5306
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_rudy_slash_Step_0_gml_39_0"@15776
conv.s.v
push.s "\\E5* Yeah^1, me too!/"@15777
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "7"@9476
conv.s.v
push.s "rudy"@4146
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_npc_rudy_slash_Step_0_gml_41_0"@15778
conv.s.v
push.s "\\E7* We'll make him into a goddamn xylophone!/%"@15779
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[16]
call.i gml_Script_d_make(argc=0)
popz.v

:[17]
push.v self.coughcon
pushi.e 3
cmp.i.v EQ
bf [19]

:[18]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [end]

:[21]
pushi.e -1
pop.v.i self.coughcon
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract

:[end]