var _i = 0;

switch(stage) {
    default:
        break;
        
    case GAME_STAGE.GAME_READY:
        break;
    
    case GAME_STAGE.GAME_START:
        _i = 0;
        repeat(array_length(player_list)) {
            if(_i == client.player) {
                interface.player = player_list[_i];
                if(player_list[_i].unit.dead) {
                    
                }
                else {
                    camera.target = player_list[_i];
                }
                player_list[_i].sprite_index = SPR_Unit_Self;
                player_list[_i].image_index = global.__unit[user_list[_i].unit].subimg;
            }
            else {
                player_list[_i].sprite_index = SPR_Unit_Enemy;
                player_list[_i].image_index = global.__unit[user_list[_i].unit].subimg;
            }
            _i += 1;
        }
        break;
    
}

time += global.__time;