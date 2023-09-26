/*Dashboard3 Init*/
 
"use strict"; 

/*****E-Charts function start*****/
var echartsConfig = function() { 

	if( $('#e_chart_5').length > 0 ){
		var eChart_5 = echarts.init(document.getElementById('e_chart_5'));
		var option4 = {
			color: ['#90d7a3','#3fb95f',],		
			tooltip: {
				show: true,
				trigger: 'axis',
				backgroundColor: '#fff',
				borderRadius:6,
				padding:6,
				axisPointer:{
					lineStyle:{
						width:0,
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
			xAxis : [
				{
					type : 'category',
					data : ['26일(월)','27일(화)','28일(수)','29일(목)','30일(금)'],
					axisLine: {
						show:false
					},
					axisTick: {
						show:false
					},
					axisLabel: {
						textStyle: {
							color: '#5e7d8a'
						}
					}
				}
			],
			yAxis : [
				{
					type : 'value',
					axisLine: {
						show:false
					},
					axisTick: {
						show:false
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
			series : [
				{
					name:'2',
					type:'bar',
					barMaxWidth: 30,
					data:[120, 132, 101, 134, 90, 230, 210],
					itemStyle: {
						normal: {
							barBorderRadius: [6, 6, 0, 0] ,
						}
					},
				},
				{
					name:'3',
					type:'bar',
					barMaxWidth: 30,
					data:[220, 182, 191, 234, 290, 330, 310],
					itemStyle: {
						normal: {
							barBorderRadius: [6, 6, 0, 0] ,
						}
					},
				}
			]
		};

		eChart_5.setOption(option4);
		eChart_5.resize();
	}
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