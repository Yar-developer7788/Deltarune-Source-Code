with (obj_overworldbulletparent)
    active = 0;

global.entrance = 2;
event_user(7);
instance_create(0, 0, obj_persistentfadein);
room_goto_previous();
