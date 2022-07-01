.class public Lccsancom/san/mediation/helper/AppLovinHelper;
.super Ljava/lang/Object;
.source "AppLovinHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLovinHelper"

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

    .line 18
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lccsancom/san/mediation/helper/AppLovinHelper;->sInitListeners:Ljava/util/List;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/san/mediation/helper/AppLovinHelper;->hasInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "10.3.3.4"

    return-object v0
.end method

.method public static initialize(Lccsanandroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/san/mediation/helper/AppLovinHelper;->initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V

    .line 23
    return-void
.end method

.method public static initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "listener"    # Lccsancom/san/ads/base/InitListener;

    .line 26
    if-eqz p1, :cond_0

    .line 27
    sget-object v0, Lccsancom/san/mediation/helper/AppLovinHelper;->sInitListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    sget-boolean v0, Lccsancom/san/mediation/helper/AppLovinHelper;->hasInitialized:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinSdk;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    const-string v0, "AppLovinHelper"

    const-string v1, "#initialize"

    invoke-static {v0, v1}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    sget-object v1, Lccsancom/san/mediation/helper/AppLovinHelper$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/san/mediation/helper/AppLovinHelper$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lccsancom/applovin/sdk/AppLovinSdk;->initializeSdk(Lccsancom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    .line 40
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->canCollectUserInfo()Z

    move-result v0

    invoke-static {v0, p0}, Lccsancom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLccsanandroid/content/Context;)V

    .line 41
    return-void

    .line 30
    :cond_2
    :goto_0
    invoke-static {}, Lccsancom/san/mediation/helper/AppLovinHelper;->notifyInitFinished()V

    .line 31
    return-void
.end method

.method static synthetic lambda$initialize$0(Lccsancom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 2
    .param p0, "config"    # Lccsancom/applovin/sdk/AppLovinSdkConfiguration;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lccsancom/san/mediation/helper/AppLovinHelper;->hasInitialized:Z

    .line 36
    invoke-static {}, Lccsancom/san/mediation/helper/AppLovinHelper;->notifyInitFinished()V

    .line 37
    const-string v0, "AppLovinHelper"

    const-string v1, "initialize finish"

    invoke-static {v0, v1}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private static notifyInitFinished()V
    .locals 3

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lccsancom/san/mediation/helper/AppLovinHelper;->sInitListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    .local v0, "initListenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsancom/san/ads/base/InitListener;>;"
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/base/InitListener;

    .line 47
    .local v2, "initListener":Lccsancom/san/ads/base/InitListener;
    invoke-interface {v2}, Lccsancom/san/ads/base/InitListener;->onInitFinished()V

    .line 48
    .end local v2    # "initListener":Lccsancom/san/ads/base/InitListener;
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
