_plr = _this select 0;
_freezeTime = 3;
_plr hideObject true;
_plr switchCamera "External";
_plr enableSimulation false;
_plr allowDamage false;

{
    if (["randomRespawn", str _x] call BIS_fnc_inString) then {
	    _x setMarkerAlpha 0;
	};
} forEach allMapMarkers;

sleep _freezeTime;
if ((_plr distance2D selectRandomRespawn) < 10) then {
    _plr setPos (position (selectRandom randomRespawnList));
};

_plr enableSimulation true;
_plr switchCamera "Internal";
_plr hideObject false;
_plr allowDamage true;