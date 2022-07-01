.class public Lccsancom/san/ads/AdSourceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static addDownloadListener:Z

.field private static final getDownloadingList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/san/ads/AdSourceHelper;->IncentiveDownloadUtils:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lccsancom/san/ads/AdSourceHelper;->getDownloadingList:Ljava/util/Map;

    .line 4
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/san/ads/AdSourceHelper;->addDownloadListener:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/bq/unifiedDownload;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/ads/AdSourceHelper$2;

    invoke-direct {v1, p1, p0, p2}, Lccsancom/san/ads/AdSourceHelper$2;-><init>(Lccsansan/bq/unifiedDownload;Lccsanandroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method static synthetic addDownloadListener()Z
    .locals 1

    .line 2
    sget-boolean v0, Lccsancom/san/ads/AdSourceHelper;->addDownloadListener:Z

    return v0
.end method

.method public static addShowingSingleFullScreenAd(Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/ads/AdSourceHelper;->getDownloadingList:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAdSourceKey(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.san.key."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lccsancom/san/ads/AdSourceHelper;->getAdSourceValueByKey(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdSourceValueByKey(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    sget-object v0, Lccsancom/san/ads/AdSourceHelper;->IncentiveDownloadUtils:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1
    invoke-static {p0, p1}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    return-object v1
.end method

.method static synthetic getDownloadingList(Lccsanandroid/content/Context;Lccsansan/bq/unifiedDownload;Z)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lccsancom/san/ads/AdSourceHelper;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/bq/unifiedDownload;Z)V

    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Z)V
    .locals 2

    .line 5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/ads/AdSourceHelper$1;

    invoke-direct {v1, p1, p0}, Lccsancom/san/ads/AdSourceHelper$1;-><init>(ZLccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public static initialize(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "InitHelper"

    const-string v1, "#initialize"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lccsancom/san/ads/AdSourceHelper;->getDownloadingList(Lccsanandroid/content/Context;Z)V

    return-void
.end method

.method public static initializeInActivity(Lccsanandroid/app/Activity;)V
    .locals 2

    .line 1
    const-string v0, "InitHelper"

    const-string v1, "#initializeInActivity"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lccsancom/san/ads/AdSourceHelper;->getDownloadingList(Lccsanandroid/content/Context;Z)V

    return-void
.end method

.method public static isAzFromGp()Z
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSingleFullAdShowing(Ljava/lang/String;Lccsancom/san/ads/AdFormat;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object p1, Lccsancom/san/ads/AdSourceHelper;->getDownloadingList:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic removeDownloadListener(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/ads/AdSourceHelper;->unifiedDownload(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic removeDownloadListener(Z)Z
    .locals 0

    .line 3
    sput-boolean p0, Lccsancom/san/ads/AdSourceHelper;->addDownloadListener:Z

    return p0
.end method

.method public static removeShowingSingleFullScreenAd(Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/ads/AdSourceHelper;->getDownloadingList:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lccsansan/bw/getPackageNameByRecord;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
