.localvar 2 arguments
.localvar 30827 total_recruits 16375
.localvar 30992 trashy_npc 16376

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e -5
pushi.e 40
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e -5
pushi.e 630
push.v [array]self.flag
pushi.e -5
pushi.e 631
push.v [array]self.flag
add.v.v
pushi.e -5
pushi.e 632
push.v [array]self.flag
add.v.v
pushi.e -5
pushi.e 633
push.v [array]self.flag
add.v.v
pushi.e -5
pushi.e 634
push.v [array]self.flag
add.v.v
pushi.e -5
pushi.e 635
push.v [array]self.flag
add.v.v
pushi.e -5
pushi.e 636
push.v [array]self.flag
add.v.v
pop.v.v local.total_recruits
pushloc.v local.total_recruits
pushi.e 7
cmp.i.v LT
bf [5]

:[2]
pushi.e 110
conv.i.v
pushi.e 310
conv.i.v
pushi.e 1210
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.trashy_npc
pushloc.v local.trashy_npc
pushi.e -9
pushenv [4]

:[3]
pushi.e 1267
pop.v.i self.sprite_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[4]
popenv [3]

:[5]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [8]

:[6]
pushi.e -5
pushi.e 319
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bt [8]

:[7]
pushglb.v global.plot
pushi.e 160
cmp.i.v GTE
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[11]
pushi.e 0
pop.v.i global.interact
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
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_alpha

:[end]