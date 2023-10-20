package kr.ac.kopo.data;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Node;

public class PartnerInfoController2 {
    public static void main(String[] args) {
        try {
            // 파라미터 변수에 저장
            String serviceKey = "MxaUXwUlSXW2YGaS6AXQZDkmHv86ZlGeE1Xx1/XEdDTng2iZGmm1+pY+Jyop800Rbsa95sl0Kq2KXtIuFc2wpQ==";
            int pageNo = 1;
            int numOfRows = 100;
            String medOfficeName = "원도안공인중개사사무소";
            // URL 문자열 생성
            String url = "http://api.data.go.kr/openapi/tn_pubr_public_med_office_api?"
                    + "serviceKey=" + URLEncoder.encode(serviceKey, "UTF-8")
                    + "&pageNo=" + pageNo
                    + "&numOfRows=" + numOfRows
                    + "&type=xml"
                    + "&MED_OFFICE_NM=" + URLEncoder.encode(medOfficeName, "UTF-8");
                    
            // URL 객체 생성
            URL apiUrl = new URL(url);

            // HttpURLConnection 생성 및 설정
            HttpURLConnection conn = (HttpURLConnection) apiUrl.openConnection();
            conn.setRequestMethod("GET");

            // 응답 코드 확인
            int responseCode = conn.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                // 응답을 읽기 위한 BufferedReader 생성
                BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                String inputLine;
                StringBuilder response = new StringBuilder();

                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }

                // XML 데이터 출력
                String xmlData = response.toString();
                
                // XML 파서를 생성하고 파싱
                DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
                DocumentBuilder builder = factory.newDocumentBuilder();
                Document document = builder.parse(new ByteArrayInputStream(xmlData.getBytes()));

                // "medOfficeNm" 요소 값을 추출
                Node medOfficeNmNode = document.getElementsByTagName("medOfficeNm").item(0);
                String medOfficeNm = medOfficeNmNode.getTextContent();

                // "estblRegNo" 요소 값을 추출
                Node estblRegNoNode = document.getElementsByTagName("estblRegNo").item(0);
                String estblRegNo = estblRegNoNode.getTextContent();

                // "lctnLotnoAddr" 요소 값을 추출
                Node lctnLotnoAddrNode = document.getElementsByTagName("lctnLotnoAddr").item(0);
                String lctnLotnoAddr = lctnLotnoAddrNode.getTextContent();

                // 추출한 데이터 출력
                System.out.println("medOfficeNm: " + medOfficeNm);
                System.out.println("estblRegNo: " + estblRegNo);
                System.out.println("lctnLotnoAddr: " + lctnLotnoAddr);
                
                // BufferedReader 닫기
                in.close();
            } else {
                System.out.println("HTTP 요청 실패: " + responseCode);
            }

            // 연결 종료
            conn.disconnect();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
