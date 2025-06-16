.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.krisexplore
pushi.e 0
pop.v.i self.punchcon
pushi.e 0
pop.v.i self.punchtimer
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [3]

:[1]
pushglb.v global.plot
pushi.e 205
cmp.i.v LT
bt [3]

:[2]
pushglb.v global.plot
pushi.e 210
cmp.i.v GTE
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[6]
call.i gml_Script_scr_losechar(argc=0)
popz.v
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
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 105
conv.i.v
pushi.e 95
conv.i.v
pushi.e 289
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.susienpc
pushi.e 854
push.v self.susienpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.susienpc
pushi.e -9
pop.v.i [stacktop]self.visible
pushi.e 105
conv.i.v
pushi.e 88
conv.i.v
pushi.e 263
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.torielnpc
pushi.e 894
push.v self.torielnpc
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.torielnpc
pushi.e -9
pop.v.i [stacktop]self.visible

:[end]