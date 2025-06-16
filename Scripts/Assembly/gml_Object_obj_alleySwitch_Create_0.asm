.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.toggle
pushi.e 0
pop.v.i self.keepdown
pushi.e 1
pop.v.b self.caterpillarable
call.i gml_Script_scr_depth(argc=0)
popz.v
push.v self.depth
pushi.e 1000
add.i.v
pop.v.v self.depth
pushi.e -5
pushi.e 383
push.v [array]self.flag
pop.v.v self.keeptoggled

:[end]