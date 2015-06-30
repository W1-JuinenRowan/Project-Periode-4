function SelectEventMain()
{
    $('#Ev1,#Ev2,#Ev3,#Ev4').click(function ()
    {
        $(this).animate({ width: '60%', height: '76.25%', left: '20%', bottom: '23%', top: '8.75%' }, 1000)
        $('#Ev1,#Ev2,#Ev3,#Ev4').addClass('Deactivated');
        $(this).removeClass('Deactivated');
        for (i = 1; i < 5; i++)
        {
            var id = '#Ev' + i;
            if ($(id).hasClass('Deactivated') == true)
            {
                $(id).fadeOut(500);
            }
        }

        //HIER KOMT CODE OM MEER INFO OVER FESTIVAL TE LATEN ZIEN

    });
}

function MenuButton()
{
    $('#btnText').fadeOut(0)
    $('#content').dblclick(function ()
    {
            $('#menu').stop();
            $('#menu').animate({ left: '-20%' }, 1000);
            MenuOn = 0;
    });
    $('#MenuButn').click(function ()
    {
        switch (MenuOn)
        {
            case 0:
                $('#menu').stop();
                $('#menu').animate({ left: '0%' }, 1000);
                MenuOn = 1;
                break;
            case 1:
                $('#menu').stop();
                $('#menu').animate({ left: '-20%' }, 1000);
                MenuOn = 0;
                break;
            default:
                $('#menu').animate({ left: '-20%' }, 1000);
        }

    });

    $('#MenuButn').hover(
    function ()
    {
        $(this).stop();
        $('#btnMenuImg').fadeOut(50)
        $(this).animate({ width: '10%' }, 500)
        $('#btnText').fadeIn(850)
    },
    function ()
    {
        $(this).stop();
        $('#btnText').fadeOut(50)
        $('#btnMenuImg').fadeIn(1000)
        $(this).animate({ width: '3.9375%' }, 500)
    });
}

function FoldableButtonTrg() //bedoeld om na de ID te doen met de param van de id van de <h> erin en de <img> erin :)
{
    $('#txttrg').fadeOut(0)
    $('#terug').hover(
    function () {
        $(this).stop();
        $('#imgtrg').fadeOut(50)
        $(this).animate({ width: '10%' }, 500)
        $('#txttrg').fadeIn(850)
    },
    function () {
        $(this).stop();
        $('#txttrg').fadeOut(50)
        $('#imgtrg').fadeIn(1000)
        $(this).animate({ width: '3.9375%' }, 500)
    });
    $('#terug').click(function () {
        window.location.href = 'Aanmeld1.aspx'
    });
}
function FoldableButtonVrd(txt, img) //bedoeld om na de ID te doen met de param van de id van de <h> erin en de <img> erin :)
{
    $('#txtvrd').fadeOut(0)
    $('#verder').hover(
    function () {
        $(this).stop();
        $('#imgvrd').fadeOut(50)
        $(this).animate({ width: '10%' }, 500)
        $('txtvrd').fadeIn(850)
    },
    function () {
        $(this).stop();
        $('#txtvrd').fadeOut(50)
        $('#imgvrd').fadeIn(1000)
        $(this).animate({ width: '3.9375%' }, 500)
    });
    $('#verder').click(function () {
        window.location.href = 'MainPage.php'
    });
}
