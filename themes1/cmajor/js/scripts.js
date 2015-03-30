
var secondaryBar = $('#nav_Secondary');
var primaryBar = $('#nav_Primary');
var overlay = $('#overlay');
var menuBtn = $('#btn_SideBar');
var primaryBtn = $('#nav_Primary a');
var mobileMenuFP = $('#nav_topMain');
var mobileMenuFPBtn = $('#btn_MobiNav');
var menuBusy = false;
var primaryBarWidth = primaryBar.width();
var windowWidth = $(document).width();
var resizeTimer = false;


function trackCalUser(i,u){
    var url = 'http://searchapp.co.za/event/tracker';
    jQuery.post( url , {type:"user", i:i, u:u} );
}

function trackCalAnon(i,u){
    var url = 'http://searchapp.co.za/event/tracker';
    jQuery.post( url , {type:"anon", i:i, u:u} );
}


$(document).ready(function () {


    function openSecondaryMenu(join) {
        join.addClass('active');
        secondaryBar.animate({
            left: primaryBarWidth
        }, 350, 'easeOutSine', function () {
            menuBusy = false;
        })
    }


    function closeSecondaryMenu(join) {
        menuBusy = true;
        $('#nav_Primary .active').removeClass('active')
        secondaryBar.stop(true, true).animate({
            left: -280
        }, 500, 'easeInQuart', function () {
            $('.nav_Secondary.active').removeClass('active');
            openSecondaryMenu(join)
        });


    };


    //    $('html, body').on('touchstart touchmove', function (e) { 
    //    e.preventDefault()
    //    })


    function openFullMenu() {
        menuBusy = true;
        primaryBar.stop(true, true).animate({
            left: 0
        }, 450);

        secondaryBar.stop(true, true).delay(100).animate({
            left: 63
        }, 550, function () {
            menuBusy = false;
        });

        overlay.css({
            opacity: 0,
            display: 'block'
        }).stop(true, true).delay(100).animate({
            opacity: 0.5
        }, 350);
    }


    function closeFullMenu() {
        menuBusy = true;
        primaryBar.stop(true, true).delay(250).animate({
            left: -81
        }, 450, function () {
            menuBusy = false;
        });

        secondaryBar.stop(true, true).animate({
            left: -280
        }, 550);

        overlay.stop(true, true).delay(150).animate({
            opacity: 0
        }, 350, 'easeOutSine', function () {
            $(this).css({
                display: 'none'
            })
        });
    }


    mobileMenuFPBtn.on('click', function (e) {


        if (!mobileMenuFP.is(':animated') && !mobileMenuFP.is(':visible')) {


            mobileMenuFP.slideDown(450, 'easeOutSine', function () {
                $('#article_fp').not(mobileMenuFPBtn).one('click', function () {

                    mobileMenuFP.slideUp(450, 'easeInSine')

                })
                $('body').one('scroll', function () {

              alert(1)

                })
            });

        }
        else if (!mobileMenuFP.is(':animated') && mobileMenuFP.is(':visible')) {

            mobileMenuFP.slideUp(450, 'easeInSine')

        }


        //        if (mobileMenuFP.is(':visible') && $(!'#nav_topMain:animated')) {

        //            mobileMenuFP.slideUp(4000, 'easeOutSine');
        //        }



    });





    //    $('#nav_topMain li').on('click', function (e) {
    //        mobileMenuFP.slideToggle(400, 'easeOutSine')
    //    });
    primaryBtn.on('click', function (e) {
        var selectedMenuBtn = $(this);
        var selectedMenuBtnParent = selectedMenuBtn.parent();
        var secondaryToOpen = $('#nav_Secondary_' + selectedMenuBtn.data('target'));
        var join = selectedMenuBtnParent.add(secondaryToOpen)
        if (!menuBusy) {closeSecondaryMenu(join);}
    });


    // Menu button clicked animations
    menuBtn.on('click', function (e) {
        var secondaryBarPosLeft = secondaryBar.position().left

        if (!menuBusy && secondaryBarPosLeft < 0) {   // Both Menu Bars are closed ie. off the screen with -left position
            openFullMenu()
        }

        else {  // Both Menu Bars are open and not off the screen
            closeFullMenu()
        }
    })




    // Overlay cover is clicked - 
    // The overlay is the semi transparent cover shown when the menu is opened on mobile and tablet

    overlay.on('click', function (e) {
        closeFullMenu()
    })



    function showSignupMenu(btnclicked) {
        var formtoHide = $('#form_' + btnclicked.parent().data('target'));
        $('.sign_form').hide();
        formtoHide.show()
    }



    var signupBtn = $('.sign_options li a');


    signupBtn.on('click', function (e) {
        showSignupMenu($(this))
    })

})



if (!Modernizr.touch) {
    // Window resizing animations

    function newWinSize() {
        windowWidth = $(document).width();
        primaryBarWidth = primaryBar.width();
    }









    function resizeAnimation() {
        resizeTimer = true;
        resizeTimeOut = window.setTimeout(function () {
            if (windowWidth > 1024) {
                primaryBar.css({
                    left: 0
                });
                secondaryBar.animate({
                    left: 184
                });


            } else {
                primaryBar.css({
                    left: -81
                });

            };
            resizeTimer = false;
        }, 250);

    }




    $(window).on('resize', function () {
        newWinSize();
        if (!resizeTimer) {
            resizeAnimation();
            secondaryBar.animate({
                left: -220
            });
            overlay.animate({
                opacity: 0
            }, 350, 'easeOutSine', function () {
                $(this).css({
                    display: 'none'
                })
            })

            if (windowWidth > 1024) {

            }

        } else {

            clearTimeout(resizeTimeOut);
            resizeAnimation();
        }

    });
}













