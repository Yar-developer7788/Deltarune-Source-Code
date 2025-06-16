.localvar 2 arguments

:[0]
pushi.e -5
push.v self.flag
conv.v.i
push.v [array]self.flag
pop.v.v self.image_index
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
pushi.e 1
pop.v.i global.interact
push.s "no_name"@454
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.v self.flag
pushi.e 374
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_dw_mansion_mouseLottery_Chest_slash_Step_0_gml_8_0"@38062
conv.s.v
push.s "* (The mice found $20.)&* (You didn't get any.)/%"@38063
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[3]
push.v self.flag
pushi.e 375
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_dw_mansion_mouseLottery_Chest_slash_Step_0_gml_9_0"@38064
conv.s.v
push.s "* (The mice found $1.)&* (You didn't get any.)/%"@38065
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v

:[5]
call.i gml_Script_d_make(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[6]
push.v self.con
pushi.e 2
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
bf [end]

:[10]
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[end]