.class public Lccsansan/as/getDownloadingList;
.super Lccsanandroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/as/getDownloadingList;

.field private static addDownloadListener:I

.field private static getDownloadingRecordByUrl:I

.field private static unifiedDownload:[C


# instance fields
.field private getDownloadingList:Lccsansan/as/addDownloadListener;

.field private removeDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    const/16 v0, 0x1e2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/as/getDownloadingList;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x14s
        0x24s
        0x24s
        0x46s
        0x56s
        0x56s
        0x47s
        0x48s
        0x56s
        0x56s
        0x62s
        0x46s
        0x48s
        0x69s
        0x67s
        0x57s
        0x5as
        0x69s
        0x6ds
        0x4cs
        0x24s
        0x3cs
        0x4fs
        0x48s
        0x35s
        0x3cs
        0x55s
        0x49s
        0x47s
        0x4bs
        0x4ds
        0x51s
        0x38s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x40s
        0x69s
        0x73s
        0x76s
        0x6es
        0x42s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x2as
        0x4cs
        0x68s
        0x46s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x49s
        0x6fs
        0x6fs
        0x73s
        0x6as
        0x65s
        0x67s
        0x62s
        0x69s
        0x73s
        0x4as
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x42s
        0x6ds
        0x74s
        0x6bs
        0x6cs
        0x6cs
        0x6bs
        0x68s
        0x67s
        0x71s
        0x74s
        0x6bs
        0x40s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x43s
        0x64s
        0x66s
        0x69s
        0x62s
        0x61s
        0x62s
        0x63s
        0x6bs
        0x49s
        0x26s
        0x39s
        0x4as
        0x4es
        0x4ds
        0x36s
        0x42s
        0x69s
        0x6bs
        0x5es
        0x5cs
        0x6cs
        0x6as
        0x63s
        0x6bs
        0x6as
        0x41s
        0x26s
        0x39s
        0x4as
        0x4es
        0x4ds
        0x36s
        0x42s
        0x69s
        0x6es
        0x64s
        0x5fs
        0x69s
        0x6bs
        0x6es
        0x4as
        0x26s
        0x39s
        0x4as
        0x4es
        0x4ds
        0x36s
        0x42s
        0x69s
        0x6bs
        0x5es
        0x5cs
        0x6cs
        0x6as
        0x63s
        0x68s
        0x68s
        0x5bs
        0x61s
        0x70s
        0x68s
        0x40s
        0x26s
        0x3fs
        0x4bs
        0x46s
        0x46s
        0x4cs
        0x51s
        0x4bs
        0x34s
        0x49s
        0x74s
        0x74s
        0x6as
        0x6as
        0x63s
        0x63s
        0x6cs
        0x59s
        0x59s
        0x68s
        0x67s
        0x61s
        0x63s
        0x6cs
        0x74s
        0x4as
        0x26s
        0x39s
        0x4as
        0x4es
        0x4ds
        0x36s
        0x42s
        0x6fs
        0x71s
        0x5es
        0x5fs
        0x6ds
        0x68s
        0x40s
        0x26s
        0x3fs
        0x4bs
        0x46s
        0x46s
        0x4cs
        0x51s
        0x4bs
        0x34s
        0x42s
        0x64s
        0x69s
        0x59s
        0x58s
        0x6es
        0x6cs
        0x6es
        0x72s
        0x6bs
        0x6ds
        0x4bs
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x42s
        0x69s
        0x67s
        0x57s
        0x5es
        0x6es
        0x6cs
        0x6es
        0x72s
        0x6bs
        0x6ds
        0x4bs
        0x26s
        0x3fs
        0x4bs
        0x46s
        0x46s
        0x4cs
        0x51s
        0x4bs
        0x34s
        0x49s
        0x73s
        0x6es
        0x55s
        0x5as
        0x71s
        0x47s
        0x26s
        0x3fs
        0x4bs
        0x46s
        0x46s
        0x4cs
        0x51s
        0x4bs
        0x34s
        0x47s
        0x6es
        0x6cs
        0x6es
        0x72s
        0x6bs
        0x5ds
        0x64s
        0x61s
        0x5es
        0x6bs
        0x6bs
        0x46s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x46s
        0x6fs
        0x63s
        0x61s
        0x6es
        0x69s
        0x66s
        0x44s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x46s
        0x6fs
        0x63s
        0x5ds
        0x6cs
        0x6es
        0x6es
        0x6es
        0x6bs
        0x6bs
        0x6bs
        0x46s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x46s
        0x6fs
        0x63s
        0x62s
        0x6bs
        0x43s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x46s
        0x6fs
        0x63s
        0x5cs
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
        0x69s
        0x42s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x42s
        0x69s
        0x67s
        0x57s
        0x5fs
        0x70s
        0x68s
        0x40s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x46s
        0x66s
        0x6as
        0x73s
        0x70s
        0x6fs
        0x48s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x42s
        0x64s
        0x6ds
        0x74s
        0x6bs
        0x6cs
        0x6cs
        0x6bs
        0x68s
        0x69s
        0x6es
        0x44s
        0x26s
        0x3fs
        0x4bs
        0x46s
        0x46s
        0x4cs
        0x51s
        0x4bs
        0x34s
        0x49s
        0x74s
        0x74s
        0x6as
        0x6as
        0x73s
        0x69s
        0x67s
        0x70s
        0x68s
        0x40s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x42s
        0x56s
        0x56s
        0x41s
        0x26s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x42s
        0x56s
        0x56s
        0x62s
        0x46s
        0x40s
        0x56s
        0x4es
        0x4cs
        0x3as
        0x42s
        0x69s
        0x67s
        0x57s
        0x5as
        0x69s
        0x6ds
        0x4cs
        0x24s
        0x42s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
        0x69s
        0x61s
        0x62s
        0x6ds
        0x74s
        0x6bs
        0x6cs
        0x6cs
        0x6bs
        0x49s
        0x39s
        0x53s
        0x53s
        0x4es
        0x50s
        0x4es
        0x32s
        0x3as
        0x51s
        0x4es
        0x37s
        0x33s
        0x47s
        0x34s
        0x32s
        0x48s
        0x47s
        0x41s
        0x4as
        0x3as
        0x32s
        0x4cs
        0x4as
        0x43s
        0x4bs
        0x4as
    .end array-data
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "mads_ad_reserve.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lccsansan/as/getDownloadingList;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 3
    const/4 p1, 0x0

    iput-object p1, p0, Lccsansan/as/getDownloadingList;->removeDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

    .line 4
    new-instance p1, Lccsansan/as/addDownloadListener;

    invoke-direct {p1}, Lccsansan/as/addDownloadListener;-><init>()V

    iput-object p1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/as/getDownloadingList;)Lccsansan/as/addDownloadListener;
    .locals 2

    .line 1
    sget v0, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v0, 0x4c

    goto :goto_0

    :cond_1
    const/16 v0, 0x63

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener()Lccsansan/as/getDownloadingList;
    .locals 3

    .line 1
    sget-object v0, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/as/getDownloadingList;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/as/getDownloadingList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/as/getDownloadingList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/as/getDownloadingList;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/as/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/as/getDownloadingList;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/as/getDownloadingList;

    return-object v0
.end method

.method private static unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;
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
    sget-object v8, Lccsansan/as/getDownloadingList;->unifiedDownload:[C

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


# virtual methods
.method public IncentiveDownloadUtils()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/aj/getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 6
    sget v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget v1, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x29

    goto :goto_0

    :cond_1
    const/16 v1, 0x39

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    .line 3
    :catch_0
    move-exception v0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;)V
    .locals 2

    monitor-enter p0

    .line 18
    nop

    .line 8
    :try_start_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/as/getDownloadingList$unifiedDownload;

    invoke-direct {v1, p0, p1}, Lccsansan/as/getDownloadingList$unifiedDownload;-><init>(Lccsansan/as/getDownloadingList;Lccsansan/aj/getDownloadingList;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 18
    sget p1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0, p1}, Lccsansan/as/addDownloadListener;->unifiedDownload(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z

    sget p1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x4d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/16 p1, 0x43

    goto :goto_0

    :cond_1
    const/16 p1, 0x4e

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    monitor-exit p0

    return-void

    .line 7
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/aj/getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 11
    sget v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 8
    const/16 v0, 0x11

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0, p1}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0, p1}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 7
    nop

    .line 1
    :try_start_0
    invoke-super {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 2
    iget-object v0, p0, Lccsansan/as/getDownloadingList;->removeDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 7
    :try_start_1
    sget v2, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    .line 2
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 4
    const/16 v0, 0x4d

    goto :goto_1

    :cond_2
    const/16 v0, 0x1f

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 7
    :try_start_3
    sget v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 3
    :try_start_4
    iget-object v0, p0, Lccsansan/as/getDownloadingList;->removeDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4
    iput-object v2, p0, Lccsansan/as/getDownloadingList;->removeDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v0, 0x32

    :try_start_5
    div-int/2addr v0, v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 7
    :catchall_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3
    :cond_3
    :try_start_7
    iget-object v0, p0, Lccsansan/as/getDownloadingList;->removeDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->close()V

    .line 4
    iput-object v2, p0, Lccsansan/as/getDownloadingList;->removeDownloadListener:Lccsanandroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 0
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 4
    :catch_0
    move-exception v0

    :try_start_8
    const-string v1, "Mads.ReserveDatabase"

    .line 7
    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    :pswitch_0
    nop

    .line 4
    sget v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v0, :cond_4

    .line 7
    :cond_4
    monitor-exit p0

    return-void

    .line 0
    :goto_3
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsansan/aj/getDownloadingList;",
            ">;"
        }
    .end annotation

    .line 25
    sget v0, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0, p1, p2}, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0, p1, p2}, Lccsansan/as/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    :try_start_1
    array-length p2, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_2
    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;
    .locals 2

    .line 13
    sget v0, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0, p1, p2, p3}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p2, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p2, p2, 0x67

    rem-int/lit16 p3, p2, 0x80

    sput p3, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate(Lccsanandroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .line 8
    sget v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 3
    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x36

    :goto_0
    const-string v2, "\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0000\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001"

    const/4 v3, 0x3

    const/16 v4, 0x1e2

    const-string v5, "Mads.ReserveDatabase"

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    goto :goto_1

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 3
    :try_start_0
    new-array v0, v6, [I

    aput v8, v0, v8

    aput v4, v0, v7

    aput v8, v0, v1

    aput v8, v0, v3

    invoke-static {v0, v2, v7}, Lccsansan/as/getDownloadingList;->unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_1
    new-array v0, v6, [I

    aput v8, v0, v8

    aput v4, v0, v7

    aput v8, v0, v1

    aput v8, v0, v3

    invoke-static {v0, v2, v7}, Lccsansan/as/getDownloadingList;->unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_3

    .line 3
    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database create error  : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ReserveAdDatabase onCreate  consuming : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget p1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_4

    :cond_1
    const/4 v7, 0x0

    :goto_4
    packed-switch v7, :pswitch_data_1

    .line 8
    return-void

    .line 3
    :pswitch_1
    const/16 p1, 0x20

    :try_start_1
    div-int/2addr p1, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onUpgrade(Lccsanandroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    sget p1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public declared-synchronized removeDownloadListener(Lccsansan/aj/getDownloadingList;)Z
    .locals 2

    monitor-enter p0

    .line 20
    :try_start_0
    sget v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x59

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 19
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0, p1}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z

    move-result p1

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0, p1}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    array-length v0, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    goto :goto_2

    .line 18
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized unifiedDownload(Lccsansan/aj/getDownloadingList;)V
    .locals 4

    monitor-enter p0

    .line 11
    :try_start_0
    sget v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x49

    :try_start_1
    div-int/2addr v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 2
    :goto_3
    :try_start_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/as/getDownloadingList$addDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/as/getDownloadingList$addDownloadListener;-><init>(Lccsansan/as/getDownloadingList;Lccsansan/aj/getDownloadingList;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_5

    .line 10
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 11
    iget-object v2, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v2, v0, p1}, Lccsansan/as/addDownloadListener;->getDownloadingList(Lccsanandroid/database/sqlite/SQLiteDatabase;Lccsansan/aj/getDownloadingList;)Z

    sget p1, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 1
    goto :goto_4

    :cond_2
    const/4 v1, 0x1

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 11
    nop

    :pswitch_1
    nop

    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Lccsanandroid/content/Context;)Z
    .locals 4

    .line 18
    nop

    .line 14
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lccsansan/as/getDownloadingList;->getDownloadingList:Lccsansan/as/addDownloadListener;

    invoke-virtual {v1, v0}, Lccsansan/as/addDownloadListener;->removeDownloadListener(Lccsanandroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 18
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return p1

    :pswitch_0
    sget v1, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 17
    :cond_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/aj/getDownloadingList;

    .line 18
    iget-object v1, v1, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    sget v0, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/as/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const/16 v0, 0x2f

    goto :goto_1

    :cond_3
    const/16 v0, 0x25

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/as/getDownloadingList;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const/16 v0, 0x35

    :try_start_2
    div-int/2addr v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    return v2

    :cond_5
    return p1

    :catch_0
    move-exception v0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_1
    .end packed-switch
.end method
