var MenuOn = 0; //0 = menuoff 1 = menuonn
$(document).ready(function ()
{
    MenuButton(); //alles te maken met de button met id #menu, voor meer info ga naar functions.js
    SelectEventMain(); //als je klikt op een van de festivals
    FoldableButtonTrg();
    FoldableButtonVrd();
});  
