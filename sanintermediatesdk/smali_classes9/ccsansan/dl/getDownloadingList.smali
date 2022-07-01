.class public Lccsansan/dl/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsancom/san/ads/base/IStats;

.field private static addDownloadListener:Ljava/lang/String;

.field private static deleteDownItem:I

.field private static getDownloadedRecordByUrl:J

.field private static getDownloadingList:Lccsansan/dt/removeDownloadListener;

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:J

.field private static unifiedDownload:Lccsansan/dl/unifiedDownload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    const-wide v0, -0x6fb20d570183fa84L    # -3.857976444015265E-230

    sput-wide v0, Lccsansan/dl/getDownloadingList;->getDownloadedRecordByUrl:J

    return-void
.end method

.method public static IncentiveDownloadUtils()V
    .locals 4

    .line 6
    nop

    .line 1
    invoke-static {}, Lccsansan/ac/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/y/getDownloadingList;->getDownloadingList()V

    goto :goto_2

    .line 1
    :pswitch_0
    nop

    .line 2
    const-string v0, "SanStats.Helper"

    const-string v3, "SanStatsEnable is false and onAppDestroy return"

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-void

    :goto_1
    const/16 v0, 0x4b

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    sget v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsancom/san/ads/base/IStats;)V
    .locals 4

    .line 1
    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-object p0, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IStats;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p0, 0x4d

    :try_start_1
    div-int/2addr p0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 48
    sget v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    if-nez p0, :cond_1

    .line 48
    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    return-void

    .line 46
    :cond_2
    sput-object p0, Lccsansan/dl/getDownloadingList;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lccsansan/dl/getDownloadingList;->removeDownloadListener:J

    .line 48
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsansan/dl/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    sget p0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    const/16 p0, 0x4f

    goto :goto_0

    :cond_3
    const/16 p0, 0x28

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(II)Z
    .locals 2

    .line 29
    nop

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    sget p0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    :cond_1
    :goto_1
    sget p0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener()V
    .locals 4

    .line 6
    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lccsansan/dl/getDownloadingList;->removeDownloadListener:J

    sub-long/2addr v0, v2

    const/16 v2, 0x12

    .line 2
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    .line 3
    sget-object v3, Lccsansan/dl/getDownloadingList;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Lccsansan/bw/AdFormat;->unifiedDownload(F[F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/l/unifiedDownload;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 4
    sput-wide v0, Lccsansan/dl/getDownloadingList;->removeDownloadListener:J

    .line 5
    const-string v0, ""

    sput-object v0, Lccsansan/dl/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lccsansan/dl/getDownloadingList;->getDownloadingList:Lccsansan/dt/removeDownloadListener;

    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41300000    # 11.0f
        0x41400000    # 12.0f
        0x41500000    # 13.0f
        0x41600000    # 14.0f
        0x41700000    # 15.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42480000    # 50.0f
    .end array-data
.end method

.method private static getDownloadingList()Lccsansan/dl/unifiedDownload;
    .locals 2

    .line 14
    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 11
    :cond_0
    sget-object v0, Lccsansan/dl/getDownloadingList;->unifiedDownload:Lccsansan/dl/unifiedDownload;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Lccsansan/dl/unifiedDownload;

    invoke-direct {v0}, Lccsansan/dl/unifiedDownload;-><init>()V

    sput-object v0, Lccsansan/dl/getDownloadingList;->unifiedDownload:Lccsansan/dl/unifiedDownload;

    .line 14
    sget v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    :cond_1
    sget-object v0, Lccsansan/dl/getDownloadingList;->unifiedDownload:Lccsansan/dl/unifiedDownload;

    return-object v0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    invoke-static {p2}, Lccsansan/dl/getDownloadingList;->getDownloadingList(Ljava/util/HashMap;)V

    .line 3
    invoke-static {}, Lccsansan/ac/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :cond_0
    invoke-static {p2}, Lccsansan/dl/getDownloadingList;->getDownloadingList(Ljava/util/HashMap;)V

    .line 3
    invoke-static {}, Lccsansan/ac/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :goto_0
    invoke-static {}, Lccsansan/dl/getDownloadingList;->getDownloadingList()Lccsansan/dl/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lccsansan/dl/unifiedDownload;->onRandomEvent(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 10
    :goto_1
    goto :goto_5

    .line 4
    :cond_1
    nop

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SanStatsEnable is false and onRandomEvent return for:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    .line 3
    const/16 v2, 0x3e

    goto :goto_2

    :cond_2
    const/16 v2, 0xe

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :pswitch_0
    const-string v2, ""

    goto :goto_4

    .line 10
    :goto_3
    nop

    .line 6
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SanStats.Helper"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :goto_5
    sget-object v0, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IStats;

    if-eqz v0, :cond_3

    .line 3
    const/16 v0, 0x28

    goto :goto_6

    :cond_3
    const/4 v0, 0x7

    :goto_6
    packed-switch v0, :pswitch_data_1

    .line 9
    invoke-static {}, Lccsansan/ac/getDownloadingList;->unifiedDownload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    const/4 v0, 0x0

    goto :goto_7

    :cond_4
    const/4 v0, 0x1

    :goto_7
    packed-switch v0, :pswitch_data_2

    .line 10
    sget-object v0, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IStats;

    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/ads/base/IStats;->onRandomEvent(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :pswitch_1
    nop

    .line 3
    sget p0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    :try_start_1
    array-length p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    .line 10
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const v0, 0xdc3f

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v3

    const/4 v5, 0x5

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const-string v9, "\u0515\ud92d\ubd71\u91b5\u75e1\u482b\u2c6a\u009a\ue4f7\ubb3f\u9f6b\u73bd\u57ed"

    cmp-long v10, v3, v7

    sub-int/2addr v0, v10

    invoke-static {v9, v0}, Lccsansan/dl/getDownloadingList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x6

    .line 35
    new-array p0, p0, [F

    const/16 v0, 0xe10

    int-to-float v0, v0

    aput v0, p0, v2

    const/16 v0, 0x5460

    int-to-float v0, v0

    aput v0, p0, v6

    const v0, 0xa8c0

    int-to-float v0, v0

    aput v0, p0, v1

    const v0, 0x15180

    int-to-float v0, v0

    const/4 v3, 0x3

    aput v0, p0, v3

    const v0, 0x2a300

    int-to-float v0, v0

    const/4 v3, 0x4

    aput v0, p0, v3

    const v0, 0x3f480

    int-to-float v0, v0

    aput v0, p0, v5

    .line 36
    invoke-static {}, Lccsansan/dr/deleteDownItem;->getDownloadingList()J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    .line 42
    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0, p0}, Lccsansan/bw/AdFormat;->unifiedDownload(F[F)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 42
    :pswitch_0
    sget p0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/2addr p0, v5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/2addr p0, v1

    if-nez p0, :cond_2

    .line 36
    :cond_2
    nop

    .line 42
    const-string p0, "-1"

    goto :goto_2

    :goto_1
    nop

    .line 37
    :goto_2
    nop

    .line 38
    const-string v0, "al_utl"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lccsansan/dr/deleteDownItem;->IncentiveDownloadUtils()I

    move-result p0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gp_ic"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lccsansan/dr/deleteDownItem;->addDownloadListener()I

    move-result v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "other_ic"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    const-string v0, "exfo"

    sget v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 13
    const/16 v1, 0x1a

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lccsansan/bq/addDownloadListener;->deleteDownItem()Z

    move-result v1

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/bq/addDownloadListener;->deleteDownItem()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    :goto_3
    return-void

    .line 17
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 19
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 21
    :cond_2
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    const-string v1, "config_tag"

    .line 23
    :try_start_2
    invoke-static {}, Lccsansan/bq/addDownloadListener;->getDownloadingCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 24
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    sget p0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    .line 26
    goto :goto_5

    .line 24
    :catch_0
    move-exception p0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#putCommonExtraInfoToInfoMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SanStats.Helper"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :catchall_0
    move-exception p0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(I)Z
    .locals 2

    .line 27
    sget v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {v1, p0}, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils(II)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener()Ljava/lang/String;
    .locals 3

    .line 49
    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lccsansan/dl/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    nop

    .line 2
    invoke-static {p2}, Lccsansan/dl/getDownloadingList;->getDownloadingList(Ljava/util/HashMap;)V

    .line 4
    invoke-static {}, Lccsansan/ac/getDownloadingList;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lccsansan/dl/getDownloadingList;->getDownloadingList()Lccsansan/dl/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lccsansan/dl/unifiedDownload;->onEvent(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_0
    nop

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SanStatsEnable is false and onEvent return for:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    .line 12
    const-string v1, ""

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SanStats.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0x37

    goto :goto_1

    :cond_2
    const/16 v0, 0x1d

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 11
    :goto_2
    :pswitch_0
    sget-object v0, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IStats;

    if-eqz v0, :cond_6

    .line 12
    sget v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 11
    invoke-static {}, Lccsansan/ac/getDownloadingList;->unifiedDownload()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    .line 12
    :pswitch_1
    invoke-static {}, Lccsansan/ac/getDownloadingList;->unifiedDownload()Z

    move-result v0

    const/16 v2, 0x5c

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    const/16 v0, 0x16

    goto :goto_4

    :cond_4
    const/4 v0, 0x6

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    :catchall_0
    move-exception p0

    throw p0

    :goto_5
    :pswitch_2
    sget v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    :cond_5
    sget-object v0, Lccsansan/dl/getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IStats;

    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/ads/base/IStats;->onEvent(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_6
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_2
    .end packed-switch
.end method

.method public static unifiedDownload()Lccsancom/san/ads/base/IStats;
    .locals 5

    .line 1
    sget v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/dl/getDownloadingList;->getDownloadingList()Lccsansan/dl/unifiedDownload;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/dl/getDownloadingList;->getDownloadingList()Lccsansan/dl/unifiedDownload;

    move-result-object v0

    const/16 v3, 0x56

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v3, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    add-int/lit8 v3, v3, 0x11

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    const/16 v1, 0x5c

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/util/Pair;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 32
    sget v0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    array-length v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/16 v0, 0x5d

    goto :goto_0

    :cond_0
    const/16 v0, 0x4f

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 0
    :cond_1
    if-nez p0, :cond_2

    .line 32
    :pswitch_0
    return-object v1

    .line 30
    :cond_2
    :goto_1
    iget-object v0, p0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    sget p0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    .line 30
    const-string p0, "Wifi"

    return-object p0

    .line 32
    :cond_3
    iget-object p0, p0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lccsansan/dl/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dl/getDownloadingList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    const-string v0, "Data"

    packed-switch p0, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_1
    array-length p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    throw p0

    :cond_5
    const-string p0, "No network"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
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

    sget-wide v4, Lccsansan/dl/getDownloadingList;->getDownloadedRecordByUrl:J

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
