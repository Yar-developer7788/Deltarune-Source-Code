.localvar 2 arguments

:[0]
push.v 82.x
pushi.e 240
cmp.i.v GT
bf [2]

:[1]
push.v self.con
pushi.e -1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facing

:[5]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 2
pop.v.i self.con
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v

:[7]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [15]

:[8]
pushi.e 3
pop.v.i self.con
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 780
cmp.i.v GT
bt [10]

:[9]
push.v self.ra_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 780
cmp.i.v GT
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 50
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 70
add.i.v
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.s "l"@6707
conv.s.v
pushi.e 21
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 40
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
b [14]

:[13]
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 20
conv.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.y
pushi.e 10
sub.i.v
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.x
pushi.e 70
add.i.v
call.i gml_Script_c_walkdirect_wait(argc=3)
popz.v
push.s "l"@6707
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
push.s "r"@6696
conv.s.v
call.i gml_Script_c_facing(argc=1)
popz.v

:[14]
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 1061
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[15]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [17]

:[16]
pushi.e 11
pop.v.i self.con
pushi.e 60
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.blackall
call.i gml_Script_c_var_lerp_instance(argc=5)
popz.v
pushi.e 60
conv.i.v
pushi.e 0
conv.i.v
push.s "volume"@9841
conv.s.v
call.i gml_Script_c_mus2(argc=3)
popz.v
pushi.e 60
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
push.s "free_all"@9834
conv.s.v
call.i gml_Script_c_mus(argc=1)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[17]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [19]

:[18]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 331
pop.v.v [array]self.flag
pushi.e 211
conv.i.v
call.i room_goto(argc=1)
popz.v

:[22]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [24]

:[23]
pushi.e 21
pop.v.i self.con
push.s "top"@6226
conv.s.v
call.i gml_Script_c_msgside(argc=1)
popz.v
pushi.e 1063
conv.i.v
call.i gml_Script_c_msc(argc=1)
popz.v
call.i gml_Script_c_talk_wait(argc=0)
popz.v

:[24]
push.v self.con
pushi.e 30
cmp.i.v EQ
bf [26]

:[25]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
pushi.e 31
pop.v.i self.con
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v
push.i 231204
setowner.e
pushi.e 2
conv.i.v
pushi.e -5
pushi.e 319
pop.v.v [array]self.flag
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 331
pop.v.v [array]self.flag

:[29]
push.v self.con
pushi.e 32
cmp.i.v EQ
bf [31]

:[30]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
b [32]

:[31]
push.e 0

:[32]
bf [end]

:[33]
pushi.e 99
pop.v.i self.con
pushi.e 974
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]