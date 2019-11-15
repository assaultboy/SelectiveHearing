class CfgPatches
{
	class SelectiveHearing
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"cba_common", "cba_xeh", "A3_UI_F"};
	};
};

class CfgFunctions
{
	class SelectiveHearing
	{
		class functions
		{
			file = "SelectiveHearing\functions";
			
			class enable {};
			class disable {};
		};
	};
};

class Extended_PreInit_EventHandlers {
	class SelectiveHearing_InitSettings {
		init = "call compile preprocessFileLineNumbers 'SelectiveHearing\XEH_PreInit.sqf'";
	};
};

#include "DialogDefines.hpp"
class RscTitles
{
	class SelectiveHearing_HudIcon
	{ 
		idd = -1; 
		duration = 1e+011;
		class controls 
		{
			class SelectiveHearing_background: Template_Background
			{
				idc = -1;
				style = 128;
				x = 0.0115015 * safezoneW + safezoneX;
				y = 0.66 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.088 * safezoneH;
				colorBackground[] = {0.204, 0.231, 0.255, 0.3};
				colorText[] =  {0.855, 0.847, 0.851, 1};
			};
			class SelectiveHearing_icon: Template_Picture
			{
				idc = -1;
				style = 48;
				text = "SelectiveHearing\data\Icon.paa";
				onLoad= "(_this select 0) ctrlSetTextColor (SelectiveHearing_iconColor + [0.5])";
				x = 0.0115015 * safezoneW + safezoneX;
				y = 0.66 * safezoneH + safezoneY;
				w = 0.0515625 * safezoneW;
				h = 0.088 * safezoneH;
			};
		}; 
	}; 
};