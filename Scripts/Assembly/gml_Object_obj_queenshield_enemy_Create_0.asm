.localvar 2 arguments

:[0]
push.v 574.depth
pushi.e 1
sub.i.v
pop.v.v self.depth
push.i 32768
pop.v.i self.image_blend
push.d 0.9
pop.v.d self.image_alpha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_angle
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.appeartimer
pushi.e 0
pop.v.i self.hurtsfxtimer
pushi.e 0
pop.v.i self.hurtsfxcon
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.createeffect
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.turn
pushi.e 0
pop.v.i self.shieldsiner
pushi.e 0
pop.v.i self.shieldstate
pushi.e 0
pop.v.i self.shieldtimer
pushi.e 0
pop.v.i self.appearcon
pushi.e 510
pop.v.i self.queenhandx
pushi.e 115
pop.v.i self.queenhandy
push.v self.x
pop.v.v self.idealx
pushi.e 0
pop.v.i self.shieldhurt
pushi.e 0
pop.v.i self.shieldhurttimer
pushi.e 0
pop.v.i self.shieldx
pushi.e 0
pop.v.i self.shieldy
pushi.e 1
pop.v.i self.shieldalpha
push.v self.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v self.shieldheight
pushi.e 0
pop.v.i self.shieldhpgradual
pushi.e 0
pop.v.i self.imabouttobreak
push.d 0.4
pop.v.d self.imabouttobreak_alpha
pushi.e 0
pop.v.i self.imabouttobreak_siner
pushi.e 0
pop.v.i self.shaketimer
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.movetype
pushi.e 0
pop.v.i self.movecon
pushi.e 0
pop.v.i self.movepiece
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.destroycon
pushi.e 0
pop.v.i self.destroytimer
push.v 574.shieldsize
pop.v.v self.shieldsize
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 14
cmp.i.v LT
bf [9]

:[2]
push.i 171109
setowner.e
push.v self.x
pushi.e 39
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_x_origin
push.v self.shieldsize
pushi.e 7
cmp.i.v EQ
bf [4]

:[3]
push.i 171110
setowner.e
push.v self.y
pushi.e 135
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y_origin

:[4]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [6]

:[5]
push.v self.y
pushi.e 135
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y_origin

:[6]
push.v self.shieldsize
pushi.e 12
cmp.i.v EQ
bf [8]

:[7]
push.v self.y
pushi.e 135
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y_origin

:[8]
push.i 171111
setowner.e
push.v self.x
pushi.e 39
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_x
push.i 171112
setowner.e
push.v self.y
pushi.e 135
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y
push.i 171113
setowner.e
push.v self.y
pushi.e 135
add.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_y_save
push.i 171114
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_visible
push.i 171115
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_xscale
push.i 171116
setowner.e
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_yscale
push.i 171117
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_alpha
push.i 171118
setowner.e
pushi.e 1896
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_sprite_index
push.i 171119
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_image_index
push.i 171120
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_fadetimer
push.i 171121
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.shieldpiece_fadecon
push.i 171122
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.depthorder
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[9]
push.v self.shieldsize
pushi.e 7
cmp.i.v EQ
bf [11]

:[10]
push.i 171123
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.moveorder
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.moveorder
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.moveorder
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.moveorder
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.moveorder
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.moveorder
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.moveorder
push.i 171118
setowner.e
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_sprite_index

:[11]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [13]

:[12]
push.i 171123
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.moveorder
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.moveorder
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.moveorder
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.moveorder
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.moveorder
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.moveorder
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.moveorder
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.moveorder
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.moveorder
pushi.e 9
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.moveorder
push.i 171118
setowner.e
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_sprite_index

:[13]
push.v self.shieldsize
pushi.e 12
cmp.i.v EQ
bf [15]

:[14]
push.i 171123
setowner.e
pushi.e 4
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.moveorder
pushi.e 3
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.moveorder
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.moveorder
pushi.e 5
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.moveorder
pushi.e 6
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.moveorder
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.moveorder
pushi.e 7
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.moveorder
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.moveorder
pushi.e 8
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.moveorder
pushi.e 9
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.moveorder
pushi.e 10
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.moveorder
pushi.e 11
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.moveorder
push.i 171118
setowner.e
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 12
pop.v.v [array]self.shieldpiece_sprite_index
pushi.e 3229
conv.i.v
pushi.e -1
pushi.e 13
pop.v.v [array]self.shieldpiece_sprite_index

:[15]
push.v self.shieldsize
pushi.e 7
cmp.i.v EQ
bf [17]

:[16]
push.i 171119
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_image_index
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_image_index

:[17]
push.v self.shieldsize
pushi.e 10
cmp.i.v EQ
bf [19]

:[18]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_image_index
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_image_index

:[19]
push.v self.shieldsize
pushi.e 12
cmp.i.v EQ
bf [end]

:[20]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 6
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 7
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 8
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 9
pop.v.v [array]self.shieldpiece_image_index
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 10
pop.v.v [array]self.shieldpiece_image_index
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 11
pop.v.v [array]self.shieldpiece_image_index

:[end]