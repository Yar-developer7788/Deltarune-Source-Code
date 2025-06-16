.localvar 2 arguments
.localvar 14689 scale_w 18155
.localvar 14690 scale_h 18156

:[0]
pushi.e 0
pop.v.b self.loaded
pushi.e 0
pop.v.b self.border_fade_out
pushi.e 0
pop.v.b self.border_fade_in
pushi.e 0
pop.v.i self.border_alpha
push.d 0.025
pop.v.d self.border_fade_value
pushi.e 3224
pop.v.i self._border_image
call.i window_get_width(argc=0)
pop.v.v self.ww
call.i window_get_height(argc=0)
pop.v.v self.wh
pushbltn.v builtin.application_surface
call.i surface_get_width(argc=1)
pop.v.v self.sw
pushbltn.v builtin.application_surface
call.i surface_get_height(argc=1)
pop.v.v self.sh
push.v self.ww
push.v self.sw
div.v.v
pop.v.v local.scale_w
push.v self.wh
push.v self.sh
div.v.v
pop.v.v local.scale_h
pushi.e -1
pop.v.i self.screenshot
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [2]

:[1]
push.v self.wh
pushi.e 720
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.d 1.3333333333333333
pop.v.d global.window_scale
b [end]

:[5]
pushloc.v local.scale_h
pushloc.v local.scale_w
call.i min(argc=2)
call.i floor(argc=1)
pop.v.v global.window_scale

:[end]