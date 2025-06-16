.localvar 2 arguments

:[0]
push.s "spr_battlemsg"@12030
conv.s.v
call.i gml_Script_scr_84_get_sprite(argc=1)
pop.v.v self.sprite_index
pushi.e 6
pop.v.i self.image_index
pushi.e 0
pop.v.i self.lerptimer
pushi.e 4
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.image_yscale
pushi.e -5
pop.v.i self.depth
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.firstnumber
pushi.e 1
pop.v.i self.secondnumber

:[end]