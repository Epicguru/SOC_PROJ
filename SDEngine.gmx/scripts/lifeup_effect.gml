///lifeup_effect(type)
var type;
type = argument0;

switch type {
    case 0:
        // Alpha
        return irandom_range(74,126);
    case 1:
        // Beta
        return irandom_range(224,376);
    case 2:
        // Gamma
        return 1000;
    case 3:
        // Omega
        return irandom_range(299,501);
}
