$  -> 
   cities = $('#user_city').html();
   $('#user_city').parent().hide();    
   $('#country_id').change ->
       selected_country = $('#country_id :selected').text()
       options = $(cities).filter("optgroup[label='#{selected_country}']").html();

       if options 
           $('#user_city').html(options);
           $('#user_city').parent().show();
       else
           $('#user_city').empty();
           $('#user_city').parent().hide();    
