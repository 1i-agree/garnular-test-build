display_set_gui_size(960, 540)
if (obj_player.state != 33)
{
    if (!((obj_player.state == 47) || ((obj_player.state == 14) || ((obj_player.state == 11) || ((obj_player.state == 16) || ((obj_player.state == 20) || ((obj_player.state == 70) || ((obj_player.state == 24) || ((obj_player.state == 25) || ((obj_player.state == 29) || ((obj_player.state == 26) || ((obj_player.state == 27) || ((obj_player.state == 28) || ((obj_player.state == 35) || (((obj_player.state == 55) && (shake_mag > 0)) || ((obj_player.state == 69) || ((obj_player.state == 52) || ((obj_player.state == 41) || ((obj_player.state == 43) || ((obj_player.state == 48) || ((obj_player.state == 68) || ((obj_player.state == 40) || ((obj_player.state == 51) || ((obj_player.state == 34) || ((obj_player.state == 42) || (obj_player.state == 25))))))))))))))))))))))))))
        draw_sprite(spr_pepinoHUD, -1, 80, 458)
    else if ((obj_player.state == 70) || ((obj_player.state == 55) && (shake_mag > 0)))
        draw_sprite(spr_pepinoHUDstun, -1, 80, 458)
    else if ((obj_player.state == 47) || ((obj_player.state == 16) || ((obj_player.state == 11) || ((obj_player.state == 69) || ((obj_player.state == 15) || ((obj_player.state == 52) || ((obj_player.state == 35) || ((obj_player.state == 41) || ((obj_player.state == 20) || ((obj_player.state == 43) || ((obj_player.state == 24) || ((obj_player.state == 25) || ((obj_player.state == 29) || ((obj_player.state == 26) || ((obj_player.state == 27) || (obj_player.state == 28))))))))))))))))
        draw_sprite(spr_pepinoHUDmach1, -1, 80, 458)
    else if (obj_player.state == 48)
        draw_sprite(spr_pepinoHUDmach2, -1, 80, 458)
    else if (obj_player.state == 68)
        draw_sprite(spr_pepinoHUDmach3, -1, 80, 458)
    else if ((obj_player.state == 51) || (obj_player.state == 14))
        draw_sprite(spr_pepinoHUDhurt, -1, 80, 458)
    else if ((obj_player.state == 42) || ((obj_player.state == 34) || (obj_player.state == 40)))
        draw_sprite(spr_pepinoHUDhappy, -1, 80, 458)
    if (obj_player.mach2 < 7)
        draw_sprite(spr_speedbar, 0, 880, 500)
    else if ((obj_player.mach2 >= 7) && (obj_player.mach2 < 35))
        draw_sprite(spr_speedbar, 1, 880, 500)
    else if ((obj_player.mach2 >= 35) && (obj_player.mach2 < 50))
        draw_sprite(spr_speedbar, 2, 880, 500)
    else if ((obj_player.mach2 >= 50) && (obj_player.mach2 < 75))
        draw_sprite(spr_speedbar, 3, 880, 500)
    else if ((obj_player.mach2 >= 75) && (obj_player.mach2 < 100))
        draw_sprite(spr_speedbar, 4, 880, 500)
    else if (obj_player.mach2 >= 100)
        draw_sprite(spr_speedbarmax, -1, 880, 500)
    //if (global.lapping == 1)
    //{
    //    draw_set_color(c_white)
    //    draw_set_font(font0)
    //    draw_set_halign(fa_center)
    //    draw_set_valign(fa_middle)
    //    draw_text((view_wview[0] / 2), 100, "Get back to the treasure room for 200 points!!")
    //}
	// lap system sucks so remove it
    font = font_add_sprite(spr_numbers, 48, 0, -10)
    draw_set_font(font)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_text(50, 40, global.collect)
	//draw_text(190, 105, obj_player.x)
	//draw_text(190, 145, obj_player.y)
	//draw_text(190, 185, obj_player.state)
	//draw_text(190, 145, global.combo)
	//draw_text(190, 185, obj_player.combotimer)
    if (global.key_inv == 1)
        draw_sprite(spr_key, -1, 40, 350)
    draw_sprite(spr_inv, -1, 40, 350)
    if (timestop == 0)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text(480, 65, ((string(global.minutes) + ":0") + string(global.seconds)))
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red)
            else
                draw_set_color(c_white)
            draw_text(480, 65, ((string(global.minutes) + ":") + string(global.seconds)))
        }
    }
}
draw_set_blend_mode(0)


