.class public Lccsansan/g/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/g/addDownloadListener;

.field private static addDownloadListener:I

.field private static getDownloadingList:J

.field private static removeDownloadListener:I

.field private static unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    invoke-static {}, Lccsansan/g/addDownloadListener;->unifiedDownload()V

    sget v0, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/g/addDownloadListener;->getDownloadingList:J

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

.method private static addDownloadListener(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 5
    sget v0, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const-string v0, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    .line 5
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "OFFLINE_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 5
    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 4
    :pswitch_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CACHE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener(Lccsansan/bw/getDownloadingCount;ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/bw/getDownloadingCount<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    nop

    .line 83
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/bn/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;I)V

    .line 84
    invoke-static {p2}, Lccsansan/n/unifiedDownload;->IncentiveDownloadUtils(I)I

    move-result v0

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v5, "preloadAndSaveAds "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const/16 v5, 0x61

    goto :goto_1

    :cond_0
    const/16 v5, 0x37

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 90
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v0, :cond_5

    goto :goto_6

    .line 98
    :pswitch_0
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/16 v0, 0x5c

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    :goto_2
    packed-switch v0, :pswitch_data_1

    :goto_3
    goto :goto_4

    :pswitch_1
    sget v0, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 99
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Advance.Manager"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 101
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget v0, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x62

    goto :goto_5

    :cond_3
    const/16 v0, 0x1a

    :goto_5
    packed-switch v0, :pswitch_data_2

    :cond_4
    :pswitch_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v8, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;

    const-string v3, "Advance.preloadAndSaveAds"

    move-object v1, v8

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/g/addDownloadListener;Ljava/lang/String;Ljava/util/List;Lccsansan/bw/getDownloadingCount;ILjava/util/List;)V

    invoke-virtual {v0, v8}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    .line 93
    :goto_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    nop

    .line 96
    const-string v6, "[PosId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " posType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5c
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_2
    .end packed-switch
.end method

.method private removeDownloadListener(Lccsanorg/json/JSONObject;ILjava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 3

    .line 116
    const-string v0, "del_"

    sget v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 105
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 116
    nop

    .line 107
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 116
    sget v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    goto :goto_0

    .line 111
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 113
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    sget p2, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    const/16 p3, 0x1d

    add-int/2addr p2, p3

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    const/16 p3, 0x18

    :cond_4
    packed-switch p3, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/16 p2, 0x4a

    :try_start_2
    div-int/lit8 p2, p2, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    .line 113
    :catch_0
    move-exception p1

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "#addRemoveAd: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Advance.Manager"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/util/List;Ljava/util/List;)Lccsansan/bw/getDownloadingCount;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsansan/bw/getDownloadingCount<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    nop

    .line 74
    new-instance v0, Lccsansan/bw/getDownloadingCount;

    invoke-direct {v0}, Lccsansan/bw/getDownloadingCount;-><init>()V

    if-eqz p1, :cond_0

    .line 82
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_4

    .line 76
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 82
    sget v1, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    :goto_2
    nop

    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/16 v1, 0x3e

    goto :goto_3

    :cond_1
    const/16 v1, 0x45

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 76
    :pswitch_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    sget-object v2, Lccsansan/dt/getDownloadingList;->OFFLINE:Lccsansan/dt/getDownloadingList;

    invoke-virtual {v2}, Lccsansan/dt/getDownloadingList;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :goto_4
    if-eqz p2, :cond_2

    .line 82
    const/16 p1, 0x43

    goto :goto_5

    :cond_2
    const/16 p1, 0x16

    :goto_5
    packed-switch p1, :pswitch_data_2

    sget p1, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 80
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 82
    const/16 p1, 0x28

    goto :goto_6

    :cond_4
    const/16 p1, 0x38

    :goto_6
    packed-switch p1, :pswitch_data_3

    .line 81
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 82
    nop

    .line 81
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 82
    sget-object v1, Lccsansan/dt/getDownloadingList;->CACHE:Lccsansan/dt/getDownloadingList;

    invoke-virtual {v1}, Lccsansan/dt/getDownloadingList;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lccsansan/bw/getDownloadingCount;->IncentiveDownloadUtils(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :cond_5
    :pswitch_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x38
        :pswitch_2
    .end packed-switch
.end method

.method public static removeDownloadListener()Lccsansan/g/addDownloadListener;
    .locals 2

    .line 2
    sget-object v0, Lccsansan/g/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/g/addDownloadListener;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lccsansan/g/addDownloadListener;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lccsansan/g/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/g/addDownloadListener;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lccsansan/g/addDownloadListener;

    invoke-direct {v1}, Lccsansan/g/addDownloadListener;-><init>()V

    sput-object v1, Lccsansan/g/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/g/addDownloadListener;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/g/addDownloadListener;->IncentiveDownloadUtils:Lccsansan/g/addDownloadListener;

    return-object v0
.end method

.method static synthetic unifiedDownload(Lccsansan/g/addDownloadListener;Lccsanorg/json/JSONObject;ILjava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 2

    .line 1
    sget v0, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/g/addDownloadListener;->removeDownloadListener(Lccsanorg/json/JSONObject;ILjava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch
.end method

.method static unifiedDownload()V
    .locals 2

    const-wide v0, -0x60afb097f1e89939L    # -7.424737002220047E-158

    sput-wide v0, Lccsansan/g/addDownloadListener;->getDownloadingList:J

    return-void
.end method

.method public static unifiedDownload(ZLjava/lang/String;)V
    .locals 14

    .line 30
    nop

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/n/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/dr/getDownloadStatusByUrl;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lccsansan/dr/getDownloadStatusByUrl;->getDownloadingList()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 17
    sget v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 17
    :catchall_0
    move-exception p0

    throw p0

    .line 10
    :cond_1
    if-eqz p0, :cond_9

    .line 11
    :cond_2
    :goto_1
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/dc/getDownloadingList;->addDownloadListener()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const-string v4, "Advance.Manager"

    packed-switch v1, :pswitch_data_1

    .line 17
    sget v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 12
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_5

    :pswitch_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    :goto_4
    goto :goto_6

    :goto_5
    const/16 v5, 0x26

    :try_start_1
    div-int/2addr v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_5

    goto :goto_4

    .line 20
    :goto_6
    :pswitch_1
    const-string p1, ""

    invoke-static {p1, v3}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    add-int/lit16 p1, p1, 0x2897

    const-string v1, "\u66e4\u4e34\u3786\u1f75\uc4f5\uac58\u9522\u7a87\u221b\u0bc9\uf345\ud8cc\u81b2\u6902\u5ee6\u067b\ueff6\ud4a4\ubc2a\u65a0\u4d6e\u32d7\u1a52\uc323\ua89d\u901b\u79f4\u210a\u1631\uffb9\ua701\u8cfb\u7455\u5dde\u02e9\uea04\ud394\ubb66\u608d\u49a7\u313b\ue69b\uce4d\ub7f3\u9f40\u4438\u2dc5\u1517\ufae4\ua200\u8bd7\u70a7\u5807\u01e8"

    invoke-static {v1, p1}, Lccsansan/g/addDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 15
    :cond_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-string v9, "\u66a6\u6918\u79c7\u4997\u5845\u2803\u38c0\u0885\u1b7b\ueb3b\ufbfe\ucba0\uda6f\uaad7\uba9c\u8d56\u9d28\u6dde\u7d84\u4c55\u5c34\u2ce5\u3ca7\u0f69\u1f2a\ueff7"

    cmp-long v10, v5, v7

    rsub-int v5, v10, 0xfbc

    invoke-static {v9, v5}, Lccsansan/g/addDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsansan/v/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 12
    const/4 v5, 0x0

    goto :goto_8

    :cond_6
    const/4 v5, 0x1

    :goto_8
    packed-switch v5, :pswitch_data_3

    .line 30
    sget v5, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v5, v5, 0x33

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_a

    goto :goto_b

    .line 19
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0xb01a

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-string v6, "\u66e4\ud6b8\u069e\u76e1\ua6c5\u162c\u460a\ub61b\ue67b\u5675\u87ad\uf798\u27e2\u97f6\uc7de\u3737\u6736\ud768\u0752\u7494\ua4be\u1483\u44fa\ub4df\ue43d\u5407\u841c\uf43e\u2452\u95ac\uc59e\u35ce\u65ce\ud5cf\u0525\u7525\ua562\u155a\u42a0\ub2e0"

    const-string v12, ", Portal :"

    cmp-long v13, v10, v7

    add-int/2addr v13, v5

    invoke-static {v6, v13}, Lccsansan/g/addDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0xfbb

    invoke-static {v9, v1}, Lccsansan/g/addDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsansan/v/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 30
    nop

    .line 21
    :goto_9
    if-eqz p0, :cond_8

    .line 12
    sget p1, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    .line 30
    :cond_7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v0, v2}, Lccsansan/dr/getDownloadStatusByUrl;->getDownloadingList(Z)V

    .line 12
    sget p0, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    .line 30
    :cond_9
    :pswitch_3
    return-void

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsansan/dt/removeDownloadListener;

    .line 17
    invoke-static {v5}, Lccsansan/di/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    const/16 v5, 0x1d

    :try_start_2
    div-int/2addr v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    .line 30
    :catchall_1
    move-exception p0

    throw p0

    .line 16
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsansan/dt/removeDownloadListener;

    .line 17
    invoke-static {v5}, Lccsansan/di/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    .line 30
    :goto_c
    goto/16 :goto_7

    .line 17
    :catchall_2
    move-exception p0

    goto :goto_e

    :goto_d
    throw p0

    :goto_e
    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/g/addDownloadListener$removeDownloadListener;

    invoke-direct {v1, p0}, Lccsansan/g/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/g/addDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;Z)V
    .locals 11

    .line 73
    nop

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#preloadAdvanceAds action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Advance.Manager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v2, Lccsansan/dt/getDownloadedCount;->CACHEAD:Lccsansan/dt/getDownloadedCount;

    goto :goto_0

    :cond_0
    sget-object v2, Lccsansan/dt/getDownloadedCount;->ADVANCE:Lccsansan/dt/getDownloadedCount;

    :goto_0
    invoke-virtual {v2}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v2

    .line 34
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_1

    .line 35
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    sget-object v0, Lccsansan/dt/getDownloadedCount;->CACHEAD:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v0}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v0

    const-string v1, "network"

    invoke-static {p2, v1, v4, v0, p1}, Lccsansan/s/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    if-nez p2, :cond_6

    .line 39
    sget-wide v5, Lccsansan/g/addDownloadListener;->unifiedDownload:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    .line 41
    const/16 v5, 0x39

    goto :goto_1

    :cond_2
    const/16 v5, 0x27

    :goto_1
    packed-switch v5, :pswitch_data_0

    sget v5, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v5, v5, 0x31

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lccsansan/g/addDownloadListener;->unifiedDownload:J

    mul-long v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {}, Lccsansan/n/unifiedDownload;->removeDownloadListener()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    const/16 v5, 0x33

    goto :goto_2

    :cond_3
    const/16 v5, 0x2f

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_3

    .line 39
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lccsansan/g/addDownloadListener;->unifiedDownload:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {}, Lccsansan/n/unifiedDownload;->removeDownloadListener()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_6

    .line 73
    :goto_3
    sget p2, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p2, p2, 0x9

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    .line 41
    const/16 p2, 0x5f

    goto :goto_4

    :cond_5
    const/16 p2, 0x11

    :goto_4
    const-string v0, "advance preload is too frequently"

    const-string v5, "preload too frequency"

    packed-switch p2, :pswitch_data_2

    .line 40
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5, v4, v2, p1}, Lccsansan/s/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2, v5, v4, v2, p1}, Lccsansan/s/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    array-length p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 73
    :catchall_0
    move-exception p1

    throw p1

    .line 41
    :cond_6
    :pswitch_1
    nop

    .line 44
    const/4 v5, 0x0

    invoke-static {v5, p1}, Lccsansan/g/addDownloadListener;->unifiedDownload(ZLjava/lang/String;)V

    const/4 v6, 0x1

    if-eqz v0, :cond_9

    .line 51
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/n/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsansan/dr/getDownloadStatusByUrl;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lccsansan/dr/getDownloadStatusByUrl;->getDownloadingList()Z

    move-result v7

    if-nez v7, :cond_8

    .line 41
    sget v7, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v7, v7, 0x2d

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    .line 52
    :cond_7
    if-eqz p2, :cond_a

    .line 53
    :cond_8
    invoke-static {}, Lccsansan/cz/unifiedDownload;->ActionTypeDownload()Ljava/util/List;

    move-result-object p2

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Balancer cache posIds size is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v6}, Lccsansan/dr/getDownloadStatusByUrl;->getDownloadingList(Z)V

    goto :goto_6

    .line 59
    :cond_9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lccsansan/n/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsansan/dr/getDownloadStatusByUrl;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lccsansan/dr/getDownloadStatusByUrl;->getDownloadingList()Z

    move-result v7

    if-nez v7, :cond_b

    if-eqz p2, :cond_a

    goto :goto_5

    .line 66
    :cond_a
    move-object p2, v3

    goto :goto_6

    .line 61
    :cond_b
    :goto_5
    invoke-static {}, Lccsansan/cz/unifiedDownload;->ActionTypeDownload()Ljava/util/List;

    move-result-object p2

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Balancer offline posIds size is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v6}, Lccsansan/dr/getDownloadStatusByUrl;->getDownloadingList(Z)V

    .line 73
    move-object v10, v3

    move-object v3, p2

    move-object p2, v10

    .line 66
    :goto_6
    invoke-direct {p0, v3, p2}, Lccsansan/g/addDownloadListener;->removeDownloadListener(Ljava/util/List;Ljava/util/List;)Lccsansan/bw/getDownloadingCount;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 41
    const/16 v1, 0x34

    goto :goto_7

    :cond_c
    const/16 v1, 0x4d

    :goto_7
    packed-switch v1, :pswitch_data_3

    .line 70
    invoke-static {v3, p2}, Lccsansan/g/addDownloadListener;->addDownloadListener(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    sget-object v4, Lccsansan/dt/getDownloadedCount;->CACHEAD:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v4}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v4

    const-string v5, "none"

    invoke-static {v1, v5, p2, v4, p1}, Lccsansan/s/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lccsansan/g/addDownloadListener;->unifiedDownload:J

    .line 73
    invoke-direct {p0, v0, v2, v3}, Lccsansan/g/addDownloadListener;->addDownloadListener(Lccsansan/bw/getDownloadingCount;ILjava/util/List;)V

    goto :goto_9

    .line 68
    :pswitch_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    sget-object v0, Lccsansan/dt/getDownloadedCount;->CACHEAD:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v0}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v0

    const-string v1, "frequency"

    invoke-static {p2, v1, v4, v0, p1}, Lccsansan/s/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    sget p1, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_d

    const/4 v5, 0x1

    :cond_d
    packed-switch v5, :pswitch_data_4

    .line 73
    :goto_8
    :pswitch_3
    goto :goto_b

    :goto_9
    sget p1, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_e

    .line 41
    const/4 p1, 0x6

    goto :goto_a

    :cond_e
    const/16 p1, 0x1b

    :goto_a
    packed-switch p1, :pswitch_data_5

    .line 73
    goto :goto_8

    :goto_b
    :pswitch_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1b
        :pswitch_3
    .end packed-switch
.end method

.method public getDownloadingList()V
    .locals 4

    .line 6
    sget v0, Lccsansan/g/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/g/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "ConfigUpdate"

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, v3, v2}, Lccsansan/g/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v3, v1}, Lccsansan/g/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
