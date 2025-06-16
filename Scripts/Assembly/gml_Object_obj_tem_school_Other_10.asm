.localvar 2 arguments
.localvar 15177 egg_amount 6861

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [15]

:[1]
push.i 231251
setowner.e
push.s "obj_tem_school_slash_Other_10_gml_10_0"@15161
conv.s.v
push.s "* KRISP!^1!&* awa..^1. ver sorz..^1.&* tem already have partner.../%"@15162
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.v self.egcon
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
pushglb.v global.plot
pushi.e 3
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.egcon

:[6]
push.v self.talked
pushi.e 1
cmp.i.v GTE
bf [9]

:[7]
push.s "obj_tem_school_slash_Other_10_gml_15_0"@15163
conv.s.v
push.s "* tem partner with..^1.&* EG!!!/%"@15164
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
push.s "obj_tem_school_slash_Other_10_gml_22_0"@15165
conv.s.v
push.s "* (It's a black-and-white hardboiled egg.)/"@15166
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_tem_school_slash_Other_10_gml_23_0"@15167
conv.s.v
push.s "* (Sadly, seems like it already has a partner.)/%"@15168
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[9]
pushglb.v global.plot
pushi.e 3
cmp.i.v EQ
bf [15]

:[10]
push.v self.egcon
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
push.s "obj_tem_school_slash_Other_10_gml_31_0"@15169
conv.s.v
push.s "* suz... VER MEAN!!^1!&* said tem talk stupid.../"@15170
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "obj_tem_school_slash_Other_10_gml_32_0"@15171
conv.s.v
push.s "* WRON^1! tem a SMART!!^1!&* tem study hard and go to COLLEGE!!!/%"@15172
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg

:[12]
push.v self.egcon
pushi.e 3
cmp.i.v EQ
bf [15]

:[13]
push.s "obj_tem_school_slash_Other_10_gml_36_0"@15173
conv.s.v
push.s "* suz... VER MEAN!!^1!&* said eg..^1.&* NEVER HATCH!!!/%"@15174
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
push.s "obj_tem_school_slash_Other_10_gml_43_0"@15175
conv.s.v
push.s "* (The hardboiled egg emanates a feeling of pity towards you.)/%"@15176
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg

:[15]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [26]

:[16]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [19]

:[17]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
conv.v.b
bf [19]

:[18]
push.v self.talked
pushi.e 1
cmp.i.v GTE
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.dfacing
pushi.e -5
pushi.e 911
push.v [array]self.flag
pushi.e -5
pushi.e 918
push.v [array]self.flag
add.v.v
pop.v.v local.egg_amount
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_tem_school_slash_Other_10_gml_66_0"@15178
conv.s.v
pushloc.v local.egg_amount
push.s "* (The eggs you have collected so far. There's ~1.)/%"@15179
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetsubloc(argc=4)
popz.v
b [26]

:[22]
pushi.e 8
conv.i.v
call.i gml_Script_scr_litemcheck(argc=1)
conv.v.b
bf [25]

:[23]
push.v self.egcon
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
pushi.e 1
pop.v.i self.egcon

:[25]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_tem_school_slash_Other_10_gml_59_0"@15180
conv.s.v
push.s "* tem still study..^1. study harb!!!/"@15181
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_tem_school_slash_Other_10_gml_60_0"@15182
conv.s.v
push.s "* tem get a SMART^1! go to COLLEG!^1! achieve DREAM!!/"@15183
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_tem_school_slash_Other_10_gml_61_0"@15184
conv.s.v
push.s "* then tem become..^1. TEM BECOME....!!/"@15185
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
push.s "obj_tem_school_slash_Other_10_gml_62_0"@15186
conv.s.v
push.s "* Hahaha..^1. As if you could even envision it./%"@15187
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[26]
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
push.d 0.1
pop.v.d self.image_speed

:[28]
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]