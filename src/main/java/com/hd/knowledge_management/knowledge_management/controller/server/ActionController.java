package com.hd.knowledge_management.knowledge_management.controller.server;

import com.hd.knowledge_management.knowledge_management.commons.websetting.ApplicationParams;
import com.hd.knowledge_management.knowledge_management.service.LevelService;
import com.hd.knowledge_management.knowledge_management.service.PageContentService;
import com.hd.knowledge_management.knowledge_management.service.RegulationService;
import com.hd.knowledge_management.knowledge_management.service.WebSettingsService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import springfox.documentation.annotations.ApiIgnore;

@Controller
@ApiIgnore
public class ActionController {

    @Autowired
    private LevelService levelService;
    @Autowired
    private RegulationService regulationService;
    @Autowired
    private PageContentService pageContentService;


    @RequestMapping(value = "/toAddRegulation")
    public String toAddRegulation(Model model) {
        model.addAttribute("levelOne", levelService.getLevel(1));
        return "addRegulation";
    }
    @RequestMapping("/msq")
    public String msq(){
        return "403";
    }
    @RequestMapping("/allRegulations")
    public String allRegulations(Model model, @RequestParam(name = "lid", defaultValue = "", required = false) String lid) {
        model.addAttribute("allRegulations", regulationService.allRegulations(lid));
        model.addAttribute("level", levelService.allLevel());
        return "myAdmin";
    }

    @RequestMapping(value = "/toAddDiectory")
    public String toAddDiectory(Model model) {
        model.addAttribute("allRegulations", regulationService.allRegulations(""));
        return "addDirectory";
    }

    @RequestMapping(value = "/toDirectory")
    public String toDirectory(Model model) {
        model.addAttribute("allRegulations", regulationService.allRegulations(""));
        return "directory";
    }

    @RequestMapping(value = "/toTerms")
    public String toTerms(Model model) {
        model.addAttribute("allRegulations", regulationService.allRegulations(""));
        return "terms";
    }

    @GetMapping(value = "/toLogin")
    public String toLogin() {
        return "login";
    }


    @RequestMapping(value = "/toCompanyProfile")
    public String toCompanyProfile(Model model) {
        model.addAttribute("pageContent", pageContentService.getPageContentByPname("2"));
        return "companyprofile";
    }

    @RequestMapping(value = "/toServiceAgreement")
    public String toServiceAgreement(Model model) {
        model.addAttribute("pageContent", pageContentService.getPageContentByPname("1"));
        return "serviceagreement";
    }

    @RequestMapping(value = "/toAddTerm")
    public String toAddTerm(Model model) {
        model.addAttribute("regulations", regulationService.allRegulations(""));
        return "addTerm";
    }

}
