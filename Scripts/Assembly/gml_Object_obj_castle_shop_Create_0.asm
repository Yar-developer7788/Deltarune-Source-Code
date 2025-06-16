.localvar 2 arguments

:[0]
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
pushi.e 3360
pop.v.i self.sprite_index

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]