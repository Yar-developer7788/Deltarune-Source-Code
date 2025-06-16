.localvar 2 arguments
.localvar 107 i 2347

:[0]
b [45]

> gml_Script_scr_cutscene_loadstate (locals=1, argc=0)
:[1]
push.s "Cutscene Loaded"@10219
conv.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
pushi.e 20
cmp.i.v LT
bf [9]

:[3]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.actor_id
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [8]

:[4]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.actorSaved
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.actor_id
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_instance_load_local_vars(argc=0)
popz.v

:[7]
popenv [6]

:[8]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[9]
pushi.e 0
pop.v.i local.i

:[10]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [17]

:[11]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.save_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [16]

:[12]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.objectSaved
pushi.e 1
cmp.i.v EQ
bf [16]

:[13]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.save_object
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_instance_load_local_vars(argc=0)
popz.v

:[15]
popenv [14]

:[16]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [10]

:[17]
pushi.e 0
pop.v.i local.i

:[18]
pushloc.v local.i
push.v self.masterArray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [20]

:[19]
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.myVar
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.masterArray
push.v self.id
call.i variable_instance_set(argc=3)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [18]

:[20]
push.v self.remCameraX
call.i gml_Script_camerax_set(argc=1)
popz.v
push.v self.remCameraY
call.i gml_Script_cameray_set(argc=1)
popz.v
pushi.e 189
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 894
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 923
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
pushi.e 231
pushenv [28]

:[27]
call.i instance_destroy(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 193
pushenv [30]

:[29]
call.i instance_destroy(argc=0)
popz.v

:[30]
popenv [29]
pushi.e 63
pushenv [32]

:[31]
call.i instance_destroy(argc=0)
popz.v

:[32]
popenv [31]
pushi.e 64
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
pushi.e 61
pushenv [36]

:[35]
call.i instance_destroy(argc=0)
popz.v

:[36]
popenv [35]
pushi.e 899
pushenv [38]

:[37]
call.i instance_destroy(argc=0)
popz.v

:[38]
popenv [37]
pushi.e 922
pushenv [40]

:[39]
call.i instance_destroy(argc=0)
popz.v

:[40]
popenv [39]
pushi.e 925
pushenv [42]

:[41]
call.i instance_destroy(argc=0)
popz.v

:[42]
popenv [41]
pushi.e 924
pushenv [44]

:[43]
call.i instance_destroy(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 1
pop.v.i self.loadedState
pushi.e 0
pop.v.i self.waiting
call.i gml_Script_scr_cutscene_master_commands_initialize(argc=0)
popz.v
exit.i

:[45]
push.i [function]gml_Script_scr_cutscene_loadstate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_cutscene_loadstate
popz.v

:[end]