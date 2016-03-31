webapp.factory('ContactService', function() {
    var srv = {};
    srv._contact = null;

    // Service implementation
    srv.save = function (name, email, message) {
        //
        $.ajax({
            url: "./send?name="+name+"&email="+email+"&message="+message,
            async: false
        }).then(function (data) {
            srv._contact = data;
        });
    };

    // Public API
    return {
        save: function (contact) {
            return srv.save(contact.name, contact.email, contact.message);
        }
    };
});
