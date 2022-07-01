.class public Lccsansan/be/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field public static final addDownloadListener:Ljava/lang/String;

.field private static getDownloadingList:[C

.field private static final removeDownloadListener:[B

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/be/addDownloadListener;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/be/addDownloadListener;->IncentiveDownloadUtils:I

    invoke-static {}, Lccsansan/be/addDownloadListener;->getDownloadingList()V

    const/16 v0, 0xf

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/be/addDownloadListener;->removeDownloadListener:[B

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".gps"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/be/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    sget v0, Lccsansan/be/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/be/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x65t
        0x6et
        0x6ft
        0x76t
        0x6ft
        0x2et
        0x61t
        0x6et
        0x79t
        0x73t
        0x68t
        0x61t
        0x72t
        0x65t
    .end array-data
.end method

.method public static getDownloadingList(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "QZ not support"

    goto :goto_2

    :pswitch_1
    const-string p0, "File invalid"

    goto :goto_2

    :pswitch_2
    const-string p0, "File not exist"

    goto :goto_2

    :pswitch_3
    const-string p0, "File path empty"

    goto :goto_2

    :pswitch_4
    sget p0, Lccsansan/be/addDownloadListener;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/be/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_1

    :pswitch_5
    const-string p0, "System version low"

    goto :goto_2

    :pswitch_6
    const-string p0, "QZ version low"

    goto :goto_2

    :pswitch_7
    const-string p0, "QZ app not exist"

    goto :goto_2

    :goto_1
    sget p0, Lccsansan/be/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v2, p0, 0x80

    sput v2, Lccsansan/be/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    const-string p0, "Unknown support error"

    :goto_2
    sget v2, Lccsansan/be/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/be/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_8
    return-object p0

    :goto_4
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
    .packed-switch 0x3e8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/be/addDownloadListener;->getDownloadingList:[C

    return-void

    :array_0
    .array-data 2
        0x7bs
        0x108s
        0x11ds
        0x120s
        0x117s
        0x113s
        0x119s
        0xf3s
        0xf0s
        0x110s
        0x112s
        0x117s
        0x115s
        0x111s
    .end array-data
.end method

.method public static removeDownloadListener(I)Ljava/lang/String;
    .locals 4

    sget v0, Lccsansan/be/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/be/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x60

    goto :goto_0

    :cond_0
    const/16 v1, 0x63

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    packed-switch p0, :pswitch_data_1

    goto :goto_3

    :goto_1
    const/16 v1, 0x4b

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_1
    const-string p0, "call p2p cause illegal exception"

    goto :goto_4

    :pswitch_2
    const/4 p0, 0x4

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    const-string v0, "\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0001"

    invoke-static {p0, v0, v3}, Lccsansan/be/addDownloadListener;->unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_3
    const-string p0, "Unsupport method"

    goto :goto_4

    :pswitch_4
    const-string p0, "Code error(unknown)"

    goto :goto_4

    :pswitch_5
    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 p0, v2, 0x80

    sput p0, Lccsansan/be/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    const-string p0, "File unmatched"

    goto :goto_4

    :pswitch_6
    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/be/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p0, 0x2a

    goto :goto_2

    :cond_1
    const/4 p0, 0x5

    :goto_2
    packed-switch p0, :pswitch_data_3

    :pswitch_7
    const-string p0, "File invalid"

    goto :goto_4

    :pswitch_8
    const-string p0, "Key invalid"

    goto :goto_4

    :pswitch_9
    const-string p0, "File not exist"

    goto :goto_4

    :pswitch_a
    const-string p0, "File path empty"

    goto :goto_4

    :pswitch_b
    const-string p0, "Identify invalid"

    goto :goto_4

    :pswitch_c
    const-string p0, "Unknown package"

    goto :goto_4

    :goto_3
    const-string p0, "Unknown error"

    :goto_4
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_7
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0xe
        0xad
        0x0
    .end array-data
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
    sget-object v8, Lccsansan/be/addDownloadListener;->getDownloadingList:[C

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
