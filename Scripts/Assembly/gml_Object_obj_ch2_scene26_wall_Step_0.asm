.localvar 2 arguments
.localvar 33228 v_speed_temp 16792

:[0]
push.v self.wall_con
pushi.e 1
cmp.i.v EQ
bf [9]

:[1]
push.v self.looping_coaster_top
pushi.e -9
pushenv [3]

:[2]
push.v self.y_pos
pushi.e 20
sub.i.v
pop.v.v self.y_pos

:[3]
popenv [2]
push.v self.looping_coaster
pushi.e -9
pushenv [5]

:[4]
push.v self.y_pos
pushi.e 20
sub.i.v
pop.v.v self.y_pos

:[5]
popenv [4]
push.v self.looping_coaster_top
pushi.e -9
push.v [stacktop]self.y_pos
push.v self.looping_coaster_top
pushi.e -9
push.v [stacktop]self.height
add.v.v
call.i gml_Script_cameray(argc=0)
cmp.v.v LTE
bf [9]

:[6]
pushi.e 2
pop.v.i self.wall_con
push.v self.looping_coaster
pushi.e -9
pushenv [8]

:[7]
pushi.e 1
pop.v.b self.loop_vertical
pushi.e -20
pop.v.i self.y_speed

:[8]
popenv [7]

:[9]
push.v self.wall_con
pushi.e 3
cmp.i.v EQ
bf [end]

:[10]
push.v self.v_speed
pushi.e 0
cmp.i.v LT
bf [12]

:[11]
push.v self.v_speed
push.e 1
add.i.v
pop.v.v self.v_speed
b [15]

:[12]
pushi.e 4
pop.v.i self.wall_con
push.v self.looping_coaster
pushi.e -9
pushenv [14]

:[13]
pushi.e 0
pop.v.i self.y_speed

:[14]
popenv [13]

:[15]
push.v self.v_speed
pop.v.v local.v_speed_temp
push.v self.looping_coaster
pushi.e -9
pushenv [17]

:[16]
pushloc.v local.v_speed_temp
pop.v.v self.y_speed
pushi.e -20
pop.v.i self.x_speed

:[17]
popenv [16]

:[end]