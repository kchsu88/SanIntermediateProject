.class public Lccsansan/aw/getDownloadingRecordByUrl;
.super Lccsansan/aw/removeDownloadListener;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:[C

.field private static removeDownloadListener:I


# instance fields
.field private final IncentiveDownloadUtils:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/aw/getDownloadingRecordByUrl;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener:I

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/aw/getDownloadingRecordByUrl;->getDownloadingList:[C

    return-void

    :array_0
    .array-data 2
        0x32s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x62s
        0x6bs
        0x72s
        0x70s
        0x70s
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsansan/aw/removeDownloadListener;-><init>(ILjava/lang/String;)V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, Lccsansan/aw/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsansan/aw/removeDownloadListener;-><init>(ILjava/lang/String;)V

    .line 4
    const/4 p1, 0x0

    iput-object p1, p0, Lccsansan/aw/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lccsansan/aw/removeDownloadListener;-><init>(ILjava/lang/String;)V

    .line 8
    iput-object p3, p0, Lccsansan/aw/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lccsansan/aw/removeDownloadListener;-><init>(ILjava/lang/Throwable;)V

    .line 6
    const/4 p1, 0x0

    iput-object p1, p0, Lccsansan/aw/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lccsansan/aw/removeDownloadListener;-><init>(ILjava/lang/Throwable;)V

    .line 10
    iput-object p3, p0, Lccsansan/aw/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
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
    sget-object v8, Lccsansan/aw/getDownloadingRecordByUrl;->getDownloadingList:[C

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

.method public static removeDownloadListener(I)Ljava/lang/String;
    .locals 3

    sget v0, Lccsansan/aw/getDownloadingRecordByUrl;->addDownloadListener:I

    add-int/lit8 v1, v0, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x35

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    :pswitch_1
    const/16 v1, 0x11

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch p0, :pswitch_data_2

    :pswitch_2
    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_3
    const-string p0, "time_out"

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    :goto_1
    packed-switch v0, :pswitch_data_3

    goto :goto_2

    :pswitch_4
    return-object p0

    :goto_2
    const/16 v0, 0x52

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_5
    const-string p0, "prepare_failed"

    return-object p0

    :pswitch_6
    const-string p0, "net_disk_account_failed"

    return-object p0

    :pswitch_7
    const-string p0, "chk_sum_failed"

    return-object p0

    :pswitch_8
    const-string p0, "network_unreachable"

    return-object p0

    :pswitch_9
    const-string p0, "can_not_create_file"

    return-object p0

    :pswitch_a
    const-string p0, "target_not_support_filetype"

    return-object p0

    :pswitch_b
    const-string p0, "target_not_support_receive_collection"

    return-object p0

    :pswitch_c
    const-string p0, "canceled"

    return-object p0

    :pswitch_d
    const-string p0, "not_enough_space"

    return-object p0

    :pswitch_e
    const-string p0, "file_not_found"

    return-object p0

    :pswitch_f
    const-string p0, "badfile"

    return-object p0

    :pswitch_10
    const-string p0, "upload_error"

    return-object p0

    :pswitch_11
    const/4 p0, 0x4

    new-array p0, p0, [I

    fill-array-data p0, :array_0

    const-string v0, "\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001"

    invoke-static {p0, v0, v2}, Lccsansan/aw/getDownloadingRecordByUrl;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    const-string p0, "network_error"

    return-object p0

    :pswitch_13
    const-string p0, "general_error"

    return-object p0

    :goto_3
    const-string p0, "unknown"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0xe
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/aw/getDownloadingRecordByUrl;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lccsansan/aw/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aw/getDownloadingRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x49

    goto :goto_0

    :cond_1
    const/16 v1, 0x47

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method

.method public final removeDownloadListener()I
    .locals 3

    .line 1
    sget v0, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/aw/getDownloadingRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-super {p0}, Lccsansan/aw/removeDownloadListener;->removeDownloadListener()I

    move-result v0

    sget v1, Lccsansan/aw/getDownloadingRecordByUrl;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/aw/getDownloadingRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method
