.localvar 2 arguments
.localvar 36627 group_check 18240

:[0]
push.v self.init
pushi.e 0
cmp.i.v EQ
bf [10]

:[1]
push.v self.count
pushi.e 0
cmp.i.v EQ
bf [9]

:[2]
push.v self.swapgroup
pop.v.v 1118.groupcheck
push.v self.id
pop.v.v 1118.bossidcheck
pushi.e 1
pop.v.i self.boss
pushi.e 1118
pushenv [5]

:[3]
push.v self.swapgroup
push.v self.groupcheck
cmp.v.v EQ
bf [5]

:[4]
push.v self.bossidcheck
pop.v.v self.bossid
push.v self.bossid
pushi.e -9
dup.i 4
push.v [stacktop]self.allcount
push.e 1
add.i.v
pop.i.v [stacktop]self.allcount
push.i 239940
setowner.e
push.v self.id
push.v self.bossid
pushi.e -9
push.v self.count
conv.v.i
pop.v.v [array]self.countid
push.i 234607
setowner.e
push.v self.default_time
push.v self.bossid
pushi.e -9
push.v self.count
conv.v.i
pop.v.v [array]self.counttimer
push.i 239941
setowner.e
push.v self.type
push.v self.bossid
pushi.e -9
push.v self.count
conv.v.i
pop.v.v [array]self.counttype

:[5]
popenv [3]
push.v self.allcount
pop.v.v 1118.allcountcheck
pushi.e 1118
pushenv [8]

:[6]
push.v self.swapgroup
push.v self.groupcheck
cmp.v.v EQ
bf [8]

:[7]
push.v self.allcountcheck
pop.v.v self.allcount

:[8]
popenv [6]

:[9]
pushi.e 1
pop.v.i self.init

:[10]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [13]

:[12]
pushi.e 5
pop.v.i self.onebuffer

:[13]
popenv [12]

:[14]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [19]

:[15]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bt [17]

:[16]
pushi.e 898
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
b [18]

:[17]
push.e 1

:[18]
b [20]

:[19]
push.e 0

:[20]
bf [37]

:[21]
push.v self.timer
push.e 1
sub.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 0
cmp.i.v LTE
bf [37]

:[22]
push.v self.default_time
push.v self.timefactor
mul.v.v
pop.v.v self.timer
pushi.e 0
pop.v.i self.active
pushi.e 65
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1115
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[23]
push.v self.group
pop.v.v 1115.groupcheck

:[24]
pushi.e 1117
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
push.v self.group
pop.v.v 1117.groupcheck

:[26]
pushi.e 1115
pushenv [29]

:[27]
push.v self.group
push.v self.groupcheck
cmp.v.v EQ
bf [29]

:[28]
pushi.e 0
pop.v.i self.walking
pushi.e 1
pop.v.i self.active

:[29]
popenv [27]
pushi.e 1117
pushenv [32]

:[30]
push.v self.group
push.v self.groupcheck
cmp.v.v EQ
bf [32]

:[31]
pushi.e 0
pop.v.i self.walking
pushi.e 1
pop.v.i self.active

:[32]
popenv [30]
pushi.e 311
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [37]

:[33]
push.v self.group
pop.v.v local.group_check
pushi.e 311
pushenv [36]

:[34]
push.v self.group
pushloc.v local.group_check
cmp.v.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i self.stop

:[36]
popenv [34]

:[37]
push.v self.clear_traffic
conv.v.b
bf [44]

:[38]
pushi.e 1115
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [43]

:[39]
pushi.e 1115
pushenv [42]

:[40]
push.v self.y
push.v self.myspeed
add.v.v
pop.v.v self.y
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
add.v.v
pushi.e 100
add.i.v
cmp.v.v GTE
bf [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [40]
b [44]

:[43]
pushi.e 0
pop.v.b self.clear_traffic

:[44]
push.v self.pressbuffer
push.e 1
sub.i.v
pop.v.v self.pressbuffer

:[end]