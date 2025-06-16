.localvar 2 arguments

:[0]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.weird
b [3]

:[2]
pushi.e 0
pop.v.i self.weird

:[3]
pushi.e 0
pop.v.i self.topsprite
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.frozensprite
pushi.e 0
pop.v.i self.speedboost
pushi.e 0
pop.v.i self.encountertype
pushi.e 0
pop.v.b self.noellepresent
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[4]
pushi.e 276
pushenv [7]

:[5]
push.v self.name
push.s "noelle"@74
cmp.s.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.b other.noellepresent

:[7]
popenv [5]

:[8]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
push.i 99999
pop.v.i self.dist
pushi.e 0
pop.v.i self.speed1
pushi.e 0
pop.v.i self.marker
pushi.e 160
pop.v.i self.radius
pushi.e 0
pop.v.i self.topsprite
pushi.e 0
pop.v.i self.topxoff
pushi.e 0
pop.v.i self.topyoff
pushi.e 0
pop.v.i self.flyoff
pushbltn.v builtin.room
pushi.e 124
cmp.i.v EQ
bf [13]

:[9]
pushi.e 530
pop.v.i self.encounterflag
pushi.e -5
push.v self.encounterflag
conv.v.i
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.speedboost

:[11]
pushi.e 1653
pop.v.i self.sprite_index
push.v self.noellepresent
pushi.e 1
cmp.b.v EQ
bf [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
pushbltn.v builtin.room
pushi.e 137
cmp.i.v EQ
bf [18]

:[14]
push.v self.x
pushi.e 700
cmp.i.v GT
bf [16]

:[15]
pushi.e 3066
pop.v.i self.topsprite
pushi.e 2
pop.v.i self.encountertype
pushi.e 538
pop.v.i self.encounterflag
b [18]

:[16]
pushi.e 85
pop.v.i self.topsprite
pushi.e 567
pop.v.i self.encounterflag
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v NEQ
bf [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
pushbltn.v builtin.room
pushi.e 121
cmp.i.v EQ
bf [26]

:[19]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [25]

:[20]
pushi.e 1653
pop.v.i self.sprite_index
pushi.e 85
pop.v.i self.topsprite
pushi.e 559
pop.v.i self.encounterflag
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
push.v self.noellepresent
pushi.e 0
cmp.b.v EQ
bf [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
b [26]

:[25]
pushi.e 1653
pop.v.i self.sprite_index
pushi.e 2679
pop.v.i self.topsprite
pushi.e 572
pop.v.i self.encounterflag
pushi.e 2
pop.v.i self.encountertype

:[26]
pushi.e 0
pop.v.i self.memspeed

:[end]