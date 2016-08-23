package com.personal.trainer.controllers;

import com.personal.trainer.controllers.json.ResultObject;
import com.personal.trainer.controllers.json.Status;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

/**
 * Created by danfoulkes on 22/08/2016.
 */


@RestController
public class RestContactController {

    @Autowired
    private JavaMailSender mailSender;


    private static final String TO_ADDRESS = "callumgomersall@hotmail.co.uk";
    public static final String MESSAGE_TYPE = "text/html";
    private static final String SUBJECT = "Website Enquiry";
    private static final String MESSAGE_HEADER = "<h1>Message Received</h1>";
    private static final String FROM_ADDRESS = "admin@cgfitness.co.uk";

    private static final Logger LOGGER = Logger.getLogger(RestContactController.class);

    public void setMailSender(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    @RequestMapping(value = "/send", method = RequestMethod.POST)
    @ResponseBody
    public ResultObject sendMessage(@RequestParam String name, @RequestParam String email, @RequestParam String message) {
        LOGGER.info("received request to send a mail");

        try {
            MimeMessage mimeMessage = mailSender.createMimeMessage();
            mimeMessage.setContent(createHtmlMessage(name, message, email), MESSAGE_TYPE);
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);
            helper.setTo(TO_ADDRESS);
            helper.setFrom(FROM_ADDRESS);
            helper.setSubject(SUBJECT);
            mailSender.send(mimeMessage);
            return new ResultObject("success.", Status.OK);

        } catch (MessagingException e) {
            LOGGER.info(e.getMessage());
            LOGGER.error("was unable to send the message");
            LOGGER.error(e.getMessage());
            return new ResultObject("Error - unable to parse message.", Status.ERROR);
        } catch (Exception e) {
            LOGGER.info(e.getMessage());
            LOGGER.error("unknown exception happened.");
            LOGGER.error(e.getMessage());
            return new ResultObject("unable to send the mail, please contact me directly at  callumgomersall@hotmail.co.uk", Status.ERROR);
        }
    }

    private String createHtmlMessage(String from, String message, String email) {
        String htmlMessage = "";
        htmlMessage += MESSAGE_HEADER;
        htmlMessage += "<h3> Message sent by: " + from + "</h3>";
        htmlMessage += "<h3>E-Mail Address: " + email + "</h3>";
        htmlMessage += "<div><span>" + message + "</span></div>";
        return htmlMessage;
    }

}
