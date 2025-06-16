.localvar 2 arguments

:[0]
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e 0
pop.v.i self.colcol
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.made
pushi.e 0
pop.v.i self.adjust
pushi.e 0
pop.v.i self.imageanimator
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.v self.y
pushi.e 260
add.i.v
pop.v.v self.y
pushi.e 277
conv.i.v
call.i instance_deactivate_object(argc=1)
popz.v
pushi.e 82
pushenv [2]

:[1]
pushi.e 0
pop.v.i self.visible

:[2]
popenv [1]
pushi.e 1
pop.v.b self.draw_kris
pushi.e -4
pop.v.i self.sneo
pushi.e -5
pushi.e 34
push.v [array]self.tempflag
pushi.e 1
cmp.i.v EQ
pop.v.b self.shortened
pushi.e 0
pop.v.b self.sneo_fall_sfx
pushi.e 0
pop.v.i self.sneo_fall_timer
pushi.e 191
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fin
push.v self.shortened
conv.v.b
bf [4]

:[3]
push.d -0.5
conv.d.v
b [5]

:[4]
push.d -0.005
conv.d.v

:[5]
push.v self.fin
pushi.e -9
pop.v.v [stacktop]self.fadespeed
pushi.e 0
pop.v.b self.debug_skip_battle
pushi.e 10
pop.v.i self.depth
pushi.e 1
pop.v.b self.draw_fountain
pushi.e 0
pop.v.i self.forcend
pushi.e 0
pop.v.i self.savekrisx

:[end]