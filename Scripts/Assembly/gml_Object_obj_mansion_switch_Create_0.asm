.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.flag
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
pushi.e 3089
pop.v.i self.sprite_index

:[2]
pushi.e -5
push.v self.flag
conv.v.i
push.v [array]self.flag
pop.v.v self.image_index
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]