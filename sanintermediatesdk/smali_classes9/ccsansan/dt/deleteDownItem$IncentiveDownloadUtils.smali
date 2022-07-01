.class public Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dt/deleteDownItem$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dt/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncentiveDownloadUtils"
.end annotation


# static fields
.field private static ActionTypeDetailPage:I = 0x0

.field public static IncentiveDownloadUtils:Ljava/lang/String; = "ScreenVideo-Horizontal"

.field private static IncentiveSDK$1:I

.field private static resolveUrl:J


# instance fields
.field public IncentiveSDK:Ljava/lang/String;

.field public addDownloadListener:Ljava/lang/String;

.field public deleteDownItem:Ljava/lang/String;

.field public deleteDownList:I

.field private execute:Ljava/lang/String;

.field public getDownloadStatusByUrl:Ljava/lang/String;

.field public getDownloadedCount:Ljava/lang/String;

.field public getDownloadedList:I

.field public getDownloadedRecordByUrl:I

.field public getDownloadingCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/deleteDownItem$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field

.field public getDownloadingList:I

.field public getDownloadingRecordByUrl:I

.field public getPackageNameByRecord:Ljava/lang/String;

.field public getThumbPathByRecord:F

.field public pause:Ljava/lang/String;

.field public removeDownloadListener:Ljava/lang/String;

.field public resume:Ljava/lang/String;

.field public shouldTryHandlingAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/deleteDownItem$getDownloadingList;",
            ">;"
        }
    .end annotation
.end field

.field public trackReportClick:Ljava/lang/String;

.field public trackReportShow:Ljava/lang/String;

.field public unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    const/4 v1, 0x1

    sput v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    invoke-static {}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->addDownloadListener()V

    sget v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    :try_start_0
    div-int/2addr v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingCount:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->shouldTryHandlingAction:Ljava/util/List;

    .line 18
    const-string v0, "t"

    const-string v1, "divider"

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    .line 19
    const-string v2, "w"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList:I

    .line 20
    const-string v2, "h"

    invoke-virtual {p1, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload:I

    .line 21
    const-string v2, "click_url"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    .line 22
    const-string v2, "url"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->execute:Ljava/lang/String;

    .line 23
    const-string v2, "txt"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 24
    const-string v2, "s"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    .line 25
    const-string v2, "ls"

    invoke-virtual {p1, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadedList:I

    .line 26
    const-string v2, "loop"

    invoke-virtual {p1, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 27
    const-string v2, "has_sound"

    invoke-virtual {p1, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->deleteDownList:I

    .line 28
    const-string v2, "size"

    const/16 v4, 0xe

    invoke-virtual {p1, v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    .line 29
    const-string v2, "bg"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->resume:Ljava/lang/String;

    .line 30
    sget-object v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v4, "__tmpl_type"

    invoke-virtual {p1, v4, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    const-string v2, "duration"

    invoke-virtual {p1, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 32
    const-string v2, "cover_url"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 33
    const-string v2, "app_name"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->pause:Ljava/lang/String;

    .line 34
    const-string v2, "developer"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/String;

    .line 35
    const-string v2, "app_size"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportShow:Ljava/lang/String;

    .line 36
    const-string v2, "app_score"

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-virtual {p1, v2, v4, v5}, Lccsanorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v2, v4

    iput v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getThumbPathByRecord:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v2, v2, v4

    .line 37
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getThumbPathByRecord:F

    .line 38
    const-string v2, "app_store_name"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    const-string v2, "app_type"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    const-string v2, "app_price"

    const-string v4, "0"

    invoke-virtual {p1, v2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Free"

    if-nez v2, :cond_1

    iget-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    invoke-static {v2}, Lccsansan/bw/getName;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 45
    iput-object v4, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->trackReportClick:Ljava/lang/String;

    :goto_1
    invoke-static {v3, v3}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/lit16 v2, v2, 0x6443

    const-string v4, "\u9fd2\ufb80\u5745\ub325\u0edb\u6a93\uc656\u2208\ubdc7\u1987\u754c\ud136\u2cc8\u88b7\ue476\u402b\udbed\u37b4"

    invoke-static {v4, v2}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 49
    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/String;

    .line 50
    invoke-static {v2}, Lccsansan/bw/getName;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/String;

    .line 51
    const-string v2, "app_review_count"

    invoke-virtual {p1, v2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK:Ljava/lang/String;

    .line 52
    invoke-static {v2}, Lccsansan/bw/getName;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK:Ljava/lang/String;

    .line 53
    const-string v2, "app_rating"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    const-string v2, "expand_txt"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    const-string v2, "imgs"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    .line 57
    :goto_2
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 59
    :try_start_0
    invoke-virtual {v2, v4}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v5

    .line 60
    new-instance v6, Lccsansan/dt/deleteDownItem$unifiedDownload;

    invoke-direct {v6, v5}, Lccsansan/dt/deleteDownItem$unifiedDownload;-><init>(Lccsanorg/json/JSONObject;)V

    .line 61
    iget-object v5, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingCount:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 66
    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 69
    const-string v0, "landingApp"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    :goto_4
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 73
    :try_start_1
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 74
    new-instance v1, Lccsansan/dt/deleteDownItem$getDownloadingList;

    invoke-direct {v1, v0}, Lccsansan/dt/deleteDownItem$getDownloadingList;-><init>(Lccsanorg/json/JSONObject;)V

    .line 75
    iget-object v0, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->shouldTryHandlingAction:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->execute:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    :try_start_0
    div-int/2addr v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    const-wide v0, -0x2e532d4f0dff604dL    # -2.7996784854157384E85

    sput-wide v0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->resolveUrl:J

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->resolveUrl:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v1, v0, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->execute:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 3

    .line 2
    sget v0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    nop

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingCount:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    sget v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 3
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/dt/deleteDownItem$unifiedDownload;

    .line 3
    iget-object v2, v2, Lccsansan/dt/deleteDownItem$unifiedDownload;->addDownloadListener:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_0
    return-object v0

    :goto_2
    sget v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
