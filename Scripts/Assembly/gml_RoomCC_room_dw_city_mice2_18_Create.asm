.localvar 2 arguments

:[0]
push.s "toilet"@14157
pop.v.s self.extflag
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 0
cmp.i.v NEQ
bf [2]

:[1]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bt [5]

:[4]
pushglb.v global.plot
pushi.e 120
cmp.i.v LT
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[8]
pushi.e 2687
pop.v.i self.sprite_index
push.v self.id
call.i gml_Script_scr_darksize(argc=1)
popz.v
call.i gml_Script_scr_depth(argc=0)
popz.v
pushi.e 105
pushenv [11]

:[9]
push.v self.sprite_index
pushi.e 2687
cmp.i.v NEQ
bf [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [9]
pushi.e 1185
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1186
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1187
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1182
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "SPRITES_Decor"@14158
conv.s.v
call.i layer_get_id(argc=1)
call.i layer_set_visible(argc=2)
popz.v
pushi.e 1167
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 1166
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v

:[end]