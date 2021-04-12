<%@ page pageEncoding="utf-8"%>

<p id="demo">JavaScript</p>
<a  onclick="cart.add(${prod.id}, `${prod.name}`,`${prod.image}`, `${prod.unitPrice}`, ${prod.discount})" class="aa-add-card-btn" href=""><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
 <input type="button" onclick="incrementValue()" value="Increment Value" />
<script>
     function incrementValue()
          {
              var demo_id = document.getElementById('demo')
              var value = parseInt(demo_id.value, 10);
              // if NaN, set to 0, else, keep the current value
              value = isNaN(value) ? 0 : value;
              value++;
              demo_id.value = value;
  
              if ((value%2)==0){
                  demo_id.innerHTML = value;
              } 
              else {
                  demo_id.innerHTML = value.toString() ;
              }
          }
  </script>