.class public Lccsancom/san/mediation/helper/MintegralHelper;
.super Ljava/lang/Object;
.source "MintegralHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MintegralHelper"

.field private static volatile hasInitialized:Z

.field private static final sInitListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/san/ads/base/InitListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lccsancom/san/mediation/helper/MintegralHelper;->sInitListeners:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/san/mediation/helper/MintegralHelper;->hasInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lccsanandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lccsanandroid/content/Context;

    .line 26
    invoke-static {p0}, Lccsancom/san/mediation/helper/MintegralHelper;->initializeMobileAds(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 26
    sput-boolean p0, Lccsancom/san/mediation/helper/MintegralHelper;->hasInitialized:Z

    return p0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 26
    invoke-static {}, Lccsancom/san/mediation/helper/MintegralHelper;->notifyInitFinished()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lccsancom/san/mediation/helper/MintegralHelper;->notifyInitFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static dip2px(F)I
    .locals 3
    .param p0, "dip"    # F

    .line 129
    invoke-static {}, Lccsanandroid/content/res/Resources;->getSystem()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->density:F

    .line 130
    .local v0, "scale":F
    mul-float v1, p0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static getAppKeyAndId(Lccsanandroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 96
    const-string v0, "Mintegral"

    invoke-static {p0, v0}, Lccsancom/san/ads/AdSourceHelper;->getAdSourceKey(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "appIdAndKey":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "keyArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 105
    const-string v2, "Init MIntegral sdk find MIntegral pubId error, please check <meta-data com.san.key.Mintegral> in Manifest"

    .line 106
    .local v2, "errorMsg":Ljava/lang/String;
    const-string v3, "MintegralHelper"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3

    .line 109
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 99
    .end local v1    # "keyArray":[Ljava/lang/String;
    :cond_1
    const-string v1, "No MIntegral Key configured in your AndroidManifest.xml"

    .line 100
    .local v1, "error":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "15.7.41.5"

    return-object v0
.end method

.method public static initialize(Lccsanandroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/san/mediation/helper/MintegralHelper;->initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V

    .line 33
    return-void
.end method

.method public static initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "listener"    # Lccsancom/san/ads/base/InitListener;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    sget-object v0, Lccsancom/san/mediation/helper/MintegralHelper;->sInitListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    sget-boolean v0, Lccsancom/san/mediation/helper/MintegralHelper;->hasInitialized:Z

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lccsancom/san/mediation/helper/MintegralHelper;->notifyInitFinished()V

    .line 41
    return-void

    .line 44
    :cond_1
    if-nez p0, :cond_2

    .line 45
    const-string v0, "initialize MIntegralAds return: context is null"

    .line 46
    .local v0, "failInfo":Ljava/lang/String;
    const-string v1, "MintegralHelper"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v0}, Lccsancom/san/mediation/helper/MintegralHelper;->notifyInitFailed(Ljava/lang/String;)V

    .line 48
    return-void

    .line 51
    .end local v0    # "failInfo":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 52
    invoke-static {p0}, Lccsancom/san/mediation/helper/MintegralHelper;->initializeMobileAds(Lccsanandroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/helper/MintegralHelper$1;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/helper/MintegralHelper$1;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 61
    :goto_0
    return-void
.end method

.method private static initializeMobileAds(Lccsanandroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 64
    invoke-static {p0}, Lccsancom/san/mediation/helper/MintegralHelper;->getAppKeyAndId(Lccsanandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "keyArray":[Ljava/lang/String;
    array-length v1, v0

    const-string v2, "MintegralHelper"

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 66
    const-string v1, "initializeMIntegralAds return: fetch app key and id fail!"

    .line 67
    .local v1, "failInfo":Ljava/lang/String;
    invoke-static {v2, v1}, Lccsancom/san/ads/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v1}, Lccsancom/san/mediation/helper/MintegralHelper;->notifyInitFailed(Ljava/lang/String;)V

    .line 69
    return-void

    .line 71
    .end local v1    # "failInfo":Ljava/lang/String;
    :cond_0
    const-string v1, "initialize ..."

    invoke-static {v2, v1}, Lccsancom/san/ads/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 73
    .local v3, "startTime":J
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 74
    .local v1, "appKey":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 75
    .local v5, "appId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  appKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lccsancom/mbridge/msdk/out/MBridgeSDKFactory;->getMBridgeSDK()Lccsancom/mbridge/msdk/system/a;

    move-result-object v2

    .line 77
    .local v2, "sdk":Lccsancom/mbridge/msdk/MBridgeSDK;
    invoke-interface {v2, v5, v1}, Lccsancom/mbridge/msdk/MBridgeSDK;->getMBConfigurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 78
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->canCollectUserInfo()Z

    move-result v7

    invoke-interface {v2, p0, v7}, Lccsancom/mbridge/msdk/MBridgeSDK;->setConsentStatus(Lccsanandroid/content/Context;I)V

    .line 79
    new-instance v7, Lccsancom/san/mediation/helper/MintegralHelper$2;

    invoke-direct {v7, v3, v4}, Lccsancom/san/mediation/helper/MintegralHelper$2;-><init>(J)V

    invoke-interface {v2, v6, p0, v7}, Lccsancom/mbridge/msdk/MBridgeSDK;->init(Ljava/util/Map;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/out/SDKInitStatusListener;)V

    .line 93
    return-void
.end method

.method private static notifyInitFailed(Ljava/lang/String;)V
    .locals 3
    .param p0, "errorMsg"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lccsancom/san/mediation/helper/MintegralHelper;->sInitListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .local v0, "initListenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsancom/san/ads/base/InitListener;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 123
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/base/InitListener;

    .line 124
    .local v2, "initListener":Lccsancom/san/ads/base/InitListener;
    invoke-interface {v2, p0}, Lccsancom/san/ads/base/InitListener;->onInitFailed(Ljava/lang/String;)V

    .line 125
    .end local v2    # "initListener":Lccsancom/san/ads/base/InitListener;
    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method private static notifyInitFinished()V
    .locals 3

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lccsancom/san/mediation/helper/MintegralHelper;->sInitListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v0, "initListenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsancom/san/ads/base/InitListener;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/base/InitListener;

    .line 116
    .local v2, "initListener":Lccsancom/san/ads/base/InitListener;
    invoke-interface {v2}, Lccsancom/san/ads/base/InitListener;->onInitFinished()V

    .line 117
    .end local v2    # "initListener":Lccsancom/san/ads/base/InitListener;
    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method
