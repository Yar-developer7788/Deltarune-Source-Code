.localvar 2 arguments
.localvar 14707 _cut 6470

:[0]
push.v self.sprite_index
pushi.e 2003
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.destroyable
pushi.e 1
cmp.i.v EQ
bf [18]

:[3]
push.v self.hitshot
pushi.e -9
push.v [stacktop]self.big
pushi.e 0
cmp.i.v EQ
bf [7]

:[4]
push.v self.hitshot
pushi.e -9
pushenv [6]

:[5]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[6]
popenv [5]

:[7]
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [15]

:[8]
pushi.e 39
pushenv [11]

:[9]
push.v self.wallnumber
push.v other.wallnumber
cmp.v.v EQ
bf [11]

:[10]
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
pop.v.v local._cut
pushi.e 1
pushloc.v local._cut
pushi.e -9
pop.v.b [stacktop]self.flash
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [9]
pushi.e 23
pushenv [14]

:[12]
push.v self.wallnumber
push.v other.wallnumber
cmp.v.v EQ
bf [14]

:[13]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [12]

:[15]
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
pushenv [17]

:[16]
pushi.e 1972
pop.v.i self.sprite_index

:[17]
popenv [16]
b [end]

:[18]
push.v self.hitshot
pushi.e -9
pushenv [20]

:[19]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[20]
popenv [19]
pushi.e 40
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v

:[end]