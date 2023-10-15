/*Pie Charts Init*/
 
"use strict"; 

/*****E-Charts function start*****/
	var echartsConfig = function() {
    $.ajax({
        type: "GET",
        url: "/partner/getItemCount",
        success: function(data) {
            var itemCount = data;
            
            var itemWaitCount = itemCount["itemWaitCount"];
            var itemCompCount = itemCount["itemCompCount"];
    
            if ($('#itemChart').length > 0) {
                var itemChart = echarts.init(document.getElementById('itemChart'));
                
                var option1 = {
                    tooltip: {
                        show: true,
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
                    series: [
                        {
                            name: '',
                            type: 'pie',
                            radius: '55%',
                            color: ['#c3a098', '#9b6c61'],
                            data: [
                                { name: '잔여매물', value: itemWaitCount },
                                { name: '거래완료', value: itemCompCount },
                            ],
                            label: {
                                normal: {
                                    formatter: '{b}\n{d}%'
                                },
                            }
                        }
                    ]
                };
                itemChart.setOption(option1);
                itemChart.resize();
            }
        },
        error: function(error) {
            console.error("에러 발생:", error);
        }
    });
}

// Function Call
echartsConfig();


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