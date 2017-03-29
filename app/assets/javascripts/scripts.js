$(document).on('turbolinks:load',
  function() {
    $('#side-affix').affix({
      offset: { top: 185 }
    })

    $('#button').on('click', function() {
      var inputName = $('#name').val();
      var inputEmail = $('#email').val();
      var inputMsg = $('#message').val();

        if(inputMsg === "") {
            console.log("The message box is empty upon submission.");

            $('#message').css('border', '2px solid #880000');
        }
        else {
            $('#name-label').hide(600);
            $('#email-label').hide(600);
            $('#message-label').hide(600);

            $('#name').hide(600);
            $('#email').hide(600);
            $('#message').hide(600, function() {
                if(inputName != "")
                    $('#visible-comment_1').html(inputName + " sent the following:");
                $('#visible-comment_2').html(inputMsg);
                alert("Thanks for sending us a message!!!");
                $('#button').hide();
            });           
        }

      return false;
    });     
  }
);