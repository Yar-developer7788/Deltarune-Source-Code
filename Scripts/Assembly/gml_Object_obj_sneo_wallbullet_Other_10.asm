.localvar 2 arguments

:[0]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 110
add.i.v
cmp.v.v LT
bf [2]

:[1]
exit.i

:[2]
push.v self.y
call.i gml_Script_cameray(argc=0)
pushi.e 233
add.i.v
cmp.v.v GT
bf [4]

:[3]
exit.i

:[4]
push.v self.image_alpha
push.d 0.5
cmp.d.v LT
bf [6]

:[5]
exit.i

:[6]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [17]

:[10]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
bf [14]

:[11]
push.v self.hitshot
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[13]
popenv [12]

:[14]
push.d 1.1
push.d 0.2
conv.d.v
call.i random(argc=1)
add.v.d
pushi.e 142
conv.i.v
call.i gml_Script_snd_play_pitch(argc=2)
popz.v
call.i gml_Script_scr_afterimage_cut(argc=0)
popz.v
pushi.e 598
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.anim
push.v self.image_xscale
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.anim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.anim
pushi.e -9
pushenv [16]

:[15]
pushi.e 1972
pop.v.i self.sprite_index

:[16]
popenv [15]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[17]
push.v self.destroyable
pushi.e 0
cmp.i.v EQ
bf [19]

:[18]
push.v self.active
pushi.e 1
cmp.i.v EQ
b [20]

:[19]
push.e 0

:[20]
bf [end]

:[21]
push.v self.hitshot
pushi.e -9
pushenv [23]

:[22]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[23]
popenv [22]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]