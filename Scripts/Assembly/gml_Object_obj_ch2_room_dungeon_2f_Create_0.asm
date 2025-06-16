.localvar 2 arguments
.localvar 35846 cagesama 17329
.localvar 35847 cagesamb 17330
.localvar 35848 cageking 17331
.localvar 35849 cageanimal 17332
.localvar 35850 checkers 17333

:[0]
pushi.e -1
pop.v.i self.con
pushi.e -4
pop.v.i self.cutscene_master
pushi.e 0
pop.v.i self.leaveCounter
pushi.e 103
conv.i.v
pushi.e 75
conv.i.v
pushi.e 70
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.cagesama
pushi.e 1193
pushloc.v local.cagesama
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 500000
pushloc.v local.cagesama
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 103
conv.i.v
pushloc.v local.cagesama
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.cagesama
pushi.e -9
push.v [stacktop]self.x
pushi.e 280
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.cagesamb
pushi.e 1193
pushloc.v local.cagesamb
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 500000
pushloc.v local.cagesamb
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 103
conv.i.v
pushloc.v local.cagesama
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.cagesama
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.cageking
pushi.e 1222
pushloc.v local.cageking
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.cagesama
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
sub.i.v
pushloc.v local.cageking
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 103
conv.i.v
pushloc.v local.cagesamb
pushi.e -9
push.v [stacktop]self.y
pushloc.v local.cagesamb
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.cageanimal
pushi.e 1221
pushloc.v local.cageanimal
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.cagesamb
pushi.e -9
push.v [stacktop]self.depth
pushi.e 10
add.i.v
pushloc.v local.cageanimal
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 110
conv.i.v
pushi.e 260
conv.i.v
pushi.e 60
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.checkers
pushi.e 1629
pushloc.v local.checkers
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.checkers
pushi.e -9
pushenv [2]

:[1]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [5]

:[3]
pushi.e -5
pushi.e 301
push.v [array]self.flag
pushi.e 2
cmp.i.v EQ
bt [5]

:[4]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
b [6]

:[5]
push.e 1

:[6]
bf [end]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[end]