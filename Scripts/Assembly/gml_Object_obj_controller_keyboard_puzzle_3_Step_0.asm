.localvar 2 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 82
pushenv [4]

:[2]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i other.con

:[4]
popenv [2]

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e -999
pop.v.i self.con
push.v self.ra
call.i gml_Script_c_sel(argc=1)
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
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 302
conv.i.v
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 8
conv.i.v
pushi.e 298
conv.i.v
push.v self.su_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 8
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 302
conv.i.v
pushi.e 520
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.su
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 30
conv.i.v
pushi.e 298
conv.i.v
pushi.e 84
conv.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
pushi.e 31
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
pushi.e 3
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[9]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.v self.cutscene_master
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 105
conv.i.v
push.v self.realral
pushi.e -9
push.v [stacktop]self.y
push.v self.realral
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npcral
pushi.e 791
push.v self.npcral
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.realral
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 105
conv.i.v
push.v self.realsus
pushi.e -9
push.v [stacktop]self.y
push.v self.realsus
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npcsus
pushi.e 824
push.v self.npcsus
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.realsus
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 0
pop.v.i global.interact
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[14]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [end]

:[15]
pushi.e 0
pop.v.i self.triggered
pushi.e 82
pushenv [18]

:[16]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [18]

:[17]
pushi.e 1
pop.v.b other.triggered

:[18]
popenv [16]
pushi.e -5
pushi.e 420
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [20]

:[19]
push.v self.triggered
pushi.e 1
cmp.b.v EQ
b [21]

:[20]
push.e 0

:[21]
bf [end]

:[22]
call.i gml_Script_scr_tempsave(argc=0)
popz.v
push.v self.npcral
pushi.e -9
push.v [stacktop]self.x
push.v self.realral
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.npcral
pushi.e -9
push.v [stacktop]self.y
push.v self.realral
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.realral
pushi.e -9
pushenv [24]

:[23]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 1
push.v self.realral
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.npcsus
pushi.e -9
push.v [stacktop]self.x
push.v self.realsus
pushi.e -9
pop.v.v [stacktop]self.x
push.v self.npcsus
pushi.e -9
push.v [stacktop]self.y
push.v self.realsus
pushi.e -9
pop.v.v [stacktop]self.y
push.v self.realsus
pushi.e -9
pushenv [26]

:[25]
call.i gml_Script_scr_caterpillar_interpolate(argc=0)
popz.v

:[26]
popenv [25]
pushi.e 1
push.v self.realsus
pushi.e -9
pop.v.b [stacktop]self.visible
push.v self.npcral
pushi.e -9
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
push.v self.npcsus
pushi.e -9
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[end]