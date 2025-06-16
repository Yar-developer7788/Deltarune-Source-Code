.localvar 2 arguments
.localvar 36180 addison_sprites 17576
.localvar 107 i 17578
.localvar 32034 npc 17579

:[0]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v EQ
bf [9]

:[1]
pushi.e 263
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
push.i 65536
setowner.e
pushi.e 6
conv.i.v
call.i array_create(argc=1)
pop.v.v local.addison_sprites
push.i 174084
setowner.e
pushi.e 1238
conv.i.v
pushi.e -7
pushi.e 0
pop.v.v [array]self.addison_sprites
pushi.e 1236
conv.i.v
pushi.e -7
pushi.e 1
pop.v.v [array]self.addison_sprites
pushi.e 1242
conv.i.v
pushi.e -7
pushi.e 2
pop.v.v [array]self.addison_sprites
pushi.e 1240
conv.i.v
pushi.e -7
pushi.e 3
pop.v.v [array]self.addison_sprites
pushi.e 1238
conv.i.v
pushi.e -7
pushi.e 4
pop.v.v [array]self.addison_sprites
pushi.e 1236
conv.i.v
pushi.e -7
pushi.e 5
pop.v.v [array]self.addison_sprites
pushi.e 0
pop.v.i local.i

:[4]
pushloc.v local.i
pushloc.v local.addison_sprites
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [8]

:[5]
pushi.e 103
conv.i.v
pushi.e 132
conv.i.v
pushi.e 400
pushloc.v local.i
pushi.e 120
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v local.npc
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self.addison_sprites
pushloc.v local.npc
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushloc.v local.npc
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [4]

:[8]
b [end]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[end]