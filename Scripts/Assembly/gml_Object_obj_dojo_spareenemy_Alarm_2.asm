.localvar 2 arguments
.localvar 9185 _yy 14874
.localvar 27647 _item 14876

:[0]
push.i 68097
setowner.e
pushi.e 20
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.alarm
pushi.e 40
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
pushi.e 100
conv.i.v
push.v self.myself
call.i gml_Script_scr_mercyadd(argc=2)
popz.v
push.d 1.5
conv.d.v
pushi.e 167
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.b self.shaved
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushi.e 1179
pop.v.i self.sparedsprite
pushi.e 1178
pop.v.i self.hurtsprite
push.v self.y
push.v self.siner
pushi.e 1
mod.i.v
pushi.e 2
mul.i.v
add.v.v
pop.v.v local._yy
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 32
add.i.v
push.v self.x
pushi.e 22
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 32
add.i.v
push.v self.x
pushi.e 46
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 34
add.i.v
push.v self.x
pushi.e 24
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 34
add.i.v
push.v self.x
pushi.e 28
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 34
add.i.v
push.v self.x
pushi.e 32
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 34
add.i.v
push.v self.x
pushi.e 36
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 34
add.i.v
push.v self.x
pushi.e 40
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 34
add.i.v
push.v self.x
pushi.e 44
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 36
add.i.v
push.v self.x
pushi.e 26
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 36
add.i.v
push.v self.x
pushi.e 42
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 38
add.i.v
push.v self.x
pushi.e 30
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 38
add.i.v
push.v self.x
pushi.e 34
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 850
conv.i.v
pushloc.v local._yy
pushi.e 38
add.i.v
push.v self.x
pushi.e 38
add.i.v
call.i gml_Script_instance_create(argc=3)
popz.v
call.i ds_list_create(argc=0)
pop.v.v self.list
pushi.e 850
pushenv [2]

:[1]
call.i @@This@@(argc=0)
push.v other.list
call.i ds_list_add(argc=2)
popz.v

:[2]
popenv [1]
push.v self.list
call.i ds_list_shuffle(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[3]
push.v self.i
push.v self.list
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [5]

:[4]
push.v self.i
push.v self.list
call.i ds_list_find_value(argc=2)
pop.v.v local._item
push.v self.i
pushi.e -1
mul.i.v
pushi.e 2
conv.i.v
call.i irandom(argc=1)
add.v.v
pushi.e 5
sub.i.v
pushloc.v local._item
pushi.e -9
pop.v.v [stacktop]self.sparkle_timer
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [3]

:[5]
push.v self.list
call.i ds_list_destroy(argc=1)
popz.v

:[end]