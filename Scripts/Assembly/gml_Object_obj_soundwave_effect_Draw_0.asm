.localvar 2 arguments
.localvar 24716 lerpvalue 13624
.localvar 26583 currentsize 13625
.localvar 19780 thickness 13626
.localvar 26584 oldColor 13627

:[0]
push.v self.timer
push.v self.growtime
div.v.v
pop.v.v local.lerpvalue
push.v self.easepower
pushloc.v local.lerpvalue
call.i gml_Script_scr_ease_out(argc=2)
push.v self.maxradius
push.v self.minradius
call.i lerp(argc=3)
pop.v.v local.currentsize
push.v self.easepower
pushloc.v local.lerpvalue
call.i gml_Script_scr_ease_out(argc=2)
push.v self.endwidth
push.v self.startwidth
call.i lerp(argc=3)
pop.v.v local.thickness
push.v self.timer
push.v self.growtime
push.v self.fadetime
sub.v.v
cmp.v.v GTE
bf [2]

:[1]
push.v self.fadetime
push.v self.timer
push.v self.growtime
push.v self.fadetime
sub.v.v
sub.v.v
sub.v.v
push.v self.fadetime
div.v.v
call.i draw_set_alpha(argc=1)
popz.v

:[2]
call.i draw_get_color(argc=0)
pop.v.v local.oldColor
push.v self.color
call.i draw_set_color(argc=1)
popz.v
pushi.e 30
conv.i.v
pushloc.v local.thickness
pushloc.v local.currentsize
push.v self.y
push.v self.x
call.i gml_Script_scr_draw_circle_width_qb(argc=5)
popz.v
pushi.e 1
conv.i.v
push.v self.color
push.v self.color
pushloc.v local.currentsize
push.v self.y
push.v self.x
call.i draw_circle_color(argc=6)
popz.v
pushloc.v local.oldColor
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
push.v self.growtime
cmp.v.v GT
bf [end]

:[3]
call.i instance_destroy(argc=0)
popz.v

:[end]