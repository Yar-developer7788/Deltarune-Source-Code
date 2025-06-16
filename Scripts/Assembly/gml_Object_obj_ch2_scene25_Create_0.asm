.localvar 2 arguments
.localvar 32533 savepoint 16499

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.forceend2
pushi.e 0
pop.v.b self.shortened
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[2]
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bf [4]

:[3]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[4]
pushglb.v global.plot
pushi.e 165
cmp.i.v GTE
bf [13]

:[5]
pushi.e 127
conv.i.v
pushi.e 40
conv.i.v
pushi.e 905
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.savepoint
pushloc.v local.savepoint
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 105
conv.i.v
pushi.e 228
conv.i.v
pushi.e 895
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdlynpc
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [9]

:[8]
pushi.e 701
conv.i.v
b [10]

:[9]
pushi.e 703
conv.i.v

:[10]
push.v self.berdlynpc
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.berdlynpc
pushi.e -9
pushenv [12]

:[11]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[12]
popenv [11]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[13]
pushi.e 82
pushenv [15]

:[14]
pushi.e 26
pop.v.i self.x
pushi.e 246
pop.v.i self.y

:[15]
popenv [14]
pushi.e -5
pushi.e 31
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.b self.shortened

:[17]
pushi.e 105
conv.i.v
pushi.e 228
conv.i.v
pushi.e 895
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.berdlynpc
pushi.e -5
pushi.e 457
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 701
conv.i.v
b [20]

:[19]
pushi.e 703
conv.i.v

:[20]
push.v self.berdlynpc
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.berdlynpc
pushi.e -9
pushenv [22]

:[21]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[22]
popenv [21]
pushi.e 0
push.v self.berdlynpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.b self.berdly_npc_realign
pushi.e 0
pop.v.b self.berdly_full_spare

:[end]