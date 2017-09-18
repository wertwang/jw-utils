package common.ai.utils.file;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;

/**
 * @ClassName: FileUtils
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author wangjp3
 * @date 2017年9月18日 下午2:28:47
 * 
 */
public class FileUtils {
    public static String getResources() {
        URL base = new FileUtils().getClass().getResource("/");
        return base.getFile();
    }

    public static void saveFileInResources(String fileName, String text) throws IOException{
        File output = new File(FileUtils.getResources(), fileName);
        if (!output.exists()) {
            output.createNewFile();
        }
        
        FileWriter fileWritter = new FileWriter(output.getAbsoluteFile());
        BufferedWriter bufferWritter = new BufferedWriter(fileWritter);
        bufferWritter.write(text);
        bufferWritter.close();
        
        System.out.println("Done!");
    }
    
    public static void main(String[] args) {
        FileUtils.getResources();
    }
}
