<?php
  include 'header.php';
?>
<label>Delivery Address:</label>
<textarea name="deladd" id="deladd" rows="3" cols="60" placeholder="Delivery Address" style="border: 1px solid black;"><?php foreach($_SESSION["logged"] as $s){if(isset($s->address)) { echo $s->address; }} ?></textarea>
<br><br>
<p id="delivery_add">+ Add new address</p>

<!-- <button id="place_order_add" name="place_order_add">Save and continue</button> -->
<form class="paypal" action="payment.php" method="post" id="paypal_form">
        <input type="hidden" name="cmd" value="_xclick" />
        <input type="hidden" name="no_note" value="1" />
        <input type="hidden" name="lc" value="UK" />
        <input type="hidden" name="bn" value="PP-BuyNowBF:btn_buynow_LG.gif:NonHostedGuest" />
        <input type="hidden" name="first_name" value="Customer's First Name" />
        <input type="hidden" name="last_name" value="Customer's Last Name" />
        <input type="hidden" name="payer_email" value="customer@example.com" />
        <input type="hidden" name="item_number" value="123456" / >
        <input type="submit" name="submit" value="Submit Payment"/>
    </form>
<?php
  include 'footer.php';
?>