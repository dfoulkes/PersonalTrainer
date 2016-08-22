package com.personal.trainer.controllers.json;

import java.io.Serializable;

/**
 * Created by danfoulkes on 22/08/2016.
 */
public class ResultObject implements Serializable {

    private final Status status;
    private final String message;

    public ResultObject(String message, Status status) {
        this.message = message;
        this.status = status;
    }

    public Status getStatus() {
        return status;
    }

    public String getMessage() {
        return message;
    }

}
