.class public Lccsansan/dt/getPackageNameByRecord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;
    }
.end annotation


# static fields
.field private static getDownloadingCount:I

.field private static resume:I

.field private static trackReportClick:I


# instance fields
.field private final IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteDownItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deleteDownList:Lccsansan/dt/removeDownloadListener;

.field private getDownloadStatusByUrl:Z

.field private getDownloadedCount:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

.field private final getDownloadedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadedRecordByUrl:I

.field private final getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingRecordByUrl:I

.field private pause:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

.field private final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    const/16 v0, 0xa4

    sput v0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingCount:I

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;Lccsansan/dt/removeDownloadListener;)V
    .locals 13

    .line 1
    const-string v0, "source_list"

    const-string v1, "complete_urls"

    const-string v2, "three_quarter_urls"

    const-string v3, "half_urls"

    const-string v4, "quarter_urls"

    const-string v5, "start_urls"

    const-string v6, "resume_urls"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lccsansan/dt/getPackageNameByRecord;->removeDownloadListener:Ljava/util/List;

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList:Ljava/util/List;

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener:Ljava/util/List;

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils:Ljava/util/List;

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lccsansan/dt/getPackageNameByRecord;->unifiedDownload:Ljava/util/List;

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownItem:Ljava/util/List;

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList:Ljava/util/List;

    .line 10
    const/4 v7, 0x0

    iput-boolean v7, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadStatusByUrl:Z

    .line 11
    const/16 v8, 0x8

    iput v8, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl:I

    .line 15
    iput v7, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedRecordByUrl:I

    .line 25
    :try_start_0
    iput-object p2, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    const-string p2, "auto_play"

    .line 27
    const/4 v9, 0x1

    invoke-virtual {p1, p2, v9}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v9, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadStatusByUrl:Z

    const-string p2, "auto_play_cond"

    .line 28
    invoke-virtual {p1, p2, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl:I

    const-string p2, "play_type"

    .line 29
    invoke-virtual {p1, p2, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string p2, "trans_limit"

    const-wide/16 v10, 0x0

    .line 30
    invoke-virtual {p1, p2, v10, v11}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    const-string p2, "\u0005\ufffb\ufffb\u0006\u000e\u0005\u0003\u0006\ufff8\ufffb\ufff6\ufffa\u0006"

    const-string v8, ""

    const/16 v10, 0x30

    invoke-static {v8, v10}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v8

    rsub-int/lit8 v8, v8, 0xc

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, 0x2

    invoke-static {v7}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    add-int/lit16 v11, v11, 0x10d

    invoke-static {p2, v7, v8, v10, v11}, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-virtual {p1, p2, v9}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string p2, "auto_click_cond"

    const v8, 0x7fffffff

    .line 32
    invoke-virtual {p1, p2, v8}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string p2, "play_cond"

    .line 33
    invoke-virtual {p1, p2, v7}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedRecordByUrl:I

    .line 35
    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance p2, Lccsanorg/json/JSONArray;

    invoke-direct {p2}, Lccsanorg/json/JSONArray;-><init>()V

    :goto_1
    if-eqz p2, :cond_2

    const/4 v6, 0x0

    .line 37
    :goto_2
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 38
    iget-object v8, p0, Lccsansan/dt/getPackageNameByRecord;->removeDownloadListener:Ljava/util/List;

    invoke-virtual {p2, v6}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 42
    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    goto :goto_3

    :cond_3
    new-instance p2, Lccsanorg/json/JSONArray;

    invoke-direct {p2}, Lccsanorg/json/JSONArray;-><init>()V

    :goto_3
    if-eqz p2, :cond_4

    const/4 v5, 0x0

    .line 44
    :goto_4
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 45
    iget-object v6, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList:Ljava/util/List;

    invoke-virtual {p2, v5}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    nop

    .line 49
    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    goto :goto_5

    :cond_5
    new-instance p2, Lccsanorg/json/JSONArray;

    invoke-direct {p2}, Lccsanorg/json/JSONArray;-><init>()V

    :goto_5
    if-eqz p2, :cond_6

    const/4 v4, 0x0

    .line 51
    :goto_6
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 52
    iget-object v5, p0, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener:Ljava/util/List;

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    nop

    .line 56
    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    goto :goto_7

    :cond_7
    new-instance p2, Lccsanorg/json/JSONArray;

    invoke-direct {p2}, Lccsanorg/json/JSONArray;-><init>()V

    :goto_7
    if-eqz p2, :cond_8

    const/4 v3, 0x0

    .line 58
    :goto_8
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 59
    iget-object v4, p0, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_8
    nop

    .line 63
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    goto :goto_9

    :cond_9
    new-instance p2, Lccsanorg/json/JSONArray;

    invoke-direct {p2}, Lccsanorg/json/JSONArray;-><init>()V

    :goto_9
    if-eqz p2, :cond_a

    const/4 v2, 0x0

    .line 65
    :goto_a
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 66
    iget-object v3, p0, Lccsansan/dt/getPackageNameByRecord;->unifiedDownload:Ljava/util/List;

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    nop

    .line 70
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    goto :goto_b

    :cond_b
    new-instance p2, Lccsanorg/json/JSONArray;

    invoke-direct {p2}, Lccsanorg/json/JSONArray;-><init>()V

    :goto_b
    if-eqz p2, :cond_c

    const/4 v1, 0x0

    .line 72
    :goto_c
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 73
    iget-object v2, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownItem:Ljava/util/List;

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    nop

    .line 77
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    goto :goto_d

    :cond_d
    new-instance p1, Lccsanorg/json/JSONArray;

    invoke-direct {p1}, Lccsanorg/json/JSONArray;-><init>()V

    :goto_d
    if-eqz p1, :cond_e

    .line 79
    :goto_e
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result p2

    if-ge v7, p2, :cond_e

    .line 80
    iget-object p2, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList:Ljava/util/List;

    new-instance v0, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    invoke-virtual {p1, v7}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :catch_0
    move-exception p1

    .line 84
    const-string p2, "VideoData"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1120
    sget-object v0, Lccsansan/d/trackReportClick;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    nop

    .line 1123
    :try_start_0
    new-array v1, p2, [C

    .line 1127
    const/4 v2, 0x0

    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_0
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge v3, p2, :cond_1

    .line 1129
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v3, p0, v3

    sput v3, Lccsansan/d/trackReportClick;->unifiedDownload:I

    .line 1131
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget v4, Lccsansan/d/trackReportClick;->unifiedDownload:I

    add-int/2addr v4, p4

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1132
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v4, v1, v3

    sget v5, Lccsansan/dt/getPackageNameByRecord;->getDownloadingCount:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1127
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_0

    .line 1136
    :cond_1
    if-lez p3, :cond_2

    .line 1138
    sput p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    .line 1140
    new-array p0, p2, [C

    .line 1142
    invoke-static {v1, v2, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p3, p2, p3

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    invoke-static {p0, v2, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p4, p2, p4

    invoke-static {p0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_2
    if-eqz p1, :cond_4

    .line 1150
    new-array p0, p2, [C

    .line 1152
    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_1
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge p1, p2, :cond_3

    .line 1154
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget p3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sub-int p3, p2, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p0, p1

    .line 1152
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_1

    .line 1157
    :cond_3
    move-object v1, p0

    .line 1160
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1161
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;)I
    .locals 5

    .line 20
    nop

    .line 1
    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$addDownloadListener;->MOBILE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 20
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object v1

    goto :goto_2

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$addDownloadListener;->WIFI:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    if-ne v1, v2, :cond_1

    const/16 p0, 0x8

    return p0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils()Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object p0

    sget-object v1, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    if-ne p0, v1, :cond_2

    .line 20
    const/16 p0, 0x51

    goto :goto_1

    :cond_2
    const/16 p0, 0x15

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 15
    return v0

    :pswitch_1
    nop

    .line 20
    return v0

    .line 3
    :goto_2
    sget-object v2, Lccsansan/ab/removeDownloadListener$getDownloadingList;->UNKNOWN:Lccsansan/ab/removeDownloadListener$getDownloadingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_3

    .line 20
    sget p0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/2addr p0, v4

    .line 3
    return v0

    .line 5
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_2G:Lccsansan/ab/removeDownloadListener$getDownloadingList;

    if-ne v1, v2, :cond_4

    return v3

    .line 7
    :cond_4
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object v1

    sget-object v2, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_3G:Lccsansan/ab/removeDownloadListener$getDownloadingList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v2, :cond_6

    .line 20
    sget p0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/2addr p0, v4

    if-eqz p0, :cond_5

    const/4 p0, 0x3

    return p0

    .line 7
    :cond_5
    return v4

    .line 9
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lccsansan/ab/removeDownloadListener;->getDownloadStatusByUrl()Lccsansan/ab/removeDownloadListener$getDownloadingList;

    move-result-object p0

    sget-object v1, Lccsansan/ab/removeDownloadListener$getDownloadingList;->MOBILE_4G:Lccsansan/ab/removeDownloadListener$getDownloadingList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p0, v1, :cond_7

    const/4 p0, 0x4

    .line 20
    return p0

    .line 9
    :cond_7
    return v0

    .line 20
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VideoData"

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x43

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

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
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    sget v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/16 v0, 0x62

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public deleteDownItem()Z
    .locals 4

    .line 2
    sget v0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener(Lccsanandroid/content/Context;)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadStatusByUrl:Z

    if-eqz v1, :cond_3

    sget v2, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_1
    iget v2, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl:I

    if-eqz v2, :cond_2

    const/16 v2, 0x32

    goto :goto_0

    :cond_2
    const/16 v2, 0x55

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_3
    if-eqz v1, :cond_5

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v1, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    :pswitch_0
    const/4 v0, 0x1

    sget v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const/16 v1, 0x26

    goto :goto_1

    :cond_4
    const/16 v1, 0x24

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    sget v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_6
    return v0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadStatusByUrl()Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;
    .locals 3

    .line 5
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v1, v0, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 2
    :cond_0
    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->pause:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    const/16 v2, 0x38

    if-nez v1, :cond_1

    .line 3
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/16 v1, 0x38

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 5
    :pswitch_0
    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 3
    goto :goto_1

    :cond_2
    const/16 v2, 0x1f

    :goto_1
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList:Ljava/util/List;

    invoke-static {v0}, Lccsansan/di/getDownloadingList;->addDownloadListener(Ljava/util/List;)Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->pause:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x2e

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 5
    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    sget v0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    :goto_3
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->pause:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownItem:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownItem:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

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
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList:Ljava/util/List;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList:Ljava/util/List;

    const/16 v1, 0x32

    :try_start_0
    div-int/lit8 v1, v1, 0x0
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
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingCount()I
    .locals 3

    .line 2
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedRecordByUrl:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedRecordByUrl:I

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->removeDownloadListener:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    sget v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->unifiedDownload:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x3e

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x25

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl()Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;
    .locals 3

    .line 5
    nop

    .line 3
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    :cond_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedCount:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    if-nez v0, :cond_1

    .line 3
    const/16 v0, 0x4d

    goto :goto_0

    :cond_1
    const/16 v0, 0x22

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5
    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 3
    const/16 v0, 0x50

    goto :goto_1

    :cond_2
    const/16 v0, 0x25

    :goto_1
    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList:Ljava/util/List;

    invoke-static {v0}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/util/List;)Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedCount:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList:Ljava/util/List;

    invoke-static {v0}, Lccsansan/di/getDownloadingList;->unifiedDownload(Ljava/util/List;)Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedCount:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 5
    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    :pswitch_1
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadedCount:Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    sget v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .line 2
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v1, v0, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 0
    :cond_0
    const/16 v1, 0x8

    .line 1
    iput v1, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadStatusByUrl:Z

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x35

    goto :goto_0

    :cond_1
    const/16 v0, 0x1c

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x30

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4a

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->unifiedDownload:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownList:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    sget v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 21
    sget v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/dt/getPackageNameByRecord;->deleteDownItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget p1, Lccsansan/dt/getPackageNameByRecord;->resume:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/dt/getPackageNameByRecord;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
