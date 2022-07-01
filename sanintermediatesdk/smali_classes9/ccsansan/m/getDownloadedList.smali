.class public Lccsansan/m/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/m/getDownloadedList$unifiedDownload;
    }
.end annotation


# static fields
.field public static IncentiveDownloadUtils:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static unifiedDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/m/getDownloadedList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ActionTypeDetailPage:Z

.field public IncentiveSDK:I

.field public IncentiveSDK$1:Ljava/lang/String;

.field public addDownloadListener:I

.field public deleteDownItem:Ljava/lang/String;

.field public deleteDownList:J

.field public execute:I

.field public getDownloadStatusByUrl:Ljava/lang/String;

.field public getDownloadedCount:J

.field public getDownloadedList:Ljava/lang/String;

.field public getDownloadedRecordByUrl:I

.field public getDownloadingCount:I

.field public getDownloadingList:Ljava/lang/String;

.field public getDownloadingRecordByUrl:J

.field public getPackageNameByRecord:Z

.field public getThumbPathByRecord:Ljava/lang/String;

.field public pause:Ljava/lang/String;

.field public resolveUrl:Ljava/lang/String;

.field public resume:Ljava/lang/String;

.field public shouldTryHandlingAction:Z

.field public trackReportClick:Ljava/lang/String;

.field public trackReportShow:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/m/getDownloadedList;->unifiedDownload:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeDownloadListener(Ljava/lang/String;)I
    .locals 1

    .line 23
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;I)I
    .locals 2

    .line 13
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    :cond_1
    :goto_0
    return p2
.end method

.method public addDownloadListener(Ljava/lang/String;J)J
    .locals 2

    .line 18
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    :cond_1
    :goto_0
    return-wide p2
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 11
    :goto_0
    invoke-virtual {v0, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 12
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :cond_2
    :goto_1
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v2, p0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-direct {v0, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    :cond_1
    :goto_0
    return-object v1
.end method
