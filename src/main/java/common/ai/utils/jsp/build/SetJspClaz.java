package common.ai.utils.jsp.build;

import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import common.ai.utils.file.FileUtils;

/**
 * @ClassName: SetJspClass
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author wangjp3
 * @date 2017年9月18日 上午11:00:57
 * 
 */
public class SetJspClaz {

    public void loadJsp() throws IOException {

        Document doc = Jsoup.connect("https://www.baidu.com/").get();
        String title = doc.html();

        System.out.println(title);
    }

    public void buildSocialJsp() throws IOException {
        File input = new File(FileUtils.getResources(), "/jsp/socialDetails.jsp");
        
        Document doc = Jsoup.parse(input, "UTF-8");
        String docHtml = doc.html().replaceAll("<%", "<!");
        docHtml = docHtml.replaceAll("%>", ">");
        doc.html(docHtml);
        
        Document jsRenderDoc = Jsoup.parse(doc.select("#socialDetailTmpl").html(), "UTF-8");

        Elements titleNodes = jsRenderDoc.select("ul li p.word");
        for (Element titleNode : titleNodes) {
            if (titleNode.classNames().size() > 1) {
                // System.out.println(titleNode.text());
                continue;
            }

            Element valueNode = titleNode.nextElementSibling();
            titleNode.addClass(getBuildClaz(valueNode.text(), "[a-zA-Z]+[.]{1}[a-zA-Z]+[.]{1}[a-zA-Z]+"));
        }

        doc.select("#socialDetailTmpl").html(jsRenderDoc.body().html());
        docHtml = doc.html();
        docHtml = docHtml.replaceAll("&lt;", "<");
        docHtml = docHtml.replaceAll("&gt;", ">");
        // System.out.println(doc.html());

        FileUtils.saveFileInResources("/jsp/socialDetails.4.jsp", docHtml);
    }
    
    public void buildOwnJsp() throws IOException {
        File input = new File(FileUtils.getResources(), "/jsp/approvalDtl.jsp");
        
        Document doc = Jsoup.parse(input, "UTF-8");
        String docHtml = doc.html().replaceAll("<%", "<!");
        docHtml = docHtml.replaceAll("%>", ">");
        doc.html(docHtml);
        
        FileUtils.saveFileInResources("/jsp/approvalDtl.0.jsp", doc.html());
        Document jsRenderDoc = Jsoup.parse(doc.select("#taskDetailTmpl").html(), "UTF-8");

        Elements titleNodes = jsRenderDoc.select("ul li p.word");
        for (Element titleNode : titleNodes) {
            if (titleNode.classNames().size() > 1) {
                // System.out.println(titleNode.text());
                continue;
            }

            Element valueNode = titleNode.nextElementSibling();
            titleNode.addClass(getBuildClaz(valueNode.text(), "[a-zA-Z]+[.]{1}[a-zA-Z]+"));
        }

        doc.select("#taskDetailTmpl").html(jsRenderDoc.body().html());
        docHtml = doc.html();
        docHtml = docHtml.replaceAll("&lt;", "<");
        docHtml = docHtml.replaceAll("&gt;", ">");
        // System.out.println(doc.html());

        FileUtils.saveFileInResources("/jsp/approvalDtl.1.jsp", docHtml);
    }

    public static String getBuildClaz(String text, String regex) {
        String clazs = "";

        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(text);

        while (matcher.find()) {
            clazs += " " + matcher.group();
        }
        
        clazs = clazs.replaceAll("[.]{1}", "-");
        return clazs;
    }

    public static void main(String[] args) {
        try {
            SetJspClaz utils = new SetJspClaz();
            utils.buildOwnJsp();
            utils.buildSocialJsp();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
