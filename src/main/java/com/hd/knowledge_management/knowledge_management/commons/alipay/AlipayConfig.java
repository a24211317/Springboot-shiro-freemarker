package com.hd.knowledge_management.knowledge_management.commons.alipay;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101200669268";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCF4ceJttIMtwxwJTWlCWwT8pJ+pmFDScbnPUJDSjsKSIsk2qfairPxjHkPXX9Rf4fwYmo/8Uy1TJmvZUuNSkPD+vJ/ZY5AttYK2KROTD1/v3ruOOT1MmGUaCYY1Ai4xfgJmXtL/lucAhE6NtesK1iqMqDPIg4oyfvRaAVKQQJ/oeMh3U0Dl2n0QOSKQQiEOXAXjd9Et9y+BdWuCvoS9YLdfR8WVOKFQQqPF0qeWAm3MEmzLpmUrCNEul1DvLrkvEAvg+FOppcSvANTaESXDjh3OK5gAqh6DOgDoas+ZDrnpsu1rPjm77zHf+9SChrc8XFkHUfmDBQqiOVRg/jz/gR7AgMBAAECggEAW2WbFsSb+Notv5FnYddg1O1QXO2wkIMZKluDlPRkAc0sUGiFFoiB93ByZK7rb/OkFdLZvfU47LvyXu7D+RytzmjOi3IE/uDSlmz3HgymH0PU5DQq+cj/HJVNDL4ThjB/9+2zYlmuqH4wzJEMAxlEWkxdw4n4KJhbNMXSdrKSxhXyaseoVxmmeANLq1bPWiIBmiTYcXx/jc+KKULnYyiHgXYyedjb0P03ER4AZR8eLukST8qT4CBHcyKY37tnFStKsQCMSj7Lqoy+FUdPBnB0LR7B8O+8LiyXIbI0qs2xml4quN+1vZJVD/NKtOws6xaTNKr7J33XoBydykTn/35boQKBgQD4j8UKLlC2hta/DNRyXG1vfLVrPV1s7TDEsG9lFNTRNHyLdbSdaINUq4Poj8l1HMCN3wfoCU+5Cr/oT2F7KzzvjSLm/4sG5he80xLoEllAG0b9xDUDe9DWesrHKIIuNnzEFgS7ExLonK+RVd1apgWPv3RtLYYoUajoHmGCxwY1twKBgQCJ43Lykp2S8KqCPTWvq4IlHCuitNw6Pr6i8QlHjS1KOASyY22KhTfLLyUlkcaFsROmLAMmk7yu9j3cgirqq5dBpB9ll00O/OsWLHETqBJQg5Godllp9F2Xdfjjgew7eW8HvlvTvD3zE1oXNvreJ+7MRTR4kFOSu9oSuHyDGt+HXQKBgQCTtcxganmonqTLUDKH64lVMYUWP5dffez3Veo85Y467Lf+oGo/CLbTAEIZWCleIUIEjT/DkpT/3/V/dnz1lxJVQUg2gjH6XY5Jth2MMCs9v3gGoizm7xOCAeKzS81g7Rxj4rnY+lLITSTAd4hdsD+p1xq3LtCE8VIw7qz/7IoyLQKBgGotY5kYfw/kFFgfjBSOi7PJwmwSurZ7FE7iLlQTiPlqs2suFu6gcHsb/Y21d9oApfHCWFa/Un6jjLUc4rE7mkhoeei/ng3ZgajcZeJN/HRVK7c+EtH84oi7xgBiTibp9i5PTeR4QnfHwgq4QmsI8uAGtkXUVRZbYqwhtXc7HT7dAoGBALzw1rHL+GHNNGh+gX8+WDZrYo/99Rtxgn0XLrecIFfkOccxXwLnnthFrAe6S/uLm9L3bZHbiomBQPaTSv8OdbcWdR7R6aujgKNv7bfNisHGhwKVno3eUoAZtWBU+uJS6fFRiearFWOkQdlO6u495qRF/F2ylJ15fykh1PZL4bk6";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1q0NqDlp9OcFIluLuZbFMVzEVl2HQgoCvra3+3Ac56cCvNSMI7+n5fKx2x62nwoHYHv4bBtOYv1ClWKwXbvieiXWNDeNmrzzjzBNireR8ogIK9BL6ZJz0tiFL2xPIHldWgj40E+nx3cqDGL7RcAgwhXzn06ost+MLPfgSFYJdkNsaL68voppbtFivp/dow0rSuWxbMs4hBAow6MlnyjubgE+IDRZIXYpQYQt/Ovhv9OvMPghQbet1C/aSJ/intb1YiSvzT03kUB7ho6Kg+zgXJoYx7wugT7zfhRnxGZZ0+srNyz44VAZNfBTDKjxzDiUmH4llllJJ2pxm+mEy0RkAwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://123.56.123.116:8080/notifyPaySuccess";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://123.56.123.116:8080/paySuccess";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}