.class public Lccsansan/l/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static getDownloadingList:I

.field private static final unifiedDownload:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    invoke-static {}, Lccsansan/l/unifiedDownload;->removeDownloadListener()V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/l/unifiedDownload;->unifiedDownload:Ljava/util/HashMap;

    sget v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;)J
    .locals 5

    .line 9
    sget v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6
    :cond_0
    sget-object v0, Lccsansan/l/unifiedDownload;->unifiedDownload:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v1, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 6
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;
    .locals 2

    .line 91
    nop

    .line 87
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    sget p0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, p0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 87
    :cond_0
    nop

    .line 91
    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "video"

    goto :goto_3

    .line 89
    :cond_2
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    sget p0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    :cond_3
    const-string p0, "vast"

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x44

    goto :goto_1

    :cond_5
    const/16 p0, 0x47

    :goto_1
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const-string p0, "jstag"

    goto :goto_3

    :goto_2
    const-string p0, "image"

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(ILccsansan/dt/removeDownloadListener;Ljava/lang/String;I)V
    .locals 4

    .line 53
    const-string v0, ""

    .line 38
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "ad_id"

    .line 39
    :try_start_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "result"

    .line 40
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "placement_id"

    .line 41
    :try_start_3
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p0, "creative_id"

    .line 42
    :try_start_4
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p0, "dtp"

    .line 43
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->trackReportShow()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p0, "did"

    .line 44
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sourcetype"

    .line 45
    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p0, "effect_type"

    .line 46
    :try_start_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p0, "offline"

    .line 47
    :try_start_8
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz p2, :cond_0

    .line 53
    const/16 p2, 0x12

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 47
    const-string p2, "0"

    goto :goto_1

    .line 53
    :pswitch_0
    sget p2, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p2, p2, 0x6b

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    .line 47
    :cond_1
    const-string p2, "1"

    :goto_1
    :try_start_9
    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p0, "rid"

    .line 48
    :try_start_a
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p0, "sid"

    .line 49
    :try_start_b
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->trackReportClick()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string p0, "ad_cache"

    .line 50
    :try_start_c
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getSid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "Mads_Action"

    invoke-static {p0, p1, v1}, Lccsansan/l/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "statsMadsAction error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.BasicMads"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget p0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    packed-switch p0, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p0, 0x0

    :try_start_d
    array-length p0, p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 21
    nop

    .line 7
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "rid"

    .line 8
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ad_id"

    .line 9
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pid"

    .line 10
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "placement_id"

    .line 11
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "creativeid"

    .line 12
    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "deeplink_portal"

    .line 13
    invoke-virtual {v0, p0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "deeplink_result"

    .line 14
    invoke-virtual {v0, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fail_reason"

    .line 15
    invoke-virtual {v0, p0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "tm"

    .line 16
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pkgName"

    .line 17
    invoke-virtual {v0, p0, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "deeplinkurl"

    .line 18
    invoke-virtual {v0, p0, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "Mads_Deeplink_Result"

    invoke-static {p0, p1, v0}, Lccsansan/l/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    sget p0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "statsDeepLinkResult error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.BasicMads"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    sget v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v0, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    if-nez p0, :cond_2

    .line 5
    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p0, 0x47

    goto :goto_0

    :cond_1
    const/16 p0, 0x20

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x2a

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :cond_2
    invoke-static {}, Lccsansan/cl/unifiedDownload;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    const-string v0, "url"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "usetime"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lccsansan/cv/getDownloadStatusByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v1, "source_batch"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "Mads_CreativeDownResult"

    invoke-static {v0, v1, p0}, Lccsansan/l/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;
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

    sget v5, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils:I

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

.method private static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
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

    .line 93
    nop

    .line 92
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onEvent["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  Info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.BasicMads"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    const/16 p1, 0x2d

    add-int/2addr p0, p1

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p1, 0x29

    :cond_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x35

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;)V
    .locals 5

    .line 25
    sget v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/l/unifiedDownload;->unifiedDownload:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/l/unifiedDownload;->unifiedDownload:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget p0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/16 p0, 0x22

    :try_start_1
    div-int/2addr p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    sget v0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x43

    if-eqz v0, :cond_0

    .line 22
    const/16 v0, 0x4a

    goto :goto_0

    :cond_0
    const/16 v0, 0x43

    :goto_0
    const-string v2, ""

    const-string v3, "\u0010\u0008\uffdd\r\u000b\ufffa\uffe9\u0002\r\u0005\u000e\uffe6\u0007\u0008\u0002\r\t\ufffe\ufffc\u0011\uffde\ufffd\ufffa\u0008\u0005\u0007"

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/16 v6, 0x30

    invoke-static {v2, v6, v5}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    invoke-static {v6}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v6

    rsub-int/lit8 v6, v6, 0x3c

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    add-int/lit16 v7, v7, 0xdf

    invoke-static {v3, v4, v2, v6, v7}, Lccsansan/l/unifiedDownload;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2, p0}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :goto_2
    const/16 v6, 0xc

    invoke-static {v2, v6, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    const/16 v6, 0x4d

    const/16 v7, 0x4b

    invoke-static {v7}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v7

    rem-int/2addr v6, v7

    const/16 v7, 0x5dfd

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v8

    add-int/lit8 v8, v8, 0x53

    shr-int/2addr v7, v8

    invoke-static {v3, v5, v2, v6, v7}, Lccsansan/l/unifiedDownload;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 24
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x2a

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0xb

    invoke-static {v5, v5}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    rsub-int v5, v5, 0xda

    const-string v6, "\u0012\n\u0013\uffeb\u0012\u0001\u0003\n\n\r\u0001\uffbe\uffd8\uffbe\u0010\r\u0010\u0010\u0003\uffbe\u000c\r\u0007\u0012\u000e\u0003\u0001\u0016\uffe3\u0002\uffff\r\n\u000c\u0015\r\uffe2\u0012\u0010\uffff\uffee\u0007"

    invoke-static {v6, v4, v2, v3, v5}, Lccsansan/l/unifiedDownload;->addDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Stats.BasicMads"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sget p0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/2addr p0, v1

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    sget v0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_id"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_2

    .line 86
    sget v4, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x4d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 56
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    throw p0

    .line 56
    :cond_2
    nop

    .line 86
    move-object v0, v3

    .line 56
    :goto_1
    :pswitch_0
    const-string v4, "pkgName"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    const-string v4, "pid"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    const-string v4, "placement_id"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    const-string v4, "creative_id"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const-string v0, "jstag"

    goto :goto_2

    .line 60
    :cond_3
    const-string v0, "native"

    :goto_2
    const-string v4, "adtype"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "tm"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v0

    const-string v4, "rid"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->trackReportClick()Ljava/lang/String;

    move-result-object v0

    const-string v4, "sid"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->trackReportShow()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "dtp"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "did"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getLoadStatus()Ljava/lang/String;

    move-result-object v0

    const-string v4, "cpiparam"

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    const-string v4, "1"

    const-string v5, "0"

    if-eqz v0, :cond_4

    move-object v0, v4

    goto :goto_3

    :cond_4
    move-object v0, v5

    :goto_3
    const-string v6, "offline"

    invoke-virtual {p1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 56
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 68
    move-object v4, v5

    goto :goto_5

    .line 86
    :pswitch_1
    sget v0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 68
    :cond_6
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getName()Lccsansan/dt/deleteDownItem;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/deleteDownItem;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    goto :goto_5

    .line 68
    :cond_7
    const-string v4, "2"

    :goto_5
    const-string v0, "lpstatus"

    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "formatid"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p0}, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "creative_type"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getSpotId()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0, p1}, Lccsansan/dl/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 75
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v3, "amp_app_id"

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 78
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v3
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "c_d"

    .line 79
    :try_start_2
    invoke-static {}, Lccsansan/bl/addDownloadListener;->addDownloadListener()Z

    move-result v5

    if-nez v5, :cond_8

    .line 56
    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_2

    .line 79
    goto :goto_7

    :pswitch_2
    const/4 v1, 0x0

    :goto_7
    invoke-static {v4, v1}, Lccsansan/bq/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "jump_type"

    .line 80
    :try_start_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "open_inner_xz"

    if-eqz v1, :cond_a

    .line 86
    sget v1, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_9

    .line 80
    :cond_9
    const-string v1, "true"

    goto :goto_8

    :cond_a
    const-string v1, "false"

    .line 81
    :goto_8
    :try_start_4
    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "ad_cache"

    .line 82
    :try_start_5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 83
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->hasDelayTimeRestrictions()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v1, :cond_b

    const-string v1, "s_rid"

    .line 84
    :try_start_6
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->hasDelayTimeRestrictions()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_b
    const-string p0, "exfo"

    .line 86
    :try_start_7
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 1

    const/16 v0, 0x78

    sput v0, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils:I

    return-void
.end method

.method public static removeDownloadListener(Ljava/util/HashMap;)V
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

    .line 6
    sget v0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :goto_2
    return-void

    .line 3
    :cond_1
    invoke-static {}, Lccsansan/cl/unifiedDownload;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    nop

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 6
    sget v0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 3
    :cond_3
    nop

    .line 4
    const-string v0, "url"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lccsansan/l/unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lccsansan/cv/getDownloadStatusByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v1, "source_batch"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "Mads_CreativeDownStart"

    invoke-static {v0, v1, p0}, Lccsansan/l/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(IILccsansan/dt/removeDownloadListener;Ljava/lang/String;J)V
    .locals 3

    .line 37
    const-string v0, ""

    .line 29
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    invoke-static {p2, v1}, Lccsansan/l/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "result"

    .line 31
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "duration"

    .line 32
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "trig"

    .line 33
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sourcetype"

    .line 34
    invoke-virtual {v1, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "Mads_Click"

    invoke-static {p0, p1, v1}, Lccsansan/l/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "statsMadsClick error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.BasicMads"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x51

    goto :goto_1

    :cond_0
    const/16 p0, 0x2e

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return-void

    :goto_2
    const/4 p0, 0x0

    :try_start_4
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
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

    .line 28
    sget v0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 26
    :cond_0
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lccsansan/l/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "statsForJsTag error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.BasicMads"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static unifiedDownload(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V
    .locals 1

    .line 6
    nop

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lccsansan/l/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/HashMap;)V

    const-string p0, "duration"

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "Mads_ClickBack"

    invoke-static {p0, p1, v0}, Lccsansan/l/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "statsMadsClickBack error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.BasicMads"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/l/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/l/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method
