.class public Lccsancom/san/mediation/helper/VungleHelper;
.super Ljava/lang/Object;
.source "VungleHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VungleHelper"

.field private static volatile hasInitialized:Z

.field private static final sCachedNativeAdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/vungle/warren/VungleNativeAd;",
            ">;"
        }
    .end annotation
.end field

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

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lccsancom/san/mediation/helper/VungleHelper;->sInitListeners:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/san/mediation/helper/VungleHelper;->hasInitialized:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lccsancom/san/mediation/helper/VungleHelper;->sCachedNativeAdMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 23
    sput-boolean p0, Lccsancom/san/mediation/helper/VungleHelper;->hasInitialized:Z

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 23
    invoke-static {}, Lccsancom/san/mediation/helper/VungleHelper;->notifyInitFinished()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 23
    invoke-static {p0}, Lccsancom/san/mediation/helper/VungleHelper;->notifyInitFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static clearNativeAdCache(Ljava/lang/String;)V
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;

    .line 93
    sget-object v0, Lccsancom/san/mediation/helper/VungleHelper;->sCachedNativeAdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    return-void

    .line 95
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/VungleNativeAd;

    .line 96
    .local v0, "vungleNativeAd":Lccsancom/vungle/warren/VungleNativeAd;
    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v0}, Lccsancom/vungle/warren/VungleNativeAd;->finishDisplayingAd()V

    .line 99
    :cond_1
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "6.10.2.1"

    return-object v0
.end method

.method public static initialize(Lccsanandroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/san/mediation/helper/VungleHelper;->initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V

    .line 31
    return-void
.end method

.method public static initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "listener"    # Lccsancom/san/ads/base/InitListener;

    .line 34
    if-eqz p1, :cond_0

    .line 35
    sget-object v0, Lccsancom/san/mediation/helper/VungleHelper;->sInitListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    const-string v0, "Vungle"

    invoke-static {p0, v0}, Lccsancom/san/ads/AdSourceHelper;->getAdSourceKey(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 45
    sget-boolean v1, Lccsancom/san/mediation/helper/VungleHelper;->hasInitialized:Z

    if-nez v1, :cond_3

    invoke-static {}, Lccsancom/vungle/warren/Vungle;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#initialize, appKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VungleHelper"

    invoke-static {v2, v1}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v2, Lccsancom/san/mediation/helper/VungleHelper$1;

    invoke-direct {v2}, Lccsancom/san/mediation/helper/VungleHelper$1;-><init>()V

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/Vungle;->init(Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/vungle/warren/InitCallback;)V

    .line 72
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->canCollectUserInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_IN:Lccsancom/vungle/warren/Vungle$Consent;

    goto :goto_0

    :cond_2
    sget-object v1, Lccsancom/vungle/warren/Vungle$Consent;->OPTED_OUT:Lccsancom/vungle/warren/Vungle$Consent;

    :goto_0
    const-string v2, "1.0.0"

    invoke-static {v1, v2}, Lccsancom/vungle/warren/Vungle;->updateConsentStatus(Lccsancom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    .line 74
    return-void

    .line 46
    :cond_3
    :goto_1
    invoke-static {}, Lccsancom/san/mediation/helper/VungleHelper;->notifyInitFinished()V

    .line 47
    return-void

    .line 39
    :cond_4
    const-string v1, "No Vungle Key configured in your AndroidManifest.xml"

    .line 40
    .local v1, "error":Ljava/lang/String;
    invoke-static {v1}, Lccsancom/san/mediation/helper/VungleHelper;->notifyInitFailed(Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static notifyInitFailed(Ljava/lang/String;)V
    .locals 3
    .param p0, "errorMsg"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lccsancom/san/mediation/helper/VungleHelper;->sInitListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    .local v0, "initListenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsancom/san/ads/base/InitListener;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/base/InitListener;

    .line 88
    .local v2, "initListener":Lccsancom/san/ads/base/InitListener;
    invoke-interface {v2, p0}, Lccsancom/san/ads/base/InitListener;->onInitFailed(Ljava/lang/String;)V

    .line 89
    .end local v2    # "initListener":Lccsancom/san/ads/base/InitListener;
    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method private static notifyInitFinished()V
    .locals 3

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lccsancom/san/mediation/helper/VungleHelper;->sInitListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v0, "initListenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsancom/san/ads/base/InitListener;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/base/InitListener;

    .line 80
    .local v2, "initListener":Lccsancom/san/ads/base/InitListener;
    invoke-interface {v2}, Lccsancom/san/ads/base/InitListener;->onInitFinished()V

    .line 81
    .end local v2    # "initListener":Lccsancom/san/ads/base/InitListener;
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public static putNativeAdToMap(Ljava/lang/String;Lccsancom/vungle/warren/VungleNativeAd;)V
    .locals 1
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "vungleNativeAd"    # Lccsancom/vungle/warren/VungleNativeAd;

    .line 102
    sget-object v0, Lccsancom/san/mediation/helper/VungleHelper;->sCachedNativeAdMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method
