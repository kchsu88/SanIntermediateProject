.class final Lccsansan/cf/unifiedDownload$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cf/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Lccsansan/dt/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/cf/unifiedDownload$getDownloadingList;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cf/unifiedDownload$getDownloadingList;->getDownloadingList:I

    const/16 v0, 0x37

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cf/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:[C

    return-void

    :array_0
    .array-data 2
        0x20s
        0x52s
        0x64s
        0x64s
        0x64s
        0x42s
        0x4as
        0x71s
        0x47s
        0x32s
        0x59s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x42s
        0x3as
        0x5as
        0x6as
        0x6fs
        0x6fs
        0x50s
        0x27s
        0x31s
        0x59s
        0x6es
        0x6es
        0x69s
        0x64s
        0x6bs
        0x4as
        0x47s
        0x69s
        0x6cs
        0x75s
        0x73s
        0x70s
        0x6es
        0x45s
        0x4as
        0x71s
        0x47s
        0x33s
        0x46s
        0x4cs
        0x3as
        0x34s
        0x4es
        0x3as
        0x37s
        0x4es
        0x53s
        0x42s
    .end array-data
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cf/unifiedDownload$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p2, p0, Lccsansan/cf/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

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
    sget-object v8, Lccsansan/cf/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:[C

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
.method public callBack(Ljava/lang/Exception;)V
    .locals 5

    .line 2
    sget p1, Lccsansan/cf/unifiedDownload$getDownloadingList;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/cf/unifiedDownload$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/cf/unifiedDownload;->addDownloadListener()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    const/16 p1, 0xf

    goto :goto_0

    :cond_1
    const/16 p1, 0x2f

    :goto_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    sget p1, Lccsansan/cf/unifiedDownload$getDownloadingList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x59

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/cf/unifiedDownload$getDownloadingList;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 1
    :cond_2
    iget-object p1, p0, Lccsansan/cf/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dt/removeDownloadListener;

    invoke-static {p1}, Lccsansan/cf/unifiedDownload;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lccsansan/cf/unifiedDownload$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsansan/cf/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v3, "san_no_net_guide_network_dialog_connect"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const-string v4, "\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001"

    invoke-static {v3, v4, v0}, Lccsansan/cf/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3, v2}, Lccsancom/san/common/offline/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    :pswitch_1
    sget p1, Lccsansan/cf/unifiedDownload$getDownloadingList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsansan/cf/unifiedDownload$getDownloadingList;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    const/16 p1, 0x3b

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x37
        0x0
        0x0
    .end array-data
.end method

.method public execute()V
    .locals 2

    .line 1
    sget v0, Lccsansan/cf/unifiedDownload$getDownloadingList;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cf/unifiedDownload$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/cf/unifiedDownload$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lccsansan/cf/unifiedDownload;->addDownloadListener(Z)Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/cf/unifiedDownload$getDownloadingList;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lccsansan/cf/unifiedDownload;->addDownloadListener(Z)Z

    goto :goto_2

    :goto_1
    const/16 v0, 0x38

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
