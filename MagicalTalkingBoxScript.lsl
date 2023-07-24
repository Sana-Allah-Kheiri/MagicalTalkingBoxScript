integer visible = TRUE;
default
{
    state_entry()
    {
        llListen(0, "", NULL_KEY, "");
        llSetLinkAlpha(LINK_SET, 1, ALL_SIDES);
    }
    
    listen(integer channel, string what, key who, string msg) {
        
        if(msg == "on" || msg == "ON" ){
            
            llSetLinkAlpha(LINK_SET, 1, ALL_SIDES);
            visible = TRUE;
            return;
            
            } else if ( msg == "off" || msg == "OFF") {
                llSetLinkAlpha(LINK_SET, 0, ALL_SIDES);
            visible = FALSE;
            return;
                }
        
        }
    

    touch_start(integer total_number)
    {
        if(visible == TRUE) {
            visible = FALSE;
            llSetLinkAlpha(LINK_SET, 0, ALL_SIDES);
            llSay(0, " Now you can not see me :D");
            }
        else {
                visible = TRUE;
                llSetLinkAlpha(LINK_SET, 1, ALL_SIDES);
                llSay(0, " Now you can see me :( ");
                
                }
    }



//end of driver code
}
