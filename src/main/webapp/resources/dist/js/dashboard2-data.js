/*Dashboard2 Init*/
 
"use strict"; 
$(document).ready(function() {
	/*Toaster Alert*/
	$.toast({
		heading: 'Oh snap!',
		text: '<p>Change a few things and try submitting again.</p>',
		position: 'bottom-right',
		loaderBg:'#f83f37',
		class: 'jq-toast-danger',
		hideAfter: 3500, 
		stack: 6,
		showHideTransition: 'fade'
	});
	
	if( $('#pie_chart_2').length > 0 ){
		$('#pie_chart_2').easyPieChart({
			barColor : '#f83f37',
			lineWidth: 3,
			animate: 3000,
			size:	50,
			lineCap: 'square',
			scaleColor: '#f83f37',
			trackColor: '#f5f5f6',
			onStep: function(from, to, percent) {
				$(this.el).find('.percent').text(Math.round(percent));
			}
		});
	}
	
	if($('#area_chart').length > 0) {
		var data=[{
            period: 'Son',
            iphone: 10,
            ipad: 80,
        }, {
            period: 'Mon',
            iphone: 130,
            ipad: 100,
        }, {
            period: 'Tue',
            iphone: 80,
            ipad: 30,
        }, {
            period: 'Wed',
            iphone: 70,
            ipad: 200,
         }, {
            period: 'Thu',
            iphone: 180,
            ipad: 50,
        }, {
            period: 'Fri',
            iphone: 105,
            ipad: 170,
        },
         {
            period: 'Sat',
            iphone: 250,
            ipad: 150,
        }];
		
		var lineChart = Morris.Area({
        element: 'area_chart',
        data: data ,
        xkey: 'period',
        ykeys: ['iphone', 'ipad'],
        labels: ['iphone', 'ipad'],
        pointSize: 0,
        lineWidth:0,
		fillOpacity: .8,
		pointStrokeColors:['#f95851', '#F83F37'],
		behaveLikeLine: true,
		grid: false,
		hideHover: 'auto',
		lineColors: ['#f95851', '#F83F37'],
		resize: true,
		redraw: true,
		smooth: true,
		gridTextColor:'#878787',
		gridTextFamily:"Poppins",
        parseTime: false
    });
	}
	
});

/*****E-Charts function start*****/
var echartsConfig = function() { 
	if( $('#e_chart_10').length > 0 ){
		var e_chart_10 = echarts.init(document.getElementById('e_chart_10'));
		
		var option9 = {
			tooltip: {
				show: true,
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
			series: [
				{
					name:'',
					type:'pie',
					radius: ['0', '50%'],
					color: ['#f83f37', '#fdc5c3'],
					data:[
						{value:635, name:''},
						{value:379, name:''},
					],
					label: {
						normal: {
							formatter: '{b}\n{d}%'
						},
				  
					}
				}
			]
		};
		e_chart_10.setOption(option9);
		e_chart_10.resize();
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