.class public Lccsancom/mbridge/msdk/b/b/a;
.super Ljava/lang/Object;
.source "MraidJSController.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lccsancom/mbridge/msdk/b/b/a;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    nop

    .line 24
    const-string v0, "(function(){var isIOS=(/iphone|ipad|ipod/i).test(window.navigator.userAgent.toLowerCase());if(isIOS){console={};console.log=function(log){var iframe=document.createElement(\"iframe\");iframe.setAttribute(\"src\",\"ios-log: \"+log);document.documentElement.appendChild(iframe);iframe.parentNode.removeChild(iframe);iframe=null};console.debug=console.info=console.warn=console.error=console.log}}());(function(){var mraid=window.mraid={};var ua=window.navigator.userAgent;var isIOS=(/iPhone|iPad|iPod/i).test(ua);var isAndroid=(/Android/i).test(ua);var bridge=window.mraidbridge={nativeSDKFiredReady:false,nativeCallQueue:[],nativeCallInFlight:false,lastSizeChangeProperties:null};bridge.fireChangeEvent=function(properties){for(var p in properties){if(properties.hasOwnProperty(p)){var handler=changeHandlers[p];handler(properties[p])}}};bridge.nativeCallComplete=function(command){if(this.nativeCallQueue.length===0){this.nativeCallInFlight=false;return}var nextCall=this.nativeCallQueue.pop();callMethod(nextCall)};bridge.executeNativeCall=function(args){var command=args.shift();if(!this.nativeSDKFiredReady){console.log(\"rejecting \"+command+\" because mraid is not ready\");bridge.notifyErrorEvent(\"mraid is not ready\",command);return}var call=\"mraid://\"+command;var key,value;var isFirstArgument=true;for(var i=0;i<args.length;i+=2){key=args[i];value=args[i+1];if(value===null){continue}if(isFirstArgument){call+=\"?\";isFirstArgument=false}else{call+=\"&\"}call+=encodeURIComponent(key)+\"=\"+encodeURIComponent(value)}if(this.nativeCallInFlight){this.nativeCallQueue.push(call)}else{this.nativeCallInFlight=true;callMethod(call)}};function useIframe(url){var iframe=document.createElement(\"iframe\");iframe.setAttribute(\"frameborder\",\"0\");iframe.style.cssText=\"width:0;height:0;border:0;display:none;\";iframe.setAttribute(\"src\",url);setTimeout(function(){document.body.appendChild(iframe)},5)}function callMethod(call){broadcastEvent(EVENTS.INFO,\"\u8c03\u7528\u65b9\u6cd5:\"+call);if(isIOS){useIframe(call)}else{if(isAndroid){window.prompt(call,\"mraid:\")}}}bridge.setCurrentPosition=function(x,y,width,height){currentPosition={x:x,y:y,width:width,height:height};broadcastEvent(EVENTS.INFO,\"Set current position to \"+stringify(currentPosition))};bridge.setDefaultPosition=function(x,y,width,height){defaultPosition={x:x,y:y,width:width,height:height};broadcastEvent(EVENTS.INFO,\"Set default position to \"+stringify(defaultPosition))};bridge.setMaxSize=function(width,height){maxSize={width:width,height:height};expandProperties.width=width;expandProperties.height=height;broadcastEvent(EVENTS.INFO,\"Set max size to \"+stringify(maxSize))};bridge.setPlacementType=function(_placementType){placementType=_placementType;broadcastEvent(EVENTS.INFO,\"Set placement type to \"+stringify(placementType))};bridge.setScreenSize=function(width,height){screenSize={width:width,height:height};broadcastEvent(EVENTS.INFO,\"Set screen size to \"+stringify(screenSize))};bridge.setState=function(_state){state=_state;broadcastEvent(EVENTS.INFO,\"Set state to \"+stringify(state));broadcastEvent(EVENTS.STATECHANGE,state)};bridge.setIsViewable=function(_isViewable){isViewable=_isViewable;broadcastEvent(EVENTS.INFO,\"Set isViewable to \"+stringify(isViewable));broadcastEvent(EVENTS.VIEWABLECHANGE,isViewable)};bridge.setSupports=function(sms,tel,calendar,storePicture,inlineVideo){supportProperties={sms:sms,tel:tel,calendar:calendar,storePicture:storePicture,inlineVideo:inlineVideo}};bridge.notifyReadyEvent=function(){this.nativeSDKFiredReady=true;broadcastEvent(EVENTS.READY)};bridge.notifyErrorEvent=function(message,action){broadcastEvent(EVENTS.ERROR,message,action)};bridge.fireReadyEvent=bridge.notifyReadyEvent;bridge.fireErrorEvent=bridge.notifyErrorEvent;bridge.notifySizeChangeEvent=function(width,height){if(this.lastSizeChangeProperties&&width==this.lastSizeChangeProperties.width&&height==this.lastSizeChangeProperties.height){return}this.lastSizeChangeProperties={width:width,height:height};broadcastEvent(EVENTS.SIZECHANGE,width,height)};bridge.notifyStateChangeEvent=function(){if(state===STATES.LOADING){broadcastEvent(EVENTS.INFO,\"Native SDK initialized.\")}broadcastEvent(EVENTS.INFO,\"Set state to \"+stringify(state));broadcastEvent(EVENTS.STATECHANGE,state)};bridge.notifyViewableChangeEvent=function(){broadcastEvent(EVENTS.INFO,\"Set isViewable to \"+stringify(isViewable));broadcastEvent(EVENTS.VIEWABLECHANGE,isViewable)};bridge.audioVolumeChange=function(val){currentVolumePercentage=val;broadcastEvent(EVENTS.INFO,\"Set audioVolumeChange to \"+stringify(val));broadcastEvent(EVENTS.AUDIOVOLUMECHANGE,currentVolumePercentage)};var VERSION=mraid.VERSION=\"3.0\";var STATES=mraid.STATES={LOADING:\"loading\",DEFAULT:\"default\",EXPANDED:\"expanded\",HIDDEN:\"hidden\",RESIZED:\"resized\"};var EVENTS=mraid.EVENTS={ERROR:\"error\",INFO:\"info\",READY:\"ready\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",SIZECHANGE:\"sizeChange\",AUDIOVOLUMECHANGE:\"audioVolumeChange\"};var PLACEMENT_TYPES=mraid.PLACEMENT_TYPES={UNKNOWN:\"unknown\",INLINE:\"inline\",INTERSTITIAL:\"interstitial\"};var expandProperties={width:false,height:false,useCustomClose:false,isModal:true};var resizeProperties={width:false,height:false,offsetX:false,offsetY:false,customClosePosition:\"top-right\",allowOffscreen:true};var orientationProperties={allowOrientationChange:true,forceOrientation:\"none\"};var supportProperties={sms:false,tel:false,calendar:false,storePicture:false,inlineVideo:false};var lastSizeChangeProperties;var maxSize={};var currentPosition={};var defaultPosition={};var screenSize={};var hasSetCustomClose=false;var listeners={};var appOrientation={};var currentVolumePercentage=\"\";var state=STATES.LOADING;var isViewable=false;var placementType=PLACEMENT_TYPES.UNKNOWN;var hostSDKVersion={\"major\":0,\"minor\":0,\"patch\":0};var EventListeners=function(event){this.event=event;this.count=0;var listeners={};this.add=function(func){var id=String(func);if(!listeners[id]){listeners[id]=func;this.count++}};this.remove=function(func){var id=String(func);if(listeners[id]){listeners[id]=null;delete listeners[id];this.count--;return true}else{return false}};this.removeAll=function(){for(var id in listeners){if(listeners.hasOwnProperty(id)){this.remove(listeners[id])}}};this.broadcast=function(args){for(var id in listeners){if(listeners.hasOwnProperty(id)){listeners[id].apply(mraid,args)}}};this.toString=function(){var out=[event,\":\"];for(var id in listeners){if(listeners.hasOwnProperty(id)){out.push(\"|\",id,\"|\")}}return out.join(\"\")}};var broadcastEvent=function(){var args=new Array(arguments.length);var l=arguments.length;for(var i=0;i<l;i++){args[i]=arguments[i]}var event=args.shift();if(listeners[event]){listeners[event].broadcast(args)}};var contains=function(value,array){for(var i in array){if(array[i]===value){return true}}return false};var clone=function(obj){if(obj===null){return null}var f=function(){};f.prototype=obj;return new f()};var stringify=function(obj){if(typeof obj===\"object\"){var out=[];if(obj.push){for(var p in obj){out.push(obj[p])}return\"[\"+out.join(\",\")+\"]\"}else{for(var p in obj){out.push(\"\'\"+p+\"\': \"+obj[p])}return\"{\"+out.join(\",\")+\"}\"}}else{return String(obj)}};var trim=function(str){return str.replace(/^\\s+|\\s+$/g,\"\")};var changeHandlers={state:function(val){if(state===STATES.LOADING){broadcastEvent(EVENTS.INFO,\"Native SDK initialized.\")}state=val;broadcastEvent(EVENTS.INFO,\"Set state to \"+stringify(val));broadcastEvent(EVENTS.STATECHANGE,state)},viewable:function(val){isViewable=val;broadcastEvent(EVENTS.INFO,\"Set isViewable to \"+stringify(val));broadcastEvent(EVENTS.VIEWABLECHANGE,isViewable)},placementType:function(val){broadcastEvent(EVENTS.INFO,\"Set placementType to \"+stringify(val));placementType=val},sizeChange:function(val){broadcastEvent(EVENTS.INFO,\"Set screenSize to \"+stringify(val));for(var key in val){if(val.hasOwnProperty(key)){screenSize[key]=val[key]}}},currentAppOrientation:function(orientation,locked){appOrientation={orientation:orientation,locked:locked};broadcastEvent(EVENTS.INFO,\"Set app orientation to \"+stringify(appOrientation))},supports:function(val){broadcastEvent(EVENTS.INFO,\"Set supports to \"+stringify(val));supportProperties=val},hostSDKVersion:function(val){var versions=val.split(\".\").map(function(version){return parseInt(version,10)}).filter(function(version){return version>=0});if(versions.length>=3){hostSDKVersion[\"major\"]=parseInt(versions[0],10);hostSDKVersion[\"minor\"]=parseInt(versions[1],10);hostSDKVersion[\"patch\"]=parseInt(versions[2],10);broadcastEvent(EVENTS.INFO,\"Set hostSDKVersion to \"+stringify(hostSDKVersion))}}};var validate=function(obj,validators,action,merge){if(!merge){if(obj===null){broadcastEvent(EVENTS.ERROR,\"Required object not provided.\",action);return false}else{for(var i in validators){if(validators.hasOwnProperty(i)&&obj[i]===undefined){broadcastEvent(EVENTS.ERROR,\"Object is missing required property: \"+i,action);return false}}}}for(var prop in obj){var validator=validators[prop];var value=obj[prop];if(validator&&!validator(value)){broadcastEvent(EVENTS.ERROR,\"Value of property \"+prop+\" is invalid: \"+value,action);return false}}return true};var expandPropertyValidators={useCustomClose:function(v){return(typeof v===\"boolean\")},};mraid.addEventListener=function(event,listener){if(!event||!listener){broadcastEvent(EVENTS.ERROR,\"Both event and listener are required.\",\"addEventListener\")}else{if(!contains(event,EVENTS)){broadcastEvent(EVENTS.ERROR,\"Unknown MRAID event: \"+event,\"addEventListener\")}else{if(!listeners[event]){listeners[event]=new EventListeners(event)}listeners[event].add(listener)}}};mraid.close=function(){if(state===STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,\"Ad cannot be closed when it is already hidden.\",\"close\")}else{bridge.executeNativeCall([\"close\"])}};mraid.unload=function(){if(state===STATES.EXPANDED){broadcastEvent(EVENTS.ERROR,\"Ad cannot be unload when it is already EXPANDED.\",\"close\")}else{bridge.executeNativeCall([\"unload\"])}};mraid.expand=function(URL){if(!(this.getState()===STATES.DEFAULT||this.getState()===STATES.RESIZED)){broadcastEvent(EVENTS.ERROR,\"Ad can only be expanded from the default or resized state.\",\"expand\")}else{var args=[\"expand\",\"shouldUseCustomClose\",expandProperties.useCustomClose];if(URL){args=args.concat([\"url\",URL])}bridge.executeNativeCall(args)}};mraid.getExpandProperties=function(){var properties={width:expandProperties.width,height:expandProperties.height,useCustomClose:expandProperties.useCustomClose,isModal:expandProperties.isModal};return properties};mraid.getCurrentPosition=function(){return{x:currentPosition.x,y:currentPosition.y,width:currentPosition.width,height:currentPosition.height}};mraid.getDefaultPosition=function(){return{x:defaultPosition.x,y:defaultPosition.y,width:defaultPosition.width,height:defaultPosition.height}};mraid.getMaxSize=function(){return{width:maxSize.width,height:maxSize.height}};mraid.getPlacementType=function(){return placementType};mraid.getScreenSize=function(){return{width:screenSize.width,height:screenSize.height}};mraid.getState=function(){return state};mraid.isViewable=function(){return isViewable};mraid.getVersion=function(){return mraid.VERSION};mraid.getCurrentAppOrientation=function(){return{orientation:appOrientation.orientation,locked:appOrientation.locked}};mraid.getAudioVolume=function(){return currentVolumePercentage};mraid.open=function(URL){if(!URL){broadcastEvent(EVENTS.ERROR,\"URL is required.\",\"open\")}else{bridge.executeNativeCall([\"open\",\"url\",URL])}};mraid.removeEventListener=function(event,listener){if(!event){broadcastEvent(EVENTS.ERROR,\"Event is required.\",\"removeEventListener\");return}if(listener){var success=false;if(listeners[event]){success=listeners[event].remove(listener)}if(!success){broadcastEvent(EVENTS.ERROR,\"Listener not currently registered for event.\",\"removeEventListener\");return}}else{if(!listener&&listeners[event]){listeners[event].removeAll()}}if(listeners[event]&&listeners[event].count===0){listeners[event]=null;delete listeners[event]}};mraid.setExpandProperties=function(properties){if(validate(properties,expandPropertyValidators,\"setExpandProperties\",true)){if(properties.hasOwnProperty(\"useCustomClose\")){expandProperties.useCustomClose=properties.useCustomClose}}};mraid.useCustomClose=function(shouldUseCustomClose){expandProperties.useCustomClose=shouldUseCustomClose;hasSetCustomClose=true;bridge.executeNativeCall([\"useCustomClose\",\"shouldUseCustomClose\",shouldUseCustomClose])};mraid.createCalendarEvent=function(parameters){CalendarEventParser.initialize(parameters);if(CalendarEventParser.parse()){bridge.executeNativeCall(CalendarEventParser.arguments)}else{broadcastEvent(EVENTS.ERROR,CalendarEventParser.errors[0],\"createCalendarEvent\")}};mraid.supports=function(feature){return supportProperties[feature]};mraid.playVideo=function(uri){if(!mraid.isViewable()){broadcastEvent(EVENTS.ERROR,\"playVideo cannot be called until the ad is viewable\",\"playVideo\");return}if(!uri){broadcastEvent(EVENTS.ERROR,\"playVideo must be called with a valid URI\",\"playVideo\")}else{bridge.executeNativeCall([\"playVideo\",\"uri\",uri])}};mraid.storePicture=function(uri){if(!mraid.isViewable()){broadcastEvent(EVENTS.ERROR,\"storePicture cannot be called until the ad is viewable\",\"storePicture\");return}if(!uri){broadcastEvent(EVENTS.ERROR,\"storePicture must be called with a valid URI\",\"storePicture\")}else{bridge.executeNativeCall([\"storePicture\",\"uri\",uri])}};var resizePropertyValidators={width:function(v){return !isNaN(v)&&v>0},height:function(v){return !isNaN(v)&&v>0},offsetX:function(v){return !isNaN(v)},offsetY:function(v){return !isNaN(v)},customClosePosition:function(v){return(typeof v===\"string\"&&[\"top-right\",\"bottom-right\",\"top-left\",\"bottom-left\",\"center\",\"top-center\",\"bottom-center\"].indexOf(v)>-1)},allowOffscreen:function(v){return(typeof v===\"boolean\")}};mraid.setOrientationProperties=function(properties){if(properties.hasOwnProperty(\"allowOrientationChange\")){orientationProperties.allowOrientationChange=properties.allowOrientationChange}if(properties.hasOwnProperty(\"forceOrientation\")){orientationProperties.forceOrientation=properties.forceOrientation}var args=[\"setOrientationProperties\",\"allowOrientationChange\",orientationProperties.allowOrientationChange,\"forceOrientation\",orientationProperties.forceOrientation];bridge.executeNativeCall(args)};mraid.getOrientationProperties=function(){return{allowOrientationChange:orientationProperties.allowOrientationChange,forceOrientation:orientationProperties.forceOrientation}};mraid.resize=function(){if(!(this.getState()===STATES.DEFAULT||this.getState()===STATES.RESIZED)){broadcastEvent(EVENTS.ERROR,\"Ad can only be resized from the default or resized state.\",\"resize\")}else{if(!resizeProperties.width||!resizeProperties.height){broadcastEvent(EVENTS.ERROR,\"Must set resize properties before calling resize()\",\"resize\")}else{var args=[\"resize\",\"width\",resizeProperties.width,\"height\",resizeProperties.height,\"offsetX\",resizeProperties.offsetX||0,\"offsetY\",resizeProperties.offsetY||0,\"customClosePosition\",resizeProperties.customClosePosition,\"allowOffscreen\",!!resizeProperties.allowOffscreen];bridge.executeNativeCall(args)}}};mraid.getResizeProperties=function(){var properties={width:resizeProperties.width,height:resizeProperties.height,offsetX:resizeProperties.offsetX,offsetY:resizeProperties.offsetY,customClosePosition:resizeProperties.customClosePosition,allowOffscreen:resizeProperties.allowOffscreen};return properties};mraid.setResizeProperties=function(properties){if(validate(properties,resizePropertyValidators,\"setResizeProperties\",true)){var desiredProperties=[\"width\",\"height\",\"offsetX\",\"offsetY\",\"customClosePosition\",\"allowOffscreen\"];var length=desiredProperties.length;for(var i=0;i<length;i++){var propname=desiredProperties[i];if(properties.hasOwnProperty(propname)){resizeProperties[propname]=properties[propname]}}}};mraid.getHostSDKVersion=function(){return hostSDKVersion};var CalendarEventParser={initialize:function(parameters){this.parameters=parameters;this.errors=[];this.arguments=[\"createCalendarEvent\"]},parse:function(){if(!this.parameters){this.errors.push(\"The object passed to createCalendarEvent cannot be null.\")}else{this.parseDescription();this.parseLocation();this.parseSummary();this.parseStartAndEndDates();this.parseReminder();this.parseRecurrence();this.parseTransparency()}var errorCount=this.errors.length;if(errorCount){this.arguments.length=0}return(errorCount===0)},parseDescription:function(){this._processStringValue(\"description\")},parseLocation:function(){this._processStringValue(\"location\")},parseSummary:function(){this._processStringValue(\"summary\")},parseStartAndEndDates:function(){this._processDateValue(\"start\");this._processDateValue(\"end\")},parseReminder:function(){var reminder=this._getParameter(\"reminder\");if(!reminder){return}if(reminder<0){this.arguments.push(\"relativeReminder\");this.arguments.push(parseInt(reminder)/1000)}else{this.arguments.push(\"absoluteReminder\");this.arguments.push(reminder)}},parseRecurrence:function(){var recurrenceDict=this._getParameter(\"recurrence\");if(!recurrenceDict){return}this.parseRecurrenceInterval(recurrenceDict);this.parseRecurrenceFrequency(recurrenceDict);this.parseRecurrenceEndDate(recurrenceDict);this.parseRecurrenceArrayValue(recurrenceDict,\"daysInWeek\");this.parseRecurrenceArrayValue(recurrenceDict,\"daysInMonth\");this.parseRecurrenceArrayValue(recurrenceDict,\"daysInYear\");this.parseRecurrenceArrayValue(recurrenceDict,\"monthsInYear\")},parseTransparency:function(){var validValues=[\"opaque\",\"transparent\"];if(this.parameters.hasOwnProperty(\"transparency\")){var transparency=this.parameters.transparency;if(contains(transparency,validValues)){this.arguments.push(\"transparency\");this.arguments.push(transparency)}else{this.errors.push(\"transparency must be opaque or transparent\")}}},parseRecurrenceArrayValue:function(recurrenceDict,kind){if(recurrenceDict.hasOwnProperty(kind)){var array=recurrenceDict[kind];if(!array||!(array instanceof Array)){this.errors.push(kind+\" must be an array.\")}else{var arrayStr=array.join(\",\");this.arguments.push(kind);this.arguments.push(arrayStr)}}},parseRecurrenceInterval:function(recurrenceDict){if(recurrenceDict.hasOwnProperty(\"interval\")){var interval=recurrenceDict.interval;if(!interval){this.errors.push(\"Recurrence interval cannot be null.\")}else{this.arguments.push(\"interval\");this.arguments.push(interval)}}else{this.arguments.push(\"interval\");this.arguments.push(1)}},parseRecurrenceFrequency:function(recurrenceDict){if(recurrenceDict.hasOwnProperty(\"frequency\")){var frequency=recurrenceDict.frequency;var validFrequencies=[\"daily\",\"weekly\",\"monthly\",\"yearly\"];if(contains(frequency,validFrequencies)){this.arguments.push(\"frequency\");this.arguments.push(frequency)}else{this.errors.push(\'Recurrence frequency must be one of: \"daily\", \"weekly\", \"monthly\", \"yearly\".\')}}},parseRecurrenceEndDate:function(recurrenceDict){var expires=recurrenceDict.expires;if(!expires){return}this.arguments.push(\"expires\");this.arguments.push(expires)},_getParameter:function(key){if(this.parameters.hasOwnProperty(key)){return this.parameters[key]}return null},_processStringValue:function(kind){if(this.parameters.hasOwnProperty(kind)){var value=this.parameters[kind];this.arguments.push(kind);this.arguments.push(value)}},_processDateValue:function(kind){if(this.parameters.hasOwnProperty(kind)){var dateString=this._getParameter(kind);this.arguments.push(kind);this.arguments.push(dateString)}}}}());"

    const-string v1, "(?m)^\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?m)^//.*(?=\\n)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/b/b/a;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/b/b/a;
    .locals 2

    .line 33
    sget-object v0, Lccsancom/mbridge/msdk/b/b/a;->b:Lccsancom/mbridge/msdk/b/b/a;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lccsancom/mbridge/msdk/b/b/a;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/b/b/a;->b:Lccsancom/mbridge/msdk/b/b/a;

    if-nez v1, :cond_0

    new-instance v1, Lccsancom/mbridge/msdk/b/b/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/b/b/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/b/b/a;->b:Lccsancom/mbridge/msdk/b/b/a;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/b/b/a;->b:Lccsancom/mbridge/msdk/b/b/a;

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/b/b/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/b/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/b/b/a;Ljava/lang/String;)V
    .locals 2

    .line 20
    nop

    .line 1073
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/b/b/a$2;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/b/b/a$2;-><init>(Lccsancom/mbridge/msdk/b/b/a;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 92
    const-string v0, ""

    .line 94
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/c;->i:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "mraid_js.txt"

    .line 96
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/o;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MraidJSController"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 42
    if-nez p1, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    const-string v1, "MraidJSController"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    return-void

    .line 52
    :cond_1
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/b/a/a;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/b/a/a;-><init>(Lccsanandroid/content/Context;)V

    .line 53
    const/4 p1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lccsancom/mbridge/msdk/b/b/a$1;

    invoke-direct {v3, p0, p2}, Lccsancom/mbridge/msdk/b/b/a$1;-><init>(Lccsancom/mbridge/msdk/b/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v2, v3}, Lccsancom/mbridge/msdk/b/a/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 108
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lccsancom/mbridge/msdk/b/b/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/b/b/a;->c:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->V()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/b/b/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 117
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/b/b/a;->a:Ljava/lang/String;

    return-object v0

    .line 120
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/b/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    sget-object v0, Lccsancom/mbridge/msdk/b/b/a;->a:Ljava/lang/String;

    return-object v0
.end method
