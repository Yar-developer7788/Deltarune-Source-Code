.localvar 2 arguments

:[0]
pushi.e 1313
pop.v.i self.sprite_index
push.s "block"@14155
pop.v.s self.extflag
pushi.e -5
pushi.e 379
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]