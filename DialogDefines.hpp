class Template_Picture
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = 0;
    idc = -1;
    style = 48;
    colorBackground[] = 
    {
        0,
        0,
        0,
        0
    };
    colorText[] = 
    {
        1,
        1,
        1,
        1
    };
    font = "TahomaB";
    sizeEx = 0;
    lineSpacing = 0;
    text = "";
    fixedWidth = 0;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.2;
    h = 0.15;
    tooltipColorText[] = 
    {
        1,
        1,
        1,
        1
    };
    tooltipColorBox[] = 
    {
        1,
        1,
        1,
        1
    };
    tooltipColorShade[] = 
    {
        0,
        0,
        0,
        0.65
    };
};

class Template_Background
{
    type = 0;
    idc = 124;
    style = 128;
    text = "";
    colorText[] = 
    {
        0,
        0,
        0,
        0
    };
    font = "PuristaMedium";
    sizeEx = 0;
    shadow = 0;
    x = 0.1;
    y = 0.1;
    w = 0.1;
    h = 0.1;
 
    colorbackground[] = 
    {
        "(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
        "(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
        "(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
        "(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"
    };
};