.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
call.i gml_Script_camerax(argc=0)
pushi.e 322
add.i.v
pop.v.v self.x1
call.i gml_Script_cameray(argc=0)
pushi.e 68
add.i.v
pop.v.v self.y1
call.i gml_Script_camerax(argc=0)
pushi.e 322
add.i.v
pop.v.v self.x2
call.i gml_Script_cameray(argc=0)
pushi.e 68
add.i.v
pop.v.v self.y2
push.v 936.kr_actor
pushi.e -9
push.v [stacktop]self.depth
pushi.e 2
add.i.v
pop.v.v self.depth
push.v 936.kr_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.kr_x_save
push.v 936.kr_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.kr_y_save
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.su_x_save
push.v 936.su_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.su_y_save
push.v 936.ra_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.ra_x_save
push.v 936.ra_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.ra_y_save
push.v 936.qu_actor
pushi.e -9
push.v [stacktop]self.x
pop.v.v self.qu_x_save
push.v 936.qu_actor
pushi.e -9
push.v [stacktop]self.y
pop.v.v self.qu_y_save
pushi.e 0
pop.v.i self.punch_r_timer
pushi.e 0
pop.v.i self.punch_l_timer
pushi.e 0
pop.v.i self.dodge_r_timer
pushi.e 0
pop.v.i self.dodge_l_timer
pushi.e 0
pop.v.i self.dodge_d_timer

:[end]