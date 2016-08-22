webapp.factory('ContactService', function ($http, $log, $q) {
    var srv = {};
    srv._contact = null;

    // Service implementation
    srv.save = function (pName, pEmail, pMessage) {


        var payload = $.param({
            name: pName,
            email: pEmail,
            message: pMessage
        });

        var config = {
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded;charset=utf-8;'
            }
        };
        var deferred = $q.defer();

        return $http.post("/send", payload, config)
            .success(function (data) {
                deferred.resolve({
                    status: data.status,
                    description: data.message
                });
            }).error(function (msg, code) {
                deferred.reject(msg);
                $log.error(msg, code);
            });
    };

    // Public API
    return {
        save: function (contact) {
            return srv.save(contact.name, contact.email, contact.message);
        }
    };
});
