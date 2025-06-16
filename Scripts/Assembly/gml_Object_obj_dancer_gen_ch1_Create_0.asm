.localvar 2 arguments
.localvar 107 i 20912

:[0]
pushi.e 3
pop.v.i self.areas
push.i 168914
setowner.e
pushi.e 120
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.areax1
push.i 168915
setowner.e
pushi.e 100
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.areay1
push.i 168916
setowner.e
pushi.e 760
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.areax2
push.i 168917
setowner.e
pushi.e 580
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.areay2
push.i 168914
setowner.e
pushi.e 880
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.areax1
push.i 168915
setowner.e
pushi.e 360
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.areay1
push.i 168916
setowner.e
pushi.e 1360
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.areax2
push.i 168917
setowner.e
pushi.e 880
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.areay2
push.i 168914
setowner.e
pushi.e 200
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.areax1
push.i 168915
setowner.e
pushi.e 720
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.areay1
push.i 168916
setowner.e
pushi.e 760
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.areax2
push.i 168917
setowner.e
pushi.e 1360
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.areay2
pushi.e 0
pop.v.i self.battlealpha
pushbltn.v builtin.room
pushi.e 366
cmp.i.v EQ
bf [35]

:[1]
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [6]

:[3]
pushi.e 1504
conv.i.v
pushi.e 160
pushi.e 80
pushloc.v local.i
mul.v.i
add.v.i
pushi.e 320
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [5]

:[4]
pushi.e 0
pop.v.i self.hspeed
pushi.e -5
pop.v.i self.vspeed

:[5]
popenv [4]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [2]

:[6]
pushi.e 0
pop.v.i local.i

:[7]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [11]

:[8]
pushi.e 1504
conv.i.v
pushi.e 450
conv.i.v
pushi.e 520
pushi.e 80
pushloc.v local.i
mul.v.i
add.v.i
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [10]

:[9]
pushi.e 0
pop.v.i self.vspeed
pushi.e -5
pop.v.i self.hspeed

:[10]
popenv [9]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [7]

:[11]
pushi.e 0
pop.v.i local.i

:[12]
pushloc.v local.i
pushi.e 2
cmp.i.v LT
bf [16]

:[13]
pushi.e 1504
conv.i.v
pushi.e 170
pushi.e 80
pushloc.v local.i
mul.v.i
sub.v.i
pushi.e 500
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [15]

:[14]
pushi.e 5
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[15]
popenv [14]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [12]

:[16]
pushi.e 0
pop.v.i local.i

:[17]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [21]

:[18]
pushi.e 1504
conv.i.v
pushi.e 440
pushi.e 80
pushloc.v local.i
mul.v.i
sub.v.i
pushi.e 960
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [20]

:[19]
pushi.e 5
pop.v.i self.vspeed

:[20]
popenv [19]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [17]

:[21]
pushi.e 0
pop.v.i local.i

:[22]
pushloc.v local.i
pushi.e 4
cmp.i.v LT
bf [26]

:[23]
pushi.e 1504
conv.i.v
pushi.e 40
pushi.e 80
pushloc.v local.i
mul.v.i
sub.v.i
pushi.e 960
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [25]

:[24]
pushi.e 5
pop.v.i self.vspeed

:[25]
popenv [24]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [22]

:[26]
pushi.e 1504
conv.i.v
pushi.e 830
conv.i.v
pushi.e 280
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [28]

:[27]
pushi.e -5
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[28]
popenv [27]
pushi.e 1504
conv.i.v
pushi.e 820
conv.i.v
pushi.e 580
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [30]

:[29]
pushi.e 5
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[30]
popenv [29]
pushi.e 1504
conv.i.v
pushi.e 1050
conv.i.v
pushi.e 590
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [32]

:[31]
pushi.e 5
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.hspeed

:[32]
popenv [31]
pushi.e 1504
conv.i.v
pushi.e 1060
conv.i.v
pushi.e 290
conv.i.v
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.sc
push.v self.sc
pushi.e -9
pushenv [34]

:[33]
pushi.e -5
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.vspeed

:[34]
popenv [33]

:[35]
pushbltn.v builtin.room
pushi.e 401
cmp.i.v EQ
bf [37]

:[36]
push.i 168914
setowner.e
pushi.e 260
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.areax1
push.i 168915
setowner.e
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.areay1
push.i 168916
setowner.e
pushi.e 1120
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.areax2
push.i 168917
setowner.e
pushi.e 820
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.areay2
pushi.e 1
pop.v.i self.areas

:[37]
pushi.e 0
pop.v.i self.tile_fade
pushbltn.v builtin.room
pushi.e 366
cmp.i.v EQ
bt [39]

:[38]
pushbltn.v builtin.room
pushi.e 401
cmp.i.v EQ
b [40]

:[39]
push.e 1

:[40]
bf [end]

:[41]
pushi.e 0
pop.v.i self.alpha_changed
pushi.e 1
pop.v.i self.tile_fade
push.i 777777
conv.i.v
call.i gml_Script_tile_get_ids_at_depth_ch1(argc=1)
pop.v.v self.tilearray
pushi.e 0
pop.v.i local.i

:[42]
pushloc.v local.i
push.v self.tilearray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [end]

:[43]
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.tilearray
call.i gml_Script_tile_set_alpha_ch1(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [42]

:[end]