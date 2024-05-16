/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Springweb.controller;

import Springweb.entity.thietbi;
import Springweb.entity.thongtinsd;
import Springweb.repository.thietbiRepository;
import Springweb.repository.thongtinsdRepository;
import Springweb.service.thietbiService;
import Springweb.service.thongtinsdService;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Dat dep trai
 * 
 */
@Controller
public class cartController {
    @Autowired
    private thongtinsdService ttsdServe;
    
    @Autowired
    private thongtinsdRepository ttsdReposity;
    
    @Autowired
    private thietbiService tbService;
    
    @GetMapping("/cart")   
    public String viewCartPage(Model model,HttpSession session, @RequestParam("matv") int MaTV) {  
        Iterable<thongtinsd> listTtsd = ttsdServe.findByMaTVAndTGDatchoIsNotNull(MaTV);
        model.addAttribute("dataThongtinsd", listTtsd);
        return "cart";
    }
    
    @GetMapping("/checkmuon")
    public String checkmuon(@RequestParam("id") String productId, @RequestParam("matv") String maTV, @RequestParam("tgdatcho") String TGDatcho) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        LocalDateTime localDateTime = LocalDateTime.parse(TGDatcho, formatter);
       
        
        
        thongtinsd newTtsd = ttsdServe.findByMaTBvsMaTV(Integer.parseInt(productId),Integer.parseInt(maTV),localDateTime); 
         if(localDateTime.equals(newTtsd.getTGDatcho()))
         {
             
         }
        newTtsd.setTGDatcho(null);
        newTtsd.setTGMuon(localDateTime);
        ttsdReposity.save(newTtsd);
        return "redirect:/cart?matv=" + Integer.parseInt(maTV) ;
    }
    
    @GetMapping("/cancel")
    public String cancel(@RequestParam("id") String productId, @RequestParam("matv") String maTV, @RequestParam("tgdatcho") String TGDatcho) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        LocalDateTime localDateTime = LocalDateTime.parse(TGDatcho, formatter);

        thongtinsd newTtsd = ttsdServe.findByMaTBvsMaTV(Integer.parseInt(productId),Integer.parseInt(maTV), localDateTime);
        ttsdReposity.delete(newTtsd);
        return "redirect:/cart?matv=" + Integer.parseInt(maTV) ;
    }
}
