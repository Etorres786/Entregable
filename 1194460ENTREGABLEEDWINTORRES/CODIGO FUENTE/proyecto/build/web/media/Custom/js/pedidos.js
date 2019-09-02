$(document).ready(function(){
        $(".btnC").click(function(){
          // hide tr
          //$(this).parents("tr").hide();
          // Obtenemos todos los valores contenidos en los <td> de la fila
          // seleccionada
          var valores="";
          var name  = $(this).parents("tr").find("td.pro").html();
          var price = $(this).parents("tr").find("td.pre").html();
          var tot= $(this).parents("tr").find(".cantidad").val();
        if (tot>0) {
            $('.total tr:first').after("<tr><td><input name='producto' class='form-control' type='text'  readonly value='"+name+"'/></td><td><input name='precio' type='text' class='form-control ProductoPrice' readonly value='"+price+"'/></td><td><input name='cantidad' class='form-control quantity' type='text'  readonly value='"+tot+"'/></td><td><button class='btn btn-warning btn-sm btnDelete'>Eliminar</button><td></tr>");
        }else{}
        //  calcular el TOTAL
            var totalval =$(".valorT").val();
            totalval=parseInt(totalval);
            var subtotal=totalval+(price*tot);
            $(".valorT").val(subtotal);
            
            $(".btnDelete").off("click");
            
            $(".btnDelete").click(function() {
            var ProductoPrice = $(this).parents("tr").find("input.ProductoPrice").val();
                ProductoPrice = parseInt(ProductoPrice);
            var quantity = $(this).parents("tr").find("input.quantity").val();
                quantity = parseInt(quantity);
            //Restar
            var totalval =$(".valorT").val();
                totalval = parseInt(totalval);
            var subtotal = totalval - (ProductoPrice * quantity);
            $(".valorT").val(subtotal);
               //ELIMINAR FILA DE LA TABLA 
            $(this).parents("tr").remove();
            
            
        });
        
       });
        //PLUS
            var cantidad=$(this).parents("tr").find("input.cantidad").val();
            cantidad = parseInt(cantidad);
            cantidad = cantidad + 1;
            $(this).parents("tr").find("input.cantidad").val(cantidad);
        
        
       });
       
       //MINUS quantify
       
            $(".minus").click(function(){
            var cantidad=$(this).parents("tr").find("input.cantidad").val();
            cantidad = parseInt(cantidad);
            if (cantidad>0) {
                cantidad = cantidad - 1;
                
            } else {
                
            }
            
            $(this).parents("tr").find("input.cantidad").val(cantidad);
        
       });
       






 

  