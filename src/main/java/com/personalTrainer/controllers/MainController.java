package com.personalTrainer.controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

/**
 * Created by danfoulkes on 29/01/2016.
 */

@Controller
public class MainController {

    @Autowired
    private JavaMailSender mailSender;

    private final String TO_ADDRESS = "cgfitness16@gmail.com";
    private final String MESSAGE_TYPE = "text/html";
    private final String SUBJECT = "Website Enquiry";
    private final String MESSAGE_HEADER = "<h1>Message Received</h1>";

    private static Logger LOGGER = Logger.getLogger(MainController.class);

    @RequestMapping("/")
    public String getHome(){
        return "home";
    }


    @RequestMapping("/home")
    public String getHomeByName(){
        return "splash";
    }


    @RequestMapping("/about")
    public String getAbout(){
        return "about";
    }

    @RequestMapping("/services")
    public String getServices(){
        return "service";
    }

    @RequestMapping("/testimonials")
    public String getTestimoials(){
        return "testimonials";
    }

    @RequestMapping("/contact")
    public String getContactForm(){
        return "contact";
    }


    @RequestMapping("/privacy")
    public String getPrivacy(){
        return "privacy";
    }

    @RequestMapping("/terms")
    public String getTerms(){
        return "terms";
    }



    @RequestMapping("/send")
    public void sendMessage(@RequestParam String name,@RequestParam String email, @RequestParam String message){
      LOGGER.info("received request to send a mail");

        try {
            MimeMessage mimeMessage = mailSender.createMimeMessage();
            mimeMessage.setContent(createHtmlMessage(email,message),MESSAGE_TYPE);
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage);
            helper.setTo(TO_ADDRESS);
            helper.setSubject(SUBJECT);
            mailSender.send(mimeMessage);

        } catch (MessagingException e) {
            LOGGER.error("was unable to send the message");
            LOGGER.error(e.getMessage());
        }
    }

    private String createHtmlMessage(String from, String message){
        String htmlMessage = "";
        htmlMessage += MESSAGE_HEADER;
        htmlMessage += "<h3> Message sent by: "+from+"</h3>";
        htmlMessage += "<div><span>"+message+"</span></div>";
        return htmlMessage;
    }


}
