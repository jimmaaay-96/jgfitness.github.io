/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


   // Write on keyup event of keyword input element
  $("#search").keyup(function(){
        _this = this;
        // Show only matching TR, hide rest of them
        $.each($("#table tbody").find("tr"), function() {
            console.log($(this).text());
           var s = $("#sss").val(); if($(this).find('td').eq(s).text().toLowerCase().indexOf($(_this).val().toLowerCase()) == -1)
               $(this).hide();
            else
                 $(this).show();                
        });
    }); 