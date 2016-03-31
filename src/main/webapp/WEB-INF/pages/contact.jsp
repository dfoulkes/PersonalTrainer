<%--
  Created by IntelliJ IDEA.
  User: danfoulkes
  Date: 22/03/2016
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<div class="row-fluid">

    <div class="span6">
        <h1 class="artcileHeader">Where To Find Me</h1>

        <div id="map">
        </div>
    </div>
<div class="span6">
<form>
    <h1 class="artcileHeader">Contact Me</h1>
    <fieldset class="form-group">
        <label for="name">Name</label>
        <input type="text" class="form-control" ng-model="contact.name" id="name" placeholder="Enter name">
    </fieldset>


    <fieldset class="form-group">
        <label for="email">Email address</label>
        <input type="email" class="form-control" ng-model="contact.email" id="email" placeholder="Enter email">
        <small class="text-muted">I'll never share your email with anyone else.</small>
    </fieldset>

    <fieldset class="form-group">
        <label for="message">Message</label>
        <textarea class="form-control" id="message" ng-model="contact.message" rows="3" placeholder="How can I help?"></textarea>
    </fieldset>

    <button type="submit" ng-click="save(contact)" class="btn btn-primary">Send</button>

</form>
    <div class="alert alert-danger" id="errorMessage" role="alert">{{error}}</div>
    <div class="alert alert-success" id="messageSent" role="alert">Thankyou for your enquiry, I will be in contact soon.</div>
</div>
    <script>
        function initMap() {

            var myLatLng = {lat: 53.868038, lng: -1.592245};
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 16,
                center: myLatLng
            });

            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'Hello World!'
            });
        }


    </script>
    <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
            async defer></script>
</div>


