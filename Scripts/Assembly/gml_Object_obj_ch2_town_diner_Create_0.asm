.localvar 2 arguments
.localvar 36072 tallhat 17462
.localvar 36073 aaron 17463
.localvar 36074 catti_mom 17464
.localvar 36075 catty_dad 17465
.localvar 3970 catti 17466
.localvar 36076 jo 17467
.localvar 36077 ficus 17468
.localvar 36078 diner_table 17469
.localvar 36079 seat_back 17470

:[0]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [6]

:[1]
pushi.e 276
pushenv [3]

:[2]
pushi.e 0
pop.v.i self.follow
pushi.e 0
pop.v.i self.visible

:[3]
popenv [2]
pushi.e 103
conv.i.v
pushi.e 95
conv.i.v
pushi.e 185
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.tallhat
pushi.e 1152
pushloc.v local.tallhat
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 95
conv.i.v
pushi.e 200
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.aaron
pushi.e 1157
pushloc.v local.aaron
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 110
conv.i.v
pushi.e 74
conv.i.v
pushi.e 36
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.catti_mom
pushi.e 1146
pushloc.v local.catti_mom
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.catti_mom
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 103
conv.i.v
pushi.e 120
conv.i.v
pushi.e 42
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.catty_dad
pushi.e 1147
pushloc.v local.catty_dad
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 110
conv.i.v
pushi.e 152
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.catti
pushi.e 1145
pushloc.v local.catti
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 4000
pushloc.v local.catti
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 103
conv.i.v
pushi.e 175
conv.i.v
pushi.e 240
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.jo
pushi.e 945
pushloc.v local.jo
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 103
conv.i.v
pushi.e 160
conv.i.v
pushi.e 55
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.ficus
pushi.e 1148
pushloc.v local.ficus
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2780
conv.i.v
pushi.e 172
conv.i.v
pushi.e 7
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.diner_table
pushloc.v local.ficus
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
pushloc.v local.diner_table
pushi.e -9
pop.v.v [stacktop]self.depth
pushi.e 2781
conv.i.v
pushi.e 212
conv.i.v
pushi.e 236
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v local.seat_back
pushloc.v local.jo
pushi.e -9
push.v [stacktop]self.depth
pushi.e 100
sub.i.v
pushloc.v local.seat_back
pushi.e -9
pop.v.v [stacktop]self.depth
b [end]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[end]