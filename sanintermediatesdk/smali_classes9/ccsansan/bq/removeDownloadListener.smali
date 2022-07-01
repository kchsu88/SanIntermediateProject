.class public Lccsansan/bq/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final deleteDownItem:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ActionTypeDetailPage:Z

.field private IncentiveSDK:J

.field private IncentiveSDK$1:J

.field protected addDownloadListener:I

.field private final deleteDownList:Ljava/lang/String;

.field private execute:Ljava/lang/String;

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:J

.field private final getDownloadedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingCount:J

.field protected getDownloadingList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

.field private final getDownloadingRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private getPackageNameByRecord:J

.field private getThumbPathByRecord:J

.field private pause:Lccsancom/san/ads/AdFormat;

.field protected removeDownloadListener:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

.field private resolveUrl:Z

.field private resume:J

.field private shouldTryHandlingAction:Z

.field private trackReportClick:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackReportShow:Lccsancom/san/ads/AdSize;

.field protected unifiedDownload:Lccsancom/san/ads/AdInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/bq/removeDownloadListener$unifiedDownload;

    invoke-direct {v0}, Lccsansan/bq/removeDownloadListener$unifiedDownload;-><init>()V

    sput-object v0, Lccsansan/bq/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/Comparator;

    .line 7
    new-instance v0, Lccsansan/bq/removeDownloadListener$removeDownloadListener;

    invoke-direct {v0}, Lccsansan/bq/removeDownloadListener$removeDownloadListener;-><init>()V

    sput-object v0, Lccsansan/bq/removeDownloadListener;->deleteDownItem:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lccsancom/san/ads/AdFormat;Lccsanorg/json/JSONObject;)V
    .locals 8

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/bq/removeDownloadListener;->addDownloadListener:I

    .line 56
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->DEFAULT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->removeDownloadListener:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 58
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;->SERIAL_SOFT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getThumbPathByRecord:J

    .line 88
    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getPackageNameByRecord:J

    .line 89
    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK:J

    .line 90
    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK$1:J

    .line 94
    const/4 v2, 0x1

    iput-boolean v2, p0, Lccsansan/bq/removeDownloadListener;->ActionTypeDetailPage:Z

    .line 104
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 105
    const-string v3, "pos_id"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lccsansan/bq/removeDownloadListener;->deleteDownList:Ljava/lang/String;

    .line 107
    invoke-static {}, Lccsansan/bq/getDownloadingList;->IncentiveDownloadUtils()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-static {p1}, Lccsansan/bq/getDownloadingList;->addDownloadListener(Lccsancom/san/ads/AdFormat;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getPackageNameByRecord:J

    .line 109
    invoke-static {p1}, Lccsansan/bq/getDownloadingList;->IncentiveDownloadUtils(Lccsancom/san/ads/AdFormat;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getThumbPathByRecord:J

    .line 110
    invoke-static {p1}, Lccsansan/bq/getDownloadingList;->unifiedDownload(Lccsancom/san/ads/AdFormat;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK:J

    .line 111
    invoke-static {p1}, Lccsansan/bq/getDownloadingList;->getDownloadingList(Lccsancom/san/ads/AdFormat;)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK$1:J

    goto :goto_0

    :cond_0
    nop

    .line 113
    const-string v3, "delay_time"

    const-wide/16 v4, 0x3e8

    invoke-virtual {p2, v3, v4, v5}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lccsansan/bq/removeDownloadListener;->getPackageNameByRecord:J

    .line 114
    const-string v3, "wait_time"

    invoke-virtual {p2, v3, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getThumbPathByRecord:J

    const-wide/16 v0, 0xbb8

    .line 115
    const-string v3, "anchor_time_out"

    invoke-virtual {p2, v3, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK:J

    .line 116
    const-string v0, "anchor_wait_time"

    invoke-virtual {p2, v0, v4, v5}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK$1:J

    :goto_0
    nop

    .line 119
    const-string v0, "sub_tab_name"

    const-string v1, "1000"

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->execute:Ljava/lang/String;

    .line 120
    const-string v0, "load_mode"

    const-string v1, "ecpm"

    invoke-virtual {p2, v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    .line 123
    const-string v0, "network_config"

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    invoke-direct {p0, p1, p2}, Lccsansan/bq/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdFormat;Lccsanorg/json/JSONObject;)V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    .line 5
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/bq/removeDownloadListener;->addDownloadListener:I

    .line 6
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->DEFAULT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->removeDownloadListener:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 8
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;->SERIAL_SOFT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getThumbPathByRecord:J

    .line 38
    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getPackageNameByRecord:J

    .line 39
    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK:J

    .line 40
    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK$1:J

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/bq/removeDownloadListener;->ActionTypeDetailPage:Z

    .line 47
    iput-object p1, p0, Lccsansan/bq/removeDownloadListener;->deleteDownList:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lccsansan/bq/removeDownloadListener;->pause:Lccsancom/san/ads/AdFormat;

    .line 50
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method private addDownloadListener(Lccsancom/san/ads/AdFormat;Lccsanorg/json/JSONObject;)V
    .locals 9

    :try_start_0
    const-string v0, "network_config"

    .line 82
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    :goto_0
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 86
    invoke-virtual {p2, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "delay_time"

    .line 87
    :try_start_1
    iget-wide v5, p0, Lccsansan/bq/removeDownloadListener;->getPackageNameByRecord:J

    invoke-virtual {v3, v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "wait_time"

    .line 88
    :try_start_2
    iget-wide v5, p0, Lccsansan/bq/removeDownloadListener;->getThumbPathByRecord:J

    invoke-virtual {v3, v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "support_level"

    .line 89
    :try_start_3
    iget-boolean v5, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "anchor_wait_time"

    .line 90
    :try_start_4
    iget-wide v5, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK$1:J

    invoke-virtual {v3, v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 91
    new-instance v4, Lccsancom/san/ads/AdInfo;

    iget-object v5, p0, Lccsansan/bq/removeDownloadListener;->deleteDownList:Ljava/lang/String;

    iget-object v6, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lccsancom/san/ads/AdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lccsanorg/json/JSONObject;)V

    .line 92
    iget-boolean v3, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    if-nez v3, :cond_0

    invoke-virtual {v4}, Lccsancom/san/ads/AdInfo;->getBid()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    .line 93
    iput-boolean v1, p0, Lccsansan/bq/removeDownloadListener;->ActionTypeDetailPage:Z

    .line 95
    :cond_0
    invoke-virtual {v4, p1}, Lccsancom/san/ads/AdInfo;->setAdFormat(Lccsancom/san/ads/AdFormat;)V

    .line 96
    invoke-virtual {v4}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iput-object v4, p0, Lccsansan/bq/removeDownloadListener;->unifiedDownload:Lccsancom/san/ads/AdInfo;

    .line 99
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget-boolean p1, p0, Lccsansan/bq/removeDownloadListener;->ActionTypeDetailPage:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 103
    iput-boolean v2, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    .line 104
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    :cond_3
    nop

    .line 106
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/ads/AdInfo;

    .line 108
    iget-boolean v3, p0, Lccsansan/bq/removeDownloadListener;->ActionTypeDetailPage:Z

    if-eqz v3, :cond_4

    .line 109
    invoke-virtual {p1, v2}, Lccsancom/san/ads/AdInfo;->setColdStart(Z)V

    .line 110
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getLevel()I

    move-result v3

    if-gez v3, :cond_4

    .line 111
    invoke-virtual {p1, v1}, Lccsancom/san/ads/AdInfo;->setLevel(I)V

    .line 113
    :cond_4
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-le v3, v2, :cond_6

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isHeaderBidding()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 114
    :cond_5
    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 116
    :cond_6
    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_2
    nop

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 120
    :cond_7
    invoke-direct {p0}, Lccsansan/bq/removeDownloadListener;->setErrorMessage()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    :goto_3
    return-void
.end method

.method private addDownloadListener(Lccsancom/san/ads/AdInfo;Ljava/lang/String;)Z
    .locals 2

    .line 126
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getSpotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 127
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 128
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->resume:J

    invoke-virtual {p1, v0, v1}, Lccsancom/san/ads/AdInfo;->setLoadStartTime(J)V

    :cond_0
    const/4 p2, 0x2

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(IZ)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static getDownloadingList(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdInfo;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 3
    :goto_2
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->hasSucceed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->hasSucceed()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x1

    .line 4
    :goto_4
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->getBid()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_6

    .line 5
    :cond_5
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getBid()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-nez v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-eqz v0, :cond_9

    if-nez v3, :cond_9

    if-nez v4, :cond_8

    if-eqz v5, :cond_9

    .line 9
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result p0

    xor-int/2addr p0, v2

    sub-int/2addr p1, p0

    return p1

    .line 10
    :cond_8
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->getBid()J

    move-result-wide v3

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getBid()J

    move-result-wide v8

    cmp-long v0, v3, v8

    if-nez v0, :cond_9

    .line 11
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result p1

    xor-int/2addr p1, v2

    sub-int/2addr p0, p1

    return p0

    .line 14
    :cond_9
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getBid()J

    move-result-wide v3

    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->getBid()J

    move-result-wide p0

    sub-long/2addr v3, p0

    cmp-long p0, v3, v6

    if-nez p0, :cond_a

    goto :goto_6

    :cond_a
    if-lez p0, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, -0x1

    :goto_6
    return v1
.end method

.method private getErrorCode()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/AdInfo;

    .line 4
    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->removeDownloadListener:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-virtual {v3}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    invoke-virtual {v4}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/san/ads/AdInfo;->onPlacementStartEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter v1

    .line 8
    :try_start_1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/AdInfo;

    .line 9
    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->removeDownloadListener:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-virtual {v3}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    invoke-virtual {v4}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/san/ads/AdInfo;->onPlacementStartEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingCount:J

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private getErrorMessage()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->resume:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->resume:J

    .line 4
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/AdInfo;

    .line 5
    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/san/ads/AdInfo;->onPlacementStartLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/AdInfo;

    .line 8
    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/san/ads/AdInfo;->onPlacementStartLoad(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdInfo;)I

    move-result p0

    return p0
.end method

.method private setErrorMessage()V
    .locals 7

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    iget-boolean v2, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    if-eqz v2, :cond_1

    sget-object v2, Lccsansan/bq/removeDownloadListener;->deleteDownItem:Ljava/util/Comparator;

    goto :goto_0

    :cond_1
    sget-object v2, Lccsansan/bq/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/Comparator;

    :goto_0
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    iget-boolean v1, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/AdInfo;

    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getLevel()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 6
    :goto_1
    iget-boolean v3, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/ads/AdInfo;

    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->getLevel()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    .line 7
    :goto_2
    iget-object v5, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 8
    iget-object v5, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/san/ads/AdInfo;

    .line 9
    iget-boolean v6, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lccsancom/san/ads/AdInfo;->getLevel()I

    move-result v6

    if-le v6, v4, :cond_5

    .line 10
    invoke-virtual {v5}, Lccsancom/san/ads/AdInfo;->getLevel()I

    move-result v6

    if-le v6, v3, :cond_4

    .line 11
    invoke-virtual {v5}, Lccsancom/san/ads/AdInfo;->getLevel()I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    .line 14
    :cond_4
    invoke-virtual {v5, v1}, Lccsancom/san/ads/AdInfo;->setLevel(I)V

    .line 16
    :cond_5
    invoke-virtual {v5, v2}, Lccsancom/san/ads/AdInfo;->setIndex(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 18
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public ActionTypeDetailPage()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedCount:J

    return-wide v0
.end method

.method public ActionTypeDownload()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->unifiedDownload:Lccsancom/san/ads/AdInfo;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedCount:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->unifiedDownload:Lccsancom/san/ads/AdInfo;

    .line 4
    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->hasFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ActionTypeReserveApp()Lccsancom/san/ads/AdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->unifiedDownload:Lccsancom/san/ads/AdInfo;

    return-object v0
.end method

.method public AdError()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getPackageNameByRecord:J

    return-wide v0
.end method

.method public IncentiveDownloadUtils(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cu/getDownloadedRecordByUrl;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 14
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/ads/AdInfo;

    .line 16
    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->isHeaderBidding()Z

    move-result v4

    if-nez v4, :cond_2

    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 21
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsansan/cu/getDownloadedRecordByUrl;

    .line 23
    invoke-virtual {v4}, Lccsansan/cu/getDownloadedRecordByUrl;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    invoke-virtual {v3, v4}, Lccsancom/san/ads/AdInfo;->setHBResultData(Lccsansan/cu/getDownloadedRecordByUrl;)V

    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 29
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 34
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 36
    iget-object p1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter p1

    .line 37
    :try_start_1
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-direct {p0}, Lccsansan/bq/removeDownloadListener;->setErrorMessage()V

    .line 39
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 40
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/bq/removeDownloadListener;->resolveUrl:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IncentiveSDK()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public IncentiveSDK$1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->resume:J

    return-wide v0
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/AdInfo;

    .line 4
    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->getStatsInfo()Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 7
    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/ads/AdInfo;

    add-int/lit8 v4, v1, 0x1

    .line 8
    invoke-virtual {v3, v1}, Lccsancom/san/ads/AdInfo;->setIndex(I)V

    .line 9
    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->getStatsInfo()Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto :goto_1

    :catch_0
    move-exception v1

    .line 14
    :cond_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteDownItem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->deleteDownList:Ljava/lang/String;

    return-object v0
.end method

.method public deleteDownList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->trackReportClick:Ljava/util/Map;

    return-object v0
.end method

.method public execute()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingCount:J

    return-wide v0
.end method

.method public getActionType()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->deleteDownList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDownloadStatusByUrl()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/bq/removeDownloadListener;->resolveUrl:Z

    return-void
.end method

.method public getDownloadedCount()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->pause:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getDownloadedList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDownloadedRecordByUrl()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/AdInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->hasFinished()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 6
    monitor-exit v0

    return v1

    .line 9
    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getDownloadingCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingList(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedCount:J

    iget-wide v2, p0, Lccsansan/bq/removeDownloadListener;->resume:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 43
    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter v2

    .line 44
    :try_start_0
    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    iget-object v4, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    invoke-static {v3, v4, v0, v1, p1}, Lccsansan/bq/resume;->IncentiveDownloadUtils(Ljava/util/List;Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;JZ)Ljava/util/List;

    move-result-object p1

    .line 45
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->deleteDownList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#findNextItems"

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/AdInfo;

    const-string v3, "    "

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager.PS"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 55
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getDownloadingList()V
    .locals 5

    .line 15
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/AdInfo;

    .line 17
    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v2, v3}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(I)V

    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter v2

    .line 25
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_2
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/AdInfo;

    .line 29
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 30
    invoke-virtual {v1, v3}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(I)V

    goto :goto_1

    .line 33
    :cond_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 34
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public getDownloadingList(I)V
    .locals 1

    .line 75
    iget v0, p0, Lccsansan/bq/removeDownloadListener;->addDownloadListener:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 76
    :cond_1
    invoke-direct {p0}, Lccsansan/bq/removeDownloadListener;->getErrorCode()V

    .line 78
    :cond_2
    iput p1, p0, Lccsansan/bq/removeDownloadListener;->addDownloadListener:I

    return-void
.end method

.method public getDownloadingList(Lccsancom/san/ads/AdFormat;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lccsansan/bq/removeDownloadListener;->pause:Lccsancom/san/ads/AdFormat;

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 4

    .line 56
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->getDownloadingList()V

    .line 59
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter v1

    .line 62
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/AdInfo;

    .line 64
    invoke-direct {p0, v2, p1}, Lccsansan/bq/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 72
    iget-object p1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getDownloadingRecordByUrl()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/AdInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->hasFinished()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 6
    monitor-exit v0

    return v1

    .line 9
    :cond_2
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getPackageNameByRecord()Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->removeDownloadListener:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    return-object v0
.end method

.method public getThumbPathByRecord()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lccsansan/bq/removeDownloadListener;->resolveUrl:Z

    if-nez v0, :cond_1

    iget v0, p0, Lccsansan/bq/removeDownloadListener;->addDownloadListener:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public pause()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->pause:Lccsancom/san/ads/AdFormat;

    invoke-virtual {v1}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->trackReportShow:Lccsancom/san/ads/AdSize;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public performAction()V
    .locals 5

    .line 125
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedCount:J

    :cond_0
    return-void
.end method

.method public performActionWhenOffline()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bq/removeDownloadListener;->IncentiveSDK:J

    return-wide v0
.end method

.method public removeDownloadListener()J
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x1d4c0

    mul-int v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdSize;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lccsansan/bq/removeDownloadListener;->trackReportShow:Lccsancom/san/ads/AdSize;

    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->removeDownloadListener:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->getIntValue()I

    move-result v0

    sget-object v1, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-virtual {v1}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->getIntValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 122
    invoke-direct {p0}, Lccsansan/bq/removeDownloadListener;->getErrorMessage()V

    .line 124
    :cond_0
    iput-object p1, p0, Lccsansan/bq/removeDownloadListener;->removeDownloadListener:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    return-void
.end method

.method public removeDownloadListener(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lccsansan/bq/removeDownloadListener;->trackReportClick:Ljava/util/Map;

    return-void
.end method

.method public resolveUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public resume()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    return-object v0
.end method

.method public shouldTryHandlingAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->execute:Ljava/lang/String;

    return-object v0
.end method

.method public trackReportClick()Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    return-object v0
.end method

.method public trackReportShow()Lccsancom/san/ads/core/AdLoadStrategy$AdItemSortMode;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction:Z

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdItemSortMode;->LEVEL:Lccsancom/san/ads/core/AdLoadStrategy$AdItemSortMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdItemSortMode;->ECPM:Lccsancom/san/ads/core/AdLoadStrategy$AdItemSortMode;

    :goto_0
    return-object v0
.end method

.method public unifiedDownload()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, Lccsansan/bq/removeDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/ads/AdInfo;

    .line 6
    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->isHeaderBidding()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->hasHBSucceed()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x5

    .line 7
    invoke-virtual {v3, v4}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(I)V

    .line 9
    :cond_0
    iget-object v4, p0, Lccsansan/bq/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-direct {p0}, Lccsansan/bq/removeDownloadListener;->setErrorMessage()V

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    .line 15
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
