.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [7]

:[1]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1171
pop.v.i self.sprite_index
push.d 0.2
pop.v.d self.image_speed

:[3]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1175
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed

:[5]
pushi.e -5
pushi.e 20
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1176
pop.v.i self.sprite_index
push.d 0.334
pop.v.d self.image_speed

:[7]
push.v self.con
pushi.e 5
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
bf [14]

:[11]
push.v self.pwall
pushi.e -9
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e -8
pop.v.i self.hspeed
pushi.e 6
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[14]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i global.facing
pushi.e 0
pop.v.i global.interact
pushi.e 8
pop.v.i self.con
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 215
pop.v.v [array]self.flag
call.i instance_destroy(argc=0)
popz.v

:[16]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [18]

:[17]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [24]

:[20]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [24]

:[21]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [23]

:[22]
pushi.e 5
pop.v.i self.onebuffer

:[23]
popenv [22]

:[24]
push.v self.lecturecon
pushi.e 0
cmp.i.v EQ
bf [31]

:[25]
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [31]

:[26]
push.v 82.y
pushi.e 270
cmp.i.v LTE
bf [28]

:[27]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.lecturecon
pushi.e 2
pop.v.i global.fc
pushi.e 1
pop.v.i global.fe
pushi.e 31
pop.v.i global.typer
push.i 231251
setowner.e
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_60_0"@15502
conv.s.v
push.s "* Um^1, Susie^1, I suppose you missed what I said earlier.../"@15503
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_61_0"@15504
conv.s.v
push.s "\\E0* As heroes^1, we have the power to make a peaceful future./"@15505
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_62_0"@15506
conv.s.v
push.s "\\E8* So^1, from now on^1, let's try to avoid FIGHTing^1, OK?/"@15507
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_64_0"@15508
conv.s.v
push.s "* .../"@897
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_66_0"@15509
conv.s.v
push.s "* Umm^1, what if you just took it easy on them...?/"@15510
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_67_0"@15511
conv.s.v
push.s "\\E1* If you weaken an enemy^1, I can use my PACIFY spell./"@15512
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_68_0"@15513
conv.s.v
push.s "\\E8* Which^1, can put exhausted people to sleep!/"@15514
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_susface(argc=2)
popz.v
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_70_0"@15515
conv.s.v
push.s "* Yawn..^1. yeah^1, you talking is already doing that./"@15516
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_ralface(argc=2)
popz.v
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_72_0"@15517
conv.s.v
push.s "* Well^1, um^1, just think about it!/"@15518
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
push.s "obj_npc_puzzlemaster1_slash_Step_0_gml_73_0"@15519
conv.s.v
push.s "\\E1* (We might have to WARN enemies about her^1, Kris...)/%"@15520
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 13
pop.v.v [array]self.msg
call.i gml_Script_d_make(argc=0)
popz.v

:[31]
push.v self.lecturecon
pushi.e 1
cmp.i.v EQ
bf [end]

:[32]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
bf [end]

:[33]
pushi.e 10
pop.v.i self.lecturecon
pushi.e 0
pop.v.i global.interact
pushglb.v global.plot
pushi.e 42
cmp.i.v LT
bf [end]

:[34]
pushi.e 42
pop.v.i global.plot

:[end]