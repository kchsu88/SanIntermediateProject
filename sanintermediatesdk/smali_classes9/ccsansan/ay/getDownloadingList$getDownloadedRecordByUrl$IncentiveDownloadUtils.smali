.class Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->getDownloadingList(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:[C

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;

.field final synthetic getDownloadingList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:[C

    return-void

    :array_0
    .array-data 2
        0x22s
        0x59s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x66s
        0x6bs
        0x6as
    .end array-data
.end method

.method constructor <init>(Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;

    iput-object p2, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
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
    sget-object v8, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->addDownloadListener:[C

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
.method public callBackOnUIThread()V
    .locals 8

    .line 5
    sget v0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x15

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsansan/au/addDownloadListener;->getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload;

    if-nez v0, :cond_1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/au/addDownloadListener;->getDownloadingList:Lccsansan/k/addDownloadListener$unifiedDownload;

    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    :pswitch_1
    goto :goto_3

    .line 5
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :goto_1
    const/16 v0, 0x2a

    goto :goto_2

    :cond_1
    const/16 v0, 0x13

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_6

    .line 2
    :goto_3
    iget-object v0, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;

    invoke-static {v0}, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1
    sget v0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :try_start_1
    array-length v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    throw v0

    .line 2
    :cond_2
    goto :goto_4

    :cond_3
    iget-object v0, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;

    invoke-static {v0}, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    iget-object v0, v0, Lccsansan/aj/getDownloadingList;->execute:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v4, v1

    .line 3
    :goto_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;

    invoke-static {v0}, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;)Lccsansan/aj/getDownloadingList;

    move-result-object v3

    iget-object v5, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iget-object v0, p0, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;

    invoke-static {v0}, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    const-string v1, "rid"

    invoke-virtual {v0, v1}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lccsansan/ay/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsansan/ay/getDownloadingList$removeDownloadListener;)V

    goto :goto_7

    :cond_4
    :goto_6
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string v1, "\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/ay/getDownloadingList$getDownloadedRecordByUrl$IncentiveDownloadUtils;->getDownloadingList([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0, v2}, Lccsansan/bq/deleteDownItem;->getDownloadingList(Ljava/lang/String;I)V

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0xb
        0x0
        0x0
    .end array-data
.end method
