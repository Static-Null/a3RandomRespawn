_plr = _this select 0;
_plr hideObject true;
_plr switchCamera "External";
_plr enableSimulation false;
_plr allowDamage false;

sleep 1;
if ((_plr distance2D selectRandomRespawn) < 10) then {
    _plr setPos (position (selectRandom randomRespawnList));
};

_plr enableSimulation true;
_plr switchCamera "Internal";
_plr hideObject false;
_plr allowDamage true;