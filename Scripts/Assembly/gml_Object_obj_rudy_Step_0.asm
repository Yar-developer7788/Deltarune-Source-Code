.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.interact

:[4]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_rudy_slash_Step_0_gml_15_0"@15233
conv.s.v
push.s "\\E4* Ahahaha..^1. DAD^1!&* I can't just SAY that to her!/"@15234
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_rudy_slash_Step_0_gml_16_0"@15235
conv.s.v
push.s "\\E6* Oh my god..^1. I'd DIE^1.&* I'd LITERALLY die./"@15236
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_18_0"@15237
conv.s.v
push.s "\\E0* Noelle^1. Sweetheart^1.&* First time I laid eyes on your mother.../"@15238
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 3
pop.v.v [array]self.msg
push.s "obj_rudy_slash_Step_0_gml_19_0"@15239
conv.s.v
push.s "\\E3* I walked right up and told her she was a HOT piece of work./"@15240
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i gml_Script_scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_21_0"@15241
conv.s.v
push.s "\\E2* R...Really?/"@15242
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 6
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_23_0"@15243
conv.s.v
push.s "\\E7* Yeah^1, she slapped me so hard I blacked out!/%"@15244
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 4
pop.v.i self.con
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v

:[6]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [8]

:[7]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1038
pop.v.i self.sprite_index
pushi.e 233
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 5
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[11]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.image_index
pushi.e 233
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 1037
pop.v.i self.sprite_index
pushi.e 234
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[13]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [15]

:[14]
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
pushi.e 1039
pop.v.i self.sprite_index
push.i 231251
setowner.e
push.s "obj_rudy_slash_Step_0_gml_53_0"@15245
conv.s.v
push.s "\\E4* Hahaha...^1!&* Dad^1, that doesn't help at all!/"@15246
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_55_0"@15247
conv.s.v
push.s "\\E2* Anyhow^1, how's Dragon Blazers III^1?&* Beat it yet?/"@15248
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 2
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_57_0"@15249
conv.s.v
push.s "\\E4* Nah^1, I'm still at the Ice Palace^1.&* I've been kind of.../"@15250
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 4
pop.v.v [array]self.msg
push.s "obj_rudy_slash_Step_0_gml_58_0"@15251
conv.s.v
push.s "\\E9* ... kind of waiting to finish it with you^1, Dad./"@15252
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 5
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 6
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_60_0"@15253
conv.s.v
push.s "\\E4* ...&* Noelle.../"@15254
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 7
pop.v.v [array]self.msg
push.s "obj_rudy_slash_Step_0_gml_61_0"@15255
conv.s.v
push.s "\\E5* Maybe..^1.&* Maybe you shouldn't wait./"@15256
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 8
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 9
conv.i.v
call.i gml_Script_scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_63_0"@15257
conv.s.v
push.s "\\E7* D..^1. Dad?/"@15258
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 10
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 11
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_65_0"@15259
conv.s.v
push.s "\\E7* You should bring it HERE^1!&* I'm bored as hell!/"@15260
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 12
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 13
conv.i.v
call.i gml_Script_scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_67_0"@15261
conv.s.v
push.s "\\E8* Har har har^1!&* FINE^1, you win^1!&* I'll bring it next time!/"@15262
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 14
pop.v.v [array]self.msg
push.s "obj_rudy_slash_Step_0_gml_68_0"@15263
conv.s.v
push.s "\\E5* Oh^1, it's getting late.../"@15264
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 15
pop.v.v [array]self.msg
push.s "obj_rudy_slash_Step_0_gml_69_0"@15265
conv.s.v
push.s "\\E5* Guess I better go^1.&* I've got HOMEWORK./"@15266
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 16
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 17
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_71_0"@15267
conv.s.v
push.s "\\E4* Oh^1.&* That's the group project voice./"@15268
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 18
pop.v.v [array]self.msg
push.s "obj_rudy_slash_Step_0_gml_72_0"@15269
conv.s.v
push.s "\\E2* Bird guy again^1?&* What's his name^1? Nerdly?/"@15270
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 19
pop.v.v [array]self.msg
pushi.e 3
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_74_0"@15271
conv.s.v
push.s "\\E3* It's^1, um^1, Berdly..^1.&* He's not that bad^1, dad./"@15272
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 21
pop.v.v [array]self.msg
pushi.e 6
conv.i.v
pushi.e 22
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_76_0"@15273
conv.s.v
push.s "\\E6* I'll kick his ass./"@15274
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 23
pop.v.v [array]self.msg
pushi.e 4
conv.i.v
pushi.e 24
conv.i.v
call.i gml_Script_scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_78_0"@15275
conv.s.v
push.s "\\E4* Hahaha..^1.&* Dad^1, you're not even supposed to get up./"@15276
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 25
pop.v.v [array]self.msg
pushi.e 7
conv.i.v
pushi.e 26
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_80_0"@15277
conv.s.v
push.s "\\E7* Bring him by the window^1! I'll throw something at him!/"@15278
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 27
pop.v.v [array]self.msg
pushi.e 8
conv.i.v
pushi.e 28
conv.i.v
call.i gml_Script_scr_noeface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_82_0"@15279
conv.s.v
push.s "\\E8* GOODBYE^1, dad./"@15280
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 29
pop.v.v [array]self.msg
pushi.e 2
conv.i.v
pushi.e 30
conv.i.v
call.i gml_Script_scr_rudface(argc=2)
popz.v
push.s "obj_rudy_slash_Step_0_gml_84_0"@15281
conv.s.v
push.s "\\E2* Bye^1, honey./%"@15282
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 31
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 9
pop.v.i self.con

:[15]
push.v self.con
pushi.e 9
cmp.i.v EQ
bf [17]

:[16]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [18]

:[17]
push.e 0

:[18]
bf [22]

:[19]
push.v self.n
pushi.e -9
pushenv [21]

:[20]
pushi.e 749
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[21]
popenv [20]
pushi.e 10
pop.v.i self.con

:[22]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [27]

:[23]
push.v self.n
pushi.e -9
push.v [stacktop]self.y
pushi.e 150
cmp.i.v GTE
bf [27]

:[24]
pushi.e 1036
pop.v.i self.sprite_index
push.v self.n
pushi.e -9
pushenv [26]

:[25]
pushi.e 751
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed

:[26]
popenv [25]
pushi.e 11
pop.v.i self.con

:[27]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [32]

:[28]
push.v self.n
pushi.e -9
push.v [stacktop]self.x
pushi.e 160
cmp.i.v GTE
bf [32]

:[29]
push.v self.n
pushi.e -9
pushenv [31]

:[30]
pushi.e 749
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index

:[31]
popenv [30]
pushi.e 12
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[32]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [34]

:[33]
pushi.e 12
pop.v.i global.typer
pushi.e 3
pop.v.i global.fc
pushi.e 4
pop.v.i global.fe
push.i 231251
setowner.e
push.s "obj_rudy_slash_Step_0_gml_140_0"@15283
conv.s.v
push.s "* ... oh^1?&* Hi^1, Kris...?/%"@15284
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 14
pop.v.i self.con
pushi.e 0
pop.v.i self.kcon

:[34]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [36]

:[35]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [37]

:[36]
push.e 0

:[37]
bf [41]

:[38]
push.v self.n
pushi.e -9
pushenv [40]

:[39]
pushi.e 3
pop.v.i self.vspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 749
pop.v.i self.sprite_index

:[40]
popenv [39]
pushi.e 15
pop.v.i self.con
pushi.e 1
pop.v.i self.kcon
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm

:[41]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [46]

:[42]
pushi.e 82
pushenv [45]

:[43]
push.v self.x
pushi.e 140
cmp.i.v GT
bf [45]

:[44]
push.v self.x
pushi.e 1
sub.i.v
pop.v.v self.x

:[45]
popenv [43]

:[46]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [end]

:[47]
pushi.e 103
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.facing
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 255
pop.v.v [array]self.flag
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v
pushi.e 17
pop.v.i self.con

:[end]