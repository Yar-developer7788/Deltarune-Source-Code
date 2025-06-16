.localvar 2 arguments

:[0]
pushi.e -5
pushi.e 337
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [end]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
push.v 82.x
pushi.e 465
cmp.i.v GT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 2
pop.v.i self.con
pushi.e 1
pop.v.i global.interact

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 3
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_ch2_town_graveyard_slash_Step_0_gml_18_0"@36081
conv.s.v
push.s "* (You heard Alvin mumbling to himself as you walked away.)/"@36082
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_ch2_town_graveyard_slash_Step_0_gml_19_0"@36083
conv.s.v
push.s "* ..^1. were you proud of me^1, father...?/"@36084
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_ch2_town_graveyard_slash_Step_0_gml_20_0"@36085
conv.s.v
push.s "* And..^1. is it right for this hammer to.../%"@36086
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[8]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [11]

:[10]
push.e 0

:[11]
bf [end]

:[12]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 3
conv.i.v
pushi.e -5
pushi.e 337
pop.v.v [array]self.flag

:[end]