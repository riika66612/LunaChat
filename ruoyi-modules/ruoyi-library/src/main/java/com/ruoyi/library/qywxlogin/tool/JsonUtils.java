package com.ruoyi.library.qywxlogin.tool;


import org.springframework.boot.system.ApplicationHome;

import java.io.*;

public class JsonUtils {


    public static void saveDataToFile(String fileName, String data) {
        BufferedWriter writer = null;

        ApplicationHome h = new ApplicationHome(JsonUtils.class);
        File jarF = h.getSource();
        String jarPath = jarF.getParentFile().toString();

        File file = new File(jarPath + "/" + fileName + ".json");
        //如果文件不存在，则新建一个
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        //写入
        try {
            writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, false), "UTF-8"));
            writer.write(data);

            String message = String.format("文件写入成功  filepath: %s", jarPath + "/" + fileName + ".json");

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (writer != null) {
                    writer.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        System.out.println("文件写入成功！");
    }

    public static String getDatafromFile(String fileName) {

        ApplicationHome h = new ApplicationHome(JsonUtils.class);
        File jarF = h.getSource();
        String jarPath = jarF.getParentFile().toString();

        String Path = jarPath + "/" + fileName + ".json";
        File file = new File(Path);
        if(!file.exists()) {
            String message = String.format("文件不存在  filepath: %s", jarPath + "/" + fileName + ".json");
            return null;
        }
        BufferedReader reader = null;
        String laststr = "";
        try {
            FileInputStream fileInputStream = new FileInputStream(Path);

            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
            reader = new BufferedReader(inputStreamReader);
            String tempString = null;
            while ((tempString = reader.readLine()) != null) {
                laststr += tempString;
            }

            String message = String.format("获取文件成功  filepath: %s， data: %s", jarPath + "/" + fileName + ".json", laststr);

            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                try {
                    reader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return laststr;
    }
}
