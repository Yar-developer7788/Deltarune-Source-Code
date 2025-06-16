.localvar 2 arguments

:[0]
push.v self.id
call.i gml_Script_scr_darksize(argc=1)
popz.v
pushi.e 1530
pop.v.i self.sprite_index
push.d 0.25
pop.v.d self.image_speed
pushi.e 739
pop.v.i 375.sprite_index
pushi.e 0
pop.v.b 375.visible

:[end]