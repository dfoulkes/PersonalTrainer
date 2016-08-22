package com.personal.trainer.controllers;

import com.personal.trainer.controllers.json.ResultObject;
import com.personal.trainer.controllers.json.Status;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

/**
 * Created by danfoulkes on 03/08/2016.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:mvc-springContext.xml"})
public class MainControllerTest {


    public static final String DAN = "dan";
    public static final String DANFOULKES_GMAIL_COM = "danfoulkes@gmail.com";
    public static final String INTEGRATION_TEST_RAN_SUCCESSFULLY_EMAIL_SERVICE_IS_WORKING_AT = "integration test ran successfully, email service is working";

    @Autowired
    private RestContactController restContactController;


    @Test
    public void sendMessage() throws Exception {
        ResultObject resultObject = restContactController.sendMessage("dan", "danfoulkes@gmail.com", "integration test ran successfully, email service is working");
        assertThat("expected the status to be ok. ", resultObject.getStatus(), is(Status.OK));
    }

    @Test
    public void shouldReturnErrorMessageWhenUnsuccesful() {
        RestContactController mockControler = new RestContactController();
        mockControler.setMailSender(null);
        ResultObject resultObject = mockControler.sendMessage(DAN, DANFOULKES_GMAIL_COM, INTEGRATION_TEST_RAN_SUCCESSFULLY_EMAIL_SERVICE_IS_WORKING_AT);
        assertThat("expected the status to be error", resultObject.getStatus(), is(Status.ERROR));
    }

}