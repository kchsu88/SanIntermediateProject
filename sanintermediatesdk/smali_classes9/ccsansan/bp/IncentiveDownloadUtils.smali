.class public Lccsansan/bp/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static addDownloadListener:I

.field private static deleteDownItem:[B

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:[S

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:I

.field public static final removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    invoke-static {}, Lccsansan/bp/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    const/16 v0, 0x5c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bp/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    const/16 v0, 0xf3

    sput v0, Lccsansan/bp/IncentiveDownloadUtils;->removeDownloadListener:I

    sget v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x7at
        -0x22t
        -0x73t
        0xft
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x17t
        0x2et
        0x1t
        0x8t
        -0xdt
        0x15t
        -0x2t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x44t
        -0x1t
        -0x3dt
        0x24t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x1at
        0x27t
        0x7t
        0x3t
        -0x11t
        0xdt
        0x2t
        -0x5t
        0xft
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
    .end array-data
.end method

.method static IncentiveDownloadUtils()V
    .locals 1

    const/16 v0, 0x61

    sput v0, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener:I

    const v0, 0x599fe39d

    sput v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingList:I

    const v0, 0x34eae323

    sput v0, Lccsansan/bp/IncentiveDownloadUtils;->unifiedDownload:I

    const/16 v0, 0x8f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bp/IncentiveDownloadUtils;->deleteDownItem:[B

    return-void

    :array_0
    .array-data 1
        -0x3dt
        -0x33t
        -0x3dt
        0x37t
        0x3dt
        0x36t
        -0x3bt
        0x4t
        -0x1et
        0x3ft
        -0x3ft
        0x39t
        -0x3dt
        0x3et
        -0x3dt
        0x3dt
        0x12t
        -0x26t
        0x22t
        -0x74t
        0x37t
        -0x3dt
        -0x31t
        0x69t
        -0x6dt
        0x36t
        -0x3bt
        0x31t
        0x7ft
        -0x76t
        0x3et
        0x35t
        -0x2dt
        0x3ft
        0x3bt
        0x3bt
        -0x3ft
        -0x2at
        -0x29t
        0x2bt
        -0x2ct
        0x2ft
        -0x2at
        -0x79t
        0x78t
        -0x2ft
        -0x2bt
        -0x66t
        0x67t
        -0x24t
        0x25t
        -0x2bt
        0x2et
        -0x2et
        -0x6dt
        0x13t
        0x27t
        0x29t
        -0x23t
        -0x29t
        -0x24t
        0x2ft
        -0x6et
        0x60t
        -0x2ct
        -0x21t
        0x39t
        -0x2bt
        -0x2ft
        -0x2ft
        -0x38t
        -0x47t
        -0x4et
        0x54t
        -0x48t
        -0x44t
        -0x44t
        0x53t
        -0x4ct
        -0x4ct
        0x40t
        -0x47t
        -0x4et
        0x54t
        -0x48t
        -0x44t
        -0x44t
        0x53t
        -0x5dt
        0x47t
        -0x41t
        0x4ft
        -0x4ft
        -0x45t
        0x48t
        -0x65t
        0x79t
        0x46t
        -0x41t
        0x4ct
        -0x58t
        -0x45t
        -0x76t
        0x7t
        -0x47t
        -0x4at
        -0x76t
        0x6t
        -0x49t
        0x41t
        0x45t
        -0x4ft
        0x53t
        -0x5et
        0x59t
        0x57t
        -0x52t
        0x5et
        -0x58t
        -0x5at
        0x5at
        -0x44t
        0x5bt
        -0x58t
        -0x5dt
        0x45t
        -0x57t
        -0x53t
        -0x53t
        -0x53t
        0x36t
        0x38t
        0x34t
        -0x3et
        -0x35t
        0x14t
        -0x2et
        0x36t
        0x3dt
        -0x25t
        0x37t
        0x33t
        0x13t
    .end array-data
.end method

.method private static addDownloadListener(BII)Ljava/lang/String;
    .locals 9

    sget v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/bp/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    const/16 v5, 0x9

    rem-int/2addr v5, p0

    add-int/lit8 p0, v5, 0x24

    rsub-int/lit8 p2, p2, 0x4

    const/16 v5, 0x67

    ushr-int p2, v5, p2

    const/4 v5, 0x3

    shr-int p1, v5, p1

    add-int/lit8 p1, p1, 0x21

    new-array v5, p2, [B

    const/16 v6, 0x4f

    add-int/2addr p2, v6

    if-nez v0, :cond_2

    goto :goto_2

    :pswitch_0
    sget-object v0, Lccsansan/bp/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    mul-int/lit8 p2, p2, 0x2

    rsub-int/lit8 p2, p2, 0x21

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x4b

    new-array v5, p2, [B

    add-int/lit8 p2, p2, -0x1

    if-nez v0, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    packed-switch v6, :pswitch_data_1

    const/4 v1, 0x0

    goto :goto_6

    :pswitch_1
    const/4 v6, 0x0

    goto :goto_3

    :goto_2
    const/16 v6, 0x3e

    :cond_2
    packed-switch v6, :pswitch_data_2

    const/4 v1, 0x1

    goto :goto_6

    :pswitch_2
    const/4 v6, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 v7, v1, 0x80

    sput v7, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_3

    goto :goto_5

    :pswitch_3
    :try_start_0
    array-length v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    throw p0

    :goto_5
    move-object v1, v0

    move v0, p2

    move p2, p1

    goto :goto_7

    :goto_6
    int-to-byte v6, p0

    aput-byte v6, v5, v1

    if-ne v1, p2, :cond_5

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    packed-switch v2, :pswitch_data_4

    return-object p0

    :pswitch_4
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :cond_5
    add-int/2addr p1, v3

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v0, p1

    move v8, p2

    move p2, p1

    move p1, v1

    move-object v1, v0

    move v0, v8

    :goto_7
    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x2

    move p1, p2

    move p2, v0

    move-object v0, v1

    move v1, v6

    goto :goto_6

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
    .packed-switch 0x3e
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method private static addDownloadListener(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener:I

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
    sget-object p4, Lccsansan/bp/IncentiveDownloadUtils;->deleteDownItem:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/bp/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedRecordByUrl:[S

    sget v6, Lccsansan/bp/IncentiveDownloadUtils;->unifiedDownload:I

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

    sget v2, Lccsansan/bp/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingList:I

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
    sget-object p0, Lccsansan/bp/IncentiveDownloadUtils;->deleteDownItem:[B

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
    sget-object p0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedRecordByUrl:[S

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

.method private static addDownloadListener(Lccsanandroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    sget v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0

    .line 66
    invoke-static {p1}, Lccsansan/da/removeDownloadListener;->addDownloadListener(Ljava/io/File;)Lccsansan/da/removeDownloadListener;

    move-result-object p1

    invoke-static {p1, v0}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Lccsansan/da/removeDownloadListener;Ljava/io/OutputStream;)V

    .line 67
    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    sget p0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x46

    :try_start_1
    div-int/2addr p0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {v0}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 56
    nop

    .line 12
    new-instance v0, Lccsanandroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsanandroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 13
    invoke-virtual {p0}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    :try_start_0
    sget-object v2, Lccsansan/bp/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    const/16 v3, 0x32

    aget-byte v4, v2, v3

    int-to-byte v4, v4

    const/16 v5, 0x2c

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x4a

    aget-byte v6, v2, v6

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(BII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xd

    aget-byte v6, v2, v5

    int-to-byte v6, v6

    aget-byte v7, v2, v3

    int-to-byte v7, v7

    const/16 v8, 0xe

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(BII)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    sget v4, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x41

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 14
    :cond_0
    :try_start_1
    aget-byte v4, v2, v3

    int-to-byte v4, v4

    or-int/lit8 v6, v4, 0x19

    int-to-byte v6, v6

    aget-byte v8, v2, v3

    int-to-byte v8, v8

    invoke-static {v4, v6, v8}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(BII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    or-int/lit8 v6, v5, 0x8

    int-to-byte v6, v6

    const/16 v8, 0x45

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v5, v6, v2}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageInstaller;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    invoke-virtual {v1, v0}, Lccsanandroid/content/pm/PackageInstaller;->createSession(Lccsanandroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Lccsanandroid/content/pm/PackageInstaller;->openSession(I)Lccsanandroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 23
    invoke-static {v1}, Lccsansan/bp/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/pm/PackageInstaller;)V

    .line 24
    invoke-virtual {v1, v0}, Lccsanandroid/content/pm/PackageInstaller;->createSession(Lccsanandroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Lccsanandroid/content/pm/PackageInstaller;->openSession(I)Lccsanandroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    .line 28
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 32
    new-instance v6, Lccsansan/bp/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v6}, Lccsansan/bp/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>()V

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    const/16 v6, 0x3c

    goto :goto_2

    :cond_1
    const/16 v6, 0x32

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_5

    .line 56
    :pswitch_0
    sget v6, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    add-int/lit8 v6, v6, 0x69

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 41
    const/16 v6, 0x56

    goto :goto_3

    :cond_2
    const/16 v6, 0x45

    :goto_3
    packed-switch v6, :pswitch_data_1

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 41
    invoke-static {v0, v6}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V

    goto :goto_4

    .line 56
    :pswitch_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 41
    invoke-static {v0, v6}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V

    const/16 v6, 0x22

    :try_start_3
    div-int/lit8 v6, v6, 0x0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 56
    :catchall_0
    move-exception p0

    throw p0

    :goto_4
    goto :goto_1

    .line 44
    :cond_3
    invoke-static {v0, v1}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V

    .line 47
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 49
    invoke-static {v2, v6, v7, p0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(IJLccsancom/san/convert/database/ConvertIntent;)V

    .line 51
    new-instance v1, Lccsanandroid/content/Intent;

    const v3, -0x34eae2dd    # -9772323.0f

    const-string v4, ""

    invoke-static {v4}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v3, v5

    const v5, -0x599fe331

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v6

    int-to-byte v6, v6

    sub-int/2addr v5, v6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    int-to-short v6, v6

    invoke-static {v4}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v7

    rsub-int/lit8 v7, v7, -0x47

    int-to-byte v7, v7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, -0x62

    invoke-static {v3, v5, v6, v7, v8}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lccsancom/san/convert/database/ConvertIntent;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p0

    const-string v3, "task_id"

    invoke-virtual {v1, v3, p0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const p0, -0x34eae2b4    # -9772364.0f

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    sub-int/2addr p0, v3

    const v3, -0x599fe333

    invoke-static {v4}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    rsub-int/lit8 v5, v5, -0x58

    int-to-byte v5, v5

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    rsub-int/lit8 v6, v6, -0x62

    invoke-static {p0, v4, v3, v5, v6}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {v1, p0, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 55
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v1, v3}, Lccsanandroid/app/PendingIntent;->getBroadcast(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Lccsanandroid/app/PendingIntent;->getIntentSender()Lccsanandroid/content/IntentSender;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsanandroid/content/pm/PackageInstaller$Session;->commit(Lccsanandroid/content/IntentSender;)V

    return-void

    .line 14
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    throw v0

    :cond_4
    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    throw v0

    :cond_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;Lccsansan/bk/getDownloadingList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 11
    nop

    .line 1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 11
    const/16 v0, 0x37

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-static {p0}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    const/16 v0, 0xc

    goto :goto_2

    :cond_2
    const/16 v0, 0x5c

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 8
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/bk/getDownloadStatusByUrl;->unifiedDownload()Lccsansan/bk/addDownloadListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lccsansan/bk/addDownloadListener;->unifiedDownload(Lccsansan/bk/getDownloadingList;)V

    goto/16 :goto_3

    .line 11
    :pswitch_1
    sget p1, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 2
    :cond_3
    const p1, -0x34eae323    # -9772253.0f

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    add-int/2addr v2, p1

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result p1

    const v3, -0x599fe334

    add-int/2addr p1, v3

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string v8, ""

    const/4 v9, 0x1

    const-string v10, "AD_CONVERT"

    cmp-long v11, v4, v6

    rsub-int/lit8 v4, v11, 0x1

    int-to-short v4, v4

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x3e

    int-to-byte v5, v5

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    add-int/lit8 v6, v6, -0x63

    invoke-static {v2, p1, v4, v5, v6}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v10, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;)V

    const p0, -0x34eae2ff    # -9772289.0f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p0

    invoke-static {v8}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v3

    const/16 v2, 0x30

    invoke-static {v8, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/2addr v2, v9

    int-to-short v2, v2

    invoke-static {v0, v1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x2c

    int-to-byte v0, v0

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    rsub-int/lit8 v1, v1, -0x62

    invoke-static {p1, p0, v2, v0, v1}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0, v9}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    .line 11
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/pm/PackageInstaller;)V
    .locals 9

    .line 64
    sget v0, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    sget v2, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bp/IncentiveDownloadUtils;->getDownloadedList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 58
    :goto_1
    :pswitch_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    const/16 v2, 0x4d

    goto :goto_2

    :cond_2
    const/16 v2, 0x49

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/PackageInstaller$SessionInfo;

    .line 59
    invoke-virtual {v2}, Lccsanandroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v2

    .line 60
    invoke-virtual {p0, v2}, Lccsanandroid/content/pm/PackageInstaller;->openSession(I)Lccsanandroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lccsanandroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#tryAbandonMySessions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v1, -0x34eae2a2    # -9772382.0f

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    cmpl-float v2, v2, v3

    sub-int/2addr v1, v2

    const v2, -0x599fe354

    invoke-static {v3, v3}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v3, v5, v3

    sub-int/2addr v2, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    const/16 v5, 0x30

    invoke-static {v4, v5, v0, v0}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x35

    int-to-byte v4, v4

    invoke-static {v0, v0}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    rsub-int/lit8 v0, v0, -0x63

    invoke-static {v1, v2, v3, v4, v0}, Lccsansan/bp/IncentiveDownloadUtils;->addDownloadListener(IISBI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_1
    .end packed-switch
.end method
