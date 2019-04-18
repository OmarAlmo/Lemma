$  -> 
   cities = $('#user_city').html();
   $('#user_city').parent().hide();    
   $('#country_id').change ->
       console.log("change.")
       selected_country = $('#country_id :selected').text()
       console.log(selected_country);
       options = $(cities).filter("optgroup[label='#{selected_country}']").html();
       console.log("options: \n",options);

       if options 
           $('#user_city').html(options);
           $('#user_city').parent().show();
       else
           $('#user_city').empty();
           $('#user_city').parent().hide();    