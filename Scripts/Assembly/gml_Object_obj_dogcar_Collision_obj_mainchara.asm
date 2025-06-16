.localvar 2 arguments

:[0]
push.v self.mode
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 171
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 218
conv.i.v
call.i gml_Script_snd_stop(argc=1)
popz.v
pushi.e 218
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 128
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.doghit
pushi.e 2
push.v self.doghit
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.doghit
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 2427
push.v self.doghit
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.v self.x
pushi.e 48
add.i.v
pop.v.v self.x
pushi.e 873
conv.i.v
push.v 82.y
push.v 82.myheight
add.v.v
pushi.e 24
sub.i.v
push.v 82.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.dmgwriter
pushi.e 5
conv.i.v
pushi.e 4
conv.i.v
pushi.e 3
conv.i.v
pushi.e 2
conv.i.v
call.i choose(argc=4)
push.v self.dmgwriter
pushi.e -9
pop.v.v [stacktop]self.damage
pushi.e 0
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.type
pushi.e -100
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e -10
push.v self.dmgwriter
pushi.e -9
pop.v.i [stacktop]self.hspeed
pushi.e 1
pop.v.i global.interact
pushi.e 82
pushenv [3]

:[2]
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm

:[3]
popenv [2]
push.v self.fakedamage
pushi.e 4
add.i.v
pop.v.v self.fakedamage
push.v self.fakedamage
pushi.e 120
cmp.i.v GTE
bf [end]

:[4]
pushi.e 300
pushenv [6]

:[5]
pushi.e 2
pop.v.i self.con

:[6]
popenv [5]

:[end]