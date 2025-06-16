.localvar 2 arguments
.localvar 36627 group_check 18244

:[0]
pushi.e 1
pop.v.i self.myinteract
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.pressbuffer
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.timer

:[5]
pushglb.v global.facing
pushi.e 0
cmp.i.v NEQ
bf [8]

:[6]
push.v self.active
pushi.e 0
cmp.i.v EQ
bf [8]

:[7]
push.v self.pressbuffer
pushi.e 0
cmp.i.v LTE
b [9]

:[8]
push.e 0

:[9]
bf [56]

:[10]
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.default_time
push.v self.timefactor
mul.v.v
pop.v.v self.timer
pushi.e 2
pop.v.i self.pressbuffer
pushi.e 1
pop.v.i self.active
push.v self.deleteCars
pushi.e 0
cmp.i.v NEQ
bf [18]

:[11]
pushi.e 1115
pushenv [17]

:[12]
pushi.e 1282
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [14]

:[13]
push.v self.id
call.i gml_Script_scr_onscreen(argc=1)
conv.v.b
not.b
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v
push.v self.id
call.i string(argc=1)
push.s " obliterated by obj_carKiller"@36628
add.s.v
call.i gml_Script_debug_message(argc=1)
popz.v

:[17]
popenv [12]

:[18]
push.v self.group
pop.v.v 1118.bgroupcheck
pushi.e 1
pop.v.i 1118.notme
pushi.e 0
pop.v.i self.notme
pushi.e 1118
pushenv [24]

:[19]
push.v self.group
push.v self.bgroupcheck
cmp.v.v EQ
bf [21]

:[20]
push.v self.notme
pushi.e 1
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [24]

:[23]
pushi.e 2
pop.v.i self.pressbuffer
push.v self.default_time
push.v self.timefactor
mul.v.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.active

:[24]
popenv [19]
pushi.e 1115
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
push.v self.group
pop.v.v 1115.groupcheck

:[26]
pushi.e 1117
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [28]

:[27]
push.v self.group
pop.v.v 1117.groupcheck

:[28]
pushi.e 311
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [33]

:[29]
push.v self.group
pop.v.v local.group_check
pushi.e 311
pushenv [32]

:[30]
push.v self.group
pushloc.v local.group_check
cmp.v.v EQ
bf [32]

:[31]
pushi.e 1
pop.v.i self.stop

:[32]
popenv [30]

:[33]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [41]

:[34]
pushi.e 1115
pushenv [37]

:[35]
push.v self.group
push.v self.groupcheck
cmp.v.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.active

:[37]
popenv [35]
pushi.e 1117
pushenv [40]

:[38]
push.v self.group
push.v self.groupcheck
cmp.v.v EQ
bf [40]

:[39]
pushi.e 0
pop.v.i self.active

:[40]
popenv [38]

:[41]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [49]

:[42]
pushi.e 1115
pushenv [45]

:[43]
push.v self.group
push.v self.groupcheck
cmp.v.v EQ
bf [45]

:[44]
pushi.e 1
pop.v.i self.walking
pushi.e 1
pop.v.i self.active

:[45]
popenv [43]
pushi.e 1117
pushenv [48]

:[46]
push.v self.group
push.v self.groupcheck
cmp.v.v EQ
bf [48]

:[47]
pushi.e 1
pop.v.i self.walking
pushi.e 1
pop.v.i self.active

:[48]
popenv [46]

:[49]
pushbltn.v builtin.room
pushi.e 139
cmp.i.v EQ
bf [51]

:[50]
pushglb.v global.plot
pushi.e 80
cmp.i.v EQ
b [52]

:[51]
push.e 0

:[52]
bf [56]

:[53]
pushi.e 1015
pushenv [55]

:[54]
pushi.e 0
pop.v.i self.con

:[55]
popenv [54]

:[56]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [end]

:[57]
pushi.e 1117
pushenv [59]

:[58]
pushi.e 0
pop.v.i self.active

:[59]
popenv [58]
pushi.e 0
pop.v.i self.fade
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.b self.clear_traffic
pushbltn.v builtin.room
pushi.e 139
cmp.i.v EQ
bf [61]

:[60]
pushglb.v global.plot
pushi.e 85
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [end]

:[63]
pushi.e 1015
pushenv [65]

:[64]
pushi.e 0
pop.v.i self.con

:[65]
popenv [64]

:[end]