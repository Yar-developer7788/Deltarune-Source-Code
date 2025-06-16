.localvar 2 arguments
.localvar 24135 addvalue 11124

:[0]
push.v self.state
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
push.d 0.5
conv.d.v
call.i gml_Script_scr_enemyhurt_tired_after_damage(argc=1)
popz.v
call.i gml_Script_scr_enemy_drawhurt_generic(argc=0)
popz.v

:[2]
push.v self.stop_anim
pushi.e 0
cmp.i.v EQ
bf [7]

:[3]
push.v self.siner_timer
push.v self.image_speed
add.v.v
pop.v.v self.siner_timer
push.v self.siner_timer
pushi.e 1
cmp.i.v GTE
bf [5]

:[4]
push.v self.siner_timer
pushi.e 1
sub.i.v
pop.v.v self.siner_timer
push.v self.siner
pushi.e 8
add.i.v
pop.v.v self.siner

:[5]
push.v self.siner
pushi.e 34
conv.i.d
push.v self.m
div.v.d
div.v.v
call.i sin(argc=1)
pushi.e 4
conv.i.d
push.v self.m
div.v.d
div.v.v
pop.v.v local.addvalue
pushloc.v local.addvalue
call.i abs(argc=1)
push.d 0.2
cmp.d.v GTE
bf [7]

:[6]
push.v self.anim_timer_2
pushloc.v local.addvalue
add.v.v
pop.v.v self.anim_timer_2

:[7]
push.v self.state
pushi.e 0
cmp.i.v EQ
bf [11]

:[8]
push.v self.fsiner
pushi.e 1
add.i.v
pop.v.v self.fsiner
push.v self.stop_anim
pushi.e 0
cmp.i.v EQ
bf [10]

:[9]
push.v self.y
push.v self.x
push.v self.anim_timer_2
push.v self.idlesprite
call.i gml_Script_draw_monster_body_part(argc=4)
popz.v
b [11]

:[10]
call.i draw_self(argc=0)
popz.v

:[11]
push.v self.becomeflash
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.flash

:[13]
pushi.e 0
pop.v.i self.becomeflash

:[end]