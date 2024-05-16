package Springweb.controller;

import Springweb.entity.thongtinsd;
import Springweb.repository.thongtinsdRepository;
import Springweb.service.thongtinsdService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class thongtinsdController {
    @Autowired
    private thongtinsdService ttsdService;
    
    @Autowired
    private thongtinsdRepository ttsdReposity;
    
    @PostMapping("/checkdate")
    public String checkForm(Model model, @RequestParam("bookingDateTime") String bookingDateTime, @RequestParam("maTB") int maTB, HttpSession session) {
        // Lấy danh sách thời gian đặt chỗ dựa trên maTB
        List<LocalDateTime> listTGDatcho = ttsdService.findTGDatchoByMaTB(maTB);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:s");
        LocalDateTime localDateTime = LocalDateTime.parse(bookingDateTime, formatter);
        LocalDate localDate = localDateTime.toLocalDate();
        
        boolean isBooked = false;
        // So sánh selectedDateTime với mỗi thời gian đặt chỗ trong listTGDatcho
        if (listTGDatcho != null && !listTGDatcho.isEmpty()) {
            for (LocalDateTime tgDatcho : listTGDatcho) {
                LocalDate tgDatchoDate = tgDatcho.toLocalDate();
                if (localDate.isEqual(tgDatchoDate)) {
                    isBooked = true;
                    break;
                }
            }
        } else {
            isBooked = false;
        }

        session.setAttribute("Date", bookingDateTime);
        // Nếu thời gian đã được đặt chỗ, hiển thị thông báo lỗi
        if (isBooked) {
            session.setAttribute("ERROR", "San pham da duoc dat cho trong thoi gian nay: " + listTGDatcho);
            session.removeAttribute("SUCCESS");
            
        } else {
           session.setAttribute("SUCCESS", "San pham co the dat cho trong thoi gian nay: " + localDateTime);
           session.removeAttribute("ERROR");
        }
         return "redirect:/detail?id=" + maTB ;

    }
    
    @PostMapping("/checkbook")
    public String checkbookForm(@RequestParam("bookingDateTime") String bookingDateTime, @RequestParam("maTB") int maTB, 
                                @RequestParam("maTV") int maTV, HttpSession session){
        if (bookingDateTime == null || bookingDateTime.isEmpty()) {
            // Xử lý khi chuỗi ngày giờ trống
            session.setAttribute("ERROR", "Ban phai check truoc khi book");
            return "redirect:/detail?id=" + maTB;
        } // Xử lý lỗi nếu có
        // Chuyển đổi chuỗi thành đối tượng Date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:s");
        LocalDateTime localDateTime = LocalDateTime.parse(bookingDateTime, formatter);
        // Tiếp tục xử lý như bình thường với kiểu Date đã chuyển đổi
        thongtinsd ttsd = ttsdService.findByMaTBAndMaTvAndTGDatchoIsNull(maTB, maTV);
        if(ttsd == null){
            thongtinsd newTtsd = new thongtinsd();
            newTtsd.setMaTB(maTB);
            newTtsd.setMaTV(maTV);
            newTtsd.setTGDatcho(localDateTime); // Gán đối tượng Date đã chuyển đổi
            newTtsd.setTGMuon(null);
            newTtsd.setTGTra(null);
            newTtsd.setTGVao(null);
            ttsdReposity.save(newTtsd);
            return "redirect:/home";
        } else {
            session.setAttribute("ERROR", "San pham da duoc dat khong the dat ");
            return "redirect:/detail?id=" + maTB;
        }
    }


}
