.localvar 2 arguments
.localvar 31069 swatchling_npc_a 16279
.localvar 31070 swatchling_npc_b 16280

:[0]
pushglb.v global.plot
pushi.e 101
cmp.i.v GTE
bf [2]

:[1]
pushi.e 99
conv.i.v
b [3]

:[2]
pushi.e 0
conv.i.v

:[3]
pop.v.v self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.lancerfade
pushi.e 0
pop.v.i self.fadetimer
pushi.e -1
pop.v.i self.krisdoor
pushi.e -1
pop.v.i self.berdlydoor
pushi.e 0
pop.v.b self.krisdoor_open
pushi.e 0
pop.v.i self.krisdoor_open_timer
pushi.e 0
pop.v.b self.susie_heal
pushi.e 0
pop.v.i self.heal_timer
pushi.e -1
pop.v.i self.heal_beam
pushi.e 0
pop.v.b self.berdly_door_open
pushi.e 0
pop.v.b self.berdly_door_close
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [5]

:[4]
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
pushglb.v global.plot
pushi.e 120
cmp.i.v GTE
bf [11]

:[6]
pushi.e 109
conv.i.v
pushi.e 165
conv.i.v
pushi.e 1335
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swatchling_npc_a
pushloc.v local.swatchling_npc_a
pushi.e -9
pushenv [8]

:[7]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.yellow
pop.v.v self.current_pal

:[8]
popenv [7]
pushi.e 109
conv.i.v
pushi.e 165
conv.i.v
pushi.e 1055
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.swatchling_npc_b
pushloc.v local.swatchling_npc_b
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.orange
pop.v.v self.current_pal

:[10]
popenv [9]
b [end]

:[11]
pushglb.v global.plot
pushi.e 101
cmp.i.v GTE
bf [end]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[end]