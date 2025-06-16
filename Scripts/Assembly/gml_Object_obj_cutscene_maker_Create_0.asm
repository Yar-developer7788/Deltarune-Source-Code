.localvar 2 arguments

:[0]
pushi.e 40
pop.v.i self.grid_snap
pushi.e 1
pop.v.i self.grid_mode
pushi.e 1
pop.v.i self.move_mode
pushi.e 1
pop.v.i self.actor_amount
pushi.e 0
pop.v.i self.actor_selected
pushi.e 0
pop.v.i self.hover_x
pushi.e 0
pop.v.i self.hover_y
pushi.e 0
pop.v.i self.step_current
pushi.e 0
pop.v.i self.step_max
pushi.e 0
pop.v.i self.make_effect_timer
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
push.i 172916
setowner.e
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_startx
pushi.e 0
popaf.e
push.i 172917
setowner.e
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_starty
pushi.e 0
popaf.e
push.i 172918
setowner.e
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_endx
pushi.e 0
popaf.e
push.i 172919
setowner.e
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_endy
pushi.e 0
popaf.e
push.i 172920
setowner.e
push.s "d"@6706
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_startfacing
pushi.e 0
popaf.e
push.i 172921
setowner.e
push.s "d"@6706
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_endfacing
pushi.e 0
popaf.e
push.i 172922
setowner.e
pushi.e 990
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_startsprite
pushi.e 0
popaf.e
push.i 172923
setowner.e
pushi.e 990
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_endsprite
pushi.e 0
popaf.e
push.i 172924
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_image
pushi.e 0
popaf.e
push.i 172925
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_animation_speed
pushi.e 0
popaf.e
push.i 172926
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_time
pushi.e 0
popaf.e
push.i 172927
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_visible
pushi.e 0
popaf.e
push.i 172928
setowner.e
pushi.e 1
pushglb.v global.darkzone
add.v.i
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_scale
pushi.e 0
popaf.e
push.i 172929
setowner.e
push.s "cardinal"@29885
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_move_style
pushi.e 0
popaf.e
push.i 166683
setowner.e
push.s "su"@71
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.actor_name
push.i 172930
setowner.e
push.s "d"@6706
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_cardinal
pushi.e 0
popaf.e
push.i 172931
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_cardinal_speed
pushi.e 0
popaf.e
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
push.i 172927
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
push.v [arraypopaf]self.actor_visible
pushi.e 0
popaf.e

:[end]