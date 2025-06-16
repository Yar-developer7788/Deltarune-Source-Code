.localvar 2 arguments

:[0]
push.d 0.15
pop.v.d self.image_speed
call.i gml_Script_scr_enemy_object_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.sameattack
pushi.e 0
pop.v.i self.timer
push.l 348394839438
pop.v.l self.myspawner
pushi.e 0
pop.v.i self.spawntype

:[end]