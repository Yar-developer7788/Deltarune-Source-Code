.localvar 2 arguments

:[0]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.type
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.con
pushi.e 0
pop.v.i global.fe
pushi.e 1091
pop.v.i global.msc
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 3
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer

:[6]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.type
pushi.e 2
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.myinteract
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 384
pop.v.v [array]self.flag

:[11]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i self.image_index
pushi.e 41
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 41
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 4
pop.v.i self.type

:[13]
push.v self.type
pushi.e 4
cmp.i.v EQ
bf [end]

:[14]
pushi.e 12
pop.v.i self.con
pushi.e 0
pop.v.i global.fe
pushi.e -5
pushi.e 311
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mazecheese_slash_Other_10_gml_42_0"@36589
conv.s.v
push.s "* (The cheese was destroyed in the heat of battle.)/"@36590
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mazecheese_slash_Other_10_gml_43_0"@36591
conv.s.v
push.s "* (Feels like you lost sight of what was important.)/%"@36592
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
b [17]

:[16]
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_mazecheese_slash_Other_10_gml_47_0"@36593
conv.s.v
push.s "* (The cheese was destroyed in the heat of battle.)/"@36590
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "obj_mazecheese_slash_Other_10_gml_48_0"@36594
conv.s.v
push.s "* (This marks a cruel victory for those who hate cheese.)/%"@36595
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v

:[17]
pushi.e 3
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushbltn.v builtin.room
pushi.e 135
cmp.i.v EQ
bf [19]

:[18]
push.v 82.x
pushi.e 700
cmp.i.v LT
b [20]

:[19]
push.e 0

:[20]
bf [end]

:[21]
pushi.e 1
push.v self.mydialoguer
pushi.e -9
pop.v.i [stacktop]self.free

:[end]