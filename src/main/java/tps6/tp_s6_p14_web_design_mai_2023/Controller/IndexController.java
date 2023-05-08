package tps6.tp_s6_p14_web_design_mai_2023.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import tps6.tp_s6_p14_web_design_mai_2023.Base.FonctionBase;
import tps6.tp_s6_p14_web_design_mai_2023.Model.Article;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.Vector;

@Controller
@Component
public class IndexController {

    @Autowired
    private StandardPBEStringEncryptor encryptor;


    @GetMapping("/")
    public String index(HttpServletRequest request,Model model){
        try(Connection connection= FonctionBase.connect()) {
            int offset = 0;
            if (request.getParameter("offset")!=null){
                offset=Integer.parseInt(request.getParameter("offset"));
            }
            int nomBreOffset = Article.nombreArticle(connection);
            Vector<Article>list=Article.paginate(connection,offset*3);
            for (Article a : list){
                a.setLien(encryptor.encrypt(String.valueOf(a.getIdArticle())));
                while (a.getLien().contains("+")){
                    a.setLien(encryptor.encrypt(String.valueOf(a.getIdArticle())));
                }
            }
            model.addAttribute("listeArticle",list);
            model.addAttribute("offset",nomBreOffset);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "index";
    }
    @GetMapping("/nextPage")
    public String nextPage(HttpServletRequest request,Model model,HttpServletResponse response) throws IOException {
        //System.out.println(request.getParameter("id"));
        Article article= null;
        try {
            article = Article.getById(encryptor.decrypt(request.getParameter("id")));
        } catch (Exception e) {
            PrintWriter out= response.getWriter();
            out.print("Session perdu");
        }
        model.addAttribute("article",article);
        return "nextPage";
    }
}
