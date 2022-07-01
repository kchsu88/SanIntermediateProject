.class public Lccsancom/san/xz/base/XzRecord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/xz/base/XzRecord$StatsInfo;,
        Lccsancom/san/xz/base/XzRecord$Status;
    }
.end annotation


# static fields
.field private static ActionTypeDownload:J = 0x0L

.field public static final DEFAULT_CHUNK_LENGTH:I = 0x10000

.field public static final DEFAULT_EN_LENGTH:I = 0x800000

.field public static final FLAG_UNREAD:I

.field private static getActionType:I

.field private static performAction:I


# instance fields
.field private ActionTypeDetailPage:J

.field private ActionTypeReserveApp:Lccsancom/san/xz/base/XzRecord$StatsInfo;

.field protected IncentiveDownloadUtils:Lccsansan/cs/unifiedDownload;

.field protected IncentiveSDK:Z

.field private IncentiveSDK$1:J

.field protected addDownloadListener:Ljava/lang/String;

.field protected deleteDownItem:Ljava/lang/String;

.field protected deleteDownList:I

.field protected execute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field protected getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

.field protected getDownloadedCount:Z

.field protected getDownloadedList:I

.field protected getDownloadedRecordByUrl:J

.field protected getDownloadingCount:Ljava/lang/Object;

.field protected getDownloadingList:J

.field protected getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

.field protected getPackageNameByRecord:Ljava/lang/String;

.field protected getThumbPathByRecord:I

.field protected pause:Lccsansan/ae/getDownloadingList;

.field private performActionWhenOffline:I

.field protected removeDownloadListener:J

.field protected resolveUrl:Lccsancom/san/xz/base/deleteDownItem;

.field protected resume:J

.field protected shouldTryHandlingAction:Lccsancom/san/xz/base/deleteDownItem;

.field protected trackReportClick:J

.field protected trackReportShow:Z

.field protected unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    const-wide v0, 0x5ef5a31bf3a26051L    # 2.766672971586896E149

    sput-wide v0, Lccsancom/san/xz/base/XzRecord;->ActionTypeDownload:J

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    iput-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedList:I

    .line 46
    iput v0, p0, Lccsancom/san/xz/base/XzRecord;->getThumbPathByRecord:I

    .line 49
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, ""

    const/16 v3, 0x30

    invoke-static {v2, v3, v0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    rsub-int v4, v4, 0x19aa

    const-string v5, "\u6035\u7995\u5370\u2d3e\u0691\ue069\ufa32\ud398\uad56\u8727\u608c\u7a6d\u540a\u2d9a\u0778\ue122"

    invoke-static {v5, v4}, Lccsancom/san/xz/base/XzRecord;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK:Z

    .line 50
    invoke-static {}, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/al/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/al/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->trackReportShow:Z

    .line 52
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK$1:J

    .line 53
    iput-wide v6, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeDetailPage:J

    .line 54
    iput v0, p0, Lccsancom/san/xz/base/XzRecord;->performActionWhenOffline:I

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    .line 57
    new-instance v1, Lccsancom/san/xz/base/XzRecord$StatsInfo;

    invoke-direct {v1, p0}, Lccsancom/san/xz/base/XzRecord$StatsInfo;-><init>(Lccsancom/san/xz/base/XzRecord;)V

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeReserveApp:Lccsancom/san/xz/base/XzRecord$StatsInfo;

    .line 78
    const-string v1, "item"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    .line 79
    const-string v4, "type"

    invoke-virtual {v1, v4}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 80
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsansan/cs/unifiedDownload;->fromString(Ljava/lang/String;)Lccsansan/cs/unifiedDownload;

    move-result-object v4

    iput-object v4, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveDownloadUtils:Lccsansan/cs/unifiedDownload;

    .line 82
    :cond_0
    iget-object v4, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveDownloadUtils:Lccsansan/cs/unifiedDownload;

    if-nez v4, :cond_1

    .line 83
    sget-object v4, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    iput-object v4, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveDownloadUtils:Lccsansan/cs/unifiedDownload;

    .line 86
    :cond_1
    iget-object v4, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveDownloadUtils:Lccsansan/cs/unifiedDownload;

    sget-object v8, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-ne v4, v8, :cond_2

    .line 87
    new-instance v4, Lccsansan/ae/addDownloadListener;

    invoke-direct {v4, v1}, Lccsansan/ae/addDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    iput-object v4, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    .line 89
    :cond_2
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    if-eqz v1, :cond_1b

    const v1, 0xf18d

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    sub-int/2addr v1, v4

    const-string v4, "\u6035\u91b3\u833c\ub498\ua609\ud7ff\uc97e\ufaee\uec66\u1dd1\u0fa1\u0132"

    invoke-static {v4, v1}, Lccsancom/san/xz/base/XzRecord;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0xf18e

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    sub-int/2addr v1, v12

    invoke-static {v4, v1}, Lccsancom/san/xz/base/XzRecord;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord;->addDownloadListener:Ljava/lang/String;

    :cond_3
    invoke-static {v2, v3, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    rsub-int v1, v1, 0x275e

    const-string v2, "\u6035\u4761\u2e98\u1622\ufd41\ua4e5\u8c0a\u73ac\u5af6\u0273\ue995\ud128\ub87a\u9fe9\u4706\u2eb9"

    invoke-static {v2, v1}, Lccsancom/san/xz/base/XzRecord;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v3

    cmp-long v1, v3, v6

    add-int/lit16 v1, v1, 0x275e

    invoke-static {v2, v1}, Lccsancom/san/xz/base/XzRecord;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord;->unifiedDownload:Ljava/lang/String;

    :cond_4
    nop

    .line 96
    const-string v1, "complete_time"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingList:J

    :cond_5
    nop

    .line 98
    const-string v1, "start_time"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->removeDownloadListener:J

    :cond_6
    nop

    .line 100
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 101
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedRecordByUrl:J

    :cond_7
    nop

    .line 102
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 103
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lccsancom/san/xz/base/XzRecord$Status;->fromInt(I)Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

    :cond_8
    nop

    .line 104
    const-string v1, "file_path"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 105
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownItem:Ljava/lang/String;

    :cond_9
    nop

    .line 106
    const-string v1, "cookie"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 107
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingCount:Ljava/lang/Object;

    :cond_a
    nop

    .line 108
    const-string v1, "really_start"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedCount:Z

    .line 109
    const-string v1, "really_start_time"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 110
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->trackReportClick:J

    :cond_c
    nop

    .line 111
    const-string v1, "stats_count"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 112
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownList:I

    :cond_d
    nop

    .line 113
    const-string v1, "chk_sum_failed_cnt"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 114
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsancom/san/xz/base/XzRecord;->performActionWhenOffline:I

    :cond_e
    nop

    .line 115
    const-string v1, "refresh_count"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 116
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsancom/san/xz/base/XzRecord;->getThumbPathByRecord:I

    :cond_f
    nop

    .line 117
    const-string v1, "dl_portal"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 118
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/xz/base/XzRecord;->getPackageNameByRecord:Ljava/lang/String;

    :cond_10
    nop

    .line 119
    const-string v1, "use_dsv"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_1

    :cond_11
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK:Z

    .line 120
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 121
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingCount()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/ae/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    :cond_12
    nop

    .line 123
    const-string v1, "use_multipart"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "use_multipart"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_2

    :cond_13
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->addDownloadListener()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {}, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/al/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/al/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_2

    :cond_14
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->trackReportShow:Z

    .line 124
    const-string v1, "multipart"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 125
    const-string v1, "multipart"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 126
    :goto_3
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 127
    new-instance v1, Lccsansan/cs/removeDownloadListener;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/cs/removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    .line 128
    invoke-virtual {v1}, Lccsansan/cs/removeDownloadListener;->removeDownloadListener()J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-nez v4, :cond_15

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lccsancom/san/xz/base/XzRecord;->getEncryptLength(J)J

    move-result-wide v2

    invoke-virtual {v1}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v8

    cmp-long v4, v2, v8

    if-lez v4, :cond_15

    invoke-virtual {v1}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v2

    const-wide/32 v8, 0x10000

    rem-long/2addr v2, v8

    cmp-long v4, v2, v6

    if-eqz v4, :cond_15

    .line 129
    const-string v2, "XzRecord"

    const-string v3, "reset multipart complete!"

    invoke-static {v2, v3}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v2

    invoke-virtual {v1}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v8

    const-wide/32 v10, 0x10000

    rem-long/2addr v8, v10

    sub-long/2addr v2, v8

    invoke-virtual {v1, v2, v3}, Lccsansan/cs/removeDownloadListener;->removeDownloadListener(J)V

    .line 132
    :cond_15
    iget-object v2, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_16
    nop

    .line 134
    iput-boolean v5, p0, Lccsancom/san/xz/base/XzRecord;->trackReportShow:Z

    .line 137
    :cond_17
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    if-ne p1, v0, :cond_18

    .line 138
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->resume:J

    goto :goto_5

    .line 140
    :cond_18
    iget-boolean p1, p0, Lccsancom/san/xz/base/XzRecord;->trackReportShow:Z

    if-nez p1, :cond_19

    .line 141
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lccsansan/ad/unifiedDownload;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->getDownloadedRecordByUrl()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->resume:J

    goto :goto_5

    .line 143
    :cond_19
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cs/removeDownloadListener;

    .line 144
    iget-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->resume:J

    invoke-virtual {v0}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->resume:J

    goto :goto_4

    :cond_1a
    :goto_5
    return-void

    .line 145
    :cond_1b
    new-instance p1, Lccsanorg/json/JSONException;

    const-string v0, "parse error, item is null!"

    invoke-direct {p1, v0}, Lccsanorg/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public constructor <init>(Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    iput-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedList:I

    .line 11
    iput v0, p0, Lccsancom/san/xz/base/XzRecord;->getThumbPathByRecord:I

    .line 14
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v2, v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    rsub-int v2, v2, 0x19ab

    const-string v3, "\u6035\u7995\u5370\u2d3e\u0691\ue069\ufa32\ud398\uad56\u8727\u608c\u7a6d\u540a\u2d9a\u0778\ue122"

    invoke-static {v3, v2}, Lccsancom/san/xz/base/XzRecord;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK:Z

    .line 15
    invoke-static {}, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/al/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/al/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->trackReportShow:Z

    .line 17
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK$1:J

    .line 18
    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeDetailPage:J

    .line 19
    iput v0, p0, Lccsancom/san/xz/base/XzRecord;->performActionWhenOffline:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    .line 22
    new-instance v0, Lccsancom/san/xz/base/XzRecord$StatsInfo;

    invoke-direct {v0, p0}, Lccsancom/san/xz/base/XzRecord$StatsInfo;-><init>(Lccsancom/san/xz/base/XzRecord;)V

    iput-object v0, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeReserveApp:Lccsancom/san/xz/base/XzRecord$StatsInfo;

    .line 29
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    .line 30
    invoke-virtual {p1}, Lccsansan/ae/removeDownloadListener;->resume()Lccsansan/cs/unifiedDownload;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveDownloadUtils:Lccsansan/cs/unifiedDownload;

    .line 31
    invoke-virtual {p2}, Lccsancom/san/xz/base/IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->addDownloadListener:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lccsancom/san/xz/base/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->unifiedDownload:Ljava/lang/String;

    .line 33
    iput-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->resume:J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/xz/base/XzRecord;->removeDownloadListener:J

    .line 35
    iput-object p3, p0, Lccsancom/san/xz/base/XzRecord;->getPackageNameByRecord:Ljava/lang/String;

    return-void
.end method

.method public static createRecord(Lccsanorg/json/JSONObject;)Lccsancom/san/xz/base/XzRecord;
    .locals 2
    .param p0, "jo"    # Lccsanorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    .end local p0    # "jo":Lccsanorg/json/JSONObject;
    new-instance v0, Lccsancom/san/xz/base/XzRecord;

    invoke-direct {v0, p0}, Lccsancom/san/xz/base/XzRecord;-><init>(Lccsanorg/json/JSONObject;)V

    sget p0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x19

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsancom/san/xz/base/XzRecord;->ActionTypeDownload:J

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

.method public static getEncryptLength(J)J
    .locals 7
    .param p0, "filesize"    # J

    .line 1
    .end local p0    # "filesize":J
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v1, v0, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    const-wide v3, 0x3f747ae147ae147bL    # 0.005

    const-wide/32 v5, 0x800000

    if-nez v1, :cond_1

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v3

    double-to-long p0, p0

    cmp-long v1, p0, v5

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 0
    :cond_1
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v3

    double-to-long p0, p0

    cmp-long v1, p0, v5

    if-ltz v1, :cond_2

    .line 1
    const/16 v1, 0x21

    goto :goto_1

    :cond_2
    const/16 v1, 0x11

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_3

    :pswitch_0
    const-wide/32 v1, 0x10000

    div-long/2addr p0, v1

    mul-long v5, p0, v1

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_4

    :goto_3
    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    :cond_3
    :goto_4
    return-wide v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected addDownloadListener()Z
    .locals 5

    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    return v1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiPartRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget p1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public addStatsCount()V
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget v1, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownList:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownList:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public getCompleteTime()J
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingList:J

    goto :goto_1

    :pswitch_0
    iget-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingList:J

    const/16 v2, 0x2a

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public getCompletedSize()J
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-wide v2, p0, Lccsancom/san/xz/base/XzRecord;->resume:J

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    return-wide v2
.end method

.method public getContentType()Lccsansan/cs/unifiedDownload;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/ae/removeDownloadListener;->resume()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/ae/removeDownloadListener;->resume()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public getCookie()Ljava/lang/Object;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingCount:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getDuration()J
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-wide v2, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedRecordByUrl:J

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v0, 0x3c

    goto :goto_0

    :cond_1
    const/16 v0, 0x45

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-wide v2

    :pswitch_0
    const/16 v0, 0x3e

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownItem:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x13

    goto :goto_0

    :cond_1
    const/16 v0, 0x21

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public getFileSize()J
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/ae/getDownloadingList;->getDownloadedList()J

    move-result-wide v0

    sget v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-wide v0

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getItem()Lccsansan/ae/getDownloadingList;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getLocalItem()Lccsansan/ae/getDownloadingList;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveDownloadUtils:Lccsansan/cs/unifiedDownload;

    invoke-virtual {p0, v0}, Lccsancom/san/xz/base/XzRecord;->getLocalItem(Lccsansan/cs/unifiedDownload;)Lccsansan/ae/getDownloadingList;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveDownloadUtils:Lccsansan/cs/unifiedDownload;

    invoke-virtual {p0, v0}, Lccsancom/san/xz/base/XzRecord;->getLocalItem(Lccsansan/cs/unifiedDownload;)Lccsansan/ae/getDownloadingList;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getLocalItem(Lccsansan/cs/unifiedDownload;)Lccsansan/ae/getDownloadingList;
    .locals 4
    .param p1, "type"    # Lccsansan/cs/unifiedDownload;

    .line 23
    .end local p1    # "type":Lccsansan/cs/unifiedDownload;
    nop

    .line 2
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->pause:Lccsansan/ae/getDownloadingList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 10
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 5
    sget-object p1, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->unifiedDownload:[I

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    .line 2
    :pswitch_0
    return-object p1

    .line 7
    :cond_1
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    check-cast p1, Lccsansan/ae/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/ae/unifiedDownload;->addDownloadListener()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {v2}, Lccsansan/ae/getDownloadingList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v2

    invoke-static {p1, v2}, Lccsansan/aa/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;)Lccsansan/ae/getDownloadingList;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->pause:Lccsansan/ae/getDownloadingList;

    .line 10
    sget p1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 23
    :cond_2
    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 10
    const/16 p1, 0x4d

    goto :goto_1

    :cond_4
    const/16 p1, 0x52

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 20
    sget p1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v2

    sget-object v3, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-static {p1, v2, v3}, Lccsancom/san/xz/base/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Lccsansan/cs/unifiedDownload;)Lccsansan/ae/getDownloadingList;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->pause:Lccsansan/ae/getDownloadingList;

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 20
    :catchall_0
    move-exception p1

    throw p1

    .line 10
    :cond_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v2

    sget-object v3, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    invoke-static {p1, v2, v3}, Lccsancom/san/xz/base/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;Lccsansan/cs/unifiedDownload;)Lccsansan/ae/getDownloadingList;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->pause:Lccsansan/ae/getDownloadingList;

    .line 14
    :goto_2
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->pause:Lccsansan/ae/getDownloadingList;

    if-eqz p1, :cond_6

    .line 15
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/ae/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->pause:Lccsansan/ae/getDownloadingList;

    .line 23
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    .line 19
    :cond_6
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 23
    sget p1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    .line 20
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingCount()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsansan/ae/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    const/16 p1, 0x60

    :try_start_1
    div-int/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 23
    :catchall_1
    move-exception p1

    throw p1

    .line 20
    :cond_7
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingCount()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/ae/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V

    .line 23
    :goto_3
    nop

    .line 21
    :cond_8
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {p1, v1}, Lccsansan/ae/getDownloadingList;->unifiedDownload(Z)V

    .line 22
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lccsansan/ae/getDownloadingList;->unifiedDownload(J)V

    .line 23
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch
.end method

.method public getMultiPartRecords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    const/16 v2, 0x29

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getPortal()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getPackageNameByRecord:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getProgressDamper()Lccsancom/san/xz/base/deleteDownItem;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->resolveUrl:Lccsancom/san/xz/base/deleteDownItem;

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getReadFlag()I
    .locals 2

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedList:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedList:I

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getReallyStartTime()J
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-wide v1, p0, Lccsancom/san/xz/base/XzRecord;->trackReportClick:J

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-wide v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getRefreshCount()I
    .locals 2

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->getThumbPathByRecord:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->getThumbPathByRecord:I

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public getSpeed()J
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-wide v2, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeDetailPage:J

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    return-wide v2
.end method

.method public getStartTime()J
    .locals 7

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-wide v4, p0, Lccsancom/san/xz/base/XzRecord;->removeDownloadListener:J

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    const/4 v1, 0x3

    add-int/2addr v0, v1

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    return-wide v4

    :pswitch_1
    :try_start_1
    div-int/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-wide v4

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getStatsCount()I
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownList:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public getStatsInfo()Lccsancom/san/xz/base/XzRecord$StatsInfo;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeReserveApp:Lccsancom/san/xz/base/XzRecord$StatsInfo;

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/16 v0, 0x53

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getStatus()Lccsancom/san/xz/base/XzRecord$Status;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x1d

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getStoreProgressDmaper()Lccsancom/san/xz/base/deleteDownItem;
    .locals 2

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x55

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->shouldTryHandlingAction:Lccsancom/san/xz/base/deleteDownItem;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->shouldTryHandlingAction:Lccsancom/san/xz/base/deleteDownItem;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/ae/removeDownloadListener;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getXzUrl()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->addDownloadListener:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getXzUrlKey()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v1, v0, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->unifiedDownload:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x58

    goto :goto_0

    :cond_1
    const/16 v0, 0x5b

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/16 v0, 0x26

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch
.end method

.method public isDynamicApp()Z
    .locals 5

    .line 6
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 6
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v3, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v3, v3, 0x7d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lccsansan/ae/removeDownloadListener;->resume()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    sget-object v3, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    const/16 v4, 0x56

    :try_start_0
    div-int/2addr v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    invoke-virtual {v0}, Lccsansan/ae/removeDownloadListener;->resume()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    sget-object v3, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-eq v0, v3, :cond_2

    :goto_1
    nop

    .line 6
    :pswitch_0
    return v2

    .line 4
    :cond_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lccsancom/san/xz/base/XzRecord;->addDownloadListener:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sapk"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_4

    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x19

    goto :goto_2

    :cond_3
    const/16 v0, 0x4b

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    return v1

    :catch_0
    move-exception v0

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isReallyStart()Z
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedCount:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedCount:Z

    goto :goto_2

    :goto_1
    const/16 v3, 0x51

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    goto :goto_3

    :cond_1
    const/16 v0, 0x45

    :goto_3
    packed-switch v0, :pswitch_data_1

    return v1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_1
    .end packed-switch
.end method

.method public isUseDSV()Z
    .locals 5

    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    const/16 v1, 0x55

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v1, 0x4c

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return v1

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setCompleteTime(J)V
    .locals 2
    .param p1, "completeTime"    # J

    .line 1
    .end local p1    # "completeTime":J
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-wide p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingList:J

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x4f

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCompletedSize(J)V
    .locals 10
    .param p1, "completed"    # J

    .line 9
    .end local p1    # "completed":J
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    const/16 v1, 0x26

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    :goto_0
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK$1:J

    packed-switch v1, :pswitch_data_0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    :goto_1
    goto :goto_2

    :pswitch_0
    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    goto :goto_1

    .line 9
    :goto_2
    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK$1:J

    sub-long/2addr v0, v4

    .line 3
    iget-wide v4, p0, Lccsancom/san/xz/base/XzRecord;->resume:J

    sub-long v4, p1, v4

    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    .line 5
    iget-wide v6, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeDetailPage:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_2

    .line 1
    const/16 v2, 0x2e

    goto :goto_3

    :cond_2
    const/16 v2, 0x4f

    :goto_3
    const-wide/16 v8, 0x3e8

    packed-switch v2, :pswitch_data_1

    .line 5
    mul-long v4, v4, v8

    div-long/2addr v4, v0

    add-long/2addr v4, v6

    const-wide/16 v0, 0x2

    :goto_4
    div-long/2addr v4, v0

    goto :goto_5

    :pswitch_1
    mul-long v4, v4, v8

    goto :goto_4

    :goto_5
    iput-wide v4, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeDetailPage:J

    .line 9
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 8
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK$1:J

    .line 9
    iput-wide p1, p0, Lccsancom/san/xz/base/XzRecord;->resume:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch
.end method

.method public setCookie(Ljava/lang/Object;)V
    .locals 2
    .param p1, "cookie"    # Ljava/lang/Object;

    .line 1
    .end local p1    # "cookie":Ljava/lang/Object;
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    :goto_0
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingCount:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .line 1
    .end local p1    # "duration":J
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-wide p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedRecordByUrl:J

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 1
    .end local p1    # "filePath":Ljava/lang/String;
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v0, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownItem:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x32

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setProgressDamper(Lccsancom/san/xz/base/deleteDownItem;)V
    .locals 3
    .param p1, "damper"    # Lccsancom/san/xz/base/deleteDownItem;

    .line 1
    .end local p1    # "damper":Lccsancom/san/xz/base/deleteDownItem;
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v1, v0, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->resolveUrl:Lccsancom/san/xz/base/deleteDownItem;

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x11

    goto :goto_0

    :cond_1
    const/16 p1, 0x3a

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public setRead(I)V
    .locals 4
    .param p1, "readFlag"    # I

    .line 3
    .end local p1    # "readFlag":I
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedList:I

    goto :goto_2

    :pswitch_0
    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedList:I

    if-ne p1, v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p1, v0, :cond_1

    goto :goto_1

    :goto_3
    return-void

    .line 3
    :cond_1
    iput p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedList:I

    sget p1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/2addr p1, v2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 1
    goto :goto_4

    :cond_2
    const/4 v1, 0x1

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 3
    goto :goto_5

    :pswitch_1
    return-void

    :goto_5
    :try_start_1
    array-length p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setReallyStart()V
    .locals 3

    .line 4
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedCount:Z

    goto :goto_2

    :pswitch_0
    iget-boolean v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedCount:Z

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_1

    :goto_3
    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto :goto_4

    :cond_1
    const/16 v0, 0x39

    :goto_4
    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 4
    :pswitch_1
    return-void

    .line 1
    :goto_5
    const/16 v0, 0x20

    :try_start_1
    div-int/lit8 v0, v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedCount:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->trackReportClick:J

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_1
    .end packed-switch
.end method

.method public setStatus(Lccsancom/san/xz/base/XzRecord$Status;)V
    .locals 2
    .param p1, "status"    # Lccsancom/san/xz/base/XzRecord$Status;

    .line 13
    .end local p1    # "status":Lccsancom/san/xz/base/XzRecord$Status;
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

    .line 2
    sget-object v0, Lccsancom/san/xz/base/XzRecord$addDownloadListener;->removeDownloadListener:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 12
    :pswitch_0
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeReserveApp:Lccsancom/san/xz/base/XzRecord$StatsInfo;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord$StatsInfo;->start()V

    goto :goto_2

    .line 13
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/xz/base/XzRecord;->ActionTypeReserveApp:Lccsancom/san/xz/base/XzRecord$StatsInfo;

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord$StatsInfo;->stop()V

    goto :goto_2

    :goto_0
    sget p1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x11

    goto :goto_1

    :cond_1
    const/16 p1, 0x1c

    :goto_1
    packed-switch p1, :pswitch_data_1

    :goto_2
    :pswitch_2
    sget p1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x4b

    goto :goto_3

    :cond_2
    const/16 p1, 0x38

    :goto_3
    packed-switch p1, :pswitch_data_2

    return-void

    :pswitch_3
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4b
        :pswitch_3
    .end packed-switch
.end method

.method public setStoreProgressDamper(Lccsancom/san/xz/base/deleteDownItem;)V
    .locals 2
    .param p1, "damper"    # Lccsancom/san/xz/base/deleteDownItem;

    .line 1
    .end local p1    # "damper":Lccsancom/san/xz/base/deleteDownItem;
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x34

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->shouldTryHandlingAction:Lccsancom/san/xz/base/deleteDownItem;

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public setXzUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "xzUrl"    # Ljava/lang/String;

    .line 1
    .end local p1    # "xzUrl":Ljava/lang/String;
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lccsancom/san/xz/base/XzRecord;->addDownloadListener:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x25

    :try_start_1
    div-int/2addr p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public toJSON(Lccsanorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lccsanorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 33
    .end local p1    # "jo":Lccsanorg/json/JSONObject;
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->addDownloadListener:Ljava/lang/String;

    const v1, 0xf18c

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    sub-int/2addr v1, v4

    const-string v4, "\u6035\u91b3\u833c\ub498\ua609\ud7ff\uc97e\ufaee\uec66\u1dd1\u0fa1\u0132"

    invoke-static {v4, v1}, Lccsancom/san/xz/base/XzRecord;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->unifiedDownload:Ljava/lang/String;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x275f

    const-string v4, "\u6035\u4761\u2e98\u1622\ufd41\ua4e5\u8c0a\u73ac\u5af6\u0273\ue995\ud128\ub87a\u9fe9\u4706\u2eb9"

    invoke-static {v4, v1}, Lccsancom/san/xz/base/XzRecord;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    :cond_0
    iget-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingList:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 5
    const-string v4, "complete_time"

    invoke-virtual {p1, v4, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 6
    :cond_1
    iget-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedRecordByUrl:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    .line 33
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 6
    :pswitch_0
    nop

    .line 7
    const-string v6, "duration"

    invoke-virtual {p1, v6, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 8
    :goto_1
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord$Status;->toInt()I

    move-result v0

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownItem:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 10
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownItem:Ljava/lang/String;

    const-string v1, "file_path"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 11
    :pswitch_1
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingCount:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 33
    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    sget v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 12
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cookie"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 13
    :goto_4
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadingRecordByUrl:Lccsansan/ae/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/ae/getDownloadingList;->getDownloadedCount()Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 14
    iget-boolean v0, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadedCount:Z

    const-string v1, "really_start"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 15
    iget-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->trackReportClick:J

    cmp-long v6, v0, v2

    if-lez v6, :cond_6

    .line 16
    const-string v6, "really_start_time"

    invoke-virtual {p1, v6, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 33
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    .line 17
    :cond_6
    iget-wide v0, p0, Lccsancom/san/xz/base/XzRecord;->removeDownloadListener:J

    cmp-long v6, v0, v2

    if-lez v6, :cond_7

    .line 33
    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    nop

    :goto_5
    packed-switch v4, :pswitch_data_3

    .line 17
    nop

    .line 18
    const-string v2, "start_time"

    invoke-virtual {p1, v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 33
    sget v0, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v0, v0, 0x2

    .line 19
    :pswitch_3
    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownList:I

    const-string v1, "stats_count"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 20
    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->performActionWhenOffline:I

    if-lez v0, :cond_8

    .line 21
    const-string v1, "chk_sum_failed_cnt"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 22
    :cond_8
    iget v0, p0, Lccsancom/san/xz/base/XzRecord;->getThumbPathByRecord:I

    if-lez v0, :cond_9

    .line 33
    const/16 v1, 0x40

    goto :goto_6

    :cond_9
    const/16 v1, 0x31

    :goto_6
    packed-switch v1, :pswitch_data_4

    :goto_7
    goto :goto_8

    :pswitch_4
    sget v1, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    .line 22
    :cond_a
    nop

    .line 23
    const-string v1, "refresh_count"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    goto :goto_7

    .line 24
    :goto_8
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getPackageNameByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 25
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->getPackageNameByRecord:Ljava/lang/String;

    const-string v1, "dl_portal"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 26
    :cond_b
    iget-boolean v0, p0, Lccsancom/san/xz/base/XzRecord;->IncentiveSDK:Z

    const-string v1, "use_dsv"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 27
    iget-boolean v0, p0, Lccsancom/san/xz/base/XzRecord;->trackReportShow:Z

    const-string v1, "use_multipart"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 28
    iget-object v0, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 29
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 30
    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->execute:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 33
    sget v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v2, v2, 0x41

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    .line 30
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cs/removeDownloadListener;

    .line 31
    invoke-virtual {v2}, Lccsansan/cs/removeDownloadListener;->addDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 33
    sget v2, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 31
    :cond_d
    nop

    .line 33
    const-string v1, "multipart"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x40
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " filepath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/xz/base/XzRecord;->getDownloadStatusByUrl:Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "+]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public useMultiPart()Z
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord;->performAction:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lccsancom/san/xz/base/XzRecord;->trackReportShow:Z

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/xz/base/XzRecord;->getActionType:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method
