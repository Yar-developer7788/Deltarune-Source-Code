.localvar 2 arguments

:[0]
push.i 890200
pop.v.i self.depth
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.hand1
pushi.e 0
pop.v.i self.hand2
pushi.e 0
pop.v.i self.coverup
pushi.e 0
pop.v.i self.bubbles
pushi.e 0
pop.v.i self.timer
pushi.e -5
pushi.e 343
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.con
pushi.e 129
conv.i.v
pushi.e 64
conv.i.v
pushi.e 264
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hand1
pushi.e 2894
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 1
push.v self.hand1
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e -2
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 3
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 890200
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 238
conv.i.v
pushi.e 184
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bubbles1
pushi.e 2902
push.v self.bubbles1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.bubbles1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bubbles1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.bubbles1
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 890100
push.v self.bubbles1
pushi.e -9
pop.v.i [stacktop]self.depth

:[2]
pushi.e -5
pushi.e 343
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 129
conv.i.v
pushi.e 64
conv.i.v
pushi.e 264
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hand1
pushi.e 2894
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 3
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 890200
push.v self.hand1
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 64
conv.i.v
pushi.e 499
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.hand2
pushi.e 2894
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e -2
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.image_index
push.i 890200
push.v self.hand2
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 238
conv.i.v
pushi.e 420
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bubbles1
pushi.e 2902
push.v self.bubbles1
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.bubbles1
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bubbles1
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.bubbles1
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 890100
push.v self.bubbles1
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 129
conv.i.v
pushi.e 238
conv.i.v
pushi.e 184
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.bubbles2
pushi.e 2902
push.v self.bubbles2
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 2
push.v self.bubbles2
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.bubbles2
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.d 0.25
push.v self.bubbles2
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.i 890100
push.v self.bubbles2
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 1160
conv.i.v
call.i gml_Script_safe_delete(argc=1)
popz.v
pushi.e 99
pop.v.i self.con

:[end]