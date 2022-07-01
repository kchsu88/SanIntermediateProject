.class public abstract Lccsancom/san/mediation/loader/BaseMintegralAd;
.super Lccsancom/san/ads/base/SANBaseAd;
.source "BaseMintegralAd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MintegralAd.Base"


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/ads/base/SANBaseAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lccsancom/san/mediation/loader/BaseMintegralAd;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/BaseMintegralAd;

    .line 16
    invoke-direct {p0}, Lccsancom/san/mediation/loader/BaseMintegralAd;->loadInMainThread()V

    return-void
.end method

.method private loadInMainThread()V
    .locals 2

    .line 42
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/BaseMintegralAd$2;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/BaseMintegralAd$2;-><init>(Lccsancom/san/mediation/loader/BaseMintegralAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 48
    return-void
.end method

.method public static parseToSanError(Ljava/lang/String;)Lccsancom/san/ads/AdError;
    .locals 2
    .param p0, "error"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lccsancom/san/ads/AdError;

    const/16 v1, 0x1389

    invoke-direct {v0, v1, p0}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected abstract doStartLoadAd()V
.end method

.method getLoadDurationLog()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/BaseMintegralAd;->getLoadDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "MobVista"

    return-object v0
.end method

.method protected getRealPlacementId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "idArray":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 70
    .end local v0    # "idArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getRealPlacementId parse fail, placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MintegralAd.Base"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, ""

    return-object v0
.end method

.method public getTrackKey()Ljava/lang/String;
    .locals 1

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUnitId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "placementId"    # Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "#getUnitId parse fail, placementId="

    const-string v3, "MintegralAd.Base"

    if-nez v0, :cond_2

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "idArray":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v1

    .line 89
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1

    .line 80
    .end local v0    # "idArray":[Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-object v1
.end method

.method public load(Lccsancom/san/ads/AdInfo;)V
    .locals 2
    .param p1, "adInfo"    # Lccsancom/san/ads/AdInfo;

    .line 25
    invoke-super {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->load(Lccsancom/san/ads/AdInfo;)V

    .line 26
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/BaseMintegralAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/BaseMintegralAd$1;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/BaseMintegralAd$1;-><init>(Lccsancom/san/mediation/loader/BaseMintegralAd;)V

    invoke-static {v0, v1}, Lccsancom/san/mediation/helper/MintegralHelper;->initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V

    .line 37
    return-void
.end method
