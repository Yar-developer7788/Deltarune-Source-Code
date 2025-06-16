.localvar 2 arguments

:[0]
pushglb.v global.turntimer
pushi.e 4
cmp.i.v GT
bf [end]

:[1]
call.i gml_Script_scr_afterimage_grow(argc=0)
pop.v.v self.bonk
pushi.e 2427
push.v self.bonk
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 142
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]