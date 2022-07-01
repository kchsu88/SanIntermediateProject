.class public Lccsancom/san/az/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    const-wide v0, 0x6edb65e44069b692L

    sput-wide v0, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener:J

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 2
    nop

    .line 0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    const-string v1, "\u9872\u9813\u7120\ufa4c\uc7c7\ue084\u971c\uc35d\u421a\ue189\ubd54\u1d1b\u2c90\u1a76\udbd8\u38a3\u16da\u343a\u0190\u5268\uf12b\u6eb2\u2c64\u6c33\udb6f\u88b4\u4aa3\u87f2\u85ef\ua511\u70fc\ua189"

    invoke-static {v1, v0}, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 1
    const-string v1, "OpenAppHelperEx"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadingList;

    invoke-direct {v1, p0}, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadingList;-><init>(Lccsansan/p/getDownloadedList;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x2d

    goto :goto_0

    :cond_0
    const/16 p0, 0x53

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x48

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/san/az/getDownloadStatusByUrl$addDownloadListener;-><init>(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    .locals 3

    .line 32
    nop

    .line 27
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-class v2, Lccsancom/san/proactive/OutProActiveImproveActivity;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 28
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "active_pkgName"

    .line 29
    :try_start_1
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 30
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startActivityForLowVersion exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenAppHelperEx"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 14
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    const/16 p1, 0x26

    goto :goto_0

    :cond_2
    const/16 p1, 0xe

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget p1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    goto :goto_2

    :pswitch_0
    sget p1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    const-string p1, ""

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    :goto_3
    move-object v3, p1

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 23
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 17
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x4e

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 23
    :catchall_0
    move-exception p0

    throw p0

    .line 17
    :cond_1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    .line 18
    :goto_2
    :pswitch_1
    const-string v0, "OpenAppHelperEx"

    const-string v1, "#delayOpenApp return : pkg is null"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const-string v4, ""

    const-string v6, "pkgName_is_null_fail"

    move-object v3, p0

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 17
    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    .line 23
    return-void

    :goto_3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;

    invoke-direct {v1, p0, p1}, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsancom/san/az/getDownloadStatusByUrl;->deleteDownItem(Lccsansan/p/getDownloadedList;)V

    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x39

    goto :goto_0

    :cond_1
    const/16 p0, 0x41

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 3

    .line 14
    nop

    .line 13
    const-string v0, "mode"

    const-string v1, "direct_active"

    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v0, "portal"

    invoke-virtual {p0, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsancom/san/az/getDownloadStatusByUrl$removeDownloadListener;-><init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    const-string v2, "\uc26a\uc219\u5da2\ueb05\ueb49\u93c4\u8652\ub02d\u184b\ucd16\uac1a\u6e4e\u769b\u36ec\ucadd\u4bdd\u4cdd\u18b8\u109c\u2124\uab15\u4263\u3d34\u1f71\u8161\ua43d\u5bfa\uf4a9"

    invoke-static {v2, p1}, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V

    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x39

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V

    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    const/16 p0, 0x2a

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method private static deleteDownItem(Lccsansan/p/getDownloadedList;)V
    .locals 3

    .line 9
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 2
    :cond_1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/KeyguardManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 9
    const/16 v1, 0x52

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    goto :goto_2

    :goto_1
    :pswitch_0
    goto :goto_4

    .line 4
    :cond_3
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 9
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 4
    :pswitch_1
    const-string v0, "lock_screen"

    .line 6
    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_4
    const-string v0, "is_background"

    .line 9
    :try_start_2
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadedRecordByUrl(Lccsansan/p/getDownloadedList;)V
    .locals 7

    .line 17
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    :try_start_0
    array-length v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 17
    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/16 v3, 0x5e

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 1
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    const/16 v3, 0x3b

    goto :goto_1

    :cond_2
    const/16 v3, 0x2a

    :goto_1
    packed-switch v3, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_7

    .line 8
    :goto_2
    :pswitch_1
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/bt/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    const/16 v4, 0x4d

    goto :goto_3

    :cond_3
    const/16 v4, 0x51

    :goto_3
    packed-switch v4, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    sget v4, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x15

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 10
    :cond_4
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_5

    .line 11
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    const-string v0, "indirect_active"

    invoke-static {p0, v0}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 13
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    const-string v6, "\ub245\ub22a\ubda4\u4ce6\u0b46\u9237\u21a7\ub1ef\u6844\u2d10\u0bf9\u6fbd\u06b4\ud6ea\u6d3e\u4a14\u3cf9\uf88f\ub76a\u20c9\udb45\ua279\u9ad2\u1e84\uf143\u440c\ufc0f\uf55a\uaf80\u698a\uc646\ud371\u4580\u130e"

    invoke-static {v6, v5}, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isCpiProtect = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "OpenAppHelperEx"

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lccsancom/san/az/getDownloadStatusByUrl;->deleteDownItem(Lccsansan/p/getDownloadedList;)V

    if-eqz v3, :cond_7

    .line 3
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 17
    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_3

    goto :goto_6

    :pswitch_3
    :try_start_1
    array-length p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    .line 3
    :catchall_1
    move-exception p0

    throw p0

    .line 17
    :cond_7
    :goto_6
    return-void

    .line 3
    :goto_7
    invoke-static {v2, v2}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    const-string v1, "\u5072\u501d\u08eb\u16d6\ube09\ufa66\u7b97\ud9be\u8a65\u985f\u51d5\u07ec\ue4bd\u63a0\u370c\u2253\udede\u4de0\ued46\u4884\u3937\u173d"

    invoke-static {v1, v0}, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4d
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    .locals 3

    .line 21
    nop

    .line 15
    const-string v0, "OpenAppHelperEx"

    const-string v1, "begin show out promotion active"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 21
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-static {p0, p1}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    return-void

    .line 17
    :cond_1
    :goto_1
    invoke-static {p0, p1}, Lccsancom/san/az/getDownloadStatusByUrl;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    .line 21
    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/16 p0, 0x2f

    goto :goto_2

    :cond_2
    const/16 p0, 0x37

    :goto_2
    packed-switch p0, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p0, 0x47

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;)V
    .locals 4

    .line 15
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedList()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p0}, Lccsancom/san/az/getDownloadStatusByUrl$getDownloadedRecordByUrl;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x21

    goto :goto_0

    :cond_0
    const/16 p0, 0x35

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0}, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Lccsansan/p/getDownloadedList;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x23

    goto :goto_2

    :cond_1
    const/16 p0, 0x27

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 4

    .line 12
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5
    const/16 v0, 0x49

    goto :goto_0

    :cond_0
    const/16 v0, 0x57

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    goto :goto_3

    :pswitch_0
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_6

    .line 3
    :goto_3
    const/16 v3, 0x4b

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 4
    :pswitch_1
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    const/4 v1, 0x0

    goto :goto_4

    :cond_2
    nop

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 3
    :pswitch_2
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 5
    const/16 v0, 0x23

    goto :goto_5

    :cond_3
    const/16 v0, 0x33

    :goto_5
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V

    packed-switch v0, :pswitch_data_3

    const/16 v0, 0x2c

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3
    :catchall_0
    move-exception p0

    throw p0

    .line 7
    :cond_4
    :goto_6
    :pswitch_3
    sget-object v0, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_5

    .line 5
    const/16 v0, 0x22

    goto :goto_7

    :cond_5
    const/16 v0, 0x56

    :goto_7
    packed-switch v0, :pswitch_data_4

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    sget-object v1, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->unregisterActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    .line 3
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    .line 12
    :cond_6
    nop

    :pswitch_4
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;

    invoke-static {}, Lccsansan/bt/unifiedDownload;->removeDownloadListener()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p0, p1}, Lccsancom/san/az/getDownloadStatusByUrl$IncentiveDownloadUtils;-><init>(JLccsansan/p/getDownloadedList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x56
        :pswitch_4
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static removeDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 4

    .line 5
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_2

    goto :goto_1

    :pswitch_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    :goto_1
    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x75

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x3e

    goto :goto_2

    :cond_1
    const/16 p0, 0x34

    :goto_2
    packed-switch p0, :pswitch_data_1

    .line 5
    return-void

    .line 1
    :pswitch_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 5
    :cond_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;

    const-wide/16 v2, 0x7d0

    invoke-direct {v1, v2, v3, p0}, Lccsancom/san/az/getDownloadStatusByUrl$deleteDownItem;-><init>(JLccsansan/p/getDownloadedList;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V
    .locals 5

    .line 26
    nop

    .line 2
    const-string v0, "a_s"

    invoke-static {v0}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "OpenAppHelperEx"

    if-nez v0, :cond_0

    .line 3
    const-string p0, "AutoStart return; enable is false"

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 26
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-static {}, Lccsansan/bt/removeDownloadListener;->getDownloadedList()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 20
    :pswitch_0
    :try_start_0
    invoke-static {p0}, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadedRecordByUrl(Lccsansan/p/getDownloadedList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-static {v3}, Lccsanandroid/graphics/Color;->red(I)I

    move-result p1

    const-string v1, "\ua046\ua036\u8b15\u9d8a\u3db5\uba99\uf0de\u9970\u7a67\u1ba1\uda95\u4713\u14b7\ue05b\ubc52\u6280\u2ef1\uce0f\u6613\u0879\uc939\u94d4\u4bbb\u362c\ue34d\u728a\u2d75\uddf4"

    invoke-static {v1, p1}, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 26
    sget v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    goto :goto_1

    .line 20
    :cond_2
    invoke-static {v0}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p1

    rsub-int/lit8 p1, p1, -0x1

    const-string v1, "\uc26a\uc219\u5da2\ueb05\ueb49\u93c4\u8652\ub02d\u184b\ucd16\uac1a\u6e4e\u769b\u36ec\ucadd\u4bdd\u4cdd\u18b8\u109c\u2124\uab15\u4263\u3d34\u1f71\u8161\ua43d\u5bfa\uf4a9"

    invoke-static {v1, p1}, Lccsancom/san/az/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 22
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {p0, p1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, v2, v0, p2}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 25
    const-string v0, "open_error"

    invoke-static {p0, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, v3, p1, p2}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :goto_2
    const/16 p1, 0x33

    goto :goto_3

    :cond_4
    const/16 p1, 0x20

    :goto_3
    packed-switch p1, :pswitch_data_1

    .line 9
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->deleteDownList()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 16
    :pswitch_1
    invoke-static {p0, p2}, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    goto :goto_6

    .line 26
    :goto_4
    const/16 p1, 0x12

    goto :goto_5

    :cond_5
    const/16 p1, 0xc

    :goto_5
    packed-switch p1, :pswitch_data_2

    .line 10
    nop

    .line 12
    const-string p1, "active app by original"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    goto :goto_6

    .line 10
    :pswitch_2
    invoke-static {p0}, Lccsancom/san/az/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V

    .line 26
    :goto_6
    sget p0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 16
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    :goto_0
    invoke-static {p0, p1}, Lccsancom/san/proactive/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    invoke-static {p0}, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadedRecordByUrl(Lccsansan/p/getDownloadedList;)V

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
    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    .locals 4

    .line 12
    nop

    .line 5
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4
    const/16 v0, 0x59

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    const/16 v2, 0x8

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 5
    :catchall_0
    move-exception p0

    throw p0

    .line 12
    :goto_2
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4
    const/4 v1, 0x1

    goto :goto_3

    :cond_1
    nop

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 5
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener()Z

    move-result v0

    goto :goto_5

    :pswitch_1
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    const/4 v0, 0x5

    goto :goto_4

    :cond_2
    const/16 v0, 0x60

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    .line 5
    :goto_5
    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 6
    :goto_6
    invoke-static {}, Lccsancom/san/az/getDownloadedRecordByUrl;->removeDownloadListener()V

    goto :goto_7

    .line 12
    :catchall_1
    move-exception p0

    throw p0

    .line 8
    :cond_3
    :goto_7
    :pswitch_2
    invoke-static {}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto Start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenAppHelperEx"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, p2}, Lccsansan/bt/unifiedDownload;->unifiedDownload(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance v0, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;

    invoke-static {}, Lccsansan/bt/unifiedDownload;->removeDownloadListener()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p0, p1}, Lccsancom/san/az/getDownloadStatusByUrl$unifiedDownload;-><init>(JLccsansan/p/getDownloadedList;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/az/getDownloadStatusByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadStatusByUrl;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    invoke-static {p0, p1, p2}, Lccsancom/san/az/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method
