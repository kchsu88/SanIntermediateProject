.class public Lccsansan/e/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile IncentiveDownloadUtils:Lccsansan/e/removeDownloadListener;

.field private static addDownloadListener:C

.field private static deleteDownItem:C

.field private static getDownloadStatusByUrl:C

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:C

.field private static getDownloadingList:[C

.field private static getDownloadingRecordByUrl:I

.field private static unifiedDownload:J


# instance fields
.field private final removeDownloadListener:Lccsanandroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$KfX1v5eM0MCx9CdaSdJuge6QDuI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsansan/e/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    invoke-static {}, Lccsansan/e/removeDownloadListener;->addDownloadListener()V

    sget v0, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsansan/e/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/e/removeDownloadListener;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsansan/e/removeDownloadListener;->removeDownloadListener:Lccsanandroid/os/Handler;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/e/removeDownloadListener;)Lccsanandroid/os/Handler;
    .locals 2

    .line 2
    sget v0, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x26

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    iget-object p0, p0, Lccsansan/e/removeDownloadListener;->removeDownloadListener:Lccsanandroid/os/Handler;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 2105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 2107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 2109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 2110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 2111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 2113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 2114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 2116
    const v5, 0xe370

    .line 2117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 2119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/e/removeDownloadListener;->getDownloadStatusByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/e/removeDownloadListener;->getDownloadedRecordByUrl:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 2122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsansan/e/removeDownloadListener;->addDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/e/removeDownloadListener;->deleteDownItem:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 2126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 2117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 2129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 2130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 2131
    goto :goto_0

    .line 2134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method static addDownloadListener()V
    .locals 1

    const/16 v0, 0x18c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/e/removeDownloadListener;->getDownloadingList:[C

    const/16 v0, 0x40dc

    sput-char v0, Lccsansan/e/removeDownloadListener;->deleteDownItem:C

    const/16 v0, 0x296a

    sput-char v0, Lccsansan/e/removeDownloadListener;->getDownloadStatusByUrl:C

    const/16 v0, 0x28da

    sput-char v0, Lccsansan/e/removeDownloadListener;->getDownloadedRecordByUrl:C

    const v0, 0xad32

    sput-char v0, Lccsansan/e/removeDownloadListener;->addDownloadListener:C

    return-void

    nop

    :array_0
    .array-data 2
        0x7es
        0xfes
        0x103s
        0x104s
        0xeas
        0xebs
        0xfcs
        0xd6s
        0xc1s
        0xe2s
        0xf9s
        0x101s
        0xffs
        0xffs
        0xdbs
        0xdbs
        0x104s
        0x101s
        0x100s
        0xfbs
        0xecs
        0xees
        0xfds
        0xeas
        0xe4s
        0xf3s
        0xf9s
        0x79s
        0xf3s
        0xf3s
        0xf1s
        0xf7s
        0xfcs
        0xfcs
        0x101s
        0x102s
        0xf8s
        0x40s
        0xa3s
        0xc9s
        0xb8s
        0xb7s
        0xd1s
        0xd0s
        0xcbs
        0xcbs
        0xc6s
        0xc0s
        0xb1s
        0xb7s
        0xcas
        0xbbs
        0xb9s
        0xc8s
        0xcds
        0xces
        0xd1s
        0xa8s
        0xa8s
        0xcas
        0xccs
        0xd4s
        0xb6s
        0x1es
        0x2es
        0x42s
        0x69s
        0x6bs
        0x6es
        0x4as
        0x4as
        0x71s
        0x5bs
        0x57s
        0x6cs
        0x72s
        0x69s
        0x68s
        0x48s
        0x4as
        0x73s
        0x70s
        0x6fs
        0x6as
        0x5bs
        0x5ds
        0x6cs
        0x59s
        0x53s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
        0x59s
        0x5as
        0x6bs
        0x45s
        0x79s
        0xf8s
        0xeas
        0xeas
        0xe9s
        0xe8s
        0x102s
        0x101s
        0xfcs
        0xfcs
        0xf7s
        0xf1s
        0xe2s
        0xe8s
        0xfbs
        0xecs
        0xeas
        0xf9s
        0xfes
        0xffs
        0x102s
        0xdds
        0xb7s
        0xb3s
        0xd7s
        0x100s
        0xffs
        0xfas
        0xfbs
        0xfas
        0xfbs
        0x102s
        0xe7s
        0xbds
        0x24s
        0x56s
        0x52s
        0x30s
        0x49s
        0x6as
        0x64s
        0x44s
        0x24s
        0x28s
        0x4es
        0x73s
        0x70s
        0x6fs
        0x6as
        0x5bs
        0x5ds
        0x6cs
        0x59s
        0x53s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
        0x59s
        0x5as
        0x5bs
        0x5bs
        0x69s
        0x42s
        0x47s
        0x6as
        0x6as
        0x39s
        0x72s
        0x73s
        0x72s
        0x6bs
        0x4ds
        0x31s
        0x28s
        0x47s
        0x6bs
        0x44s
        0x4as
        0x71s
        0x69s
        0x69s
        0x69s
        0x68s
        0x6es
        0x70s
        0x72s
        0x74s
        0x49s
        0x49s
        0x6as
        0x64s
        0x44s
        0x24s
        0x28s
        0x4es
        0x73s
        0x70s
        0x6fs
        0x6as
        0x5bs
        0x5ds
        0x6cs
        0x59s
        0x53s
        0x62s
        0x68s
        0x6ds
        0x6ds
        0x72s
        0x73s
        0x59s
        0x5as
        0x5bs
        0x5bs
        0x69s
        0x60s
        0xe5s
        0x10ds
        0x10as
        0xe2s
        0xc5s
        0xc9s
        0xefs
        0x114s
        0x111s
        0x110s
        0x10bs
        0xfcs
        0xfes
        0x10ds
        0xfas
        0xf4s
        0x103s
        0x109s
        0x10es
        0x10es
        0x113s
        0x114s
        0xfas
        0xfbs
        0xfcs
        0xfcs
        0x10as
        0x10ds
        0x10cs
        0x105s
        0x10ds
        0x112s
        0x111s
        0x112s
        0x4as
        0xa1s
        0xcas
        0xdfs
        0xdas
        0xdbs
        0xdcs
        0xe1s
        0xe7s
        0xbes
        0xbfs
        0xe7s
        0xe1s
        0xdcs
        0xd7s
        0xb5s
        0xbds
        0xe7s
        0xe0s
        0xdfs
        0xe0s
        0xdfs
        0xe4s
        0xe5s
        0xbcs
        0xb6s
        0xd6s
        0xdcs
        0xe1s
        0xe1s
        0xe6s
        0xe7s
        0xdds
        0xb6s
        0x98s
        0x9cs
        0xc2s
        0xe7s
        0xe4s
        0xe3s
        0xdes
        0xcfs
        0xd1s
        0xe0s
        0xcds
        0xc7s
        0xd6s
        0xdcs
        0xe1s
        0xe1s
        0xe6s
        0xe7s
        0xcds
        0xces
        0xcfs
        0xcfs
        0xdds
        0x84s
        0x106s
        0x105s
        0x100s
        0xf7s
        0xfas
        0xfcs
        0xfbs
        0xfbs
        0xe7s
        0xecs
        0x106s
        0x105s
        0x100s
        0x100s
        0xfbs
        0xf5s
        0xefs
        0xf6s
        0x100s
        0xe9s
        0xe8s
        0xf7s
        0xfas
        0xfds
        0xf9s
        0xd9s
        0xbbs
        0xb7s
        0xdcs
        0x107s
        0x105s
        0x103s
        0x101s
        0xfbs
        0xfcs
        0xfcs
        0xfcs
        0x104s
        0xdds
        0xd4s
        0xfas
        0xfds
        0xf9s
        0xfas
        0xd8s
        0xc1s
        0xc1s
        0xbbs
        0xc4s
        0xe0s
        0xfes
        0x64s
        0xf2s
        0x11bs
        0x118s
        0x117s
        0x112s
        0x103s
        0x105s
        0x114s
        0x101s
        0xfbs
        0x10as
        0x110s
        0x115s
        0x115s
        0x11as
        0x11bs
        0x101s
        0x102s
        0x103s
        0x103s
        0x111s
        0xebs
        0xc9s
        0xd6s
        0xd6s
        0xefs
        0x116s
        0x114s
        0x116s
        0x11as
        0x112s
        0x10cs
        0x115s
        0x116s
    .end array-data
.end method

.method private static synthetic getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 215
    nop

    .line 212
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 213
    const-string v0, "referrer"

    invoke-virtual {p0, v0}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateReferrer() referrer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPINotifyObserver"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x62

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;
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
    sget-object v8, Lccsansan/e/removeDownloadListener;->getDownloadingList:[C

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

.method private removeDownloadListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 211
    nop

    .line 204
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 205
    iput v1, v0, Lccsanandroid/os/Message;->what:I

    .line 206
    iput-object p1, v0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    new-instance p1, Lccsanandroid/os/Bundle;

    invoke-direct {p1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 208
    const-string v1, "adId"

    invoke-virtual {p1, v1, p4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string p4, "pkg"

    invoke-virtual {p1, p4, p5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 211
    iget-object p1, p0, Lccsansan/e/removeDownloadListener;->removeDownloadListener:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0, p2, p3}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    sget p1, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 5
    sget v0, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x46

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :goto_3
    sget p1, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void

    .line 4
    :cond_2
    invoke-static {p1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1
    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    nop

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 5
    invoke-static {}, Lccsansan/cy/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/cy/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cy/IncentiveDownloadUtils;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lccsansan/e/removeDownloadListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lccsansan/e/removeDownloadListener$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :pswitch_1
    return-void

    :catchall_1
    move-exception p1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/e/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lccsansan/e/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p0, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload()Lccsansan/e/removeDownloadListener;
    .locals 2

    .line 3
    sget-object v0, Lccsansan/e/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/e/removeDownloadListener;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lccsansan/e/removeDownloadListener;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lccsansan/e/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/e/removeDownloadListener;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lccsansan/e/removeDownloadListener;

    invoke-direct {v1}, Lccsansan/e/removeDownloadListener;-><init>()V

    sput-object v1, Lccsansan/e/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/e/removeDownloadListener;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/e/removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/e/removeDownloadListener;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V
    .locals 26

    .line 203
    move/from16 v0, p3

    const-string v10, "CPINotifyObserver"

    .line 54
    const/4 v11, 0x4

    const/4 v12, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lccsansan/e/removeDownloadListener;->unifiedDownload:J

    .line 55
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/service/notification/StatusBarNotification;->getNotification()Lccsanandroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 56
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_17

    .line 57
    iget-object v2, v1, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v3, "android.title"

    invoke-virtual {v2, v3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    iget-object v2, v1, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v3, "android.progress"

    invoke-virtual {v2, v3}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v11, [I

    const/16 v5, 0x63

    const/4 v6, 0x0

    aput v5, v3, v6

    const/16 v5, 0x22

    aput v5, v3, v12

    const/16 v5, 0x8f

    const/4 v7, 0x2

    aput v5, v3, v7

    const/4 v5, 0x3

    aput v6, v3, v5

    const-string v8, "\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0001"

    invoke-static {v3, v8, v6}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v2, Lccsansan/p/getDownloadingList;->getDownloadingList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, v1, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v15, v2

    goto :goto_0

    .line 64
    :cond_0
    const-wide/16 v15, 0x0

    .line 67
    :goto_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    invoke-virtual {v2, v4}, Lccsansan/m/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 70
    :try_start_1
    iget-object v8, v2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_1
    move-object v8, v3

    .line 70
    :goto_1
    nop

    .line 72
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v11, [I

    const/16 v19, 0x85

    aput v19, v14, v6

    const/16 v19, 0x23

    aput v19, v14, v12

    aput v6, v14, v7

    const/16 v20, 0x1f

    aput v20, v14, v5

    const-string v5, "\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000"

    invoke-static {v14, v5, v12}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 203
    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 72
    :goto_2
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 203
    const/16 v5, 0x9

    goto :goto_3

    :cond_3
    const/16 v5, 0x17

    :goto_3
    packed-switch v5, :pswitch_data_0

    goto :goto_4

    .line 73
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v5, v2, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sub-long v13, v13, v20

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    invoke-static {}, Lccsansan/cy/unifiedDownload;->removeDownloadListener()J

    move-result-wide v20

    cmp-long v5, v13, v20

    if-gez v5, :cond_4

    new-array v0, v11, [I

    const/16 v1, 0xa8

    aput v1, v0, v6

    const/16 v1, 0x31

    aput v1, v0, v12

    aput v6, v0, v7

    const/4 v1, 0x3

    aput v6, v0, v1

    const-string v1, "\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001"

    invoke-static {v0, v1, v12}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 74
    :cond_4
    :goto_4
    if-eqz v2, :cond_e

    .line 78
    iget-object v13, v2, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v13, :cond_e

    iget-boolean v13, v13, Lccsansan/m/getDownloadingRecordByUrl;->removeDownloadListener:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v13, :cond_5

    .line 203
    const/4 v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    packed-switch v13, :pswitch_data_1

    sget v13, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v13, v13, 0x79

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v13, v7

    if-nez v13, :cond_6

    .line 78
    :cond_6
    :try_start_2
    new-array v13, v11, [I

    const/16 v14, 0xd9

    aput v14, v13, v6

    aput v19, v13, v12

    const/16 v14, 0xa1

    aput v14, v13, v7

    const/16 v14, 0x1c

    const/16 v19, 0x3

    aput v14, v13, v19

    const-string v14, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0000"

    invoke-static {v13, v14, v12}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 79
    invoke-static {v10, v13}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v13, v2, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget v13, v13, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingList:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ge v9, v13, :cond_7

    .line 203
    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    const/4 v13, 0x1

    :goto_6
    packed-switch v13, :pswitch_data_2

    sget v13, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v13, v13, 0x61

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v13, v7

    if-nez v13, :cond_8

    :try_start_3
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v14, 0xa

    :try_start_4
    div-int/2addr v14, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v13, :cond_9

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 80
    :cond_8
    :try_start_5
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    :goto_7
    nop

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v11, [I

    const/16 v2, 0xfc

    aput v2, v1, v6

    const/16 v2, 0x39

    aput v2, v1, v12

    const/16 v2, 0x74

    aput v2, v1, v7

    const/4 v2, 0x3

    aput v6, v1, v2

    const-string v2, "\u0000\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001"

    invoke-static {v1, v2, v12}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_9
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 85
    iget-object v5, v2, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v17, 0x0

    cmp-long v5, v22, v17

    if-eqz v5, :cond_a

    .line 203
    const/16 v5, 0x2f

    goto :goto_8

    :cond_a
    const/16 v5, 0x2e

    :goto_8
    packed-switch v5, :pswitch_data_3

    .line 86
    const/16 v5, 0x34

    iget-object v5, v2, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    goto/16 :goto_b

    .line 94
    :pswitch_2
    iget-object v3, v2, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-boolean v3, v3, Lccsansan/m/getDownloadingRecordByUrl;->addDownloadListener:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v3, :cond_d

    .line 203
    sget v3, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x5d

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/2addr v3, v7

    const-wide/32 v22, 0x2932e00

    if-eqz v3, :cond_c

    :try_start_6
    iget-object v3, v2, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    rem-long v24, v13, v24

    cmp-long v3, v24, v22

    if-gez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    packed-switch v3, :pswitch_data_4

    goto :goto_a

    .line 94
    :cond_c
    :try_start_7
    iget-object v3, v2, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sub-long v24, v13, v24

    cmp-long v3, v24, v22

    if-gez v3, :cond_d

    :goto_a
    new-array v0, v11, [I

    const/16 v1, 0x135

    aput v1, v0, v6

    const/16 v5, 0x34

    aput v5, v0, v12

    const/16 v1, 0x93

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v1, v0, v1

    const-string v1, "\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0000\u0001"

    invoke-static {v0, v1, v6}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, v2, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v3, v2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v13, v14}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V

    .line 97
    iget-object v0, v2, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    iget-object v0, v2, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-wide v0, v0, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    iget-object v3, v2, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v5, v2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    move-object/from16 v15, p0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lccsansan/e/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, v2, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, v2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const/16 v17, 0x3

    iget-object v3, v2, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    move-wide v5, v13

    move-object v13, v0

    move-object v14, v1

    move-wide v15, v5

    move-object/from16 v18, v3

    invoke-static/range {v13 .. v18}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 99
    iget-object v0, v2, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v1, v2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v2, v2, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-static {v0, v1, v4, v7, v2}, Lccsansan/l/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 94
    :cond_d
    const/16 v5, 0x34

    goto :goto_c

    .line 86
    :goto_b
    iget-boolean v5, v5, Lccsansan/m/getDownloadingRecordByUrl;->unifiedDownload:Z

    if-eqz v5, :cond_e

    iget-object v5, v2, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    sub-long v22, v13, v22

    const-wide/32 v20, 0x240c8400

    cmp-long v5, v22, v20

    if-gez v5, :cond_e

    const-string v0, "\u60c6\ube53\u5647\ue03e\u0c55\u8bb8\u03a5\u2fe4\ub046\ud6d2\u2dc3\u2ea1\u1548\ufe4c\ud416\u5c24\u66ab\ue2b3\u505e\ue0fd\u46b6\u0c3a\u2a57\u6e54\ue5cd\u92ea\u4d4c\ude6c\u8c44\u0165\uca24\u4b32\u2e53\u8202\u3c36\u4fdd\u7b2e\u3268\u22b7\u2d6a\u9088\u9c17\u8467\ubb99"

    const/16 v1, 0x30

    invoke-static {v3, v1}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2b

    invoke-static {v0, v1}, Lccsansan/e/removeDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, v2, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v3, v2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v13, v14}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;J)V

    .line 89
    iget-object v0, v2, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, v2, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-wide v5, v0, Lccsansan/m/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    iget-object v7, v2, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v8, v2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lccsansan/e/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, v2, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v0, v2, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    const/4 v5, 0x2

    iget-object v6, v2, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    move-object v2, v0

    move-wide v3, v13

    invoke-static/range {v1 .. v6}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    return-void

    .line 99
    :cond_e
    :goto_c
    :pswitch_3
    if-eqz v2, :cond_10

    .line 105
    iget-object v3, v2, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-wide/16 v17, 0x0

    cmp-long v3, v13, v17

    if-eqz v3, :cond_10

    .line 203
    sget v3, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x5

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v3, v7

    if-nez v3, :cond_f

    .line 105
    :cond_f
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v2, v2, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v13, v2

    const-wide/32 v2, 0x240c8400

    cmp-long v5, v13, v2

    if-gtz v5, :cond_10

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have clicked ad, just return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const/4 v2, 0x3

    if-eq v0, v2, :cond_13

    .line 110
    invoke-static {}, Lccsansan/cy/unifiedDownload;->performAction()I

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-le v9, v2, :cond_11

    .line 203
    const/16 v5, 0x29

    goto :goto_d

    :cond_11
    const/16 v5, 0x34

    :goto_d
    packed-switch v5, :pswitch_data_5

    sget v2, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v2, v7

    if-nez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_e

    :cond_12
    const/4 v2, 0x0

    :goto_e
    packed-switch v2, :pswitch_data_6

    .line 110
    :try_start_9
    invoke-static {}, Lccsansan/cy/unifiedDownload;->ActionTypeDownload()I

    move-result v2

    goto :goto_f

    .line 203
    :pswitch_4
    invoke-static {}, Lccsansan/cy/unifiedDownload;->ActionTypeDownload()I

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/16 v3, 0xe

    :try_start_a
    div-int/2addr v3, v6
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-lt v9, v2, :cond_13

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 110
    :goto_f
    if-lt v9, v2, :cond_13

    :goto_10
    :pswitch_5
    :try_start_b
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not in progress configed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--text:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 115
    :cond_13
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadingRecordByUrl()Z

    move-result v1

    if-nez v1, :cond_16

    .line 116
    new-instance v1, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    .line 203
    const/16 v2, 0x35

    goto :goto_11

    :cond_14
    const/16 v2, 0x44

    :goto_11
    packed-switch v2, :pswitch_data_7

    goto :goto_12

    .line 117
    :pswitch_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v4}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v5, 0x240c8400

    cmp-long v7, v2, v5

    if-gez v7, :cond_15

    return-void

    .line 120
    :cond_15
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    .line 125
    :cond_16
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v13

    new-instance v14, Lccsansan/e/removeDownloadListener$unifiedDownload;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v8

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-wide v7, v15

    invoke-direct/range {v1 .. v9}, Lccsansan/e/removeDownloadListener$unifiedDownload;-><init>(Lccsansan/e/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    invoke-virtual {v13, v14}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 203
    goto :goto_13

    .line 125
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v11, [I

    fill-array-data v2, :array_0

    const-string v3, "\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001"

    invoke-static {v2, v3, v12}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x34
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x35
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        0x169
        0x23
        0xa8
        0x17
    .end array-data
.end method

.method public getDownloadingList(Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 53
    nop

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lccsansan/e/removeDownloadListener;->unifiedDownload:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x64

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/service/notification/StatusBarNotification;->getNotification()Lccsanandroid/app/Notification;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 21
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_9

    .line 14
    :pswitch_0
    sget v6, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_a

    .line 15
    iget-object v6, v0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v8, "android.title"

    invoke-virtual {v6, v8}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x4

    new-array v10, v9, [I

    fill-array-data v10, :array_0

    const-string v11, "\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000"

    invoke-static {v10, v11, v4}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "CPINotifyObserver"

    invoke-static {v10, v8}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v11, 0x2

    if-eqz v8, :cond_3

    .line 53
    sget v0, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v0, v11

    if-nez v0, :cond_2

    const/16 v0, 0x11

    :try_start_0
    div-int/2addr v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_2
    return-void

    .line 17
    :cond_3
    new-array v8, v9, [I

    fill-array-data v8, :array_1

    const-string v12, "\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001"

    invoke-static {v8, v12, v4}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-static {v8}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 53
    sget v8, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v8, v11

    if-nez v8, :cond_4

    .line 21
    const/16 v7, 0x29

    goto :goto_1

    :cond_4
    const/16 v7, 0x52

    :goto_1
    packed-switch v7, :pswitch_data_1

    sget-object v7, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_3

    :pswitch_1
    sget-object v7, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    :goto_2
    goto :goto_4

    :goto_3
    const/4 v8, 0x0

    :try_start_1
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v7, :cond_9

    goto :goto_2

    .line 22
    :goto_4
    iget-object v0, v0, Lccsanandroid/app/Notification;->extras:Lccsanandroid/os/Bundle;

    const-string v7, "android.text"

    invoke-virtual {v0, v7}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v9, [I

    fill-array-data v8, :array_2

    const-string v12, "\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000\u0001"

    invoke-static {v8, v12, v5}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 21
    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    packed-switch v7, :pswitch_data_2

    .line 24
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 53
    sget v7, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v7, v7, 0xf

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/2addr v7, v11

    if-nez v7, :cond_6

    .line 24
    :cond_6
    nop

    .line 25
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 26
    array-length v8, v7

    .line 53
    const/4 v12, 0x0

    .line 26
    :goto_6
    if-ge v12, v8, :cond_9

    aget-object v0, v7, v12

    const/4 v13, -0x1

    .line 29
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v14, v9, [I

    const/16 v15, 0x3f

    aput v15, v14, v5

    const/16 v15, 0x24

    aput v15, v14, v4

    aput v5, v14, v11

    const/4 v15, 0x3

    aput v5, v14, v15

    const-string v15, "\u0001\u0001\u0001\u0000\u0000\u0001\u0000\u0000\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0000"

    invoke-static {v14, v15, v4}, Lccsansan/e/removeDownloadListener;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    goto :goto_7

    .line 30
    :catch_0
    move-exception v0

    .line 32
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, -0xffffd7

    invoke-static {v5, v5, v5}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v16

    sub-int v15, v15, v16

    const-string v4, "\u37cc\uaa09\u2bad\uaa4e\uca6e\u2989\u5c4b\u2031\ucf72\u9c92\ub48f\u30a4\u8eb0\uf5a2\u3af7\u1a42\uc507\u2b22\u1bd8\u36fb\uffe0\u6691\ubda9\u4820\u4d4c\ude6c\uf5ee\u1329\u8614\u1a81\uf386\ufbbd\u83cb\ua1fd\u69a5\u2afc\u0493\u5b48\u2149\ue1b6\u07eb\u96cd"

    invoke-static {v4, v15}, Lccsansan/e/removeDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-nez v13, :cond_7

    .line 35
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v4, Lccsansan/e/removeDownloadListener$getDownloadingList;

    invoke-direct {v4, v1, v2, v3}, Lccsansan/e/removeDownloadListener$getDownloadingList;-><init>(Lccsansan/e/removeDownloadListener;Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 41
    sget-object v0, Lccsansan/p/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 53
    sget v0, Lccsansan/e/removeDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/e/removeDownloadListener;->getDownloadedList:I

    rem-int/2addr v0, v11

    if-eqz v0, :cond_8

    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 48
    :cond_9
    :goto_8
    :pswitch_2
    sget-object v0, Lccsansan/p/getDownloadingList;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    :goto_9
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    const-string v4, "\u60c6\ube53\u03a5\u2fe4\ub046\ud6d2\u2dc3\u2ea1"

    invoke-static {v4, v0}, Lccsansan/e/removeDownloadListener;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lccsansan/cy/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 53
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v4, Lccsansan/e/removeDownloadListener$addDownloadListener;

    invoke-direct {v4, v1, v2, v3}, Lccsansan/e/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/e/removeDownloadListener;Lccsanandroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x1b
        0x91
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x1b
        0xa
        0x8f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x25
        0x1a
        0x5e
        0x0
    .end array-data
.end method
