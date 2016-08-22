package com.personal.trainer.controllers;

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
 *
 * This is the main controller for the web application, it mostly services the angularjs framework with jsp fragments
 * however it is also responsable for send the email via a form.
 */

@Controller
public class MainController {

    @Autowired
    private JavaMailSender mailSender;


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

    @RequestMapping("/gettingStarted")
    public String getGettingStarted(){
        return "gettingStarted";
    }


}
