.localvar 2 arguments
.localvar 12195 modifier 19457

:[0]
pushi.e 109
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[1]
pushi.e 109
pushenv [10]

:[2]
push.v self.image_xscale
pushi.e -2
cmp.i.v EQ
bf [4]

:[3]
pushi.e -100
pop.v.i local.modifier
b [5]

:[4]
pushi.e -36
pop.v.i local.modifier

:[5]
pushi.e 240
conv.i.v
push.v self.y
push.v self.x
pushloc.v local.modifier
add.v.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.newenem
push.v self.newenem
pushi.e -9
pushenv [9]

:[6]
pushi.e 56
pop.v.i self.myencounter
pushi.e 1254
pop.v.i self.sprite_index
push.v other.image_xscale
pushi.e -2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.facing

:[8]
pushi.e 1254
pop.v.i self.touchsprite
pushi.e 10000
pop.v.i self.radius
pushi.e 0
pop.v.i self.ignoresolid
pushi.e 0
pop.v.i self.alertcon
pushi.e 1
pop.v.i self.eraser
pushi.e 1
pop.v.i self.noAlertSound
pushi.e 0
pop.v.i self.frozen
pushi.e 0
pop.v.i self.offscreen_frozen

:[9]
popenv [6]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [2]
pushi.e 164
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[11]
pushi.e 2
pop.v.i self.spawnVase
pushi.e 1
pop.v.i self.triggered
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [end]

:[12]
pushi.e 0
pop.v.i global.interact

:[end]