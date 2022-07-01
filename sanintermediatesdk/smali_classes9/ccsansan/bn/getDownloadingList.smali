.class public Lccsansan/bn/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[B

.field private static addDownloadListener:[S

.field private static deleteDownItem:C

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedRecordByUrl:[C

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    const/16 v0, 0x8

    sput v0, Lccsansan/bn/getDownloadingList;->unifiedDownload:I

    const v0, 0x4f06fbe6    # 2.26465536E9f

    sput v0, Lccsansan/bn/getDownloadingList;->getDownloadingList:I

    const v0, -0x16dff1a5

    sput v0, Lccsansan/bn/getDownloadingList;->removeDownloadListener:I

    const/16 v0, 0x10a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils:[B

    const/4 v0, 0x7

    sput-char v0, Lccsansan/bn/getDownloadingList;->deleteDownItem:C

    const/16 v0, 0x31

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/bn/getDownloadingList;->getDownloadedRecordByUrl:[C

    return-void

    :array_0
    .array-data 1
        -0x13t
        -0x20t
        -0x13t
        -0xdt
        -0x1at
        -0x16t
        -0x27t
        -0x16t
        -0x1bt
        -0x22t
        -0x11t
        -0xet
        -0x41t
        -0x32t
        -0x56t
        -0x42t
        -0x2ft
        -0x53t
        -0x48t
        -0x44t
        -0x2ft
        0x1t
        0x35t
        -0x37t
        0x1et
        0x18t
        0x1bt
        0x28t
        0x60t
        -0x2at
        0xdt
        0x19t
        0x2ft
        0x2ct
        0x7t
        0x1et
        0xdt
        0x1et
        0x19t
        0x12t
        0x23t
        0x46t
        -0x5t
        0x3et
        -0x18t
        0x2ct
        0x19t
        0x14t
        0x1bt
        0x18t
        0x27t
        0x57t
        -0x75t
        0x1ft
        0x74t
        0x6et
        0x71t
        0x7et
        -0x4at
        0x2dt
        0x70t
        0x6at
        0x74t
        0x79t
        -0x74t
        0x43t
        0x73t
        -0x7et
        0x5et
        -0x6et
        0x60t
        0x74t
        0x63t
        0x74t
        0x6ft
        0x68t
        0x79t
        -0x64t
        0x51t
        -0x6ct
        0x3et
        -0x7et
        0x6ft
        0x6at
        0x71t
        0x6et
        0x7dt
        0x2et
        0x1dt
        0x28t
        0x34t
        0x39t
        0xdt
        0x2et
        0x28t
        0x15t
        0x44t
        0x16t
        0x29t
        0x18t
        0x29t
        0x24t
        0x1dt
        0x2et
        0x51t
        0xbt
        0x41t
        0x29t
        -0x5ct
        -0x59t
        -0x47t
        -0x6dt
        -0x39t
        -0x6ft
        -0x59t
        -0x68t
        -0x54t
        -0x59t
        -0x31t
        0x77t
        -0x55t
        -0x39t
        -0x71t
        -0x58t
        -0x58t
        -0x69t
        -0x3dt
        -0x66t
        -0x5ft
        -0x57t
        -0x68t
        -0x57t
        -0x5ct
        -0x63t
        -0x52t
        -0x2ft
        0x8t
        0x3ct
        -0x30t
        0x25t
        0x1ft
        0x22t
        0x2ft
        0x67t
        -0x31t
        0x20t
        0x23t
        0x35t
        0xft
        0x43t
        0x1t
        0x23t
        0x26t
        0x49t
        -0xdt
        0x2at
        0x23t
        0x45t
        -0x1t
        0x3bt
        0x13t
        0x25t
        0x14t
        0x25t
        0x20t
        0x19t
        0x2at
        0x4dt
        -0xet
        0x33t
        0x20t
        0x1bt
        0x22t
        0x1ft
        0x2et
        0x7at
        -0x52t
        0x42t
        -0x69t
        -0x6ft
        -0x6ct
        -0x5ft
        -0x27t
        0x41t
        -0x6et
        -0x6bt
        -0x59t
        -0x7ft
        -0x4bt
        0x75t
        -0x69t
        -0x6ft
        -0x6ct
        -0x3ft
        0x74t
        -0x6at
        -0x6at
        -0x7bt
        -0x4ft
        -0x7dt
        -0x69t
        -0x7at
        -0x69t
        -0x6et
        -0x75t
        -0x64t
        -0x41t
        0x64t
        -0x5bt
        -0x6et
        -0x73t
        -0x6ct
        -0x6ft
        -0x60t
        -0x71t
        -0x6at
        -0x7bt
        -0x5dt
        0x7ft
        -0x73t
        -0x5ft
        -0x6bt
        -0x75t
        -0x6dt
        -0x7et
        -0x6dt
        -0x72t
        -0x79t
        -0x68t
        -0x65t
        -0x1ft
        -0x25t
        -0x22t
        0xbt
        -0x42t
        -0x29t
        -0x1ft
        0x1t
        -0x41t
        -0x33t
        -0x1bt
        0x0t
        -0x39t
        -0x33t
        -0x1ct
        -0x1ft
        0x7t
        -0x3et
        -0x27t
        -0x1ft
        -0x30t
        -0x1ft
        -0x24t
        -0x2bt
        -0x1at
        0x9t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 2
        0x4ds
        0x61s
        0x64s
        0x73s
        0x5fs
        0x41s
        0x44s
        0x6fs
        0x77s
        0x6es
        0x6cs
        0x69s
        0x74s
        0x63s
        0x65s
        0x4cs
        0x20s
        0x72s
        0x3as
        0x53s
        0x2es
        0x45s
        0x78s
        0x70s
        0x6bs
        0x50s
        0x75s
        0x46s
        0x54s
        0x52s
        0x49s
        0x6ds
        0x4es
        0x55s
        0x4bs
        0x48s
        0x43s
        0x79s
        0x67s
        0x68s
        0x4fs
        0x51s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x5bs
        0x5cs
    .end array-data
.end method

.method private static IncentiveDownloadUtils(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/bn/getDownloadingList;->unifiedDownload:I

    add-int/2addr p4, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p4, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/bn/getDownloadingList;->removeDownloadListener:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/bn/getDownloadingList;->addDownloadListener:[S

    sget v6, Lccsansan/bn/getDownloadingList;->removeDownloadListener:I

    add-int/2addr v6, p0

    aget-short p4, p4, v6

    add-int/2addr p4, v2

    int-to-short p4, p4

    .line 1223
    :cond_2
    :goto_1
    if-lez p4, :cond_5

    .line 1226
    add-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x2

    sget v2, Lccsansan/bn/getDownloadingList;->removeDownloadListener:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingList:I

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1231
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sput v5, Lccsansan/d/trackReportShow;->addDownloadListener:I

    :goto_2
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    if-ge p0, p4, :cond_5

    .line 1238
    sget-object p0, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p1

    .line 1241
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-byte p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsansan/bn/getDownloadingList;->addDownloadListener:[S

    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p1

    .line 1246
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-short p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1248
    :goto_3
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    add-int/2addr p0, v5

    sput p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    goto :goto_2

    .line 1253
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1254
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method static synthetic IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    :goto_0
    invoke-static {p0, p1, p2}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x52

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 3

    .line 98
    nop

    .line 73
    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 98
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 75
    :cond_0
    :try_start_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bn/getDownloadingList$removeDownloadListener;

    const-string v2, "Test.Dns.Result"

    invoke-direct {v1, v2, p0}, Lccsansan/bn/getDownloadingList$removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/16 v0, 0x30

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x6e

    int-to-byte v1, v1

    const-string v2, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {v2, v0, v1}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "collectionTestDnsResult"

    invoke-static {v0, v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/net/NetworkInfo;ZLjava/lang/String;)V
    .locals 5

    .line 369
    nop

    .line 364
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 348
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 364
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x13

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 369
    return-void

    .line 364
    :pswitch_0
    :try_start_1
    array-length p0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    .line 352
    :cond_2
    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    .line 353
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "portal"

    .line 354
    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "isRetry"

    .line 355
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p0, "has_net"

    if-eqz p1, :cond_3

    :try_start_4
    const-string p2, "TRUE"

    .line 358
    invoke-virtual {v3, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p0, "net_state"

    .line 359
    :try_start_5
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->getState()Lccsanandroid/net/NetworkInfo$State;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p0, "net_detail_state"

    .line 360
    :try_start_6
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->getDetailedState()Lccsanandroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string p1, "FALSE"

    .line 362
    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 360
    :goto_1
    nop

    .line 369
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    .line 364
    const/16 p0, 0x56

    goto :goto_2

    :cond_4
    const/16 p0, 0x1a

    :goto_2
    packed-switch p0, :pswitch_data_1

    :try_start_7
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_4

    :pswitch_1
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    array-length p1, v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez p0, :cond_6

    :goto_3
    goto :goto_6

    .line 369
    :catchall_1
    move-exception p0

    throw p0

    .line 364
    :goto_4
    if-nez p0, :cond_5

    const/16 p0, 0x1d

    goto :goto_5

    :cond_5
    const/16 p0, 0x47

    :goto_5
    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :goto_6
    :try_start_9
    const-string p0, "extra"

    .line 365
    invoke-virtual {v3, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :pswitch_2
    const-string p0, "AD_GetNetStateInfo"

    .line 367
    invoke-static {v1, p0, v3}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 369
    goto :goto_7

    .line 367
    :catch_0
    move-exception p0

    invoke-static {v0, v0}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x17

    invoke-static {v0, v0}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x6e

    int-to-byte p2, p2

    const-string p3, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {p3, p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 369
    const-string p2, "collectNetworkInfo"

    invoke-static {p1, p2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_2
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/aw/getDownloadingRecordByUrl;)V
    .locals 10

    .line 296
    const-string v0, "."

    sget v1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 279
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v4, 0x30

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_1
    array-length v6, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_1

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v6, "UnknownHostException"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 281
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lccsansan/bw/getDownloadedList;->getDownloadedList(Lccsanandroid/content/Context;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "ssid"

    const-string v8, "ip"

    if-ne v6, v2, :cond_2

    .line 282
    :try_start_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v5, "wifi"

    invoke-virtual {v2, v5}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/net/wifi/WifiManager;

    .line 283
    invoke-virtual {v2}, Lccsanandroid/net/wifi/WifiManager;->getConnectionInfo()Lccsanandroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lccsanandroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v9, v5, 0xff

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v9, v5, 0x8

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v9, v5, 0x10

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v5, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-virtual {v2}, Lccsanandroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 296
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 279
    const/16 v0, 0x46

    goto :goto_4

    :cond_1
    const/16 v0, 0x54

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 296
    :pswitch_1
    goto :goto_5

    .line 287
    :cond_2
    nop

    .line 289
    :try_start_4
    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 287
    :goto_5
    nop

    .line 290
    const-string v0, "network"

    .line 292
    :try_start_5
    invoke-static {}, Lccsansan/bn/getDownloadingList;->getDownloadingList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "\u0000\r\t\n\u000b\u0008\u0002\u0003\u0005 \r\u001e\n\u0008\u0007$\n\u0000\u0013\u001a\u0008\u0005\u0013!\u00ef"

    invoke-static {v4}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v5

    add-int/lit8 v5, v5, -0x17

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0x7c

    int-to-byte v6, v6

    invoke-static {v2, v5, v6}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .line 296
    :catchall_0
    move-exception p0

    throw p0

    .line 293
    :catch_0
    move-exception v0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x16dff25d

    invoke-static {v4}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    sub-int/2addr v1, v2

    const v2, -0x4f06fb82

    invoke-static {v3}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v2

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    cmpl-float v2, v2, v6

    add-int/lit8 v2, v2, -0x23

    int-to-short v2, v2

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v3}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x1f

    invoke-static {v1, v5, v2, v6, v9}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v3}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x17

    invoke-static {v7, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6d

    int-to-byte v1, v1

    invoke-static {v8, v0, v1}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsansan/f/IncentiveDownloadUtils;Ljava/lang/String;JLccsansan/cv/IncentiveDownloadUtils$addDownloadListener;)V
    .locals 4

    .line 391
    const-string v0, ""

    .line 380
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "content_id"

    .line 381
    :try_start_1
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "url"

    .line 382
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "task_class"

    .line 383
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "range"

    .line 384
    :try_start_3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p0, "http_status"

    .line 385
    :try_start_4
    iget p1, p4, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p0, "content_length"

    .line 386
    :try_start_5
    iget-wide p1, p4, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p0, "header_range"

    .line 387
    :try_start_6
    iget-object p1, p4, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p0, "req_id"

    :try_start_7
    const-string p1, "X-Amz-Cf-Id"

    .line 388
    invoke-virtual {p4, p1}, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "\u0000\r\t\n\u000b\u0008\u0002\u0003\u0001\'\u000b\u0008\u0017\u0005#\u0008\n\r\u0010\u0007\u0008\u0013\u0010\u0007(\n#\u0019\u0083\u0083\n\u000e"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result p2

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 p2, p2, 0x20

    invoke-static {v0}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x10

    int-to-byte p3, p3

    invoke-static {p1, p2, p3}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collectContentLengthException error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x16

    const/4 p2, 0x0

    invoke-static {p2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x6e

    int-to-byte p2, p2

    const-string p3, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {p3, p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x2e

    goto :goto_1

    :cond_0
    const/16 p0, 0xb

    :goto_1
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_8
    array-length p0, p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

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

.method public static addDownloadListener()V
    .locals 5

    .line 327
    nop

    .line 326
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 327
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x17

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    neg-int v3, v3

    int-to-byte v3, v3

    const-string v4, "\u0000\r\t\n\u000b\u0008\u0002\u0003\u0001 \u0011\u0000\u0018!\u0015#\t\u0019&\u0008\u000c\u0007l"

    invoke-static {v4, v2, v3}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;)V
    .locals 10

    .line 310
    const-string v0, ""

    .line 297
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 298
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/bw/trackReportClick;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "storage_permission"

    .line 299
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/bw/setLoaderClassName;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "storage_total"

    const-string v5, "storage_available"

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 302
    :try_start_2
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 308
    sget v3, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x25

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 310
    goto :goto_1

    .line 303
    :cond_1
    nop

    .line 305
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lccsansan/bw/setLoaderClassName;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lccsansan/au/getDownloadingList;->addDownloadListener(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 303
    :goto_1
    :pswitch_0
    nop

    .line 310
    sget v3, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x1f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 308
    const/16 v3, 0x26

    goto :goto_2

    :cond_2
    const/16 v3, 0x23

    :goto_2
    packed-switch v3, :pswitch_data_1

    :try_start_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0, v2}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 310
    :catchall_0
    move-exception p0

    throw p0

    .line 308
    :goto_3
    :try_start_6
    invoke-static {v3, p0, v2}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x15dff254

    invoke-static {v1, v1, v1}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v4

    sub-int/2addr v3, v4

    const v4, -0x4f06fb83

    invoke-static {v1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x6c

    int-to-short v4, v4

    invoke-static {v1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x20

    invoke-static {v3, v5, v4, v6, v7}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    cmp-long v7, v2, v4

    rsub-int/lit8 v2, v7, 0x18

    const/16 v3, 0x30

    invoke-static {v0, v3, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x6d

    int-to-byte v0, v0

    invoke-static {v6, v2, v0}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x26
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 71
    const-string v0, ""

    .line 1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "portal"

    .line 3
    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "url"

    .line 4
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "pkg"

    .line 5
    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    invoke-virtual {v4, p2, p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1

    const-string v4, "ad"

    .line 8
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "downid"

    const-string v5, "sub_portal"

    const-string v6, "cpiparam"

    const-string v7, "sourcetype"

    const/4 v8, 0x1

    if-eqz p0, :cond_d

    if-eqz p1, :cond_0

    .line 10
    :try_start_1
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    iget-object v9, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {p0, v9, p2}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    nop

    .line 11
    :goto_0
    nop

    .line 13
    if-eqz p0, :cond_1

    .line 22
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    const-string v9, "ad_id"

    packed-switch p2, :pswitch_data_0

    .line 36
    if-eqz p1, :cond_8

    goto/16 :goto_4

    .line 71
    :pswitch_0
    sget p2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x49

    rem-int/lit16 v10, p2, 0x80

    sput v10, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 13
    :cond_2
    :try_start_2
    const-string p2, "result"

    const-string v10, "failed"

    .line 17
    invoke-virtual {v3, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p2, :cond_3

    .line 22
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    const/4 p2, 0x1

    :goto_2
    packed-switch p2, :pswitch_data_1

    .line 18
    const-string p2, "placement_id"

    .line 19
    :try_start_3
    iget-object v10, p0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v3, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :pswitch_1
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez p2, :cond_5

    .line 71
    sget p2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x1b

    rem-int/lit16 v10, p2, 0x80

    sput v10, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    .line 22
    :try_start_4
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p2, 0x0

    :try_start_5
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 71
    :catchall_0
    move-exception p0

    throw p0

    .line 21
    :cond_4
    nop

    .line 22
    :try_start_6
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    nop

    .line 24
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p2, "did"

    .line 25
    :try_start_7
    iget-object v4, p0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v3, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p2, "pid"

    .line 28
    :try_start_8
    iget-object v4, p0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string p2, "creative_id"

    .line 29
    :try_start_9
    iget-object v4, p0, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p2, "formatid"

    .line 30
    :try_start_a
    iget-object v4, p0, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p2, "adnet"

    .line 31
    :try_start_b
    iget-object v4, p0, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v3, p2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p0, p0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 34
    invoke-virtual {p1, v7}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 71
    sget p2, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p2, p2, 0x1d

    rem-int/lit16 v4, p2, 0x80

    sput v4, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_6

    .line 34
    :cond_6
    nop

    .line 36
    :try_start_c
    invoke-virtual {v3, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 39
    :goto_4
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 22
    const/4 p0, 0x0

    goto :goto_5

    :cond_7
    const/4 p0, 0x1

    :goto_5
    packed-switch p0, :pswitch_data_2

    goto :goto_6

    .line 39
    :pswitch_2
    nop

    .line 40
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v3, v9, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    nop

    .line 42
    invoke-virtual {p1, v7}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 36
    :cond_8
    :goto_7
    nop

    .line 42
    const-string p0, "2"

    const-string p2, "book"

    if-eqz p1, :cond_c

    .line 22
    sget v4, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v4, v4, 0x9

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_9

    .line 46
    :cond_9
    :try_start_d
    iget-object v4, p1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 22
    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    const/4 v4, 0x1

    :goto_8
    packed-switch v4, :pswitch_data_3

    .line 47
    iget-object v4, p1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :pswitch_3
    iget-object v4, p1, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 22
    const/4 v8, 0x0

    goto :goto_9

    :cond_b
    nop

    :goto_9
    packed-switch v8, :pswitch_data_4

    .line 50
    goto :goto_a

    .line 49
    :pswitch_4
    nop

    .line 50
    invoke-virtual {v3, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :goto_a
    const-string p0, "is_book"

    .line 52
    invoke-virtual {p1, p0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_c
    nop

    .line 54
    invoke-virtual {v3, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_d
    if-eqz p1, :cond_11

    .line 58
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    .line 59
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_e
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 22
    const/4 v8, 0x0

    goto :goto_b

    :cond_f
    nop

    :goto_b
    packed-switch v8, :pswitch_data_5

    goto :goto_c

    .line 61
    :pswitch_5
    nop

    .line 62
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 22
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 v4, p0, 0x80

    sput v4, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_10

    .line 71
    :cond_10
    nop

    .line 62
    :goto_c
    nop

    .line 64
    :try_start_e
    invoke-virtual {p1, v7}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_d
    nop

    .line 65
    :cond_11
    const-string p0, "failed_msg"

    .line 68
    invoke-virtual {v3, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "\u0006\u0000\u0005\u0000\u0008\t\n\u000b\u0008\u0000\u0005\u0010\u0008\u0005\u0013\n\u0016\u0006\u000c\u000b\u0010\u0000"

    invoke-static {v0, v0, v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x16

    invoke-static {v1}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x68

    int-to-byte p2, p2

    invoke-static {p0, p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-static {v2, p0, v3}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_e

    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x16dff1d8

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p3

    sub-int/2addr p2, p3

    const p3, -0x4f06fb83

    invoke-static {v1, v1}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    sub-int/2addr p3, v4

    invoke-static {v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    rsub-int/lit8 v0, v0, -0x71

    int-to-short v0, v0

    invoke-static {v1, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v4

    const-string v6, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    cmp-long v7, v4, v2

    rsub-int/lit8 v4, v7, -0x1

    int-to-byte v4, v4

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v7

    cmp-long v5, v7, v2

    add-int/lit8 v5, v5, 0x1c

    invoke-static {p2, p3, v0, v4, v5}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide p1

    cmp-long p3, p1, v2

    add-int/lit8 p3, p3, 0x18

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result p1

    shr-int/lit8 p1, p1, 0x16

    add-int/lit8 p1, p1, 0x6e

    int-to-byte p1, p1

    invoke-static {v6, p3, p1}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsansan/m/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 81
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const-string v3, "s_rid"

    const-string v4, "page_portal"

    const-string v5, "sid"

    const-string v6, "ad_cache"

    const-string v7, "amp_app_id"

    .line 2
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    .line 3
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v10, "portal"

    .line 4
    move-object/from16 v11, p0

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "pkg"

    .line 5
    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "url"

    .line 6
    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v10

    invoke-virtual {v10, v2, v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v10, "exfo"

    const-string v12, ""

    const-string v0, "ad_id"

    const-string v13, "sourcetype"

    const/4 v14, 0x1

    if-eqz v1, :cond_9

    .line 10
    :try_start_1
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v11, :cond_0

    const-string v11, "placement_id"

    .line 11
    :try_start_2
    iget-object v15, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v9, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 14
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    const-string v0, "did"

    .line 17
    :try_start_3
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v0, "cpiparam"

    .line 18
    :try_start_4
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v0, "pid"

    .line 20
    :try_start_5
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v9, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v0, "creative_id"

    .line 22
    :try_start_6
    iget-object v5, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v0, "formatid"

    .line 23
    :try_start_7
    iget-object v5, v1, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string v0, "adnet"

    .line 24
    :try_start_8
    iget-object v5, v1, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, v1, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 26
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    .line 81
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/2addr v0, v14

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    const/4 v5, 0x2

    rem-int/2addr v0, v5

    if-eqz v0, :cond_2

    .line 26
    :cond_2
    nop

    .line 27
    :try_start_9
    invoke-virtual {v2, v13}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    nop

    .line 29
    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    const-string v0, "downid"

    .line 30
    :try_start_a
    iget-object v5, v1, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v1, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 52
    const/4 v5, 0x7

    goto :goto_0

    :cond_4
    const/16 v5, 0x1a

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 32
    :pswitch_0
    nop

    .line 33
    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :goto_1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 38
    :try_start_b
    invoke-virtual {v1, v7}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 52
    const/16 v4, 0x56

    goto :goto_2

    :cond_5
    const/4 v4, 0x5

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 38
    goto :goto_3

    :pswitch_1
    move-object v4, v12

    goto :goto_4

    :goto_3
    invoke-virtual {v1, v7}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-virtual {v0, v7, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 39
    invoke-virtual {v1, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_b
    .catch Lccsanorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    if-nez v4, :cond_7

    .line 52
    sget v4, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v4, v4, 0x75

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    if-nez v4, :cond_6

    .line 39
    :cond_6
    move-object v4, v12

    goto :goto_5

    :cond_7
    :try_start_c
    invoke-virtual {v1, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    nop

    .line 39
    :goto_5
    invoke-virtual {v0, v6, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 41
    invoke-virtual {v1, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 52
    const/4 v5, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :goto_6
    packed-switch v5, :pswitch_data_2

    .line 43
    invoke-virtual {v0, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :pswitch_2
    nop

    .line 45
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Lccsanorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_9
    if-eqz v2, :cond_a

    .line 52
    const/4 v3, 0x2

    goto :goto_7

    :cond_a
    const/16 v3, 0x36

    :goto_7
    packed-switch v3, :pswitch_data_3

    .line 81
    sget v3, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x6b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-nez v3, :cond_b

    .line 51
    :cond_b
    :try_start_d
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    if-nez v3, :cond_c

    .line 52
    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    packed-switch v3, :pswitch_data_4

    .line 81
    sget v3, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x73

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    if-eqz v3, :cond_d

    .line 52
    :try_start_e
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    const/4 v0, 0x0

    :try_start_f
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_9

    .line 81
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 51
    :cond_d
    nop

    .line 52
    :try_start_10
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_9
    :pswitch_3
    invoke-virtual {v2, v13}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    .line 45
    :goto_a
    nop

    .line 54
    :pswitch_4
    const-string v0, "tm"

    .line 58
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x16dff1a5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v0, v3

    const v3, -0x4f06fb81

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v11, v4, v6

    sub-int/2addr v3, v11

    invoke-static {v6, v7}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    const/16 v5, 0x1a

    add-int/2addr v4, v5

    int-to-short v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v5}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    int-to-byte v5, v11

    const/16 v11, 0x30

    invoke-static {v12, v11}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v12

    rsub-int/lit8 v12, v12, 0x4

    invoke-static {v0, v3, v4, v5, v12}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 59
    move-object/from16 v3, p3

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    const/16 v0, 0x14

    const-string v3, "2"

    const-string v4, "book"

    if-eqz v2, :cond_11

    const v5, 0x16dff1b1

    const/4 v12, 0x0

    invoke-static {v12, v12}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v13

    add-int/2addr v13, v5

    const v5, -0x4f06fb85

    invoke-static {v12}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v15

    const/4 v12, 0x0

    cmpl-float v15, v15, v12

    sub-int/2addr v5, v15

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    cmp-long v17, v15, v6

    add-int/lit8 v6, v17, 0x42

    int-to-short v6, v6

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v7

    cmpl-float v7, v7, v12

    sub-int/2addr v14, v7

    int-to-byte v7, v14

    invoke-static {v11}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v11

    rsub-int/lit8 v11, v11, 0x32

    invoke-static {v13, v5, v6, v7, v11}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 62
    :try_start_12
    iget-boolean v6, v2, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    if-eqz v6, :cond_e

    .line 52
    const/16 v6, 0x14

    goto :goto_b

    :cond_e
    const/16 v6, 0x61

    :goto_b
    packed-switch v6, :pswitch_data_5

    .line 62
    goto :goto_c

    :pswitch_5
    const-string v6, "true"

    goto :goto_d

    .line 81
    :goto_c
    const-string v6, "false"

    .line 62
    :goto_d
    :try_start_13
    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v5, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    if-nez v5, :cond_f

    const-string v5, "sub_portal"

    .line 64
    :try_start_14
    iget-object v6, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_f
    iget-object v5, v2, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 67
    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_10
    const-string v3, "is_book"

    .line 69
    invoke-virtual {v2, v3}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    goto :goto_e

    .line 69
    :cond_11
    nop

    .line 71
    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_e
    nop

    .line 73
    invoke-static {v2, v1}, Lccsansan/bw/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 74
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 75
    invoke-static {v3, v1, v2}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V

    .line 76
    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v1, "\u0001\u0002\u0003\u0004\u0005\u0006\u00c0\u00c0\u0000\r\t\n\u000b\u0008\u0002\u0003\u000b\u000c\u0005\n"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x5c

    int-to-byte v2, v2

    invoke-static {v1, v0, v2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v8, v0, v9}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    .line 81
    goto :goto_f

    .line 79
    :catch_1
    move-exception v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    rsub-int/lit8 v2, v2, 0x23

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x6a

    int-to-byte v3, v3

    const-string v4, "\u0007\u0008\u00d6\u00d6\u0014\u0007\u0007\u0005\u0002\u0003\u0004\u0000\u0008\t\n\u000b\u0008\u0000\u0003\u0006\u00ce\u00ce\u0012\u0008\u0005\n\u0011\u000f\u00dc\u00dc\n\u000e\u0011\u0013\u008a"

    invoke-static {v4, v2, v3}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-string v5, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    cmp-long v6, v1, v3

    add-int/lit8 v6, v6, 0x16

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x6e

    int-to-byte v1, v1

    invoke-static {v5, v6, v1}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x36
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x14
        :pswitch_5
    .end packed-switch
.end method

.method private static getDownloadingList()Ljava/lang/String;
    .locals 3

    .line 72
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/ab/removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
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

.method public static getDownloadingList(Lccsansan/f/IncentiveDownloadUtils;JJZ)V
    .locals 9

    .line 379
    const-string v0, ""

    .line 0
    const-wide/16 v1, 0x0

    const/16 v3, 0x17

    cmp-long v4, p1, v1

    if-eqz v4, :cond_2

    .line 379
    sget v4, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/2addr v4, v3

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 0
    :cond_0
    cmp-long v4, p1, p3

    if-eqz v4, :cond_1

    .line 379
    const/16 v4, 0x19

    goto :goto_0

    :cond_1
    const/16 v4, 0x34

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 0
    :cond_2
    const/16 v4, 0x14

    if-eqz p5, :cond_3

    .line 379
    const/16 p5, 0x14

    goto :goto_1

    :cond_3
    const/16 p5, 0x17

    :goto_1
    packed-switch p5, :pswitch_data_1

    .line 0
    goto :goto_2

    :pswitch_0
    const-string p5, "rename"

    goto :goto_3

    .line 379
    :goto_2
    const-string p5, "copy"

    .line 370
    :goto_3
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "content_id"

    .line 372
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "src_size"

    .line 373
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "target_size"

    .line 374
    :try_start_2
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "action"

    .line 375
    invoke-virtual {v5, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "task_class"

    .line 376
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const p1, 0x16dff28b

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p2

    add-int/2addr p2, p1

    const p1, -0x4f06fba2

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p3

    add-int/2addr p3, p1

    invoke-static {v7}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x22

    int-to-short p1, p1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p4

    shr-int/lit8 p4, p4, 0x10

    int-to-byte p4, p4

    invoke-static {v1, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result p5

    add-int/lit8 p5, p5, 0x13

    invoke-static {p2, p3, p1, p4, p5}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 379
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    .line 377
    :catch_0
    move-exception p0

    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#collectMoveFileException error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v3

    invoke-static {v7}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result p2

    add-int/2addr p2, v4

    shr-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x6e

    int-to-byte p2, p2

    const-string p3, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {p3, p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
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

    .line 100
    nop

    .line 99
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 100
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

    const/4 p1, 0x0

    invoke-static {p1}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x18

    const-string p2, ""

    invoke-static {p2}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x6f

    int-to-byte p2, p2

    const-string v0, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {v0, p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static removeDownloadListener(Lccsancom/san/xz/base/XzRecord;ZZ)V
    .locals 12

    .line 325
    const-string v0, "_"

    .line 311
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getStatsInfo()Lccsancom/san/xz/base/XzRecord$StatsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getErrorMsg()Lccsansan/aw/getDownloadingRecordByUrl;

    move-result-object v2

    .line 312
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "content_id"

    .line 313
    :try_start_1
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "content_type"

    .line 314
    :try_start_2
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "result"

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    .line 325
    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 315
    if-eqz p1, :cond_5

    goto :goto_2

    .line 325
    :pswitch_0
    sget p1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    .line 315
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->isReallyStart()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p1, :cond_2

    .line 325
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 315
    const-string p1, "delete"

    goto :goto_4

    :pswitch_1
    nop

    .line 325
    sget p1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    .line 315
    const-string p1, "delete_after_start"

    goto :goto_4

    .line 325
    :goto_2
    sget p1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 315
    :cond_3
    if-nez v2, :cond_4

    .line 325
    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_2

    .line 315
    const-string p1, "retry_success"

    goto :goto_4

    :pswitch_2
    const-string p1, "success"

    goto :goto_4

    :cond_5
    const-string p1, "failed"

    :goto_4
    :try_start_4
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "failed_msg"

    const/16 p2, 0x27

    if-nez v2, :cond_6

    .line 325
    const/16 v4, 0x25

    goto :goto_5

    :cond_6
    const/16 v4, 0x27

    :goto_5
    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_3

    .line 316
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    goto :goto_6

    .line 315
    :pswitch_3
    move-object v0, v6

    goto :goto_7

    .line 316
    :goto_6
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/aw/getDownloadingRecordByUrl;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 325
    sget v2, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    .line 316
    :goto_7
    :try_start_6
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "app_portal"

    const-string v0, "unknown_portal"

    .line 317
    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "size"

    const-string v0, "%d"

    .line 318
    :try_start_7
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p1, "total_duration"

    .line 319
    :try_start_8
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getReallyStartTime()J

    move-result-wide v4

    const/16 v0, 0xf

    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-lez v2, :cond_7

    .line 325
    const/16 v2, 0xf

    goto :goto_8

    :cond_7
    const/16 v2, 0x15

    :goto_8
    packed-switch v2, :pswitch_data_4

    .line 319
    :goto_9
    goto :goto_a

    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getReallyStartTime()J

    move-result-wide v9

    sub-long/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :goto_a
    invoke-virtual {v3, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const p1, 0x16dff27b

    invoke-static {v7, v8}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    add-int/2addr v2, p1

    const p1, -0x4f06fb82

    invoke-static {v1, v1}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v4

    sub-int/2addr p1, v4

    const/16 v4, 0x30

    const-string v5, ""

    invoke-static {v5, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x6f

    int-to-short v4, v4

    invoke-static {v5, v1}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v1, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v9

    cmp-long v11, v9, v7

    add-int/lit8 v11, v11, 0xa

    invoke-static {v2, p1, v4, v6, v11}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 320
    :try_start_9
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getDuration()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p1, "complete_size"

    .line 321
    :try_start_a
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p1, "speed"

    .line 322
    :try_start_b
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getDuration()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-nez v2, :cond_8

    .line 325
    goto :goto_b

    :cond_8
    const/16 p2, 0xf

    :goto_b
    packed-switch p2, :pswitch_data_5

    .line 322
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_c

    :pswitch_5
    nop

    .line 325
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_9

    goto :goto_d

    .line 322
    :goto_c
    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    :try_start_c
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getDuration()J

    move-result-wide v8

    div-long v7, v6, v8

    :cond_9
    :goto_d
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "\u0019\r\u0007\u0011\u0005\u0000\u0008\t\n\u000b\u0008\u0000\u0001\u001e\u0011\u0000\u0018\u000c\u00e1"

    invoke-static {v1, v1}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x13

    invoke-static {v5, v1}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x6d

    int-to-byte v0, v0

    invoke-static {p1, p2, v0}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 325
    goto :goto_e

    .line 323
    :catch_0
    move-exception p0

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    rsub-int/lit8 p2, p2, 0x24

    invoke-static {v1}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x21

    int-to-byte v0, v0

    const-string v1, "\u0007\u0008\u008d\u008d\u0014\u0007\r\u0005\u0008\t\n\u000b\u0008\u0000\u0001\u001e\u0011\u0000\u0018\u000c\u0013\u001a\u0008\u0005\u0013!\u0002\u0011\u000f\u0012\u000e\n\u0012\u0011\u0013\u0011"

    invoke-static {v1, p2, v0}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    const/4 p2, 0x0

    const-string v0, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    cmpl-float p1, p1, p2

    rsub-int/lit8 p1, p1, 0x18

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0x6e

    int-to-byte p2, p2

    invoke-static {v0, p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
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

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x25
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xf
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x27
        :pswitch_5
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsancom/san/xz/base/XzRecord;ZZZ)V
    .locals 17

    .line 278
    move/from16 v0, p1

    move/from16 v1, p3

    const-string v2, "%d"

    const-string v3, "_"

    .line 241
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getStatsInfo()Lccsancom/san/xz/base/XzRecord$StatsInfo;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getErrorMsg()Lccsansan/aw/getDownloadingRecordByUrl;

    move-result-object v5

    .line 242
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    .line 243
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "content_id"

    .line 245
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v9

    invoke-virtual {v9}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "result"

    if-eqz v1, :cond_1

    .line 246
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->isReallyStart()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete_after_start_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getStatus()Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_0
    const-string v9, "delete"

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    if-nez v5, :cond_2

    const-string v9, "success"

    goto :goto_0

    .line 278
    :cond_2
    sget v9, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v9, v9, 0xd

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_3

    :cond_3
    const-string v9, "retry_success"

    goto :goto_0

    :cond_4
    const-string v9, "failed"

    .line 246
    :goto_0
    :try_start_3
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v8, "name"

    .line 247
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v8, "size"

    .line 248
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v9

    invoke-static {v9, v10}, Lccsansan/au/getDownloadingList;->removeDownloadListener(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v9, "end_network"

    .line 250
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getStatsInfo()Lccsancom/san/xz/base/XzRecord$StatsInfo;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getNetwork()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v11

    invoke-virtual {v11}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v9, "speed"

    .line 251
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getStatsInfo()Lccsancom/san/xz/base/XzRecord$StatsInfo;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getAverageSpeed()J

    move-result-wide v11

    invoke-static {v11, v12}, Lccsansan/bt/IncentiveDownloadUtils;->getDownloadingList(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v9, "failed_msg"

    const/4 v10, 0x0

    if-nez v5, :cond_5

    move-object v3, v10

    goto :goto_1

    .line 252
    :cond_5
    :try_start_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lccsansan/aw/getDownloadingRecordByUrl;->addDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v7, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "app_portal"

    const-string v9, "unknown_portal"

    .line 253
    invoke-virtual {v7, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v3, "size_ex"

    .line 254
    const/4 v9, 0x1

    :try_start_9
    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v2, v11}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v3, "speed_ex"

    .line 255
    :try_start_a
    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getStatsInfo()Lccsancom/san/xz/base/XzRecord$StatsInfo;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/san/xz/base/XzRecord$StatsInfo;->getAverageSpeed()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v2, v11}, Lccsansan/bw/getName;->removeDownloadListener(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v2, "total_duration"

    .line 256
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getReallyStartTime()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v3, v11, v13

    if-lez v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getReallyStartTime()J

    move-result-wide v15

    sub-long/2addr v10, v15

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    :cond_6
    invoke-virtual {v7, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v2, "stats_count"

    .line 257
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getStatsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v2, "refresh_count"

    .line 258
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getRefreshCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v2, "source"

    .line 259
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v8}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    if-nez v2, :cond_7

    const-string v2, "dl_src"

    .line 261
    :try_start_f
    invoke-virtual {v8}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :cond_7
    const-string v2, "isCached"

    if-eqz p2, :cond_9

    .line 278
    sget v3, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x35

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    .line 267
    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 261
    goto :goto_3

    .line 278
    :pswitch_0
    const/16 v3, 0x5d

    :try_start_10
    div-int/2addr v3, v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :goto_3
    const-string v3, "true"

    goto :goto_4

    .line 261
    :cond_9
    const-string v3, "false"

    .line 262
    :goto_4
    :try_start_11
    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v2, "portal"

    .line 263
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getPortal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->addStatsCount()V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v2

    sget-object v3, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    if-ne v2, v3, :cond_b

    .line 278
    sget v2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    const-string v3, ""

    const-string v8, "\u0002\u001a\u0019\u0002\u0000\r\t\n\u000b\u0008\u0002\u0003\u001c\u000f\u0005\u0018\u000b\r"

    if-eqz v2, :cond_a

    :try_start_13
    invoke-static {v4, v4}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x3b

    const/16 v10, 0x74

    invoke-static {v3, v10, v9}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x67

    int-to-byte v3, v3

    invoke-static {v8, v2, v3}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 266
    :cond_a
    invoke-static {v4, v4}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    const/16 v10, 0x30

    invoke-static {v3, v10, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x23

    int-to-byte v3, v3

    invoke-static {v8, v2, v3}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 267
    :goto_5
    invoke-static {v6, v2, v7}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 269
    :cond_b
    move-object/from16 v2, p0

    invoke-static {v2, v0, v1}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsancom/san/xz/base/XzRecord;ZZ)V

    if-eqz v5, :cond_d

    .line 271
    invoke-virtual {v5}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener()I

    move-result v0

    if-ne v0, v9, :cond_c

    .line 267
    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    packed-switch v0, :pswitch_data_1

    .line 272
    invoke-static {v5}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aw/getDownloadingRecordByUrl;)V

    goto/16 :goto_9

    :cond_d
    :pswitch_1
    const/16 v0, 0x15

    if-eqz v5, :cond_f

    .line 273
    invoke-virtual {v5}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener()I

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_f

    .line 278
    sget v1, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_e

    .line 273
    :cond_e
    const v1, 0x16dff211

    :try_start_14
    invoke-static {v4}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    shr-int/lit8 v2, v2, 0x6

    add-int/2addr v2, v1

    const v1, -0x4f06fba2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    sub-int/2addr v1, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x5a

    int-to-short v3, v3

    invoke-static {v4}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    int-to-byte v5, v5

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v0, v6

    invoke-static {v2, v1, v3, v5, v0}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lccsansan/bn/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_f
    if-eqz v5, :cond_10

    .line 267
    goto :goto_7

    :cond_10
    const/4 v9, 0x0

    :goto_7
    packed-switch v9, :pswitch_data_2

    :pswitch_2
    goto :goto_9

    .line 275
    :pswitch_3
    invoke-virtual {v5}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    .line 267
    const/16 v0, 0x16

    goto :goto_8

    :cond_11
    nop

    :goto_8
    packed-switch v0, :pswitch_data_3

    .line 275
    const-string v0, "\u0000\r\t\n\u000b\u0008\u0002\u0003\u0006\u0019\u000c\u000b\u0012\u001c\u0008\r\u0015\r\u0017\u000c\u0005\u0010\u0008\u0005\u0013!\u00aa"

    invoke-static {v4, v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v1

    cmp-long v3, v1, v13

    add-int/lit8 v3, v3, 0x1c

    invoke-static {v4}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x37

    int-to-byte v1, v1

    invoke-static {v0, v3, v1}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lccsansan/bn/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-static {v4, v4}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x5d

    int-to-byte v3, v3

    const-string v4, "\u0007\u0008\u00c9\u00c9\u0014\u0007\r\u000c\u0008\n\u0000\r\t\n\u000b\u0008\u0002\u0003\u001c\u000f\u0005\u0018\u000b\r\u0011\u000f\u00cf\u00cf\n\u000e\u0011\u0013}"

    invoke-static {v4, v2, v3}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x17

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x6e

    int-to-byte v2, v2

    const-string v3, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {v3, v1, v2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
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
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x15
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 2208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 2212
    :try_start_0
    sget-object v1, Lccsansan/bn/getDownloadingList;->getDownloadedRecordByUrl:[C

    .line 2213
    nop

    .line 2214
    sget-char v2, Lccsansan/bn/getDownloadingList;->deleteDownItem:C

    .line 2215
    nop

    .line 2216
    nop

    .line 2218
    new-array v3, p1, [C

    .line 2221
    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 2223
    add-int/lit8 p1, p1, -0x1

    .line 2224
    aget-char v4, p0, p1

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, p1

    .line 2227
    :cond_1
    const/4 v4, 0x1

    if-le p1, v4, :cond_5

    .line 2229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p1, :cond_5

    .line 2233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 2234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 2237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 2239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 2240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_1

    .line 2245
    :cond_2
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 2246
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 2247
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 2248
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 2251
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    if-ne v5, v6, :cond_3

    .line 2253
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 2254
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 2256
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 2257
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 2259
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 2260
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 2261
    goto :goto_1

    .line 2264
    :cond_3
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    if-ne v5, v6, :cond_4

    .line 2266
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 2267
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 2269
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 2270
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 2272
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 2273
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 2274
    goto :goto_1

    .line 2281
    :cond_4
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v6

    .line 2282
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v6, v7

    .line 2284
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 2285
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 2229
    :goto_1
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    goto/16 :goto_0

    .line 2291
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2292
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static unifiedDownload(Lccsancom/san/xz/base/XzRecord;)V
    .locals 11

    .line 347
    nop

    .line 328
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    .line 329
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "content_id"

    .line 330
    :try_start_1
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v6

    invoke-virtual {v6}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "name"

    .line 331
    :try_start_2
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "size"

    .line 332
    :try_start_3
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lccsansan/au/getDownloadingList;->removeDownloadListener(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v5, "source"

    .line 333
    :try_start_4
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "app_portal"

    const-string v6, "unknown_portal"

    .line 334
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v5, "status"

    .line 335
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v7

    invoke-virtual {v7}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v7

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Lccsansan/ad/unifiedDownload;->addDownloadListener(J)Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 347
    const/4 v7, 0x0

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :goto_0
    packed-switch v7, :pswitch_data_0

    sget v7, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v7, v7, 0x69

    rem-int/lit16 v9, v7, 0x80

    sput v9, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    goto :goto_1

    .line 335
    :pswitch_0
    const-string v7, "not_enough"

    goto :goto_2

    :cond_1
    :goto_1
    const-string v7, "enough"

    :goto_2
    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v5, "size_ex"

    .line 336
    :try_start_7
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v5

    .line 339
    invoke-virtual {v5}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-nez v6, :cond_2

    .line 347
    const/16 v6, 0x38

    goto :goto_3

    :cond_2
    const/16 v6, 0x5f

    :goto_3
    packed-switch v6, :pswitch_data_1

    sget v6, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v6, v6, 0x1d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    .line 339
    :cond_3
    const-string v6, "dl_src"

    .line 340
    :try_start_8
    invoke-virtual {v5}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :pswitch_1
    const-string v5, "portal"

    .line 341
    :try_start_9
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getPortal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object p0

    sget-object v5, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-ne p0, v5, :cond_5

    .line 347
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/2addr p0, v8

    rem-int/lit16 v5, p0, 0x80

    sput v5, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    .line 343
    :cond_4
    :try_start_a
    const-string p0, "\u0002\u001a\u0019\u0002\u0000\r\t\n\u000b\u0008\u0002\u0003\u001c\u000f\u0003\u0008\t&\u001a\u0013\u0003\u000f\u00d8"

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v5

    cmp-long v7, v5, v0

    rsub-int/lit8 v5, v7, 0x18

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    add-int/lit8 v6, v6, 0x64

    int-to-byte v6, v6

    invoke-static {p0, v5, v6}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 344
    invoke-static {v3, p0, v4}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 347
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x3d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_4

    .line 344
    :catch_0
    move-exception p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v3

    const-string v5, ""

    const-string v6, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    const-string v7, "\u0007\u0008\u00d6\u00d6\u0014\u0007\r\u000c\u0008\n\u001a\u0013\u0003\u000f\u0008!\u000f\u0000\u00d6\u00d6)\u0002\u0008\t\n\u000b\u0008\u0000\u00ce"

    cmp-long v8, v3, v0

    add-int/lit8 v8, v8, 0x16

    invoke-static {v5}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x6d

    int-to-byte v0, v0

    invoke-static {v6, v8, v0}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1d

    invoke-static {v5, v2, v2}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/lit8 v2, v2, 0x6a

    int-to-byte v2, v2

    invoke-static {v7, v1, v2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v0, v1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5f
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V
    .locals 9

    .line 240
    const-string v0, ""

    .line 227
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    .line 228
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "content_id"

    .line 229
    :try_start_1
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "name"

    .line 230
    :try_start_2
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "size"

    .line 231
    :try_start_3
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Lccsansan/au/getDownloadingList;->removeDownloadListener(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "source"

    .line 232
    :try_start_4
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "portal"

    .line 233
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "app_portal"

    const-string v4, "unknown_portal"

    .line 234
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "status"

    .line 235
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v5

    invoke-virtual {v5}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v5

    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Lccsansan/ad/unifiedDownload;->addDownloadListener(J)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v5, :cond_0

    .line 240
    const/16 v5, 0x45

    goto :goto_0

    :cond_0
    const/16 v5, 0x2f

    :goto_0
    const-string v6, "enough"

    packed-switch v5, :pswitch_data_0

    sget v5, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v5, v5, 0x33

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    goto :goto_1

    .line 235
    :pswitch_0
    const-string v6, "not_enough"

    goto :goto_2

    .line 240
    :goto_1
    const/16 v5, 0x56

    :try_start_6
    div-int/2addr v5, v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 235
    :cond_1
    nop

    :goto_2
    :try_start_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p1, "size_ex"

    .line 236
    :try_start_8
    invoke-virtual {p0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "\u0002\u001a\u0019\u0002\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0003\u000f\u00c2"

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    rsub-int/lit8 p1, p1, 0x12

    const/16 v4, 0x30

    invoke-static {v0, v4, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    add-int/lit8 v4, v4, 0x4f

    int-to-byte v4, v4

    invoke-static {p0, p1, v4}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-static {v2, p0, v3}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 240
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_3

    .line 238
    :catch_0
    move-exception p0

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static {v1}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    const-string v3, "\u0007\u0008oo\u0014\u0007\r\u000c\u0008\n\u001a\u0013\u0003\u000f\r\u0005\u0008\t\n\u000b\u0008\u0000\u0003\u0006ss!\t\u0011\u001c\u0011\u000fuu\n\u000e\u0011\u0013#"

    invoke-static {v3, v0, v2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x17

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v0

    shr-int/lit8 v0, v0, 0x16

    add-int/lit8 v0, v0, 0x6e

    int-to-byte v0, v0

    const-string v2, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {v2, p1, v0}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_4

    :cond_2
    const/4 p0, 0x0

    :goto_4
    packed-switch p0, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p0, 0x13

    :try_start_9
    div-int/2addr p0, v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 151
    const-string v0, ""

    .line 82
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    .line 83
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "portal"

    .line 84
    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "url"

    .line 85
    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pkg"

    .line 86
    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v5

    invoke-virtual {v5, p2, p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p1

    const-string v5, "ad"

    .line 89
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "downid"

    const-string v6, "sub_portal"

    const-string v7, "cpiparam"

    const-string v8, "sourcetype"

    if-eqz p0, :cond_e

    if-eqz p1, :cond_1

    .line 91
    :try_start_1
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_1

    .line 151
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 v9, p0, 0x80

    sput v9, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    .line 92
    :cond_0
    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    iget-object v9, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {p0, v9, p2}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p0

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, p2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :goto_0
    nop

    .line 151
    nop

    .line 94
    if-eqz p0, :cond_2

    .line 118
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :goto_1
    const-string v9, "ad_id"

    packed-switch p2, :pswitch_data_0

    .line 97
    :try_start_3
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 115
    :pswitch_0
    if-eqz p1, :cond_5

    .line 151
    sget p0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    .line 118
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    packed-switch p0, :pswitch_data_1

    :try_start_4
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 p2, 0x0

    :try_start_5
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p0, :cond_4

    goto :goto_4

    .line 151
    :catchall_0
    move-exception p0

    throw p0

    .line 118
    :goto_3
    :try_start_6
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 119
    :goto_4
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v4, v9, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    nop

    .line 121
    invoke-virtual {p1, v8}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_5
    :goto_5
    goto/16 :goto_a

    .line 97
    :goto_6
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez p2, :cond_6

    .line 118
    const/4 p2, 0x0

    goto :goto_7

    :cond_6
    const/4 p2, 0x1

    :goto_7
    packed-switch p2, :pswitch_data_2

    .line 97
    const-string p2, "placement_id"

    .line 98
    :try_start_7
    iget-object v10, p0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v4, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :pswitch_2
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 101
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v4, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    nop

    .line 103
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p2, "did"

    .line 104
    :try_start_8
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p2, p0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v4, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string p2, "pid"

    .line 107
    :try_start_9
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p2, "creative_id"

    .line 108
    :try_start_a
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p2, "formatid"

    .line 109
    :try_start_b
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string p2, "adnet"

    .line 110
    :try_start_c
    iget-object v5, p0, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v4, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object p0, p0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 112
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    if-eqz p2, :cond_a

    .line 151
    sget p2, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x9

    rem-int/lit16 v5, p2, 0x80

    sput v5, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_8

    .line 112
    :cond_8
    if-eqz p1, :cond_9

    .line 118
    const/4 p2, 0x1

    goto :goto_8

    :cond_9
    const/4 p2, 0x0

    :goto_8
    packed-switch p2, :pswitch_data_3

    goto :goto_9

    .line 112
    :pswitch_3
    nop

    .line 113
    :try_start_d
    invoke-virtual {p1, v8}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_a
    :goto_9
    nop

    .line 115
    invoke-virtual {v4, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_5

    .line 121
    :goto_a
    if-eqz p1, :cond_b

    .line 118
    const/16 p0, 0x15

    goto :goto_b

    :cond_b
    const/16 p0, 0x56

    :goto_b
    const-string p2, "2"

    const-string v5, "book"

    packed-switch p0, :pswitch_data_4

    .line 131
    goto :goto_e

    .line 125
    :pswitch_4
    :try_start_e
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 126
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v4, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    nop

    .line 128
    :cond_c
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 118
    const/4 p0, 0x1

    goto :goto_c

    :cond_d
    const/4 p0, 0x0

    :goto_c
    packed-switch p0, :pswitch_data_5

    .line 128
    goto :goto_d

    .line 129
    :pswitch_5
    const-string p0, "is_book"

    .line 131
    invoke-virtual {p1, p0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 129
    :goto_d
    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 133
    :goto_e
    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_f
    goto :goto_11

    .line 133
    :cond_e
    if-eqz p1, :cond_f

    .line 118
    const/16 p0, 0x43

    goto :goto_10

    :cond_f
    const/4 p0, 0x5

    :goto_10
    packed-switch p0, :pswitch_data_6

    .line 137
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_10

    .line 138
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v4, v6, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_10
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    .line 141
    iget-object p0, p1, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v4, v5, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    nop

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1, v8}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :goto_11
    nop

    .line 144
    :pswitch_6
    const-string p0, "pause_type"

    .line 148
    invoke-virtual {v4, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "\u0006\u0000\u0005\u0000\u0008\t\n\u000b\u0008\u0000\u0003\u0006\u0018\u0019\u0016\u0004\u0018\u0005\u00b0"

    invoke-static {v0, v2, v2}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result p2

    shr-int/lit8 p2, p2, 0x8

    rsub-int/lit8 p2, p2, 0x4b

    int-to-byte p2, p2

    invoke-static {p0, p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {v3, p0, v4}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_12

    :catch_0
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const p2, 0x16dff1ba

    invoke-static {v2, v2}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result p3

    add-int/2addr p3, p2

    const p2, -0x4f06fb83

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/2addr v3, p2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, -0x1b

    int-to-short p2, p2

    invoke-static {v2}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-byte v1, v4

    invoke-static {v2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v4, v4, 0x17

    invoke-static {p3, v3, p2, v1, v4}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x17

    invoke-static {v2, v2}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x6e

    int-to-byte p2, p2

    const-string p3, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {p3, p1, p2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x15
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5
        :pswitch_6
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    .line 226
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, ""

    .line 152
    const/16 v4, 0x30

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    .line 153
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v8, "portal"

    .line 154
    invoke-virtual {v7, v8, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "url"

    .line 155
    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "pkg"

    .line 156
    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v8

    invoke-virtual {v8, v2, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v1

    const-string v8, "ad"

    .line 159
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "downid"

    const-string v9, "sub_portal"

    const-string v10, "cpiparam"

    const/4 v11, 0x1

    const-string v12, "sourcetype"

    if-eqz v0, :cond_11

    .line 162
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v13, v0, 0x80

    sput v13, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    :try_start_1
    div-int/2addr v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 196
    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x62

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 162
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 159
    :cond_1
    if-eqz v1, :cond_3

    .line 161
    :pswitch_0
    :try_start_2
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_3

    .line 226
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v13, v0, 0x80

    sput v13, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 162
    :try_start_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v13, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0, v13, v2}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v2, 0x62

    :try_start_4
    div-int/2addr v2, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 226
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 162
    :cond_2
    :try_start_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v13, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v0, v13, v2}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    goto :goto_2

    .line 164
    :cond_3
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 226
    nop

    .line 162
    :goto_2
    nop

    .line 164
    const-string v2, "ad_id"

    if-eqz v0, :cond_7

    .line 167
    :try_start_6
    iget-object v13, v0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v13}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v13, :cond_4

    const-string v13, "placement_id"

    .line 168
    :try_start_7
    iget-object v14, v0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_4
    iget-object v13, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v13}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 171
    iget-object v13, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v7, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    nop

    .line 173
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "did"

    .line 174
    :try_start_8
    iget-object v8, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v7, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v2, "pid"

    .line 177
    :try_start_9
    iget-object v8, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v2, "creative_id"

    .line 178
    :try_start_a
    iget-object v8, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v2, "formatid"

    .line 179
    :try_start_b
    iget-object v8, v0, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v2, "adnet"

    .line 180
    :try_start_c
    iget-object v8, v0, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, v0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 182
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 183
    invoke-virtual {v1, v12}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    nop

    .line 185
    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_a

    .line 196
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v8, v0, 0x80

    sput v8, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    .line 188
    :cond_8
    :try_start_d
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 196
    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 189
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :pswitch_1
    nop

    .line 191
    invoke-virtual {v1, v12}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 185
    :cond_a
    :goto_4
    nop

    .line 191
    if-eqz v1, :cond_b

    .line 196
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    const/4 v0, 0x1

    :goto_5
    const-string v2, "2"

    const-string v8, "book"

    packed-switch v0, :pswitch_data_2

    .line 162
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    const/16 v10, 0xf

    add-int/2addr v0, v10

    rem-int/lit16 v12, v0, 0x80

    sput v12, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    goto :goto_7

    .line 202
    :pswitch_2
    nop

    .line 204
    :try_start_e
    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :goto_6
    goto/16 :goto_e

    .line 196
    :goto_7
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/4 v12, 0x0

    :try_start_f
    invoke-super {v12}, Ljava/lang/Object;->hashCode()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v0, :cond_f

    :pswitch_3
    goto :goto_9

    .line 162
    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 196
    :cond_c
    :try_start_10
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    if-nez v0, :cond_d

    const/16 v0, 0x4f

    goto :goto_8

    :cond_d
    const/16 v0, 0x19

    :goto_8
    packed-switch v0, :pswitch_data_3

    goto :goto_a

    .line 162
    :goto_9
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v12, v0, 0x80

    sput v12, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    .line 196
    :cond_e
    nop

    .line 197
    :try_start_11
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_f
    :goto_a
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 196
    goto :goto_b

    :cond_10
    const/16 v10, 0x3f

    :goto_b
    packed-switch v10, :pswitch_data_4

    .line 199
    goto :goto_c

    .line 200
    :pswitch_4
    const-string v0, "is_book"

    .line 202
    invoke-virtual {v1, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 200
    :goto_c
    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 196
    sget v0, Lccsansan/bn/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/getDownloadingList;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_e

    .line 204
    :cond_11
    if-eqz v1, :cond_14

    .line 208
    :try_start_12
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 196
    const/4 v0, 0x0

    goto :goto_d

    :cond_12
    const/4 v0, 0x1

    :goto_d
    packed-switch v0, :pswitch_data_5

    .line 209
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :pswitch_5
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 212
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    nop

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-virtual {v1, v12}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 200
    :goto_e
    nop

    .line 215
    :cond_14
    const-string v0, "result"

    .line 219
    move-object/from16 v1, p3

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const-string v0, "track_type"

    .line 220
    :try_start_13
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, p5

    if-ne v0, v11, :cond_15

    const-string v0, "track_url"

    .line 222
    move-object/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const v0, 0x16dff1fc

    invoke-static {v5, v5, v5}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    add-int/2addr v1, v0

    const v0, -0x4f06fba4

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v0

    int-to-byte v0, v0

    rsub-int/lit8 v0, v0, -0x27

    int-to-short v0, v0

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    add-int/lit8 v12, v12, -0x1

    int-to-byte v8, v12

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v9

    shr-int/lit8 v9, v9, 0x10

    rsub-int/lit8 v9, v9, 0xe

    invoke-static {v1, v2, v0, v8, v9}, Lccsansan/bn/getDownloadingList;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v6, v0, v7}, Lccsansan/bn/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-static {v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x7b

    int-to-byte v5, v5

    const-string v6, "\u0007\u0008\u00e7\u00e7\u0014\u0007\u0013\u000c\u0003\u0000\u0008\t\n\u000b\u0008\u0000\u0000\u001e\u000f\u0003\n\u001b\u001c\u000f\u0005\u0018\u000b\r\u0011\u000f\u00ed\u00ed\n\u000e\u0011\u0013\u009b"

    invoke-static {v6, v2, v5}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x17

    invoke-static {v3, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/lit8 v2, v2, 0x6f

    int-to-byte v2, v2

    const-string v3, "\u001a\u0013\u0005\u0008\u0006\u0011\u0006\u0003\u0000\r\t\n\u000b\u0008\u0002\u0003\u001a\u0013\u0005\u0008\u0000\u0018\u00e6"

    invoke-static {v3, v1, v2}, Lccsansan/bn/getDownloadingList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x50
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
    .packed-switch 0x4f
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3f
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method
