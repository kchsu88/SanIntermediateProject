.class final Lccsancom/san/az/removeDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static deleteDownList:I

.field public static final getDownloadStatusByUrl:I

.field private static getDownloadedList:C

.field public static final getDownloadedRecordByUrl:[B

.field private static getDownloadingRecordByUrl:[C

.field private static resume:I


# instance fields
.field IncentiveDownloadUtils:I

.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic deleteDownItem:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field unifiedDownload:Lccsanandroid/content/pm/PackageInstaller$Session;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    invoke-static {}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener()V

    const/16 v2, 0x5c

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:[B

    const/16 v2, 0x15

    sput v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    sget v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x46t
        0x2ft
        -0x26t
        -0x57t
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

.method constructor <init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownItem:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/pm/PackageInstaller$Session;

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;BI)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadedList:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p2, [C

    .line 1221
    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p2, p2, -0x1

    .line 1224
    aget-char v4, p0, p2

    sub-int/2addr v4, p1

    int-to-char v4, v4

    aput-char v4, v3, p2

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p2, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p2, :cond_5

    .line 1233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 1237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 1239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p1

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p1

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_1

    .line 1245
    :cond_2
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1246
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1247
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1248
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1251
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    if-ne v5, v6, :cond_3

    .line 1253
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1254
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1256
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1257
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1259
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1260
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1261
    goto :goto_1

    .line 1264
    :cond_3
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    if-ne v5, v6, :cond_4

    .line 1266
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1267
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1269
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1270
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1272
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1273
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1274
    goto :goto_1

    .line 1281
    :cond_4
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v6

    .line 1282
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v6, v7

    .line 1284
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1285
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1229
    :goto_1
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    goto/16 :goto_0

    .line 1291
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1292
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static removeDownloadListener()V
    .locals 1

    const/4 v0, 0x5

    sput-char v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadedList:C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadingRecordByUrl:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        0x79s
        0x6es
        0x61s
        0x6ds
        0x69s
        0x63s
        0x5fs
        0x70s
        0x73s
        0x74s
        0x6cs
        0x75s
        0x20s
        0x66s
        0x65s
        0x21s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6fs
        0x71s
        0x72s
        0x76s
    .end array-data
.end method

.method private static unifiedDownload(SII)Ljava/lang/String;
    .locals 7

    sget v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 p0, p0, 0x2

    rsub-int/lit8 p0, p0, 0x4b

    mul-int/lit8 p2, p2, 0x2

    rsub-int/lit8 p2, p2, 0x21

    sget-object v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:[B

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x61

    new-array v2, p2, [B

    add-int/lit8 p2, p2, -0x1

    if-nez v0, :cond_0

    const/16 v3, 0x5b

    goto :goto_0

    :cond_0
    const/16 v3, 0x3f

    :goto_0
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x28

    goto :goto_1

    :cond_1
    const/16 v1, 0x3b

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    move-object v1, v0

    move-object v3, v2

    const/4 v2, 0x0

    move v0, p2

    move p2, p1

    move p1, p0

    goto :goto_4

    :goto_3
    add-int/lit8 p0, p0, 0x1

    int-to-byte v3, p1

    aput-byte v3, v2, v1

    if-ne v1, p2, :cond_3

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/16 p1, 0x2f

    :try_start_1
    div-int/2addr p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    aget-byte v3, v0, p0

    move v6, p1

    move p1, p0

    move p0, v3

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    move v0, p2

    move p2, v6

    :goto_4
    add-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x2

    sget p2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    add-int/lit8 p2, p2, 0x43

    rem-int/lit16 v5, p2, 0x80

    sput v5, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    rem-int/lit8 p2, p2, 0x2

    move p2, v0

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    move v6, p1

    move p1, p0

    move p0, v6

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_1
    .end packed-switch
.end method

.method private unifiedDownload(Lccsanandroid/content/pm/PackageInstaller;)V
    .locals 5

    .line 8
    nop

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    sget v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 8
    :cond_0
    nop

    .line 2
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 5
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 8
    :pswitch_0
    sget v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 5
    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 8
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 2
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/PackageInstaller$SessionInfo;

    .line 3
    invoke-virtual {v1}, Lccsanandroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    .line 4
    invoke-virtual {p1, v1}, Lccsanandroid/content/pm/PackageInstaller;->openSession(I)Lccsanandroid/content/pm/PackageInstaller$Session;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lccsanandroid/content/pm/PackageInstaller$Session;->abandon()V

    goto :goto_0

    .line 8
    :goto_3
    check-cast v1, Lccsanandroid/content/pm/PackageInstaller$SessionInfo;

    .line 3
    invoke-virtual {v1}, Lccsanandroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    .line 4
    invoke-virtual {p1, v1}, Lccsanandroid/content/pm/PackageInstaller;->openSession(I)Lccsanandroid/content/pm/PackageInstaller$Session;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lccsanandroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x0

    :try_start_3
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#tryAbandonMySessions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AZManager"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
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
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 10

    .line 4
    sget v0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 0
    :cond_2
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const-string v6, "AZManager"

    const-string v7, "\u0007\u0000\u0005\u000e\u0001\r\u000c\u000e\u0001\u0002\u0003\u0004\u0000\t\u0008\u000b\u0008\r\r\u0012\r\u0004\u0006\n\u0014\u0005&"

    const-string v8, "\u0001\u0002\u0003\u0004\u0000\t\u0007\u0008\u0008\r\t\u0008\u0007\u0000\u0005\u000e\u0001\r\u000c\u0006\u0005\u000e\u0000\r\u000e\u0007"

    cmp-long v9, v1, v3

    add-int/2addr v9, v5

    int-to-byte v1, v9

    invoke-static {v0}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1b

    invoke-static {v7, v1, v2}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v6, v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v2

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    rsub-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    invoke-static {v0}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1a

    invoke-static {v8, v3, v4}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-static {v1, v0, v3, p1, v2}, Lccsancom/san/az/removeDownloadListener;->addDownloadListener(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bn/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/util/HashMap;)V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public execute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    nop

    .line 1
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-static {v1, v2}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string v6, "\u0001\u0002\u0003\u0004\u0000\t\u0007\u0008\u0008\r\t\u0008\u0007\u0000\u0005\u000e\u0001\r\u000c\u0006\u0005\u000e\u0000\r\u000e\u0007"

    const-string v7, ""

    cmp-long v8, v2, v4

    add-int/lit8 v8, v8, 0x7d

    int-to-byte v2, v8

    const/16 v3, 0x30

    invoke-static {v7, v3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-static {v6, v2, v3}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    .line 32
    sget v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadedRecordByUrl:[B

    const/16 v2, 0x2c

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v3, 0x32

    aget-byte v4, v1, v3

    int-to-byte v4, v4

    const/16 v5, 0x4a

    aget-byte v5, v1, v5

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v4, v1, v3

    int-to-byte v4, v4

    const/16 v5, 0xd

    aget-byte v6, v1, v5

    int-to-byte v6, v6

    const/16 v7, 0xe

    aget-byte v7, v1, v7

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload(SII)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    nop

    .line 2
    :try_start_1
    sget v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aget-byte v3, v1, v3

    int-to-byte v3, v3

    int-to-byte v4, v3

    invoke-static {v2, v3, v4}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload(SII)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x2f

    aget-byte v3, v1, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    const/16 v7, 0x45

    aget-byte v1, v1, v7

    int-to-byte v1, v1

    invoke-static {v3, v5, v1}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload(SII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInstaller;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    new-instance v1, Lccsanandroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v1, v4}, Lccsanandroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 5
    iget-object v2, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsanandroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 7
    :try_start_2
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageInstaller;->createSession(Lccsanandroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v2

    iput v2, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:I

    .line 8
    invoke-virtual {v0, v2}, Lccsanandroid/content/pm/PackageInstaller;->openSession(I)Lccsanandroid/content/pm/PackageInstaller$Session;

    move-result-object v2

    iput-object v2, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/pm/PackageInstaller$Session;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 11
    invoke-direct {p0, v0}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload(Lccsanandroid/content/pm/PackageInstaller;)V

    .line 12
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageInstaller;->createSession(Lccsanandroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v1

    iput v1, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:I

    .line 13
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageInstaller;->openSession(I)Lccsanandroid/content/pm/PackageInstaller$Session;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/pm/PackageInstaller$Session;

    .line 15
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    new-instance v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsancom/san/az/removeDownloadListener$removeDownloadListener;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 32
    :goto_1
    nop

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 31
    iget-object v0, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/az/getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/pm/PackageInstaller$Session;

    iget-object v1, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    iget v2, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:I

    iget-object v3, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownItem:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    iget-object v5, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lccsancom/san/az/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageInstaller$Session;->commit(Lccsanandroid/content/IntentSender;)V

    return-void

    :pswitch_0
    sget v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->deleteDownList:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->resume:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 25
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 26
    iget-object v5, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Lccsanandroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v2

    .line 27
    invoke-static {v1}, Lccsansan/da/removeDownloadListener;->addDownloadListener(Ljava/io/File;)Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-static {v1, v2}, Lccsansan/bw/setLoaderClassName;->unifiedDownload(Lccsansan/da/removeDownloadListener;Ljava/io/OutputStream;)V

    .line 28
    iget-object v1, p0, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v1, v2}, Lccsanandroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 29
    invoke-static {v2}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Ljava/io/Closeable;)V

    goto :goto_1

    .line 2
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    throw v1

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    throw v1

    :cond_4
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
