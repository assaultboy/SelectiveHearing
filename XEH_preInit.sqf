#include "\a3\editor_f\Data\Scripts\dikCodes.h"

SelectiveHearing_enabled = false;

//Create our key bind
["SelectiveHearing", "Selective Hearing"] call CBA_fnc_registerKeybindModPrettyName;
_nil = (["SelectiveHearing", "EnableKey", "Enable Key", {
	if (!SelectiveHearing_toggle || !SelectiveHearing_enabled) then {call SelectiveHearing_fnc_enable}
	else {call SelectiveHearing_fnc_disable};
},{
	if (!SelectiveHearing_toggle) then {call SelectiveHearing_fnc_disable};
}, [DIK_LWIN, [false, false, false]], false, 0] call CBA_fnc_addKeybind);


//Create our settings
["SelectiveHearing_volume", "SLIDER", ["Deafen Volume", "The percentage the volume will be lowered to while Selective Hearing is enabled"], "Selective Hearing", [0, 100, 20, 0], 2] call cba_settings_fnc_init;
["SelectiveHearing_toggle", "CHECKBOX", ["Toggle", "When enabled, Selective Hearing will be toggled rather than only enabled while the key is held"], "Selective Hearing", false, 2] call cba_settings_fnc_init;

["SelectiveHearing_iconColor", "COLOR", ["Icon Color", "The color of the Selective Hearing indicator"], "Selective Hearing", [1,1,1]] call cba_settings_fnc_init;