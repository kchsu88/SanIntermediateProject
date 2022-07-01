.class public Lccsansan/bn/getDownloadedCount;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:[C

.field private static removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    const/16 v0, 0x58

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bn/getDownloadedCount;->addDownloadListener:[C

    return-void

    :array_0
    .array-data 2
        0x56s
        0xa8s
        0xa0s
        0x92s
        0x92s
        0xa0s
        0xa2s
        0x9bs
        0x9as
        0x8bs
        0x86s
        0x9as
        0xa1s
        0x9bs
        0x9fs
        0xa8s
        0xa5s
        0x90s
        0x91s
        0xa5s
        0x96s
        0x9es
        0x123s
        0x121s
        0x138s
        0x12fs
        0x12fs
        0x128s
        0x124s
        0x131s
        0x12bs
        0x12fs
        0x138s
        0x135s
        0x120s
        0x121s
        0x135s
        0x126s
        0x104s
        0x115s
        0x138s
        0x12fs
        0x12fs
        0x128s
        0x24s
        0x5cs
        0x70s
        0x61s
        0x5ds
        0x67s
        0x66s
        0x6as
        0x57s
        0x55s
        0x6bs
        0x6ds
        0x66s
        0x65s
        0x56s
        0x51s
        0x65s
        0x6cs
        0x66s
        0x6as
        0x73s
        0x70s
        0x33s
        0x55s
        0x57s
        0x6ds
        0x71s
        0x6cs
        0x5as
        0x61s
        0x70s
        0x5cs
        0x5bs
        0x70s
        0x73s
        0x6as
        0x66s
        0x6cs
        0x65s
        0x51s
        0x56s
        0x65s
        0x66s
        0x6ds
    .end array-data
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
    sget-object v8, Lccsansan/bn/getDownloadedCount;->addDownloadListener:[C

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

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .line 14
    nop

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "show_type"

    .line 3
    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pkg_name"

    .line 4
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "result"

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 7
    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    packed-switch v4, :pswitch_data_0

    .line 4
    const-string v4, "false"

    goto :goto_1

    :pswitch_0
    nop

    .line 7
    sget v4, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/lit8 v4, v4, 0x45

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 14
    :cond_1
    const-string v4, "true"

    .line 5
    :goto_1
    :try_start_1
    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p2, :cond_2

    .line 7
    const/16 p0, 0xf

    goto :goto_2

    :cond_2
    const/4 p0, 0x6

    :goto_2
    packed-switch p0, :pswitch_data_1

    :goto_3
    goto :goto_6

    .line 14
    :pswitch_1
    sget p0, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    rem-int/2addr p0, v5

    if-nez p0, :cond_3

    .line 7
    const/16 p0, 0x51

    goto :goto_4

    :cond_3
    const/16 p0, 0x3a

    :goto_4
    const-string p2, "fail_reason"

    packed-switch p0, :pswitch_data_2

    .line 14
    goto :goto_5

    .line 5
    :pswitch_2
    nop

    .line 7
    :try_start_2
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_5
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x0

    :try_start_3
    array-length p0, p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 14
    :catchall_0
    move-exception p0

    throw p0

    .line 10
    :goto_6
    :try_start_4
    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    new-array p1, v1, [I

    aput v3, p1, v3

    const/16 p2, 0x15

    aput p2, p1, v2

    const/16 p2, 0x35

    aput p2, p1, v5

    const/4 p2, 0x3

    aput v3, p1, p2

    const-string p2, "\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000"

    invoke-static {p1, p2, v2}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#collectProAzShow error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [I

    fill-array-data p1, :array_0

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {p1, p2, v2}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3a
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x15
        0x17
        0xc5
        0x0
    .end array-data
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

    .line 48
    nop

    .line 47
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 48
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

    const/4 p1, 0x4

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const/4 p2, 0x1

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {p1, v0, p2}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :array_0
    .array-data 4
        0x15
        0x17
        0xc5
        0x0
    .end array-data
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 46
    nop

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "show_type"

    .line 39
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pkg_name"

    .line 40
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "ProActive_DialogClose"

    invoke-static {p0, p1, v0}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#collectProActiveClose error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {p1, v0, v1}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x15
        0x17
        0xc5
        0x0
    .end array-data
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 36
    nop

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    const-string v1, "show_type"

    .line 28
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pkg_name"

    .line 29
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_area"

    .line 30
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "ProActive_DialogClick"

    invoke-static {p0, p1, v0}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#collectProActiveClick error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const/4 p2, 0x1

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {p1, v0, p2}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p0, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :array_0
    .array-data 4
        0x15
        0x17
        0xc5
        0x0
    .end array-data
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    .line 25
    nop

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    const-string v1, "show_type"

    .line 14
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pkg_name"

    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "result"

    if-eqz p2, :cond_0

    .line 25
    const/16 v1, 0x3c

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    const-string v2, "true"

    packed-switch v1, :pswitch_data_0

    .line 15
    const-string v2, "false"

    goto :goto_3

    .line 25
    :pswitch_0
    sget v1, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x1a

    goto :goto_1

    :cond_1
    const/16 v1, 0x22

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 15
    :pswitch_1
    goto :goto_3

    .line 25
    :goto_2
    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    .line 16
    :goto_3
    :try_start_2
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p2, :cond_3

    .line 25
    sget p0, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    .line 16
    :cond_2
    :try_start_3
    const-string p0, "fail_reason"

    .line 18
    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_3
    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "ProActive_DialogShow"

    invoke-static {p0, p1, v0}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 25
    sget p0, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_4

    .line 23
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#collectProActiveShow error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const/4 p2, 0x1

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {p1, p3, p2}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x22
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x15
        0x17
        0xc5
        0x0
    .end array-data
.end method

.method private static getDownloadingList(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    const-string v0, "sid"

    sget v1, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    goto :goto_2

    .line 11
    :catchall_0
    move-exception p0

    throw p0

    .line 9
    :catch_0
    move-exception p0

    goto :goto_3

    .line 1
    :goto_1
    :try_start_2
    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p1, :cond_1

    :goto_2
    return-void

    :cond_1
    const-string v1, "ad_id"

    .line 5
    :try_start_3
    iget-object v3, p1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "pid"

    .line 6
    :try_start_4
    iget-object v3, p1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "creative_id"

    .line 8
    :try_start_5
    iget-object v1, p1, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "format_id"

    .line 9
    :try_start_6
    iget-object p1, p1, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 11
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#appendCommonParam exception = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {p1, v0, v2}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sget p0, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x15
        0x17
        0xc5
        0x0
    .end array-data
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 35
    nop

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    :try_start_0
    const-string v4, "show_type"

    .line 28
    invoke-virtual {v0, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pkg_name"

    .line 29
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    new-array p1, v2, [I

    const/16 v4, 0x42

    const/4 v5, 0x0

    aput v4, p1, v5

    const/16 v4, 0x16

    aput v4, p1, v1

    aput v5, p1, v3

    const/4 v4, 0x3

    const/4 v6, 0x6

    aput v6, p1, v4

    const-string v4, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001"

    invoke-static {p1, v4, v5}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    sget p0, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_0

    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#collectProAzClose error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [I

    fill-array-data p1, :array_0

    const-string v0, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {p1, v0, v1}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget p0, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    rem-int/2addr p0, v3

    if-nez p0, :cond_1

    const/16 p0, 0x3c

    goto :goto_1

    :cond_1
    const/16 p0, 0x19

    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return-void

    :goto_2
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x15
        0x17
        0xc5
        0x0
    .end array-data
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 25
    nop

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "show_type"

    .line 17
    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pkg_name"

    .line 18
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "click_area"

    .line 19
    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v0, p1}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    new-array p1, v2, [I

    const/16 p2, 0x2c

    const/4 v3, 0x0

    aput p2, p1, v3

    const/16 p2, 0x16

    aput p2, p1, v1

    const/4 p2, 0x2

    aput v3, p1, p2

    const/4 v3, 0x3

    aput v2, p1, v3

    const-string v3, "\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001"

    invoke-static {p1, v3, v1}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lccsansan/bn/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    sget p0, Lccsansan/bn/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils:I

    rem-int/2addr p0, p2

    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#collectProAzClick error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [I

    fill-array-data p1, :array_0

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001"

    invoke-static {p1, p2, v1}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x15
        0x17
        0xc5
        0x0
    .end array-data
.end method
