.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.talked
pushi.e 0
pop.v.i self.checked
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.teleportmode
pushbltn.v builtin.room
pop.v.v self.door_destination
pushbltn.v builtin.room
pop.v.v self.door_location
pushi.e 1
pop.v.i self.on
pushi.e 1204
conv.i.v
push.v self.y
pushi.e 96
add.i.v
push.v self.x
pushi.e 6
add.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.weirdlight
push.v self.weirdlight
pushi.e -9
pushenv [2]

:[1]
push.i 895000
pop.v.i self.depth
push.d 0.125
pop.v.d self.image_speed

:[2]
popenv [1]
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [5]

:[3]
pushglb.v global.plot
pushi.e 60
cmp.i.v LT
bf [5]

:[4]
pushi.e 0
pop.v.i self.on

:[5]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [8]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [8]

:[7]
pushi.e 0
pop.v.i self.on

:[8]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [11]

:[9]
pushbltn.v builtin.room
pushi.e 167
cmp.i.v EQ
bf [11]

:[10]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 2
cmp.i.v GT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.on

:[14]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [end]

:[15]
pushi.e 1208
pop.v.i self.sprite_index
push.v self.weirdlight
pushi.e -9
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]

:[end]