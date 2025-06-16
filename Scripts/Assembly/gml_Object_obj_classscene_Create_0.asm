.localvar 2 arguments

:[0]
pushi.e 918
conv.i.v
pushi.e 26
conv.i.v
pushi.e 236
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.door
push.v self.door
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.customconb
pushi.e 0
pop.v.i global.facing
pushi.e 135
conv.i.v
pushi.e 152
conv.i.v
pushi.e 76
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.noelle_npc
pushi.e 135
conv.i.v
pushi.e 152
conv.i.v
pushi.e 148
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdly_npc
pushi.e 0
pop.v.i self.introtime
pushi.e 0
pop.v.i self.nonpctime
pushi.e 0
pop.v.i self.sunsettime
pushi.e 0
pop.v.i self.doormake
pushi.e 0
pop.v.i self.alphystime
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [7]

:[3]
pushglb.v global.plot
pushi.e 2
cmp.i.v LT
bf [5]

:[4]
pushi.e 1
pop.v.i self.introtime

:[5]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [7]

:[6]
pushi.e 1
pop.v.i self.sunsettime
pushi.e 1
pop.v.i self.doormake

:[7]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [16]

:[8]
pushglb.v global.plot
pushi.e 3
cmp.i.v LT
bf [10]

:[9]
pushi.e 1
pop.v.i self.introtime

:[10]
pushglb.v global.plot
pushi.e 3
cmp.i.v GTE
bf [12]

:[11]
pushi.e 1
pop.v.i self.nonpctime
pushi.e 1
pop.v.i self.doormake
pushi.e 1
pop.v.i self.alphystime

:[12]
pushglb.v global.plot
pushi.e 5
cmp.i.v GTE
bf [14]

:[13]
pushi.e 1
pop.v.i self.nonpctime
pushi.e 0
pop.v.i self.alphystime

:[14]
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [16]

:[15]
pushi.e 1
pop.v.i self.sunsettime

:[16]
push.v self.introtime
pushi.e 1
cmp.i.v EQ
bf [22]

:[17]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 0
pop.v.i global.facing
pushi.e 1
pop.v.i self.con
pushi.e 82
pushenv [19]

:[18]
pushi.e 240
pop.v.i self.x
pushi.e 30
pop.v.i self.y
call.i gml_Script_scr_depth(argc=0)
popz.v

:[19]
popenv [18]
pushi.e 919
conv.i.v
pushi.e 50
conv.i.v
pushi.e 50
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.alphys
push.v self.alphys
pushi.e -9
pushenv [21]

:[20]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 1
pop.v.i global.interact

:[22]
push.v self.nonpctime
pushi.e 1
cmp.i.v EQ
bf [29]

:[23]
pushi.e 135
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [29]

:[26]
pushi.e 70
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]

:[29]
push.v self.doormake
pushi.e 1
cmp.i.v EQ
bf [35]

:[30]
pushi.e 144
conv.i.v
pushi.e 48
conv.i.v
pushi.e 242
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doorb
push.v self.door
pushi.e -9
pushenv [32]

:[31]
push.i 900000
pop.v.i self.depth

:[32]
popenv [31]
push.v self.doorb
pushi.e -9
pushenv [34]

:[33]
pushi.e 0
pop.v.i self.doorFacing
pushi.e 1
pop.v.i self.doorPreset

:[34]
popenv [33]

:[35]
push.v self.sunsettime
pushi.e 1
cmp.i.v EQ
bf [end]

:[36]
pushi.e 135
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
pushglb.v global.plot
pushi.e 200
cmp.i.v LT
bf [42]

:[39]
pushi.e 70
pushenv [41]

:[40]
call.i instance_destroy(argc=0)
popz.v

:[41]
popenv [40]

:[42]
pushi.e 902
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.sunset
push.v self.sunset
pushi.e -9
pushenv [44]

:[43]
push.d 0.4
pop.v.d self.image_alpha
pushi.e 2000
pop.v.i self.depth

:[44]
popenv [43]
call.i instance_destroy(argc=0)
popz.v

:[end]