.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 110
conv.i.v
pushi.e 120
conv.i.v
pushi.e 990
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.trashy_npc
pushi.e 1267
push.v self.trashy_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.trashy_npc
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushglb.v global.plot
pushi.e 100
cmp.i.v LT
bf [6]

:[3]
pushi.e 103
conv.i.v
pushi.e 350
conv.i.v
pushi.e 1060
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.nubert_npc
pushi.e 1255
push.v self.nubert_npc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.nubert_npc
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]

:[6]
pushi.e 3022
conv.i.v
pushi.e 60
conv.i.v
pushi.e 15
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.trashpile
push.v self.trashpile
pushi.e -9
pushenv [8]

:[7]
push.i 98000
pop.v.i self.depth

:[8]
popenv [7]
pushi.e 1144
conv.i.v
pushi.e 60
conv.i.v
pushi.e 20
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.trashpile_collider
push.d 10.5
push.v self.trashpile_collider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 5
push.v self.trashpile_collider
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [10]

:[9]
pushglb.v global.plot
push.d 65.5
cmp.d.v GTE
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [end]

:[13]
pushglb.v global.plot
pushi.e 65
cmp.i.v EQ
bf [15]

:[14]
pushi.e 5
pop.v.i self.con
pushi.e 0
pop.v.b self.heal
b [end]

:[15]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [17]

:[16]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[17]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 60
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
push.v 82.x
pushi.e 140
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
pop.v.b self.heal

:[end]