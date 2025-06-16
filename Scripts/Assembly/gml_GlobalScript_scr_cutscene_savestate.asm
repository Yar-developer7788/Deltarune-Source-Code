.localvar 2 arguments
.localvar 107 i 2338

:[0]
b [19]

> gml_Script_scr_cutscene_savestate (locals=1, argc=0)
:[1]
push.s "Cutscene Saved"@10206
conv.s.v
call.i gml_Script_scr_debug_print(argc=1)
popz.v
push.v self.id
call.i variable_instance_get_names(argc=1)
pop.v.v self.masterArray
pushi.e 0
pop.v.i local.i

:[2]
pushloc.v local.i
push.v self.masterArray
call.i array_length_1d(argc=1)
cmp.v.v LT
bf [4]

:[3]
push.i 29395804
setowner.e
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.masterArray
push.v self.id
call.i variable_instance_get(argc=2)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.myVar
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
call.i gml_Script_camerax(argc=0)
pop.v.v self.remCameraX
call.i gml_Script_cameray(argc=0)
pop.v.v self.remCameraY
pushi.e 0
pop.v.i local.i

:[5]
pushloc.v local.i
pushi.e 20
cmp.i.v LT
bf [11]

:[6]
push.i 29395807
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.actorSaved
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.actor_id
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [10]

:[7]
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.actorSaved
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.actor_id
pushi.e -9
pushenv [9]

:[8]
call.i gml_Script_scr_instance_save_local_vars(argc=0)
popz.v

:[9]
popenv [8]

:[10]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [5]

:[11]
pushi.e 0
pop.v.i local.i

:[12]
pushloc.v local.i
pushi.e 10
cmp.i.v LT
bf [18]

:[13]
push.i 29395808
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.objectSaved
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.save_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [17]

:[14]
pushi.e 1
conv.i.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.objectSaved
pushi.e -1
pushloc.v local.i
conv.v.i
push.v [array]self.save_object
pushi.e -9
pushenv [16]

:[15]
call.i gml_Script_scr_instance_save_local_vars(argc=0)
popz.v

:[16]
popenv [15]

:[17]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [12]

:[18]
exit.i

:[19]
push.i [function]gml_Script_scr_cutscene_savestate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_cutscene_savestate
popz.v

:[end]