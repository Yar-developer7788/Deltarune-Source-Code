.localvar 2 arguments

:[0]
pushi.e 64
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
push.v self.theystoppeddancing
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 68097
setowner.e
pushi.e -1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 6
pop.v.i global.typer
pushi.e 2
pop.v.i self.theystoppeddancing
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_musical_controller_slash_Alarm_0_gml_11_0"@26588
conv.s.v
push.s "* They stopped dancing!/"@26589
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_musical_controller_slash_Alarm_0_gml_12_0"@26590
conv.s.v
push.s "* We need to do it again!/%"@26591
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
pushi.e 0
conv.i.v
push.s "none"@562
conv.s.v
call.i gml_Script_c_facenext(argc=2)
popz.v
call.i gml_Script_scr_battletext(argc=0)
popz.v
exit.i

:[4]
pushi.e -5
pushi.e 1
push.v [array]self.hp
pushi.e 0
cmp.i.v LTE
bf [6]

:[5]
push.v self.happyfeetscene
pushi.e 0
cmp.i.v EQ
b [7]

:[6]
push.e 0

:[7]
bt [12]

:[8]
push.v 710.actCounter
pushi.e 3
cmp.i.v GT
bf [10]

:[9]
push.v self.happyfeetscene
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
b [13]

:[12]
push.e 1

:[13]
bf [21]

:[14]
pushi.e 357
pushenv [16]

:[15]
pushi.e 1
pop.v.i self.noreturn

:[16]
popenv [15]
pushi.e 1
pop.v.i 710.dancecon
pushi.e 1
pop.v.i 710.postattackscene
pushi.e -5
pushi.e 2
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [18]

:[17]
pushi.e 1
pop.v.i self.star
pushi.e -5
pushi.e 2
push.v [array]self.hp
call.i abs(argc=1)
pushi.e 1
add.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[18]
pushi.e -5
pushi.e 3
push.v [array]self.hp
pushi.e 1
cmp.i.v LT
bf [20]

:[19]
pushi.e 2
pop.v.i self.star
pushi.e -5
pushi.e 3
push.v [array]self.hp
call.i abs(argc=1)
pushi.e 1
add.i.v
call.i gml_Script_scr_healitemspell(argc=1)
popz.v

:[20]
exit.i

:[21]
pushi.e 0
pop.v.i self.skiptext
pushi.e 357
pushenv [23]

:[22]
pushi.e 0
pop.v.i self.noreturn

:[23]
popenv [22]
pushi.e 357
pushenv [27]

:[24]
push.v 718.ralseiportrait
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v

:[26]
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm

:[27]
popenv [24]

:[end]