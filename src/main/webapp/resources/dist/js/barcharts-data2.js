/*Dashboard3 Init*/
 
"use strict"; 

/*****E-Charts function start*****/
var echartsConfig = function() { 

// 1. 서버에서 문의 count 데이터 가져오기 (예시)
$.ajax({
    type: "GET", // GET 또는 원하는 HTTP 메서드 사용
    url: "/api/getInquiryCount", // 실제 서버 엔드포인트로 대체해야 함
    success: function (data) {
        // 2. 가져온 데이터를 차트 데이터로 구성
        var inquiryData = data.inquiryData; // 서버에서 전달하는 실제 데이터 필드에 따라 수정해야 합니다.

        // 아래는 예시 데이터
        var xAxisData = []; // X 축 데이터
        var seriesData = []; // 시리즈 데이터

        for (var i = 0; i < inquiryData.length; i++) {
            xAxisData.push(inquiryData[i].date); // 날짜 데이터를 X 축 데이터에 추가
            seriesData.push(inquiryData[i].count); // 문의 count 데이터를 시리즈 데이터에 추가
        }

        // 3. 차트 업데이트
        if ($('#e_chart_5').length > 0) {
            var eChart_5 = echarts.init(document.getElementById('e_chart_5'));
            var option4 = {
                color: ['#90d7a3', '#3fb95f'],
                tooltip: {
                    show: true,
                    trigger: 'axis',
                    backgroundColor: '#fff',
                    borderRadius: 6,
                    padding: 6,
                    axisPointer: {
                        lineStyle: {
                            width: 0,
                        }
                    },
                    textStyle: {
                        color: '#324148',
                        fontFamily: '"Poppins", sans-serif',
                        fontSize: 12
                    }
                },
                grid: {
                    top: '3%',
                    left: '3%',
                    right: '3%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: [
                    {
                        type: 'category',
                        data: xAxisData, // X 축 데이터 설정
                        axisLine: {
                            show: false
                        },
                        axisTick: {
                            show: false
                        },
                        axisLabel: {
                            textStyle: {
                                color: '#5e7d8a'
                            }
                        }
                    }
                ],
                yAxis: [
                    {
                        type: 'value',
                        axisLine: {
                            show: false
                        },
                        axisTick: {
                            show: false
                        },
                        axisLabel: {
                            textStyle: {
                                color: '#5e7d8a'
                            }
                        },
                        splitLine: {
                            lineStyle: {
                                color: 'transparent',
                            }
                        }
                    }
                ],
                series: [
                    {
                        name: '문의 Count',
                        type: 'bar',
                        barMaxWidth: 30,
                        data: seriesData, // 시리즈 데이터 설정
                        itemStyle: {
                            normal: {
                                barBorderRadius: [6, 6, 0, 0],
                            }
                        },
                    }
                ]
            };

            eChart_5.setOption(option4);
            eChart_5.resize();
        }
    },
    error: function (error) {
        console.error("에러 발생:", error);
    }
});

}
/*****E-Charts function end*****/

/*****Resize function start*****/
var echartResize;
$(window).on("resize", function () {
	/*E-Chart Resize*/
	clearTimeout(echartResize);
	echartResize = setTimeout(echartsConfig, 200);
}).resize(); 
/*****Resize function end*****/

/*****Function Call start*****/
echartsConfig();
/*****Function Call end*****/