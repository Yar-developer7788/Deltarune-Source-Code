.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 171
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
call.i gml_Script_scr_tempsave(argc=0)
popz.v
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[7]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
push.i 16777215
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 0
pop.v.i self.pacifist_talk
pushi.e 105
conv.i.v
pushi.e 208
conv.i.v
pushi.e 174
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npc_ralsei
pushi.e 785
push.v self.npc_ralsei
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.npc_ralsei
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 105
conv.i.v
pushi.e 204
conv.i.v
pushi.e 234
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npc_susie
pushi.e 827
push.v self.npc_susie
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.npc_susie
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 105
conv.i.v
pushi.e 200
conv.i.v
pushi.e 295
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npc_noelle
pushi.e 718
push.v self.npc_noelle
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.npc_noelle
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 105
conv.i.v
pushi.e 212
conv.i.v
pushi.e 353
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.npc_berdly
pushi.e 333
push.v self.npc_berdly
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.npc_berdly
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 0
pop.v.b self.berdly_power_up_start
pushi.e 0
pop.v.b self.berdly_power_up
pushi.e 0
pop.v.b self.berdly_power_up_cancel
pushi.e 0
pop.v.b self.static_queen
pushi.e 0
pop.v.b self.static_queen_stop
pushi.e 0
pop.v.b self.shake_hand
pushi.e 0
pop.v.b self.queen_surprised
pushi.e 0
pop.v.b self.queen_laugh_start
pushi.e 0
pop.v.b self.queen_laugh_stop
pushi.e 0
pop.v.b self.queen_leave
pushi.e 0
pop.v.b self.hand_release
pushi.e 0
pop.v.b self.hand_leave
pushi.e 1
pop.v.b self.su_struggle
pushi.e 0
pop.v.b self.su_shocked
pushi.e 0
pop.v.b self.su_look_left
pushi.e 0
pop.v.b self.su_look_right
pushi.e 0
pop.v.b self.su_grin_1
pushi.e 0
pop.v.b self.su_grin_2
pushi.e 0
pop.v.b self.su_squint_1
pushi.e 0
pop.v.b self.su_squint_2
pushi.e 0
pop.v.b self.su_concerned
pushi.e 1
pop.v.b self.ra_struggle
pushi.e 0
pop.v.b self.ra_huh
pushi.e 0
pop.v.b self.ra_look
pushi.e 0
pop.v.b self.ra_smile
pushi.e 0
pop.v.b self.ra_scared
pushi.e 0
pop.v.b self.ra_stern
pushi.e 0
pop.v.b self.ra_mu
pushi.e 0
pop.v.b self.ra_shake
pushi.e 0
pop.v.b self.tender_goodbye
pushi.e 0
pop.v.b self.tender_cancel
pushi.e 0
pop.v.b self.tender_finish
pushi.e 0
pop.v.b self.noelle_qs
pushi.e 0
pop.v.b self.susie_qs
pushi.e 0
pop.v.b self.kris_qs
pushi.e 0
pop.v.b self.berdly_qs
pushi.e 0
pop.v.i self.set_queen_voice
pushi.e 0
pop.v.i self.queen_happy
pushi.e 0
pop.v.i self.queen_sad
pushi.e 0
pop.v.b self.hide_border
pushi.e 0
pop.v.b self.show_border

:[end]