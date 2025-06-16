.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 631
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 1
pop.v.i self.wall_destroy
pushi.e 0
pop.v.i self.image_alpha
pushi.e 1
pop.v.i self.updateimageangle
pushi.e 0
pop.v.i self.popping
pushi.e 1
pop.v.i self.spawnVirus
pushi.e 0
pop.v.i self.countdown
pushi.e 0
pop.v.i self.infection
push.v self.sprite_index
pop.v.v self.targetsprite
push.v self.image_index
pop.v.v self.targetimage
push.v self.x
pop.v.v self.targetx
push.v self.y
pop.v.v self.targety
pushi.e 1
pop.v.b self.spawning
push.i 14438399
pop.v.i self.poisoncolor
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.infectTimer
pushi.e 1801
pop.v.i self.sprite_index
push.d 0.3333333333333333
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.virus_timer
pushi.e 0
pop.v.b self.active

:[end]