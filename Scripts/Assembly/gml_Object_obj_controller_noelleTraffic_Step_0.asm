.localvar 2 arguments

:[0]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 276.name
push.s "noelle"@74
cmp.s.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [9]

:[4]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [9]

:[5]
pushi.e 82
pushenv [8]

:[6]
pushi.e 1231
conv.i.v
push.v self.y
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [8]

:[7]
pushi.e 1
pop.v.b other.fakeNoelleActive

:[8]
popenv [6]

:[9]
push.v self.fakeNoelleActive
pushi.e 1
cmp.b.v EQ
bf [21]

:[10]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[11]
push.v 276.name
push.s "noelle"@74
cmp.s.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [21]

:[14]
pushi.e 276
pushenv [16]

:[15]
pushi.e 0
pop.v.b self.visible

:[16]
popenv [15]
pushi.e 1280
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [18]

:[17]
pushi.e 0
conv.i.v
pushi.e 1280
conv.i.v
call.i instance_find(argc=2)
pop.v.v self.fakeNoelle
b [19]

:[18]
pushi.e -4
pop.v.i self.fakeNoelle

:[19]
push.v self.fakeNoelle
call.i gml_Script_i_ex(argc=1)
conv.v.b
not.b
bf [21]

:[20]
pushi.e 1280
conv.i.v
push.v 276.y
push.v 276.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fakeNoelle
pushi.e 2
push.v self.fakeNoelle
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.fakeNoelle
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.v 276.sprite_index
push.v self.fakeNoelle
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v 82.image_index
push.v self.fakeNoelle
pushi.e -9
pop.v.v [stacktop]self.image_index

:[21]
push.v self.fakeNoelleActive
pushi.e 0
cmp.b.v EQ
bf [end]

:[22]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [24]

:[23]
push.v 276.name
push.s "noelle"@74
cmp.s.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [end]

:[26]
pushi.e 1
pop.v.b 276.visible

:[end]