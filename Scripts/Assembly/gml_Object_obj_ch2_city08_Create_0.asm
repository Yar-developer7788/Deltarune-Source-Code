.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.weird
pushi.e -5
pushi.e 915
push.v [array]self.flag
pushi.e 6
cmp.i.v EQ
bf [2]

:[1]
pushi.e -5
pushi.e 916
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.b self.weird

:[5]
pushi.e 0
pop.v.i self.drawx
pushi.e 1
pop.v.b self.cityscape_parallax
pushi.e 0
pop.v.b self.circle_zoom_start
pushi.e -1
pop.v.i self.circle_zoom
pushi.e 0
pop.v.i self.circle_zoom_timer
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [7]

:[6]
pushglb.v global.plot
pushi.e 99
cmp.i.v GTE
b [8]

:[7]
push.e 1

:[8]
bf [10]

:[9]
pushi.e 999
pop.v.i self.con
b [end]

:[10]
push.v self.weird
pushi.e 0
cmp.b.v EQ
bf [end]

:[11]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 4
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v 82.y
pushi.e 16
sub.i.v
pushi.e 2
add.i.v
push.v 82.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 4
conv.i.v
push.v 82.y
pushi.e 20
sub.i.v
pushi.e 2
add.i.v
push.v 82.x
pushi.e 4
sub.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 2
conv.i.v
pushi.e 3
conv.i.v
push.v 82.y
pushi.e 12
sub.i.v
pushi.e 2
sub.i.v
push.v 82.x
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v

:[end]