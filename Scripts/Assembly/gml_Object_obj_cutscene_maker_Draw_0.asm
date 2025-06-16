.localvar 2 arguments

:[0]
push.v self.make_effect_timer
push.e 1
add.i.v
pop.v.v self.make_effect_timer
push.v self.make_effect_timer
pushi.e 10
cmp.i.v GTE
bf [11]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [10]

:[3]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_visible
push.v self.step_current
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [9]

:[4]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_startx
push.v self.step_current
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endx
push.v self.step_current
conv.v.i
pushaf.e
cmp.v.v NEQ
bt [6]

:[5]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_starty
push.v self.step_current
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endy
push.v self.step_current
conv.v.i
pushaf.e
cmp.v.v NEQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e 893
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_starty
push.v self.step_current
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_startx
push.v self.step_current
conv.v.i
pushaf.e
call.i gml_Script_instance_create(argc=3)
pop.v.v self.fake_actor
push.d 0.5
push.v self.fake_actor
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endsprite
push.v self.step_current
conv.v.i
pushaf.e
push.v self.fake_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_time
push.v self.step_current
conv.v.i
pushaf.e
pushi.e 10
add.i.v
push.v self.fake_actor
pushi.e -9
pop.v.v [stacktop]self.debug_killtimer
pushi.e 923
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mover
push.v self.fake_actor
push.v self.mover
pushi.e -9
pop.v.v [stacktop]self.target
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endx
push.v self.step_current
conv.v.i
pushaf.e
push.v self.mover
pushi.e -9
pop.v.v [stacktop]self.movex
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endy
push.v self.step_current
conv.v.i
pushaf.e
push.v self.mover
pushi.e -9
pop.v.v [stacktop]self.movey
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_time
push.v self.step_current
conv.v.i
pushaf.e
push.v self.mover
pushi.e -9
pop.v.v [stacktop]self.movemax

:[9]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [2]

:[10]
pushi.e 0
pop.v.i self.make_effect_timer

:[11]
pushi.e 0
pop.v.i self.i

:[12]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [16]

:[13]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_visible
push.v self.step_current
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_startx
push.v self.step_current
conv.v.i
pushaf.e
pop.v.v self._asx
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_starty
push.v self.step_current
conv.v.i
pushaf.e
pop.v.v self._asy
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endx
push.v self.step_current
conv.v.i
pushaf.e
pop.v.v self._aex
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endy
push.v self.step_current
conv.v.i
pushaf.e
pop.v.v self._aey
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
pushglb.v global.darkzone
add.v.i
pushi.e 1
pushglb.v global.darkzone
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_starty
push.v self.step_current
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_startx
push.v self.step_current
conv.v.i
pushaf.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endsprite
push.v self.step_current
conv.v.i
pushaf.e
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
pushglb.v global.darkzone
add.v.i
pushi.e 1
pushglb.v global.darkzone
add.v.i
push.v self.hover_y
push.v self.hover_x
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endsprite
push.v self.step_current
conv.v.i
pushaf.e
call.i draw_sprite_ext(argc=9)
popz.v
pushbltn.v builtin.mouse_y
pushbltn.v builtin.mouse_x
pushi.e 0
conv.i.v
pushi.e 878
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endy
push.v self.step_current
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endx
push.v self.step_current
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_starty
push.v self.step_current
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_startx
push.v self.step_current
conv.v.i
pushaf.e
call.i draw_line(argc=4)
popz.v
push.i 16711935
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self._asy
pushi.e 5
add.i.v
push.v self._asx
pushi.e 10
add.i.v
push.v self._asy
pushi.e 5
sub.i.v
push.v self._asx
pushi.e 10
sub.i.v
call.i draw_ellipse(argc=5)
popz.v
push.i 16776960
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self._aey
pushi.e 5
add.i.v
push.v self._aex
pushi.e 10
add.i.v
push.v self._aey
pushi.e 5
sub.i.v
push.v self._aex
pushi.e 10
sub.i.v
call.i draw_ellipse(argc=5)
popz.v

:[15]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [12]

:[16]
pushi.e 0
pop.v.i self.j

:[17]
push.v self.j
push.v self.step_max
cmp.v.v LTE
bf [end]

:[18]
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [23]

:[20]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_visible
push.v self.j
conv.v.i
pushaf.e
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.d 0.5
conv.d.v
push.i 16711935
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
pushglb.v global.darkzone
add.v.i
pushi.e 1
pushglb.v global.darkzone
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_starty
push.v self.j
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_startx
push.v self.j
conv.v.i
pushaf.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endsprite
push.v self.j
conv.v.i
pushaf.e
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "main"@6173
conv.s.v
call.i gml_Script_scr_84_set_draw_font(argc=1)
popz.v
push.s "obj_cutscene_maker_slash_Draw_0_gml_60_0"@29906
conv.s.v
push.v self.j
call.i string(argc=1)
push.v self.i
call.i string(argc=1)
push.s "actor, ~1  step:~2"@29907
conv.s.v
call.i gml_Script_stringsetsubloc(argc=4)
call.i string_hash_to_newline(argc=1)
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endy
push.v self.j
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endx
push.v self.j
conv.v.i
pushaf.e
call.i draw_text(argc=3)
popz.v

:[22]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [19]

:[23]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [17]

:[end]