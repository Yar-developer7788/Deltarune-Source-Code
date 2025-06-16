.localvar 2 arguments

:[0]
push.s "spr_ch2_cityscreen"@12029
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 12
conv.i.v
pushi.e 10
conv.i.v
pushi.e 8
conv.i.v
pushi.e 6
conv.i.v
pushi.e 4
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=7)
pop.v.v self.image_index
pushi.e 0
pop.v.i self.animtimer
pushi.e 0
pop.v.i self.frametimer
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 30
conv.i.v
call.i random(argc=1)
pop.v.v self.siner
pushi.e 0
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]