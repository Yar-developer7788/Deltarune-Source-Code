.localvar 2 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i self.con
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.blue
pushi.e 2
pop.v.i self.green
pushi.e 3
pop.v.i self.yellow
pushi.e 4
pop.v.i self.orange
pushi.e 5
pop.v.i self.red
push.v self.blue
pop.v.v self.current_pal
pushi.e 1818
pop.v.i self.sprite_palette
pushi.e 0
pop.v.b self.color_init
pushi.e 0
pop.v.i self.new_color
push.i 168476
setowner.e
push.v self.blue
pushi.e -1
pushi.e 0
pop.v.v [array]self.base_colors
push.v self.red
pushi.e -1
pushi.e 1
pop.v.v [array]self.base_colors
push.v self.yellow
pushi.e -1
pushi.e 2
pop.v.v [array]self.base_colors

:[end]