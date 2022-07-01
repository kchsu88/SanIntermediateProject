.class Lccsansan/e/removeDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/e/removeDownloadListener;->addDownloadListener(Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static deleteDownItem:I

.field private static deleteDownList:I

.field private static getDownloadedList:[C

.field private static getDownloadingRecordByUrl:J


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:J

.field final synthetic getDownloadStatusByUrl:I

.field final synthetic getDownloadedRecordByUrl:Lccsansan/e/removeDownloadListener;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:I

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$sxsAP_g5nXOO_Gjzi3pfsU9kwuc(Lccsansan/e/removeDownloadListener$unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lccsansan/e/removeDownloadListener$unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadedList:[C

    const-wide v0, -0x74dad6d9d108c3cL

    sput-wide v0, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadingRecordByUrl:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x3746s
        -0x448bs
        0x2f21s
        -0x6c04s
        0x7a2s
        -0x759bs
        0x7e27s
        -0x1d1as
        0x56a1s
        -0x26b2s
        0x4d0fs
        0x31c2s
        -0x5a75s
    .end array-data
.end method

.method constructor <init>(Lccsansan/e/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadedRecordByUrl:Lccsansan/e/removeDownloadListener;

    iput-object p2, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iput p5, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->removeDownloadListener:I

    iput-wide p6, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->addDownloadListener:J

    iput p8, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadStatusByUrl:I

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static addDownloadListener(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadedList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadingRecordByUrl:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private synthetic addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 69
    sget v2, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 1
    invoke-static {v5, v0, v1}, Lccsansan/ab/getDownloadingList;->unifiedDownload(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {v4, v0, v1}, Lccsansan/ab/getDownloadingList;->unifiedDownload(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In white list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPINotifyObserver"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1
    const/16 v6, 0x47

    goto :goto_1

    :cond_2
    const/16 v6, 0xf

    :goto_1
    const-string v7, ""

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 7
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1
    const/16 v6, 0x62

    goto :goto_2

    :cond_3
    const/16 v6, 0x41

    :goto_2
    packed-switch v6, :pswitch_data_1

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v2

    :goto_3
    const-string v6, "s2s_track_status"

    if-eqz v2, :cond_6

    .line 10
    iget v8, v2, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    if-eq v8, v3, :cond_5

    .line 69
    sget v8, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v8, v8, 0x77

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    rem-int/2addr v8, v3

    if-nez v8, :cond_4

    .line 10
    :cond_4
    const/4 v8, -0x3

    .line 11
    invoke-virtual {v2, v6, v8}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_6

    :cond_5
    return-void

    :cond_6
    const/4 v8, -0x2

    if-eqz v2, :cond_a

    .line 15
    iget-object v9, v2, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v2, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-static {v9}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v9

    .line 69
    goto :goto_4

    .line 15
    :cond_7
    iget-object v9, v2, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v9}, Lccsansan/m/getDownloadedList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v9

    :goto_4
    if-ne v9, v8, :cond_9

    .line 1
    sget v9, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    add-int/lit8 v9, v9, 0x7d

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    rem-int/2addr v9, v3

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    goto :goto_5

    .line 15
    :cond_8
    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_a

    return-void

    :cond_a
    const-string v9, "pkg_type"

    if-eqz v2, :cond_b

    .line 25
    invoke-virtual {v2, v9, v4}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v10

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v11

    shr-int/lit8 v11, v11, 0x8

    const v12, 0xc8de

    invoke-static {v7, v5}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-char v12, v12

    const v13, -0xfffff3

    invoke-static {v5, v5, v5}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v14

    sub-int/2addr v13, v14

    invoke-static {v11, v12, v13}, Lccsansan/e/removeDownloadListener$unifiedDownload;->addDownloadListener(ICI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 26
    invoke-virtual {v2, v11, v5}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v11

    .line 27
    iget-object v12, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    goto :goto_6

    .line 15
    :cond_b
    move-object v12, v7

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 30
    :goto_6
    new-instance v13, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    invoke-direct {v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;-><init>()V

    const-wide/16 v14, 0x0

    .line 31
    invoke-virtual {v13, v1, v7, v14, v15}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v13

    .line 32
    invoke-virtual {v13, v12}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v12

    const/4 v13, 0x0

    .line 33
    invoke-virtual {v12, v0, v13, v5}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v12

    .line 34
    invoke-virtual {v12, v10}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v12

    if-nez v2, :cond_c

    move-object/from16 v13, p3

    goto :goto_7

    :cond_c
    iget-object v13, v2, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    :goto_7
    invoke-virtual {v12, v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v12

    .line 35
    move/from16 v13, p4

    invoke-virtual {v12, v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v12

    invoke-virtual {v12, v5}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v12

    move-wide/from16 v13, p5

    invoke-virtual {v12, v13, v14}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v12

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v12

    .line 36
    invoke-virtual {v12, v11}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v11

    move/from16 v12, p7

    int-to-float v12, v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_d

    .line 1
    sget v4, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v4, v4, 0x63

    rem-int/lit16 v12, v4, 0x80

    sput v12, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    rem-int/2addr v4, v3

    .line 37
    const/4 v4, 0x0

    goto :goto_9

    .line 69
    :cond_d
    sget v12, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v12, v12, 0x7b

    rem-int/lit16 v13, v12, 0x80

    sput v13, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    rem-int/2addr v12, v3

    if-nez v12, :cond_e

    .line 1
    const/4 v12, 0x0

    goto :goto_8

    :cond_e
    const/4 v12, 0x1

    :goto_8
    packed-switch v12, :pswitch_data_2

    .line 69
    :pswitch_2
    nop

    .line 37
    :goto_9
    invoke-virtual {v11, v4}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;

    move-result-object v4

    .line 38
    invoke-virtual {v4}, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList()Lccsansan/cy/getDownloadingRecordByUrl;

    move-result-object v4

    .line 39
    new-instance v11, Lccsansan/cy/resume;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v4}, Lccsansan/cy/resume;-><init>(Lccsanandroid/content/Context;Lccsansan/cy/getDownloadingRecordByUrl;)V

    .line 40
    new-instance v4, Lccsanandroid/os/Message;

    invoke-direct {v4}, Lccsanandroid/os/Message;-><init>()V

    .line 41
    iput v3, v4, Lccsanandroid/os/Message;->what:I

    .line 42
    iput-object v11, v4, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    const-string v11, "-1"

    if-nez v2, :cond_11

    .line 44
    new-instance v2, Lccsansan/m/getDownloadedList;

    invoke-direct {v2}, Lccsansan/m/getDownloadedList;-><init>()V

    .line 45
    iput-object v1, v2, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 46
    iput-object v0, v2, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 47
    iput-object v7, v2, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v2, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 49
    invoke-virtual {v2, v6, v11}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1
    const/16 v6, 0x55

    goto :goto_a

    :cond_f
    const/16 v6, 0x2b

    :goto_a
    packed-switch v6, :pswitch_data_3

    .line 53
    sget-object v1, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 1
    :pswitch_3
    sget v0, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    rem-int/2addr v0, v3

    if-eqz v0, :cond_10

    .line 51
    :cond_10
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_b
    sget-object v0, Lccsansan/m/getDownloadedList$unifiedDownload;->START_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v0}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v0

    iput v0, v2, Lccsansan/m/getDownloadedList;->execute:I

    .line 56
    iput v5, v2, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    .line 57
    move-object/from16 v0, p3

    iput-object v0, v2, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Lccsansan/m/getDownloadedList;)V

    .line 69
    goto :goto_d

    .line 61
    :cond_11
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 62
    sget-object v0, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 64
    :cond_12
    sget-object v1, Lccsansan/m/getDownloadedList;->removeDownloadListener:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    nop

    .line 66
    invoke-virtual {v2, v6, v11}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 69
    :goto_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadedRecordByUrl:Lccsansan/e/removeDownloadListener;

    invoke-static {v1}, Lccsansan/e/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/e/removeDownloadListener;)Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x55
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 11

    .line 1
    sget v0, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v3, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    iget-object v4, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v5, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iget v6, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->removeDownloadListener:I

    iget-wide v7, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->addDownloadListener:J

    iget v9, p0, Lccsansan/e/removeDownloadListener$unifiedDownload;->getDownloadStatusByUrl:I

    new-instance v10, Lccsansan/e/removeDownloadListener$unifiedDownload$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lccsansan/e/removeDownloadListener$unifiedDownload$$ExternalSyntheticLambda0;-><init>(Lccsansan/e/removeDownloadListener$unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-interface {v0, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget v0, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/e/removeDownloadListener$unifiedDownload;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x36

    goto :goto_0

    :cond_1
    const/16 v0, 0x47

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method
