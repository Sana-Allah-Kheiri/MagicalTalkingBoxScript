integer visible = TRUE;
default
{
    state_entry()
    {
        
    }

    touch_start(integer total_number)
    {
        if(visible == TRUE) {
            visible = FALSE;
            llSetAlpha(0, ALL_SIDES);
            llSay(0, " Now you can not see me :D");
            }
        else {
                visible = TRUE;
                llSetAlpha(1, ALL_SIDES);
                llSay(0, " Now you can see me :( ");
                
                }
    }



//end of driver code
}