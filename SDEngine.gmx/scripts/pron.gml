///pron(0: him/her; 1: his/her; 2: his/her+self)
//0 - Personal; 1 - Possessive; 2 - Reflexive
switch argument0 {
    case 0:
        return iff(global.gender,"her","him")
        break;
    case 1:
        return iff(global.gender,"her","his")
        break;
    case 2:
        return pron(0)+"self"
        break;
}

