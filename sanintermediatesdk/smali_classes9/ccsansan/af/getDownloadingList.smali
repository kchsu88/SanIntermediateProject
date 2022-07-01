.class public Lccsansan/af/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static getDownloadingList:[C

.field private static removeDownloadListener:I


# instance fields
.field private unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    const/16 v0, 0x4f

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/af/getDownloadingList;->getDownloadingList:[C

    return-void

    :array_0
    .array-data 2
        0x3as
        0x73s
        0x69s
        0x6as
        0x63s
        0x61s
        0x71s
        0x74s
        0x6bs
        0x37s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x58s
        0x5es
        0x69s
        0x64s
        0x64s
        0x3as
        0x6as
        0x6as
        0x74s
        0x74s
        0x6bs
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x5bs
        0x32s
        0x64s
        0x68s
        0x6cs
        0x66s
        0x6as
        0x73s
        0x70s
        0x6bs
        0x3as
        0x71s
        0x6bs
        0x67s
        0x67s
        0x67s
        0x64s
        0x54s
        0x59s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x64s
        0x6bs
        0x32s
        0x6bs
        0x6cs
        0x6bs
        0x61s
        0x61s
        0x59s
        0x59s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x53s
        0x54s
        0x69s
        0x71s
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p1}, Lccsancom/san/bridge/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private static IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;
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
    sget-object v8, Lccsansan/af/getDownloadingList;->getDownloadingList:[C

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

.method private addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 155
    nop

    .line 0
    :try_start_0
    const-string v0, "0"

    .line 148
    invoke-static {v0}, Lccsancom/san/mads/webview/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 150
    invoke-direct {p0, p1}, Lccsansan/af/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "result"

    .line 151
    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "Mads.ActionManager"

    .line 152
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#getAdParam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    sget v0, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    .line 153
    :catch_0
    move-exception p1

    .line 155
    const-string v0, "-5"

    invoke-static {v0, p1}, Lccsancom/san/mads/webview/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/Exception;)Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lccsancom/san/bridge/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget v0, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/16 v0, 0x3d

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p1

    :goto_2
    :try_start_1
    div-int/2addr v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

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
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/unifiedDownload;)V
    .locals 8

    .line 4
    nop

    .line 2
    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3
    new-instance v5, Lccsansan/bw/AdError;

    iget-object v0, p0, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-direct {v5, v0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    new-instance v7, Lccsansan/af/getDownloadingList$unifiedDownload;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lccsansan/af/getDownloadingList$unifiedDownload;-><init>(Lccsansan/af/getDownloadingList;Lccsansan/af/unifiedDownload;Ljava/lang/String;Lccsansan/bw/AdError;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, v7}, Lccsansan/af/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;Lccsansan/af/removeDownloadListener;)V

    sget p1, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/af/getDownloadingList;)Lccsanandroid/content/Context;
    .locals 2

    .line 1
    sget v0, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 6
    nop

    .line 5
    instance-of v0, p1, Lccsancom/san/mads/webview/WebViewActivity;

    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    sget v0, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x56

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    :goto_1
    check-cast p1, Lccsancom/san/mads/webview/WebViewActivity;

    invoke-virtual {p1}, Lccsancom/san/mads/webview/WebViewActivity;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p1

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    sget p1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    const-string p1, ""

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    sget v0, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p1}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;Lccsansan/af/removeDownloadListener;)V
    .locals 38

    .line 147
    move-object/from16 v7, p0

    move-object/from16 v0, p2

    const-string v8, "Mads.ActionManager"

    .line 0
    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 147
    sget v0, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v1

    return-void

    .line 0
    :cond_0
    :try_start_0
    const-string v2, "url"

    .line 46
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "name"

    .line 47
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileSize"

    .line 48
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v3, 0x4

    new-array v5, v3, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/16 v9, 0x9

    const/4 v10, 0x1

    aput v9, v5, v10

    aput v6, v5, v1

    const/4 v11, 0x3

    aput v6, v5, v11

    const-string v12, "\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000"

    invoke-static {v5, v12, v10}, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual {v0, v5}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v12, "pkgName"

    .line 50
    invoke-virtual {v0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 51
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 147
    move-object v2, v13

    .line 51
    :cond_1
    const-string v12, "portal"

    .line 55
    invoke-virtual {v0, v12}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v11, "pid"

    .line 56
    invoke-virtual {v0, v11}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v10, "ad_id"

    .line 57
    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "cid"

    .line 58
    invoke-virtual {v0, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "did"

    .line 59
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "cpiparam"

    .line 60
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "actionType"

    .line 62
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 147
    const/16 v21, 0x50

    goto :goto_0

    :cond_2
    const/16 v21, 0x4a

    :goto_0
    packed-switch v21, :pswitch_data_0

    .line 63
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    move/from16 v21, v1

    const-string v1, "minVersionCode"

    .line 64
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v22, :cond_4

    .line 147
    sget v1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x67

    move/from16 v22, v5

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v5, 0x2

    rem-int/2addr v1, v5

    if-nez v1, :cond_3

    const/16 v1, 0xf

    goto :goto_2

    :cond_3
    const/16 v1, 0x35

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 65
    const/4 v1, 0x0

    goto :goto_3

    .line 147
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_3

    .line 65
    :cond_4
    move/from16 v22, v5

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    const-string v5, "subPortal"

    .line 66
    invoke-virtual {v0, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v9

    const-string v9, "trackUrls"

    .line 67
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    move/from16 v25, v1

    if-eqz v24, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string v9, "versionCode"

    .line 69
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 70
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x0

    goto :goto_5

    :cond_6
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move/from16 v26, v9

    :goto_5
    const-string v9, "versionName"

    .line 71
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v9, "gpUrl"

    .line 72
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v28, v11

    const/4 v11, 0x4

    new-array v11, v11, [I

    move-object/from16 v19, v12

    const/4 v12, 0x0

    const/16 v18, 0x9

    aput v18, v11, v12

    const/16 v18, 0xc

    const/16 v17, 0x1

    aput v18, v11, v17

    const/16 v17, 0x2

    aput v12, v11, v17

    const/16 v17, 0xb

    const/16 v16, 0x3

    aput v17, v11, v16

    const-string v12, "\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001"

    move-object/from16 v16, v1

    const/4 v1, 0x0

    invoke-static {v11, v12, v1}, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v4

    goto :goto_6

    .line 147
    :cond_7
    move-object v0, v9

    .line 77
    :goto_6
    invoke-static {v13}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 147
    const/16 v1, 0xa

    goto :goto_7

    :cond_8
    const/16 v1, 0x2d

    :goto_7
    packed-switch v1, :pswitch_data_2

    .line 77
    iget-object v1, v7, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v1, v13}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v1, :cond_a

    .line 147
    sget v1, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_9

    .line 78
    :cond_9
    :try_start_2
    iget-object v1, v7, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v1, v10, v0, v13}, Lccsansan/bw/resume;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 82
    :cond_a
    :pswitch_2
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const-string v12, "ad"

    const-string v11, "minisite"

    if-nez v1, :cond_d

    .line 147
    sget v1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x7d

    move-object/from16 v18, v9

    rem-int/lit16 v9, v1, 0x80

    sput v9, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v9, 0x2

    rem-int/2addr v1, v9

    if-nez v1, :cond_b

    .line 82
    :cond_b
    :try_start_3
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 83
    new-instance v9, Lccsancom/san/cpi/xz/AdXzParams$Builder;

    invoke-direct {v9}, Lccsancom/san/cpi/xz/AdXzParams$Builder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v18, v8

    move-object v8, v10

    move-object v10, v13

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v7, v28

    move-object/from16 v11, v27

    move-object/from16 v30, v12

    move-object/from16 v29, v19

    move/from16 v12, v26

    move-object/from16 p2, v13

    move-object v13, v2

    :try_start_4
    invoke-virtual/range {v9 .. v15}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendPkgInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v2

    .line 84
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v7, v0, v9, v6}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdStatsInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1, v3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendCpiInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendSubPortal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    move/from16 v7, v25

    invoke-virtual {v0, v7}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendMinVersionCode(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 87
    move-object/from16 v13, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1, v13}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendUrls(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 88
    move-object/from16 v12, v30

    invoke-virtual {v0, v12}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendSubPortal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    new-instance v7, Lccsansan/af/getDownloadingList$IncentiveDownloadUtils;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v11, p0

    move-object/from16 v1, p3

    :try_start_5
    invoke-direct {v7, v11, v1}, Lccsansan/af/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/af/getDownloadingList;Lccsansan/af/removeDownloadListener;)V

    new-instance v8, Lccsansan/af/getDownloadingList$addDownloadListener;

    move/from16 v10, v21

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v3, v17

    move/from16 v9, v22

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lccsansan/af/getDownloadingList$addDownloadListener;-><init>(Lccsansan/af/getDownloadingList;ILjava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v7, v8}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendCallbacks(Lccsancom/san/cpi/xz/AdXzCallback$XzCallback;Lccsancom/san/cpi/xz/AdXzCallback$ResultUrlCallBack;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v10}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->actionType(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->portal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->autoStart(Z)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->build()Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object v0

    .line 134
    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lccsancom/san/bridge/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    move-object v1, v11

    goto/16 :goto_a

    .line 82
    :cond_c
    move-object/from16 v33, v0

    move-object v0, v11

    move-object/from16 p2, v13

    move-object/from16 v13, v16

    move-object/from16 v32, v18

    move-object/from16 v31, v19

    move/from16 v9, v22

    move-object/from16 v1, v23

    move-object/from16 v16, v4

    move-object v11, v7

    move-object/from16 v18, v8

    move-object v8, v10

    move/from16 v10, v21

    goto :goto_8

    .line 144
    :catch_0
    move-exception v0

    move-object/from16 v18, v8

    move-object v1, v7

    goto/16 :goto_9

    .line 82
    :cond_d
    move-object/from16 v33, v0

    move-object/from16 v18, v8

    move-object/from16 v32, v9

    move-object v8, v10

    move-object v0, v11

    move-object/from16 p2, v13

    move-object/from16 v13, v16

    move-object/from16 v31, v19

    move/from16 v10, v21

    move/from16 v9, v22

    move-object/from16 v1, v23

    move-object/from16 v16, v4

    move-object v11, v7

    :goto_8
    move/from16 v7, v25

    move-object/from16 v4, v28

    .line 136
    new-instance v17, Lccsancom/san/cpi/xz/AdXzParams$Builder;

    invoke-direct/range {v17 .. v17}, Lccsancom/san/cpi/xz/AdXzParams$Builder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move/from16 v34, v9

    move-object/from16 v9, v17

    move/from16 v35, v10

    move-object/from16 v10, p2

    move-object/from16 v11, v27

    move-object/from16 v36, v12

    move/from16 v12, v26

    move-object/from16 v37, v13

    move-object v13, v2

    :try_start_6
    invoke-virtual/range {v9 .. v15}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendPkgInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v2

    .line 137
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v4, v0, v9, v6}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdStatsInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v1, v3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendCpiInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendSubPortal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendMinVersionCode(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 140
    move-object/from16 v1, v16

    move-object/from16 v2, v32

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendUrls(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 141
    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendSubPortal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    .line 142
    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->actionType(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->portal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->autoStart(Z)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->build()Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 143
    move-object/from16 v1, p0

    :try_start_7
    iget-object v2, v1, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v2, v0}, Lccsancom/san/cpi/xz/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 144
    iget-object v0, v1, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    move-object/from16 v2, p2

    move-object/from16 v4, v33

    invoke-static {v0, v4, v2, v8}, Lccsansan/bw/resume;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 147
    goto :goto_a

    .line 144
    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v11

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v1, v7

    move-object/from16 v18, v8

    .line 147
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_2
    .end packed-switch
.end method

.method private unifiedDownload(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/unifiedDownload;)V
    .locals 2

    .line 44
    nop

    .line 43
    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Lccsansan/af/getDownloadingList$getDownloadingList;

    invoke-direct {v1, p0, p3, p2, v0}, Lccsansan/af/getDownloadingList$getDownloadingList;-><init>(Lccsansan/af/getDownloadingList;Lccsansan/af/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v1}, Lccsansan/bq/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/removeDownloadListener;)V

    sget p1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/af/unifiedDownload;)Ljava/lang/String;
    .locals 8

    .line 42
    nop

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "portal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", action = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", jsonParam="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.ActionManager"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p1, "getAdParam"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 42
    sget p1, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/2addr p1, v1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/2addr p1, v2

    if-eqz p1, :cond_0

    .line 6
    :try_start_1
    iget-object p1, p0, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-direct {p0, p1}, Lccsansan/af/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 p2, 0x5f

    :try_start_2
    div-int/2addr p2, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    throw p1

    .line 6
    :cond_0
    :try_start_3
    iget-object p1, p0, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-direct {p0, p1}, Lccsansan/af/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    const/16 p1, 0x31

    goto :goto_0

    :cond_2
    const/16 p1, 0x22

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 13
    new-instance p1, Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 9
    :pswitch_0
    const-string p1, "-4"

    .line 42
    sget p2, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p2, 0x61

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/2addr p2, v2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    :try_start_4
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    throw p1

    :cond_3
    return-object p1

    .line 13
    :goto_1
    :try_start_5
    invoke-direct {p1, p4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    new-array v5, v4, [I

    aput v1, v5, v3

    const/16 v1, 0xe

    const/4 v6, 0x1

    aput v1, v5, v6

    aput v3, v5, v2

    const/4 v1, 0x5

    const/4 v7, 0x3

    aput v1, v5, v7

    const-string v1, "\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001"

    invoke-static {v5, v1, v3}, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v1, :cond_8

    .line 6
    sget p2, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p2, p2, 0x3b

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    rem-int/2addr p2, v2

    if-eqz p2, :cond_4

    .line 19
    const/16 p2, 0x60

    goto :goto_2

    :cond_4
    const/4 p2, 0x6

    :goto_2
    const-string v1, "pkgName"

    packed-switch p2, :pswitch_data_1

    .line 6
    goto :goto_3

    .line 17
    :pswitch_1
    nop

    .line 18
    :try_start_6
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    :pswitch_2
    goto :goto_5

    .line 18
    :goto_3
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v5, 0x59

    :try_start_7
    div-int/2addr v5, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-nez v1, :cond_5

    const/16 v1, 0x2e

    goto :goto_4

    :cond_5
    const/16 v1, 0x50

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_6

    :goto_5
    :try_start_8
    iget-object v1, p0, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v1, p2}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p4, "action"

    new-array v1, v4, [I

    const/16 v4, 0x23

    aput v4, v1, v3

    const/16 v4, 0x9

    aput v4, v1, v6

    aput v3, v1, v2

    aput v4, v1, v7

    const-string v2, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {v1, v2, v6}, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p1, p4, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    if-eqz p5, :cond_6

    .line 23
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p5, p3, p1}, Lccsansan/af/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_6
    new-instance p1, Lccsansan/bw/AdError;

    iget-object p3, p0, Lccsansan/af/getDownloadingList;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-direct {p1, p3}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 26
    invoke-virtual {p1, p2}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 42
    const-string p1, "0"

    return-object p1

    .line 29
    :cond_7
    :goto_6
    :try_start_9
    invoke-direct {p0, p1, p3, p5}, Lccsansan/af/getDownloadingList;->unifiedDownload(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/unifiedDownload;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_7

    .line 6
    :catchall_2
    move-exception p1

    throw p1

    .line 29
    :cond_8
    :try_start_a
    new-array v1, v4, [I

    const/16 v5, 0x2c

    aput v5, v1, v3

    const/16 v5, 0x11

    aput v5, v1, v6

    aput v3, v1, v2

    aput v3, v1, v7

    const-string v5, "\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001"

    invoke-static {v1, v5, v3}, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    invoke-direct {p0, p1, p3, p5}, Lccsansan/af/getDownloadingList;->addDownloadListener(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/unifiedDownload;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 42
    :goto_7
    const-string p1, ""

    goto :goto_9

    .line 31
    :cond_9
    :try_start_b
    const-string p1, "getReservationInfo"

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 33
    invoke-direct {p0, p4}, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 6
    sget p2, Lccsansan/af/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 p2, p2, 0x41

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/2addr p2, v2

    if-nez p2, :cond_a

    const/16 p2, 0x1f

    :try_start_c
    div-int/2addr p2, v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    return-object p1

    :catchall_3
    move-exception p1

    throw p1

    .line 42
    :cond_a
    return-object p1

    .line 33
    :cond_b
    :try_start_d
    const-string p1, "addReservationInfo"

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 35
    invoke-direct {p0, p4}, Lccsansan/af/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    new-array p1, v4, [I

    const/16 p3, 0x3d

    aput p3, p1, v3

    const/16 p3, 0x12

    aput p3, p1, v6

    aput v3, p1, v2

    aput v2, p1, v7

    const-string p3, "\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000"

    invoke-static {p1, p3, v3}, Lccsansan/af/getDownloadingList;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    if-eqz p1, :cond_d

    .line 19
    goto :goto_8

    :cond_d
    const/4 v3, 0x1

    :goto_8
    packed-switch v3, :pswitch_data_3

    .line 37
    const-string p1, "-1"

    goto :goto_9

    :pswitch_3
    :try_start_e
    invoke-direct {p0, p4}, Lccsansan/af/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---------exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "-5"

    :goto_9
    return-object p1

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method
