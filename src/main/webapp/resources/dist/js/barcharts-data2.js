"use strict";

/*****E-Charts function start*****/
var echartsConfig = function() {

    // 1. 서버에서 데이터 가져오기
    $.ajax({
        type: "GET",
        url: "/partner/getRespCount",
        success: function(data) {
            var respWaitCount = data.respWaitCount;
            var respCompCount = data.respCompCount;

          // 2. X 축 (날짜) 데이터 추출 및 포맷팅
			var xAxisData = respWaitCount.map(function(item) {
			    var timestamp = item.date;
			    var date = new Date(timestamp);
			    var formattedDate = date.getFullYear() + '/' + (date.getMonth() + 1) + '/' + date.getDate(); // yyyy/MM/dd 형식으로 포맷팅
			    return formattedDate;
			});


            // 3. Y 축 (카운트) 데이터 추출
            var waitCountData = respWaitCount.map(function(item) {
                return item.count;
            });

            var compCountData = respCompCount.map(function(item) {
                return item.count;
            });

            // 4. 차트 업데이트
            if ($('#e_chart_5').length > 0) {
                var eChart_5 = echarts.init(document.getElementById('e_chart_5'));
                var option4 = {
                    color: ['#c3a098', '#9b6c61'],
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
                            data: xAxisData,
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
                            },
                            interval: 10 // Y 축 눈금 간격 설정
                        }
                    ],
                    series: [
                        {
                            name: '응답 대기',
                            type: 'bar',
                            barMaxWidth: 30,
                            data: waitCountData,
                            itemStyle: {
                                normal: {
                                    barBorderRadius: [6, 6, 0, 0],
                                }
                            },
                        },
                        {
                            name: '응답 완료',
                            type: 'bar',
                            barMaxWidth: 30,
                            data: compCountData,
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
        error: function(error) {
            console.error("에러 발생:", error);
        }
    });
}
/*****E-Charts function end*****/

/*****Resize function start*****/
var echartResize;
$(window).on("resize", function() {
    /*E-Chart Resize*/
    clearTimeout(echartResize);
    echartResize = setTimeout(echartsConfig, 200);
}).resize();
/*****Resize function end*****/

/*****Function Call start*****/
echartsConfig();
/*****Function Call end*****/
