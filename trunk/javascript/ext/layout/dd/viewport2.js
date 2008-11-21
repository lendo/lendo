Ext.onReady(function(){
	
	var textCount = 1;
	var idCount = 1;
	
	creatBorderLayout = function() {};
	
	addDDEvents = function(_panel) {
		foucusCls = 'foucusCls';
		new Ext.dd.DropZone(_panel.body.dom, {
			notifyEnter : function() {
				this.el.addClass(foucusCls);
			},
			notifyDrop : function(source, e, data) {
				this.el.removeClass(foucusCls);
				if(data.panel.id =='Horizontal') {
					this.panel.add(creatBorderLayout('h'));
				}
				if(data.panel.id =='Vertical') {
					this.panel.add(creatBorderLayout('v'));
				}
				this.panel.doLayout();
				this.unreg();
			},
			notifyOut : function() {
				this.el.removeClass(foucusCls);
			},
			notifyOver : function() {
				this.el.addClass(foucusCls);
			},
			panel : _panel
		});
	}
	
	creatBorderLayout = function(type) {
		var regionType = 'north';
		
		if(type == 'h') {
			regionType = 'west';
		}
		else if(type == 'v') {
			regionType = 'north';
		}
		
		var centerPanel = new Ext.Panel({
			id : 'area' + idCount++,
			layout : 'fit',
			region : 'center',
			border : false,
			bodyBorder : false,
			html : '<div class="textCenter">Area' + textCount +'</div>'
		});
		centerPanel.on('render',addDDEvents.createDelegate(this,[centerPanel]));
		
		textCount ++;
		
		var anotherPanel = new Ext.Panel({
			id : 'area' + idCount++,
			layout : 'fit',
			border : false,
			bodyBorder : false,
			split : true,
			width : 40,
			height:40,
			region : regionType,
			html : '<div class="textCenter">Area' + textCount +'</div>'
		});
		anotherPanel.on('render',addDDEvents.createDelegate(this,[anotherPanel]));
		
		var borderPanel = new Ext.Panel({
			id : 'border' + idCount,
			layout : 'border',
			border : false,
			bodyBorder : false,
			items :[
				centerPanel,
				anotherPanel
			]
		});
		
		return borderPanel;
	}

	verticalDDPanel = new Ext.Panel({
		id : 'Vertical',
		title : 'Vertical',
		draggable : true
		
	});
	
	horizontalDDPanel = new Ext.Panel({
		id : 'Horizontal',
		title : 'Horizontal',
		draggable : true
	});
	
	leftPanel = new Ext.Panel({
		id : 'leftPanel',
		region : 'west',
		layout : 'table',
		layoutConfig : {
			columns:1
		},
		width : 175,
		defaults : {
			frame: true,
			width : 150,
			height : 150
		},
		items : [
			verticalDDPanel,
			horizontalDDPanel
		]
	});
	
	centerPanel = new Ext.Panel({
		id	: 'area' + idCount++,
		title : 'display area',
		region : 'center',
		layout : 'fit',
		defaults : {
			border : false,
			bodyBorder : false
		},
		html : '<div class="textCenter">Area ' + textCount + '</div>'
	});
	
	var displayPanel = new Ext.Panel({
		layout:'border',
		width : 800,
		height : 700,
		renderTo : 'displayDiv',
		items : [
			leftPanel,
			centerPanel
		]
	});
	
	addDDEvents(centerPanel);
	
});