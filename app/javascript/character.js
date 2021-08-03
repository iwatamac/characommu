document.addEventListener("turbolinks:load", function () {
$(function() {
  $('#nav4 img')
  .hover(
      function(){
          $(this).stop().animate({
              'width':'20vw',
              'height':'55vh',
              'margin-top':'40px'
          },'fast');
      },
      function () {
          $(this).stop().animate({
              'width':'17.5vw',
              'height':'50vh',
              'margin-top':'55px'
          },'fast');
      }
  );
});
});


document.addEventListener("turbolinks:load", function () {
$(function() {
  //画像にマウスを乗せたら発動
  $('#sakusei').hover(function() {
 
    //画像のsrc属性が別画像のパスに切り替わる
    $(this).attr('src', '/assets/sakusei_hover.jpg');
 
  //ここにはマウスを離したときの動作を記述
  }, function() {
 
    //画像のsrc属性を元の画像のパスに戻す
    $(this).attr('src', '/assets/sakusei_btn.jpg');
 
  });
});
});

document.addEventListener("turbolinks:load", function () {
  $(function() {
   
    //画像にマウスを乗せたら発動
    $('#hensyuu').hover(function() {
   
      //画像のsrc属性が別画像のパスに切り替わる
      $(this).attr('src', '/assets/hensyuu_hover.jpg');
   
    //ここにはマウスを離したときの動作を記述
    }, function() {
   
      //画像のsrc属性を元の画像のパスに戻す
      $(this).attr('src', '/assets/hensyuu_btn.jpg');
   
    });
  });
  });


document.addEventListener("turbolinks:load", function () {
    $(function() {
     
      //画像にマウスを乗せたら発動
      $('#sakusei_basyo').hover(function() {
     
        //画像のsrc属性が別画像のパスに切り替わる
        $(this).attr('src', '/assets/sakusei_hover2.jpg');
     
      //ここにはマウスを離したときの動作を記述
      }, function() {
     
        //画像のsrc属性を元の画像のパスに戻す
        $(this).attr('src', '/assets/sakusei_btn.jpg');
     
      });
    });
    });

    document.addEventListener("turbolinks:load", function () {
      $(function() {
       
        //画像にマウスを乗せたら発動
        $('#sanka-form').hover(function() {
       
          //画像のsrc属性が別画像のパスに切り替わる
          $(this).attr('src', '/assets/sanka_btn_hover.jpg');
       
        //ここにはマウスを離したときの動作を記述
        }, function() {
       
          //画像のsrc属性を元の画像のパスに戻す
          $(this).attr('src', '/assets/sanka_btn_form.jpg');
       
        });
      });
      });    


setTimeout(() => {
  console.log("Execution 1sec"); // Execution 1sec
}, 1000);
