/*
	DESCRIPTION:
		This function will enable the suppression of sound
		
	PARAMETERS:
		None
			
	RETURNS
		None
		
	EXAMPLE
		[] call SelectiveHearing_fnc_enable;
*/

//If a dedicated server is running the mod then let the clients know
if (!hasInterface) exitWith {["Server is running client-sided mod!", "Selective Hearing", [true,true,true]] call CBA_fnc_debug};

//Don't enable if we already are enabled
if (SelectiveHearing_enabled) exitWith {["Attempted to enable when already enabled", "Selective Hearing", [false,true,false]] call CBA_fnc_debug};

//Set ourselves to on
SelectiveHearing_enabled = true;

//Enable our HUD icon
"SelectiveHearing_layer" cutRsc ["SelectiveHearing_HudIcon", "PLAIN", 0.25, true];

//Save the players default values 
SelectiveHearing_originalSoundVolume = soundVolume;
SelectiveHearing_originalMusicVolume = musicVolume;
SelectiveHearing_originalRadioVolume = radioVolume;

//Start setting sound
private _volumeMod = (SelectiveHearing_volume / 100);

/*
//If ace_common is enabled we use our ace functionality, making sure to adjust for ACRE
if (!isNil "ace_common") then {
	//And cancel out ACE adjusting ACRE volume
	private _acreVolume;
	if (!isNil "acre_api_fnc_getGlobalVolume") then {_acreVolume = [] call acre_api_fnc_getGlobalVolume};
	
	//Acre returns nil for some reason
	if (isNil "_acreVolume") then {_acreVolume = 1};
	
	["SelectiveHearing", _volumeMod, true] call ace_common_fnc_setHearingCapability;
	
	//We set it after
	if (!isNil "acre_api_fnc_setGlobalVolume") then {[_acreVolume] call acre_api_fnc_setGlobalVolume};
	
	systemChat format ["acreVolume(%1) isNil'Getter'(%2) isNil'Setter'(%3)", _acreVolume, isNil "acre_api_fnc_getGlobalVolume", isNil "acre_api_fnc_setGlobalVolume"];
	
//If we don't have ace then we do things the hard way
} else {*/
	0.25 fadeSound (_volumeMod * SelectiveHearing_originalSoundVolume);
	0.25 fadeMusic (_volumeMod * SelectiveHearing_originalMusicVolume);
	0.25 fadeRadio (_volumeMod * SelectiveHearing_originalRadioVolume);
//};