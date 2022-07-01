.class public Lccsansan/w/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field public static final addDownloadListener:I

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static final removeDownloadListener:Lccsansan/r/addDownloadListener;

.field private static unifiedDownload:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    invoke-static {}, Lccsansan/w/IncentiveDownloadUtils;->removeDownloadListener()V

    invoke-static {}, Lccsansan/w/IncentiveDownloadUtils;->addDownloadListener()V

    .line 1
    new-instance v0, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {v0}, Lccsansan/w/IncentiveDownloadUtils$getDownloadingList;-><init>()V

    sput-object v0, Lccsansan/w/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/r/addDownloadListener;

    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private static IncentiveDownloadUtils()V
    .locals 7

    .line 44
    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 39
    :cond_0
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    sget-object v2, Lccsansan/w/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/r/addDownloadListener;

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const-string v5, "\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    .line 40
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const-string v5, "\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0000\u0000"

    invoke-static {v4, v5, v6}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    .line 41
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    .line 42
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    const-string v4, "\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v1, v4, v6}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    .line 43
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    const-string v4, "\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000"

    invoke-static {v1, v4, v6}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    .line 44
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    const-string v3, "\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v1, v3, v6}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lccsansan/r/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsansan/r/addDownloadListener;)V

    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :array_0
    .array-data 4
        0x0
        0x11
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x13
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x24
        0x19
        0x4f
        0xf
    .end array-data

    :array_3
    .array-data 4
        0x3d
        0x12
        0x0
        0xe
    .end array-data

    :array_4
    .array-data 4
        0x4f
        0x11
        0x40
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x60
        0x12
        0x0
        0x0
    .end array-data
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 2

    .line 11
    nop

    .line 1
    invoke-static {p0}, Lccsancom/san/api/ActionSdkInitProxy;->initialize(Lccsanandroid/content/Context;)V

    .line 3
    invoke-static {p0}, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "systemstart"

    invoke-static {v0, v1, v1}, Lccsansan/aj/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    .line 9
    invoke-static {}, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload()V

    .line 11
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {v1, p0}, Lccsansan/w/IncentiveDownloadUtils$addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 4

    .line 12
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x45

    goto :goto_1

    :cond_2
    const/16 v0, 0x2a

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    const-string v3, "com.google.android"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    if-eqz p0, :cond_4

    :goto_2
    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 32
    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "pkg"

    .line 2
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "adId"

    .line 3
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cid"

    .line 4
    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, -0x1

    .line 7
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v6, 0x5d

    if-eqz v5, :cond_0

    .line 32
    const/16 v5, 0x3b

    goto :goto_0

    :cond_0
    const/16 v5, 0x5d

    :goto_0
    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .line 10
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v5

    goto :goto_1

    .line 7
    :pswitch_0
    return-object v7

    .line 10
    :goto_1
    invoke-virtual {v5, p0, v2, v1}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object v1

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 32
    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    const/4 p0, 0x1

    :goto_2
    const/4 v5, 0x2

    packed-switch p0, :pswitch_data_1

    .line 11
    if-eqz v1, :cond_5

    .line 15
    invoke-static {v1}, Lccsansan/aj/getDownloadingList;->removeDownloadListener(Lccsansan/aj/getDownloadingList;)Lccsansan/aj/getDownloadingList$removeDownloadListener;

    move-result-object p0

    .line 16
    sget-object v8, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    if-ne p0, v8, :cond_2

    .line 32
    const/16 v8, 0xe

    goto :goto_3

    :cond_2
    const/16 v8, 0x57

    :goto_3
    packed-switch v8, :pswitch_data_2

    .line 18
    sget-object v8, Lccsansan/aj/getDownloadingList$removeDownloadListener;->HAD_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    goto :goto_4

    .line 16
    :pswitch_1
    nop

    .line 32
    const/4 v4, 0x1

    goto :goto_5

    .line 18
    :goto_4
    if-ne p0, v8, :cond_3

    .line 11
    :pswitch_2
    const/4 v4, 0x2

    goto :goto_5

    .line 20
    :cond_3
    sget-object v8, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_HAD_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v8, :cond_5

    .line 32
    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/2addr p0, v2

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr p0, v5

    if-eqz p0, :cond_4

    .line 20
    :cond_4
    const/4 v4, 0x3

    :cond_5
    :goto_5
    const-string p0, "btstatus"

    .line 24
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {v1}, Lccsansan/aj/getDownloadingList;->unifiedDownload()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_6
    const-wide/16 v1, -0x1

    :goto_6
    const-string p0, "timeLeft"

    .line 26
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "0"

    .line 28
    invoke-static {v0}, Lccsancom/san/mads/webview/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "result"

    .line 29
    :try_start_3
    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 30
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 32
    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/2addr v0, v6

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v0, v5

    if-eqz v0, :cond_7

    :try_start_4
    array-length v0, v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_7
    return-object p0

    .line 30
    :catch_0
    move-exception p0

    .line 32
    const-string v0, "-5"

    invoke-static {v0, p0}, Lccsancom/san/mads/webview/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/Exception;)Lccsanorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    const/16 v1, 0x5d

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    const/16 v0, 0x72

    :goto_1
    sput v0, Lccsansan/w/IncentiveDownloadUtils;->addDownloadListener:I

    goto :goto_2

    :pswitch_0
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    const/16 v0, 0x49

    goto :goto_1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x70t
        0x6t
        -0x27t
        -0x4at
        0x0t
        -0x11t
        0x29t
        -0x27t
        -0x7t
        -0x3t
        0x11t
        -0xdt
        -0x2t
        0x5t
        -0x1t
        0x12t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        -0x10t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x70t
        0x6t
        -0x27t
        -0x4at
        0x0t
        -0x11t
        0x29t
        -0x27t
        -0x7t
        -0x3t
        0x11t
        -0xdt
        -0x2t
        0x5t
        -0x1t
        0x12t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        -0x10t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
    .end array-data
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 15

    .line 82
    nop

    .line 23
    new-instance v0, Lccsansan/bw/AdError;

    invoke-direct {v0, p0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 24
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyyMMdd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "last_stats_differ"

    invoke-virtual {v0, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const/16 v3, 0xc

    goto :goto_0

    :cond_0
    const/16 v3, 0x48

    :goto_0
    const-string v4, "SdkExInitProxy"

    packed-switch v3, :pswitch_data_0

    .line 26
    nop

    .line 27
    const-string p0, "#statsDiffer multi times"

    invoke-static {v4, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    nop

    .line 30
    invoke-virtual {v0, v2, v1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 30
    :try_start_0
    sget-object v0, Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    const/16 v1, 0x10

    aget-byte v1, v0, v1

    neg-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    int-to-byte v3, v3

    const/4 v5, 0x4

    aget-byte v6, v0, v5

    int-to-byte v6, v6

    invoke-static {v1, v3, v6}, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload(SBS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/16 v3, 0x49

    int-to-byte v3, v3

    aget-byte v6, v0, v5

    int-to-byte v6, v6

    const/16 v7, 0x1a

    aget-byte v8, v0, v7

    int-to-byte v8, v8

    invoke-static {v3, v6, v8}, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload(SBS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1c

    const/16 v9, 0x16

    const/4 v10, 0x6

    const/16 v11, 0x59

    const/16 v12, 0x1e

    const/4 v13, 0x0

    if-lt v3, v12, :cond_5

    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v12, :cond_1

    .line 82
    const/16 v3, 0x2e

    goto :goto_1

    :cond_1
    const/16 v3, 0x31

    :goto_1
    packed-switch v3, :pswitch_data_1

    sget v3, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/2addr v3, v11

    rem-int/lit16 v12, v3, 0x80

    sput v12, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 34
    :cond_2
    nop

    .line 35
    const-string v3, "android.permission.QUERY_ALL_PACKAGES"

    invoke-static {p0, v3}, Lccsansan/bw/trackReportClick;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_2

    goto :goto_3

    .line 35
    :pswitch_1
    nop

    .line 82
    sget v3, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x5b

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    .line 35
    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v13

    aget-byte v6, v0, v10

    int-to-byte v6, v6

    aget-byte v9, v0, v9

    neg-int v9, v9

    int-to-byte v9, v9

    aget-byte v10, v0, v5

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload(SBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v9, v0, v5

    int-to-byte v9, v9

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    aget-byte v0, v0, v7

    int-to-byte v0, v0

    invoke-static {v9, v8, v0}, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload(SBS)Ljava/lang/String;

    move-result-object v0

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v13

    invoke-virtual {v6, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    throw v0

    :cond_4
    throw p0

    .line 39
    :goto_3
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0}, Lccsanandroid/content/Intent;-><init>()V

    .line 40
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/high16 v3, 0x20000

    .line 41
    invoke-virtual {v1, v0, v3}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_5
    :pswitch_2
    :try_start_2
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v13

    aget-byte v10, v0, v10

    int-to-byte v10, v10

    aget-byte v9, v0, v9

    neg-int v9, v9

    int-to-byte v9, v9

    aget-byte v12, v0, v5

    int-to-byte v12, v12

    invoke-static {v10, v9, v12}, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload(SBS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v10, v0, v5

    int-to-byte v10, v10

    aget-byte v8, v0, v8

    int-to-byte v8, v8

    aget-byte v0, v0, v7

    int-to-byte v0, v0

    invoke-static {v10, v8, v0}, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload(SBS)Ljava/lang/String;

    move-result-object v0

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v13

    invoke-virtual {v9, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v14, v6

    move-object v6, v0

    move-object v0, v14

    .line 45
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_7

    .line 50
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanandroid/content/pm/PackageInfo;

    .line 51
    iget-object v9, v8, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, v8, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 52
    iget-object v8, v8, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_5

    .line 52
    :cond_7
    if-eqz v0, :cond_8

    .line 82
    goto :goto_6

    :cond_8
    const/16 v11, 0x34

    :goto_6
    packed-switch v11, :pswitch_data_3

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/content/pm/ResolveInfo;

    .line 58
    iget-object v8, v6, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v8, v8, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v6, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v8, v8, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 82
    const/4 v8, 0x0

    goto :goto_8

    :cond_a
    const/4 v8, 0x1

    :goto_8
    packed-switch v8, :pswitch_data_4

    :goto_9
    goto :goto_7

    .line 59
    :pswitch_3
    iget-object v6, v6, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v6, v6, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 64
    :cond_b
    :pswitch_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 65
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 67
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 82
    sget v8, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v8, v8, 0x2d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_c

    .line 67
    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 68
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 82
    const/4 v9, 0x0

    goto :goto_b

    :cond_d
    const/4 v9, 0x1

    :goto_b
    packed-switch v9, :pswitch_data_5

    goto :goto_a

    :pswitch_5
    sget v9, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v9, v9, 0x47

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_e

    .line 69
    :cond_e
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 72
    :cond_f
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "targetSdkVersion"

    invoke-virtual {v1, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v9, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "SDK_INT"

    invoke-virtual {v1, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v3, "code"

    const-string v9, "1"

    invoke-virtual {v1, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const-string v9, "\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v5, v9, v2}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolvedPackageSize"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {v6, v0}, Lccsansan/w/IncentiveDownloadUtils;->removeDownloadListener(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "rate"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "diffNameList"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "P_DIFFER"

    invoke-static {p0, v0, v1}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#statsDiffer params = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_10

    throw v0

    :cond_10
    throw p0

    .line 30
    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_11

    throw v0

    :cond_11
    goto :goto_d

    :goto_c
    throw p0

    :goto_d
    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x34
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0x72
        0x14
        0x0
        0x2
    .end array-data
.end method

.method public static getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 46
    const-string v0, ""

    .line 2
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "pkg"

    .line 3
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "adId"

    .line 4
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cid"

    .line 5
    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 46
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 6
    const/4 p0, 0x0

    return-object p0

    .line 8
    :pswitch_0
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v3

    invoke-virtual {v3, p0, v2, v1}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const/4 v6, 0x2

    if-eqz v1, :cond_c

    .line 46
    sget v7, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v7, v7, 0x47

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/2addr v7, v6

    if-eqz v7, :cond_1

    .line 12
    :cond_1
    :try_start_1
    iget-object v7, v1, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 46
    const/16 v7, 0x13

    goto :goto_1

    :cond_2
    const/16 v7, 0x3d

    :goto_1
    packed-switch v7, :pswitch_data_1

    :goto_2
    goto :goto_3

    .line 13
    :pswitch_1
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v7, v1, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    const-string v7, "minisite"

    .line 14
    iput-object v7, v1, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    .line 15
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7, p0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 16
    new-instance p0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    const-string v8, "reserve_settings"

    invoke-direct {p0, v7, v8}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v7, "had_new_reserve"

    .line 17
    invoke-virtual {p0, v7, v5}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    .line 19
    :cond_3
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;)V

    goto :goto_2

    .line 22
    :goto_3
    iget-object p0, v1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    sget-object v7, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->MINI_SITE:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    if-ne p0, v7, :cond_4

    .line 46
    const/16 p0, 0x36

    goto :goto_4

    :cond_4
    const/16 p0, 0x58

    :goto_4
    packed-switch p0, :pswitch_data_2

    .line 23
    sget-object p0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p0, v1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long p0, v7, v9

    if-lez p0, :cond_5

    .line 25
    sget-object p0, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->RELEASED_WAITING_DOWNLOAD:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object p0, v1, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    .line 28
    :cond_5
    :pswitch_2
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;)V

    .line 29
    invoke-static {v1}, Lccsansan/aj/getDownloadingList;->removeDownloadListener(Lccsansan/aj/getDownloadingList;)Lccsansan/aj/getDownloadingList$removeDownloadListener;

    move-result-object p0

    .line 30
    sget-object v7, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p0, v7, :cond_7

    .line 46
    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/2addr p0, v6

    if-nez p0, :cond_6

    .line 30
    :cond_6
    goto :goto_5

    .line 32
    :cond_7
    :try_start_2
    sget-object v7, Lccsansan/aj/getDownloadingList$removeDownloadListener;->HAD_RELEASE_NO_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p0, v7, :cond_9

    .line 46
    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/2addr p0, v6

    if-nez p0, :cond_8

    .line 32
    :cond_8
    const/4 v5, 0x2

    goto :goto_5

    .line 34
    :cond_9
    :try_start_3
    sget-object v7, Lccsansan/aj/getDownloadingList$removeDownloadListener;->NO_RELEASE_HAD_RESERVE:Lccsansan/aj/getDownloadingList$removeDownloadListener;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne p0, v7, :cond_c

    .line 46
    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v3, p0, 0x5f

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/2addr v3, v6

    if-nez v3, :cond_a

    .line 34
    :cond_a
    const/4 v3, 0x3

    .line 46
    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v7, p0, 0x80

    sput v7, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/2addr p0, v6

    if-nez p0, :cond_b

    const/4 v4, 0x1

    :cond_b
    packed-switch v4, :pswitch_data_3

    .line 34
    :pswitch_3
    const/4 v5, 0x3

    goto :goto_5

    :cond_c
    const/4 v5, -0x1

    :goto_5
    const-string p0, "btstatus"

    .line 38
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v1, :cond_e

    .line 46
    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/2addr p0, v6

    if-nez p0, :cond_d

    .line 39
    :cond_d
    :try_start_5
    invoke-virtual {v1}, Lccsansan/aj/getDownloadingList;->unifiedDownload()J

    move-result-wide v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    :cond_e
    const-wide/16 v3, -0x1

    :goto_6
    const-string p0, "timeLeft"

    .line 40
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "0"

    .line 42
    invoke-static {v0}, Lccsancom/san/mads/webview/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "result"

    .line 43
    :try_start_7
    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 44
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 46
    const-string v0, "-5"

    invoke-static {v0, p0}, Lccsancom/san/mads/webview/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/Exception;)Lccsanorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x58
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    .line 1195
    sget-object v0, Lccsansan/d/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    :try_start_0
    aget v2, p0, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p0, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p0, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p0, v7

    .line 1203
    sget-object v8, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload:[C

    .line 1204
    new-array v9, v4, [C

    .line 1206
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    if-eqz p1, :cond_3

    .line 1211
    new-array v2, v4, [C

    .line 1212
    nop

    .line 1214
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    const/4 v8, 0x0

    :goto_0
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge v10, v4, :cond_2

    .line 1216
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-byte v10, p1, v10

    if-ne v10, v3, :cond_1

    .line 1218
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_1

    .line 1222
    :cond_1
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    .line 1225
    :goto_1
    sget v8, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v8, v2, v8

    .line 1214
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr v10, v3

    sput v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_0

    .line 1228
    :cond_2
    move-object v9, v2

    .line 1232
    :cond_3
    if-lez v7, :cond_4

    .line 1234
    new-array p1, v4, [C

    .line 1236
    invoke-static {v9, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    sub-int v2, v4, v7

    invoke-static {p1, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    invoke-static {p1, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_4
    if-eqz p2, :cond_6

    .line 1244
    new-array p1, v4, [C

    .line 1246
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_2
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p2, v4, :cond_5

    .line 1248
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p1, p2

    .line 1246
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p2, v3

    sput p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_2

    .line 1251
    :cond_5
    move-object v9, p1

    .line 1255
    :cond_6
    if-lez v6, :cond_7

    .line 1257
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_3
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p1, v4, :cond_7

    .line 1259
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p2, v9, p2

    aget v1, p0, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p1

    .line 1257
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p1, v3

    sput p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_3

    .line 1263
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1264
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method static synthetic getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/w/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;)V

    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static removeDownloadListener(II)Ljava/lang/String;
    .locals 3

    .line 53
    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v1, v0, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    if-nez p1, :cond_1

    .line 53
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 0
    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    goto :goto_3

    .line 53
    :pswitch_0
    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 p0, 0x3d

    goto :goto_1

    :cond_2
    const/16 p0, 0x4b

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 0
    goto :goto_2

    .line 53
    :pswitch_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    const-string p0, "-1"

    return-object p0

    .line 52
    :goto_3
    :try_start_1
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.0"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v0, p0

    .line 53
    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p0, "-2"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 22
    const-string v0, "minisite"

    .line 1
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "pkg"

    .line 2
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "adId"

    .line 3
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cid"

    .line 4
    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 7
    :cond_0
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v3

    invoke-virtual {v3, p0, v2, v1}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    .line 22
    const/16 v1, 0x2e

    goto :goto_0

    :cond_1
    const/16 v1, 0x1f

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, p0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    goto :goto_1

    .line 11
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    .line 13
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;)V

    :cond_2
    nop

    .line 17
    iput-object v0, p0, Lccsansan/aj/getDownloadingList;->ActionTypeDownload:Ljava/lang/String;

    .line 19
    invoke-static {}, Lccsansan/ay/unifiedDownload;->addDownloadListener()Lccsansan/ay/unifiedDownload;

    move-result-object v1

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0, v0}, Lccsansan/ay/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    sget p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    const-string p0, ""

    return-object p0

    :goto_1
    const/16 v0, 0x44

    goto :goto_2

    :cond_3
    const/16 v0, 0xd

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 7
    goto :goto_3

    .line 22
    :pswitch_1
    const/16 v0, 0x25

    :try_start_2
    div-int/lit8 v0, v0, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return-object v4

    .line 19
    :catch_0
    move-exception p0

    .line 22
    const-string v0, "-5"

    invoke-static {v0, p0}, Lccsancom/san/mads/webview/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/Exception;)Lccsanorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_1
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 1

    const/16 v0, 0x86

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/w/IncentiveDownloadUtils;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x62s
        0x61s
        0x61s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x69s
        0x73s
        0x6as
        0x69s
        0x73s
        0x39s
        0x6as
        0x62s
        0x61s
        0x61s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x69s
        0x74s
        0x6cs
        0x63s
        0x64s
        0x6cs
        0xbes
        0xc3s
        0xc2s
        0xaes
        0xb3s
        0xb0s
        0xbes
        0xbbs
        0xbds
        0xc6s
        0xbes
        0xb3s
        0xaes
        0xb3s
        0xb0s
        0xc1s
        0xbes
        0xc1s
        0xc1s
        0xb4s
        0xaes
        0xb4s
        0xb6s
        0xb0s
        0xc1s
        0x37s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x61s
        0x64s
        0x68s
        0x68s
        0x6cs
        0x6cs
        0x63s
        0x62s
        0x61s
        0x61s
        0x50s
        0xa2s
        0xa1s
        0xa1s
        0xa9s
        0xb3s
        0xb2s
        0xads
        0xads
        0xa8s
        0xa2s
        0xa1s
        0xa7s
        0xa8s
        0xabs
        0xb4s
        0xacs
        0x30s
        0x62s
        0x61s
        0x61s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x62s
        0x63s
        0x65s
        0x6as
        0x68s
        0x64s
        0x37s
        0x6bs
        0x67s
        0x6fs
        0x71s
        0x5es
        0x5cs
        0x66s
        0x64s
        0x66s
        0x67s
        0x62s
        0x58s
        0x5as
        0x64s
        0x68s
        0x6cs
        0x66s
        0x6as
        0x73s
    .end array-data
.end method

.method private static unifiedDownload(SBS)Ljava/lang/String;
    .locals 6

    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v1, v0, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    add-int/lit8 p0, p0, 0x4

    add-int/lit8 p1, p1, 0x11

    new-array v2, p1, [B

    if-nez v1, :cond_0

    const/16 v3, 0x1c

    goto :goto_0

    :cond_0
    const/16 v3, 0x3a

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    move v0, p2

    const/4 v3, 0x0

    move p2, p0

    goto :goto_2

    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-byte v5, p2

    aput-byte v5, v2, v0

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v0, v1, p0

    :goto_2
    neg-int v0, v0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x2

    move v0, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload()V
    .locals 5

    .line 51
    nop

    .line 47
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_gdpr"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 48
    const-string v1, "al_record_enable"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->deleteDownItem(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 51
    sget v2, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 48
    :cond_0
    nop

    .line 49
    invoke-virtual {v0, v1, v3}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    :cond_1
    nop

    .line 50
    const-string v1, "gdpr_consent"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->deleteDownItem(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 51
    const/16 v2, 0x52

    goto :goto_0

    :cond_2
    const/16 v2, 0x62

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const/16 v2, 0x49

    :goto_1
    packed-switch v2, :pswitch_data_1

    :goto_2
    invoke-virtual {v0, v1, v3}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 50
    :pswitch_0
    goto :goto_2

    .line 51
    :goto_3
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 3

    .line 38
    sget v0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v1, v0, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    if-nez p0, :cond_1

    .line 38
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 33
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_3

    return-void

    .line 38
    :cond_3
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object p0

    new-instance v0, Lccsansan/w/IncentiveDownloadUtils$unifiedDownload;

    invoke-direct {v0}, Lccsansan/w/IncentiveDownloadUtils$unifiedDownload;-><init>()V

    invoke-virtual {p0, v0}, Lccsancom/san/ads/CommonActivityLifecycle;->addActivityStatsCallBack(Lccsancom/san/ads/CommonActivityLifecycle$ActivityStatsCallBack;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
