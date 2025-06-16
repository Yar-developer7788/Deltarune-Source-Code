.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [19]

:[1]
pushi.e 1
pop.v.i global.interact
push.v self.skip
pushi.e 0
cmp.i.v EQ
bf [18]

:[2]
pushi.e 0
pop.v.i self.notallcharactersaresafe
pushi.e 82
pushenv [8]

:[3]
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [5]

:[4]
pushi.e 1276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
push.v other.notallcharactersaresafe
push.e 1
add.i.v
pop.v.v other.notallcharactersaresafe

:[8]
popenv [3]
pushi.e 276
pushenv [14]

:[9]
pushi.e 68
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bt [11]

:[10]
pushi.e 1276
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
b [12]

:[11]
push.e 1

:[12]
bf [14]

:[13]
push.v other.notallcharactersaresafe
push.e 1
add.i.v
pop.v.v other.notallcharactersaresafe

:[14]
popenv [9]
push.v self.notallcharactersaresafe
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
pushi.e 99
pop.v.i self.con
b [17]

:[16]
pushi.e 2
pop.v.i self.con

:[17]
b [19]

:[18]
pushi.e 99
pop.v.i self.con

:[19]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
call.i gml_Script_scr_cutscene_make(argc=0)
pop.v.v self.cutscene_master
call.i gml_Script_scr_maincharacters_actors(argc=0)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[21]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [57]

:[22]
push.v self.dir
pushi.e 0
cmp.i.v EQ
bf [30]

:[23]
push.v self.rax
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.mtx
pop.v.v self.ralx
b [26]

:[25]
push.v self.rax
pop.v.v self.ralx

:[26]
push.v self.ray
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
push.v self.mty
pushi.e 4
sub.i.v
pop.v.v self.raly
b [29]

:[28]
push.v self.ray
pop.v.v self.raly

:[29]
push.s "d"@6706
pop.v.s self.krisface

:[30]
push.v self.dir
pushi.e 1
cmp.i.v EQ
bf [38]

:[31]
push.v self.rax
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.v self.mtx
pushi.e 4
sub.i.v
pop.v.v self.ralx
b [34]

:[33]
push.v self.rax
pop.v.v self.ralx

:[34]
push.v self.ray
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.mty
pop.v.v self.raly
b [37]

:[36]
push.v self.ray
pop.v.v self.raly

:[37]
push.s "e"@24643
pop.v.s self.krisface

:[38]
push.v self.dir
pushi.e 2
cmp.i.v EQ
bf [46]

:[39]
push.v self.rax
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.v self.mtx
pop.v.v self.ralx
b [42]

:[41]
push.v self.rax
pop.v.v self.ralx

:[42]
push.v self.ray
pushi.e 0
cmp.i.v EQ
bf [44]

:[43]
push.v self.mty
pushi.e 4
add.i.v
pop.v.v self.raly
b [45]

:[44]
push.v self.ray
pop.v.v self.raly

:[45]
push.s "u"@6708
pop.v.s self.krisface

:[46]
push.v self.dir
pushi.e 3
cmp.i.v EQ
bf [54]

:[47]
push.v self.rax
pushi.e 0
cmp.i.v EQ
bf [49]

:[48]
push.v self.mtx
pushi.e 4
add.i.v
pop.v.v self.ralx
b [50]

:[49]
push.v self.rax
pop.v.v self.ralx

:[50]
push.v self.ray
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
push.v self.mty
pop.v.v self.raly
b [53]

:[52]
push.v self.ray
pop.v.v self.raly

:[53]
push.s "l"@6707
pop.v.s self.krisface

:[54]
push.v self.kr_actor
pushi.e -9
push.v [stacktop]self.sprite_index
push.v self.mty
push.v self.mtx
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.panpoint
push.v self.panpoint
pushi.e -9
pushenv [56]

:[55]
pushi.e 0
pop.v.i self.visible

:[56]
popenv [55]
pushi.e 1
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
push.v self.kr
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 4
conv.i.v
push.v self.mty
push.v self.mtx
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.krisface
pushi.e 4
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
push.v self.ra
call.i gml_Script_c_sel(argc=1)
popz.v
pushi.e 4
conv.i.v
push.v self.raly
push.v self.ralx
call.i gml_Script_c_walkdirect(argc=3)
popz.v
push.v self.krisface
pushi.e 5
conv.i.v
call.i gml_Script_c_delayfacing(argc=2)
popz.v
pushi.e 4
conv.i.v
push.v self.panpoint
call.i gml_Script_c_panobj(argc=2)
popz.v
pushi.e 6
conv.i.v
call.i gml_Script_c_wait(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i gml_Script_c_pannable(argc=1)
popz.v
pushi.e 98
conv.i.v
push.s "con"@829
conv.s.v
push.v self.id
call.i gml_Script_c_var_instance(argc=3)
popz.v
call.i gml_Script_c_actortokris(argc=0)
popz.v
call.i gml_Script_c_actortocaterpillar(argc=0)
popz.v
call.i gml_Script_c_terminatekillactors(argc=0)
popz.v

:[57]
push.v self.con
pushi.e 98
cmp.i.v EQ
bf [61]

:[58]
pushi.e 99
pop.v.i self.con
push.v self.panpoint
pushi.e -9
pushenv [60]

:[59]
call.i instance_destroy(argc=0)
popz.v

:[60]
popenv [59]

:[61]
push.v self.con
pushi.e 99
cmp.i.v EQ
bf [end]

:[62]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 231
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.con

:[end]