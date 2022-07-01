.class public Lccsansan/cc/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final IncentiveDownloadUtils:[Ljava/lang/String;

.field private static final removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MVXDNUv8cJoHfoyFEKHdFUoi3RM(Lccsansan/cj/addDownloadListener;Lccsansan/cj/addDownloadListener;)I
    .locals 0

    invoke-static {p0, p1}, Lccsansan/cc/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cj/addDownloadListener;Lccsansan/cj/addDownloadListener;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$es1uEt5Jpd24MZ6s0sBmsG5qwQo(Lccsansan/cj/getDownloadingList;Lccsansan/cj/getDownloadingList;)I
    .locals 0

    invoke-static {p0, p1}, Lccsansan/cc/unifiedDownload;->unifiedDownload(Lccsansan/cj/getDownloadingList;Lccsansan/cj/getDownloadingList;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nO_4noeLrKTkud3MRDW-avrQ0Z0(Lccsansan/cj/addDownloadListener;Lccsansan/cj/addDownloadListener;)I
    .locals 0

    invoke-static {p0, p1}, Lccsansan/cc/unifiedDownload;->addDownloadListener(Lccsansan/cj/addDownloadListener;Lccsansan/cj/addDownloadListener;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AD_StartLoad"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AD_RequestHandle_S"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AD_RequestHandle"

    aput-object v2, v0, v1

    sput-object v0, Lccsansan/cc/unifiedDownload;->IncentiveDownloadUtils:[Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsansan/cc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    return-void
.end method

.method private static synthetic IncentiveDownloadUtils(Lccsansan/cj/addDownloadListener;Lccsansan/cj/addDownloadListener;)I
    .locals 3

    .line 23
    iget-wide v0, p0, Lccsansan/cj/addDownloadListener;->addDownloadListener:J

    iget-wide p0, p1, Lccsansan/cj/addDownloadListener;->addDownloadListener:J

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsansan/cj/getDownloadingList;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x100

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsansan/cj/getDownloadingList;

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    nop

    .line 29
    const-string p1, "]\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lccsansan/cc/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static IncentiveDownloadUtils(Z)V
    .locals 0

    .line 3
    invoke-static {p0}, Lccsansan/cj/getDownloadedList;->removeDownloadListener(Z)V

    return-void
.end method

.method private static synthetic addDownloadListener(Lccsansan/cj/addDownloadListener;Lccsansan/cj/addDownloadListener;)I
    .locals 5

    .line 53
    move-object v0, p0

    check-cast v0, Lccsansan/cj/IncentiveDownloadUtils;

    iget-wide v0, v0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    move-object v2, p1

    check-cast v2, Lccsansan/cj/IncentiveDownloadUtils;

    iget-wide v2, v2, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 55
    iget-object p0, p0, Lccsansan/cj/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object p1, p1, Lccsansan/cj/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {p0, p1}, Lccsansan/cc/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    if-lez v4, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cc/unifiedDownload$removeDownloadListener;

    invoke-direct {v1, p0}, Lccsansan/cc/unifiedDownload$removeDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "self_checker"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static synthetic getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lccsansan/cc/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/cc/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "self_checker"

    const v1, 0x8000

    .line 96
    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    const-string p1, "\r\n"

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 99
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 100
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_0

    .line 103
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    :cond_0
    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_1
    return-void
.end method

.method public static removeDownloadListener(Lccsansan/bq/removeDownloadListener;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "sdk_version"

    .line 59
    :try_start_0
    invoke-static {}, Lccsansan/bw/deleteDownList;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "is_from_gp"

    .line 60
    :try_start_1
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->addDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "st"

    .line 63
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "et"

    const-string v4, "-1"

    .line 64
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "duration"

    const-string v4, "0"

    .line 65
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "pid"

    .line 66
    :try_start_3
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "sid"

    .line 67
    :try_start_4
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v3, "rid"

    .line 68
    :try_start_5
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->resolveUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v3, "load_strategy"

    .line 69
    :try_start_6
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->trackReportClick()Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v3, "rld"

    .line 70
    :try_start_7
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->getPackageNameByRecord()Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v3, "load_mode"

    .line 71
    :try_start_8
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->trackReportShow()Lccsancom/san/ads/core/AdLoadStrategy$AdItemSortMode;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/san/ads/core/AdLoadStrategy$AdItemSortMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v3, "ast"

    .line 72
    :try_start_9
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->getDownloadingList()J

    move-result-wide v4

    sub-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "lfo"

    .line 73
    :try_start_a
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "ad_type"

    .line 75
    :try_start_b
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "sub_tab_name"

    .line 76
    :try_start_c
    invoke-virtual {p0}, Lccsansan/bq/removeDownloadListener;->shouldTryHandlingAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AD_RequestHandle_S error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SANAutomator"

    invoke-static {v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v1, "AD_RequestHandle_S"

    const-string v2, "test"

    invoke-static {p0, v1, v2, v0}, Lccsansan/y/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 94
    sget-object v0, Lccsansan/cc/unifiedDownload;->removeDownloadListener:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic unifiedDownload(Lccsansan/cj/getDownloadingList;Lccsansan/cj/getDownloadingList;)I
    .locals 3

    .line 56
    iget-wide v0, p0, Lccsansan/cj/getDownloadingList;->IncentiveDownloadUtils:J

    iget-wide p0, p1, Lccsansan/cj/getDownloadingList;->IncentiveDownloadUtils:J

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-lez v2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static unifiedDownload()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/cj/addDownloadListener;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {}, Lccsansan/cj/getDownloadedList;->getDownloadingList()Lccsansan/cj/getDownloadedList;

    move-result-object v0

    sget-object v1, Lccsansan/cc/unifiedDownload;->IncentiveDownloadUtils:[Ljava/lang/String;

    const-string v2, "1000"

    invoke-virtual {v0, v2, v1}, Lccsansan/cj/getDownloadedList;->addDownloadListener(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/cj/removeDownloadListener;

    .line 89
    invoke-static {v2}, Lccsansan/cc/getDownloadingList;->unifiedDownload(Lccsansan/cj/removeDownloadListener;)Lccsansan/cj/addDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 91
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    sget-object v0, Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda0;->INSTANCE:Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda0;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static unifiedDownload(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/cj/getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "et"

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-static {}, Lccsansan/cc/unifiedDownload;->unifiedDownload()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 12
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 13
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/cj/addDownloadListener;

    .line 15
    instance-of v3, v3, Lccsansan/cj/IncentiveDownloadUtils;

    if-nez v3, :cond_2

    .line 16
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 19
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    .line 22
    :cond_4
    sget-object v2, Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda1;->INSTANCE:Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda1;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    const-string v2, "sid"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 30
    const-string v3, "pid"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 31
    const-string v4, "rid"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x1

    .line 34
    :goto_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsansan/cj/addDownloadListener;

    if-eqz v2, :cond_9

    if-eqz v3, :cond_7

    .line 39
    move-object v7, v6

    check-cast v7, Lccsansan/cj/IncentiveDownloadUtils;

    iget-object v7, v7, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v7, v6

    check-cast v7, Lccsansan/cj/IncentiveDownloadUtils;

    if-eqz v4, :cond_8

    iget-object v7, v7, Lccsansan/cj/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v7, v7, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    goto :goto_4

    .line 36
    :cond_9
    const-string v7, "def"

    .line 41
    :goto_4
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsansan/cj/getDownloadingList;

    if-nez v8, :cond_a

    .line 43
    new-instance v8, Lccsansan/cj/getDownloadingList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lccsansan/cj/getDownloadingList;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_a
    check-cast v6, Lccsansan/cj/IncentiveDownloadUtils;

    invoke-virtual {v8, v6}, Lccsansan/cj/getDownloadingList;->unifiedDownload(Lccsansan/cj/IncentiveDownloadUtils;)V

    goto :goto_3

    .line 48
    :cond_b
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    sget-object p0, Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda2;->INSTANCE:Lccsansan/cc/unifiedDownload$$ExternalSyntheticLambda2;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 51
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_c

    .line 52
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_c
    :goto_5
    return-object v0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/cc/unifiedDownload$unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/cc/unifiedDownload$unifiedDownload;-><init>(Lccsanandroid/content/Context;)V

    .line 19
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object p0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 20
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lccsancom/san/ads/Task;->run()V

    :goto_0
    return-void
.end method
