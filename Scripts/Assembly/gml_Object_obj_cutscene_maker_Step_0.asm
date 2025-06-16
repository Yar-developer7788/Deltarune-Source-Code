.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.newstep
pushbltn.v builtin.mouse_x
pop.v.v self.hover_x
pushbltn.v builtin.mouse_y
pop.v.v self.hover_y
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypushaf]self.actor_startx
push.v self.step_current
conv.v.i
pushaf.e
pop.v.v self._asx
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypushaf]self.actor_starty
push.v self.step_current
conv.v.i
pushaf.e
pop.v.v self._asy
push.v self._asy
push.v self._asx
push.v self.hover_y
push.v self.hover_x
call.i point_direction(argc=4)
pop.v.v self.dir_from_actor
push.v self.dir_from_actor
call.i gml_Script_scr_get_cardinal_direction(argc=1)
pop.v.v self.thiscardinal
push.v self.move_mode
pushi.e 1
cmp.i.v EQ
bf [12]

:[1]
push.i 172929
setowner.e
push.s "cardinal"@29885
conv.s.v
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypopaf]self.actor_move_style
push.v self.step_current
conv.v.i
popaf.e
push.v self.thiscardinal
push.s "d"@6706
cmp.s.v EQ
bt [3]

:[2]
push.v self.thiscardinal
push.s "u"@6708
cmp.s.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v self._asx
pop.v.v self.hover_x

:[6]
push.v self.thiscardinal
push.s "r"@6696
cmp.s.v EQ
bt [8]

:[7]
push.v self.thiscardinal
push.s "l"@6707
cmp.s.v EQ
b [9]

:[8]
push.e 1

:[9]
bf [11]

:[10]
push.v self._asy
pop.v.v self.hover_y

:[11]
push.i 172930
setowner.e
push.v self.thiscardinal
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypopaf]self.actor_cardinal
push.v self.step_current
conv.v.i
popaf.e
b [13]

:[12]
push.i 172929
setowner.e
push.s "direct"@29892
conv.s.v
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypopaf]self.actor_move_style
push.v self.step_current
conv.v.i
popaf.e

:[13]
push.v self.grid_mode
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
push.v self.hover_x
pushi.e 20
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 20
mul.i.v
pop.v.v self.hover_x
push.v self.hover_y
pushi.e 20
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 20
mul.i.v
pop.v.v self.hover_y

:[15]
pushi.e 49
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [18]

:[16]
push.v self.actor_selected
pushi.e 0
cmp.i.v GT
bf [18]

:[17]
push.v self.actor_selected
push.e 1
sub.i.v
pop.v.v self.actor_selected

:[18]
pushi.e 50
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [21]

:[19]
push.v self.actor_selected
pushi.e 8
cmp.i.v LT
bf [21]

:[20]
push.v self.actor_selected
push.e 1
add.i.v
pop.v.v self.actor_selected

:[21]
pushi.e 77
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [23]

:[22]
push.i 172916
setowner.e
pushbltn.v builtin.mouse_x
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypopaf]self.actor_startx
push.v self.step_current
conv.v.i
popaf.e
push.i 172917
setowner.e
pushbltn.v builtin.mouse_y
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypopaf]self.actor_starty
push.v self.step_current
conv.v.i
popaf.e

:[23]
pushi.e 73
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [25]

:[24]
push.i 172923
setowner.e
pushi.e 990
conv.i.v
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypopaf]self.actor_endsprite
push.v self.step_current
conv.v.i
popaf.e

:[25]
pushi.e 1
conv.i.v
call.i mouse_check_button_pressed(argc=1)
conv.v.b
bf [27]

:[26]
push.i 172918
setowner.e
push.v self.hover_x
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypopaf]self.actor_endx
push.v self.step_current
conv.v.i
popaf.e
push.i 172919
setowner.e
push.v self.hover_y
pushi.e -1
push.v self.actor_selected
conv.v.i
push.v [arraypopaf]self.actor_endy
push.v self.step_current
conv.v.i
popaf.e

:[27]
pushi.e 78
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [29]

:[28]
pushi.e 1
pop.v.i self.newstep

:[29]
push.v self.newstep
pushi.e 1
cmp.i.v EQ
bf [34]

:[30]
push.v self.step_max
pushi.e 1
add.i.v
pop.v.v self.step_max
push.v self.step_max
pop.v.v self.step_current
pushi.e 0
pop.v.i self.i

:[31]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [33]

:[32]
push.i 172916
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endx
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_startx
push.v self.step_max
conv.v.i
popaf.e
push.i 172917
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endy
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_starty
push.v self.step_max
conv.v.i
popaf.e
push.i 172918
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endx
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_endx
push.v self.step_max
conv.v.i
popaf.e
push.i 172919
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endy
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_endy
push.v self.step_max
conv.v.i
popaf.e
push.i 172920
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endfacing
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_startfacing
push.v self.step_max
conv.v.i
popaf.e
push.i 172921
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endfacing
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_endfacing
push.v self.step_max
conv.v.i
popaf.e
push.i 172922
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endsprite
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_startsprite
push.v self.step_max
conv.v.i
popaf.e
push.i 172923
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endsprite
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_endsprite
push.v self.step_max
conv.v.i
popaf.e
push.i 172924
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_image
push.v self.step_max
conv.v.i
popaf.e
push.i 172925
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_animation_speed
push.v self.step_max
conv.v.i
popaf.e
push.i 172926
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_time
push.v self.step_max
conv.v.i
popaf.e
push.i 172927
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_visible
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_visible
push.v self.step_max
conv.v.i
popaf.e
push.i 172929
setowner.e
push.s "cardinal"@29885
conv.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_move_style
push.v self.step_max
conv.v.i
popaf.e
push.i 172930
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_cardinal
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_cardinal
push.v self.step_max
conv.v.i
popaf.e
push.i 172931
setowner.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_cardinal_speed
push.v self.step_max
pushi.e 1
sub.i.v
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypopaf]self.actor_cardinal_speed
push.v self.step_max
conv.v.i
popaf.e
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [31]

:[33]
pushi.e 0
pop.v.i self.newstep

:[34]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[35]
push.s ""@157
pop.v.s self.totalstring
pushi.e 0
pop.v.i self.j

:[36]
push.v self.j
push.v self.step_max
cmp.v.v LT
bf [56]

:[37]
pushi.e 0
pop.v.i self.i

:[38]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [55]

:[39]
push.s "\""@14552
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.actor_name
call.i string(argc=1)
add.v.s
push.s "\""@14552
add.s.v
pop.v.v self.this_actor_name
push.s "c_sel("@29810
push.v self.this_actor_name
add.v.s
push.s ")#"@29894
add.s.v
pop.v.v self.this_action_string_head
push.s ""@157
pop.v.s self.this_action_string_foot
pushi.e 0
pop.v.i self.action
pushi.e 0
pop.v.i self.actor_moved
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_startx
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
cmp.v.v NEQ
bf [41]

:[40]
pushi.e 1
pop.v.i self.actor_moved

:[41]
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
push.v [arraypushaf]self.actor_endy
push.v self.j
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [43]

:[42]
pushi.e 1
pop.v.i self.actor_moved

:[43]
push.v self.actor_moved
pushi.e 1
cmp.i.v EQ
bf [48]

:[44]
pushi.e 1
pop.v.i self.action
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_move_style
push.v self.j
conv.v.i
pushaf.e
push.s "cardinal"@29885
cmp.s.v EQ
bf [46]

:[45]
push.v self.this_action_string_foot
push.s "c_walk("@29898
push.v self.this_actor_name
add.v.s
push.s ","@6157
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_cardinal
push.v self.j
conv.v.i
pushaf.e
add.v.v
push.s ","@6157
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_cardinal_speed
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
add.v.v
push.s ","@6157
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_time
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
add.v.v
push.s ")#"@29894
add.s.v
add.v.v
pop.v.v self.this_action_string_foot

:[46]
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_move_style
push.v self.j
conv.v.i
pushaf.e
push.s "direct"@29892
cmp.s.v EQ
bf [48]

:[47]
push.v self.this_action_string_foot
push.s "c_walktopoint("@29899
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endx
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
add.v.s
push.s ","@6157
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endy
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
add.v.v
push.s ","@6157
add.s.v
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_time
push.v self.j
conv.v.i
pushaf.e
call.i string(argc=1)
add.v.v
push.s ")#"@29894
add.s.v
add.v.v
pop.v.v self.this_action_string_foot

:[48]
pushi.e 0
pop.v.i self.actor_faced
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_startfacing
push.v self.j
conv.v.i
pushaf.e
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endfacing
push.v self.j
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [50]

:[49]
pushi.e 1
pop.v.i self.actor_faced

:[50]
push.v self.actor_faced
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushi.e 1
pop.v.i self.action
push.v self.this_action_string_foot
push.s "c_face(\""@29901
pushi.e -1
push.v self.i
conv.v.i
push.v [arraypushaf]self.actor_endfacing
push.v self.j
conv.v.i
pushaf.e
add.v.s
push.s "\""@14552
add.s.v
push.s ")#"@29894
add.s.v
add.v.v
pop.v.v self.this_action_string_foot

:[52]
push.v self.action
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
push.v self.totalstring
push.v self.this_action_string_head
push.v self.this_action_string_foot
add.v.v
add.v.v
pop.v.v self.totalstring

:[54]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [38]

:[55]
push.v self.j
push.e 1
add.i.v
pop.v.v self.j
b [36]

:[56]
push.v self.totalstring
call.i clipboard_set_text(argc=1)
popz.v

:[end]