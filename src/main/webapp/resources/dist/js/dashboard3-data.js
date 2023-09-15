/*Dashboard3 Init*/
 
"use strict"; 
$(document).ready(function() {
	var data = [],
	totalPoints = 300;

	/*Getting Random Data*/
	function getRandomData() {

		if (data.length > 0)
			data = data.slice(1);

		// Do a random walk

		while (data.length < totalPoints) {

			var prev = data.length > 0 ? data[data.length - 1] : 50,
				y = prev + Math.random() * 10 - 5;

			if (y < 0) {
				y = 0;
			} else if (y > 100) {
				y = 100;
			}

			data.push(y);
		}

		// Zip the generated y values with the x values

		var res = [];
		for (var i = 0; i < data.length; ++i) {
			res.push([i, data[i]])
		}

		return res;
	}
	/***Filled Line Chart***/
	if( $('#flot_line_chart_moving').length > 0 ){	
		/*Defining Option*/
		var fill_line_chartop = {
			series:{
				shadowSize: 0,
				lines: {
					fill: true
				},
			},
				grid: {
				color: "#fff",
				hoverable: true,
				borderWidth: 0,
				backgroundColor: 'transparent'
			},
			colors: ["#f83f37"],
			tooltip: true,
			tooltipOpts: {
				content: "Y: %y",
				defaultTheme: false
			},
			yaxis: {
				show: true,
				color: '#6f7a7f',
				tickColor: 'transparent'
			},
			xaxis: {
				show: false
			}
		};
		
		/*Defining Data*/
		var fill_line_chart_data = {
			data: getRandomData(),
		}

		/*Chart Plot*/
		$.plot($("#flot_line_chart_moving"), [fill_line_chart_data], fill_line_chartop);
		
		/*Realtime Data*/
		setInterval(function updateRandom() {
			fill_line_chart_data = getRandomData();
			$.plot($("#flot_line_chart_moving"), [fill_line_chart_data], fill_line_chartop)
		}, 40);	
	}

});

var sparklineLogin = function() { 
	if( $('#sparkline_4').length > 0 ){
		$("#sparkline_4").sparkline([2,4,4,6,8,5,6,4,8,6,0,2], {
			type: 'line',
			width: '100%',
			height: '50',
			resize: true,
			lineWidth: '2',
			lineColor: '#f83f37',
			fillColor: 'rgba(248, 63, 55, 0)',
			spotColor:'#f83f37',
			spotRadius:'2',
			minSpotColor: '#f83f37',
			maxSpotColor: '#f83f37',
			highlightLineColor: 'rgba(0, 0, 0, 0)',
			highlightSpotColor: '#f83f37'
		});
	}
	if( $('#sparkline_5').length > 0 ){
		$("#sparkline_5").sparkline([2,4,4,6,8,-1,6,4,8,6,6,2], {
			type: 'line',
			width: '100%',
			height: '50',
			resize: true,
			lineWidth: '2',
			lineColor: '#f83f37',
			fillColor: 'rgba(248, 63, 55, 0)',
			spotColor:'#f83f37',
			spotRadius:'2',
			minSpotColor: '#f83f37',
			maxSpotColor: '#f83f37',
			highlightLineColor: 'rgba(0, 0, 0, 0)',
			highlightSpotColor: '#f83f37'
		});
	}
	if( $('#sparkline_6').length > 0 ){
		$("#sparkline_6").sparkline([0,1,4,6,8,5,6,4,8,6,2,0], {
			type: 'line',
			width: '100%',
			height: '50',
			resize: true,
			lineWidth: '2',
			lineColor: '#f83f37',
			fillColor: 'rgba(248, 63, 55, 0)',
			spotColor:'#f83f37',
			spotRadius:'2',
			minSpotColor: '#f83f37',
			maxSpotColor: '#f83f37',
			highlightLineColor: 'rgba(0, 0, 0, 0)',
			highlightSpotColor: '#f83f37'
		});
	}
	if( $('#sparkline_7').length > 0 ){
		$("#sparkline_7").sparkline([2,4,4,6,8,5,6,4,8,6,6,2], {
			type: 'line',
			width: '100%',
			height: '50',
			resize: true,
			lineWidth: '2',
			lineColor: '#f83f37',
			fillColor: 'rgba(248, 63, 55, 0)',
			spotColor:'#f83f37',
			spotRadius:'2',
			minSpotColor: '#f83f37',
			maxSpotColor: '#f83f37',
			highlightLineColor: 'rgba(0, 0, 0, 0)',
			highlightSpotColor: '#f83f37'
		});
	}
}

/*****E-Charts function start*****/
var echartsConfig = function() { 
	if( $('#e_chart_4').length > 0 ){
		var eChart_4 = echarts.init(document.getElementById('e_chart_4'));
		var option3 = {
			color: ['#f83f37', '#fb9f9b','#fa7d77','#fdc5c3'],		
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
			yAxis : [
				{
					type : 'category',
					data : ['2011','2012','2013','2014','2015','2016','2017'],
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
			series : [
				{
					name:'1',
					type:'bar',
					stack: 'st1',
					barMaxWidth: 20,
					data:[320, 332, 301, 334, 390, 330, 320],
				},
				{
					name:'2',
					type:'bar',
					stack: 'st1',
					barMaxWidth: 20,
					data:[120, 132, 101, 134, 90, 230, 210],
				},
				{
					name:'3',
					type:'bar',
					stack: 'st1',
					barMaxWidth: 20,
					data:[220, 182, 191, 234, 290, 330, 310],
				},
				{
					name:'4',
					type:'bar',
					stack: 'st1',
					barMaxWidth: 20,
					data:[150, 232, 201, 154, 190, 330, 410],
				}
			]
		};

		eChart_4.setOption(option3);
		eChart_4.resize();
	}
}
/*****E-Charts function end*****/
$('#dash-tab a').on('click', function (e) {
	clearTimeout(echartResize);
	echartResize = setTimeout(echartsConfig, 200);
})

/*****Resize function start*****/
var sparkResize,echartResize;
$(window).on("resize", function () {
	/*Sparkline-Chart Resize*/
	clearTimeout(sparkResize);
	sparkResize = setTimeout(sparklineLogin, 200);
	
	/*E-Chart Resize*/
	clearTimeout(echartResize);
	echartResize = setTimeout(echartsConfig, 200);
}).resize(); 
/*****Resize function end*****/

/*****Function Call start*****/
echartsConfig();
sparklineLogin();
/*****Function Call end*****/