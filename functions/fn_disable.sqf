/*
	DESCRIPTION:
		This function will disable the suppression of sound
		
	PARAMETERS:
		None
			
	RETURNS
		None
		
	EXAMPLE
		[] call SelectiveHearing_fnc_enable;
*/

//If a dedicated server is running the mod then let the clients know
if (!hasInterface) exitWith {["Server is running client-sided mod!", "Selective Hearing", [true,true,true]] call CBA_fnc_debug};

//Don't disable if we already are disabled
if (!SelectiveHearing_enabled) exitWith {["Attempted to disable when already disabled", "Selective Hearing", [false,true,false]] call CBA_fnc_debug};

//Set our var
SelectiveHearing_enabled = false;

//Hide our HUD icon
"SelectiveHearing_layer" cutFadeOut 0.25;

/*//If ace_common is enabled we use our ace functionality
if (!isNil "ace_common") then {
	["SelectiveHearing", _volumeMod, false] call ace_common_fnc_setHearingCapability;
	
//If we don't have ace then we do things the hard way
} else {*/
	0.25 fadeSound SelectiveHearing_originalSoundVolume;
	0.25 fadeMusic SelectiveHearing_originalMusicVolume;
	0.25 fadeRadio SelectiveHearing_originalRadioVolume;
//};