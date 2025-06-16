.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.siner
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y_mask_pos
call.i gml_Script_scr_depth(argc=0)
popz.v

:[end]