package com.ruoyi.library.qywxlogin.tool;

import com.alibaba.fastjson2.JSONObject;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * http请求工具类
 * @author
 *
 */
public class HttpInvoker {


    /**
     * 微信官方允许一天刷2000次 所以拟定2分钟刷新一次 24*60 ／ 2
     * @param sUrl
     * @param sMethod
     * @param sOutput
     * @return
     */
    public static JSONObject exec(String sUrl, String sMethod, String sOutput) {
        JSONObject json = null;
        StringBuffer buffer = new StringBuffer();

        HttpURLConnection con = null;
        try {
            URL url = new URL(sUrl);
            con = (HttpURLConnection) url.openConnection();
            con.setDoOutput(true);
            con.setDoInput(true);
            con.setUseCaches(false);
            con.setRequestMethod(sMethod);
            // connection.setConnectTimeout(60000);

            con.setReadTimeout(60000);
            con.setConnectTimeout(60000);

            if (sOutput != null) {
                OutputStream os = con.getOutputStream();
                try {
                    os.write(sOutput.getBytes("UTF-8"));
                } catch (Exception e) {
                } finally {
                    if (os != null) {
                        try {
                            os.close();
                        } catch (IOException e) {
                        }
                    }
                }
            }

            InputStream is = null;
            InputStreamReader inputReader = null;
            BufferedReader reader = null;
            try {
                is = con.getInputStream();
                inputReader = new InputStreamReader(is, "UTF-8");
                reader = new BufferedReader(inputReader);
                String temp;
                while ((temp = reader.readLine()) != null) {
                    buffer.append(temp);
                }
            } catch (Exception e) {
            } finally {
                if (reader != null) {
                    try {
                        reader.close();
                    } catch (IOException e) {
                    }
                }
                if (inputReader != null) {
                    try {
                        inputReader.close();
                    } catch (IOException e) {
                    }
                }
                if (is != null) {
                    try {
                        is.close();
                    } catch (IOException e) {
                    }
                }
            }

            // con.disconnect();
            json = JSONObject.parseObject(buffer.toString());

            if (json != null) {
            } else {
            }
        } catch (IOException e) {
        } finally {
            if (con != null) {
                con.disconnect();
            }
        }

        return json;
    }

}