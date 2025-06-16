.localvar 2 arguments

:[0]
call.i draw_get_alpha(argc=0)
pop.v.v self.alphaprev
push.v self.alpha
call.i draw_set_alpha(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.quality
push.v self.widthC
push.v self.radCurrent
push.v self.y
push.v self.x
call.i gml_Script_scr_draw_circle_width_qb(argc=5)
popz.v
push.v self.alphaprev
call.i draw_set_alpha(argc=1)
popz.v

:[end]