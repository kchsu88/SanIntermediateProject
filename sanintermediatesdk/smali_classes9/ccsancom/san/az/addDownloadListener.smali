.class public Lccsancom/san/az/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

.field public static final addDownloadListener:[B

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedRecordByUrl:J

.field private static getDownloadingList:[C

.field private static getDownloadingRecordByUrl:I

.field public static final removeDownloadListener:I

.field private static unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils()V

    invoke-static {}, Lccsancom/san/az/addDownloadListener;->addDownloadListener()V

    sget v1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x1b

    goto :goto_0

    :cond_0
    const/16 v1, 0x23

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v1, 0x5d

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(IIC)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p1, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p1, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/az/addDownloadListener;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/az/addDownloadListener;->getDownloadedRecordByUrl:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static IncentiveDownloadUtils()V
    .locals 2

    const-wide v0, 0x18a7104ae5c18f55L    # 6.470541825240129E-190

    sput-wide v0, Lccsancom/san/az/addDownloadListener;->unifiedDownload:J

    const/16 v0, 0xbd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/addDownloadListener;->getDownloadingList:[C

    const-wide v0, -0x4a559ad208ad6e2bL    # -3.527412315353035E-50

    sput-wide v0, Lccsancom/san/az/addDownloadListener;->getDownloadedRecordByUrl:J

    return-void

    :array_0
    .array-data 2
        0x69s
        -0x6e45s
        0x23d9s
        -0x4af5s
        0x4735s
        -0x26bbs
        0x6a92s
        -0x36es
        -0x7128s
        0x2016s
        -0x4deas
        0x4442s
        -0x2a66s
        0x67b0s
        -0x62ds
        -0x74e9s
        0x1d24s
        -0x50e1s
        0x40das
        0x23s
        -0x6e44s
        0x23c4s
        -0x4af4s
        0x4720s
        -0x26b8s
        0x6a92s
        -0x341s
        -0x7117s
        0x200ds
        -0x4dc7s
        0x4463s
        -0x2a67s
        0x67b7s
        -0x639s
        -0x74f2s
        0x1d3cs
        -0x50afs
        0x40das
        -0x2d56s
        0x64dcs
        -0x9e6s
        -0x77d5s
        0x1a53s
        -0x5474s
        0x3da4s
        -0x3033s
        0x6119s
        -0xc94s
        -0x7ae4s
        0x6es
        -0x6e46s
        0x238as
        -0x4ad3s
        0x4711s
        -0x2688s
        0x6aabs
        -0x36as
        -0x7105s
        0x2029s
        -0x4df3s
        0x446es
        -0x2a4es
        0x6782s
        -0x60es
        -0x74c6s
        0x1d1cs
        -0x5097s
        0x40a5s
        -0x2d61s
        0x64e5s
        -0x9c6s
        -0x77fbs
        0x1a62s
        -0x5441s
        0x3d88s
        -0x300fs
        0x6157s
        -0xcc4s
        -0x7abcs
        0x1684s
        -0x575as
        0x3ac9s
        -0x33fas
        0x5e39s
        -0xf8as
        -0x7e65s
        0x13a7s
        0x49s
        -0x6e45s
        0x23d9s
        -0x4af5s
        0x4735s
        -0x26bbs
        0x6a92s
        -0x30ds
        -0x7136s
        0x200fs
        -0x4dc9s
        0x4446s
        -0x2a69s
        0x67ebs
        -0x67as
        -0x74a7s
        0x1d31s
        -0x50bfs
        0x40a5s
        -0x2d52s
        0x64d4s
        -0x9ees
        -0x77efs
        0x1a4cs
        -0x5478s
        0x3da8s
        -0x3030s
        0x6116s
        -0xcc8s
        -0x7abcs
        0x16a9s
        -0x5758s
        0x3acfs
        -0x33e5s
        0x5e2cs
        -0xf8as
        -0x7e6ds
        0x13ebs
        -0x5a42s
        0x371as
        -0x36c5s
        0x5b3ds
        -0x136cs
        0x7ea6s
        0x10f0s
        -0x5dfes
        0x3423s
        -0x8e5s
        0x6680s
        -0x2b02s
        0x4230s
        -0x4fb1s
        0x2e7bs
        -0x6255s
        0xb9bs
        0x79e7s
        -0x28d9s
        0x4505s
        -0x4c90s
        0x22a2s
        -0x6f72s
        0xeb1s
        0x7c32s
        -0x15f2s
        0x586as
        -0x484cs
        0x2586s
        -0x6c0fs
        -0x7798s
        0x19b7s
        -0x543es
        0x3d3bs
        -0x30das
        0x515cs
        -0x1d6as
        0x74bcs
        0x6d2s
        -0x57f6s
        0x3a25s
        0x5bd1s
        -0x35eds
        0x787ds
        -0x1152s
        0x1c8es
        -0x7d2bs
        0x3134s
        -0x58e2s
        -0x2a88s
        0x7baas
        -0x1670s
        0x1fe8s
        -0x71cds
        0x61s
        -0x6e60s
        0x23des
        -0x4af0s
        0x470bs
        -0x26a6s
        0x6a8as
        -0x34es
        -0x7126s
        0x2009s
    .end array-data
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener(Lccsansan/p/getDownloadedList;)V

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
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Ljava/lang/String;Lccsansan/bh/IncentiveDownloadUtils;)V
    .locals 7

    .line 63
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    const/16 v3, 0x44

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    throw p0

    .line 47
    :goto_2
    const/16 p0, 0x30

    const-string p1, ""

    invoke-static {p1, p0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x56

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v1

    const-string v3, "AD_CONVERT"

    const-string v4, "ad_apk_operate_config"

    const-string v5, "trigger_scene"

    const-string v6, "cloud_config"

    cmpl-float v0, v1, v0

    add-int/lit8 v0, v0, 0x2f

    invoke-static {p1}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p1

    rsub-int/lit8 p1, p1, -0x1

    int-to-char p1, p1

    invoke-static {p0, v0, p1}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {v3, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {p2}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v3, v6, p0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    .line 55
    :cond_1
    new-instance v0, Lccsansan/bs/unifiedDownload$unifiedDownload;

    invoke-direct {v0}, Lccsansan/bs/unifiedDownload$unifiedDownload;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/unifiedDownload$unifiedDownload;

    .line 57
    invoke-virtual {p1, p2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener(Lccsansan/bh/IncentiveDownloadUtils;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/unifiedDownload$unifiedDownload;

    .line 58
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/unifiedDownload$unifiedDownload;

    .line 59
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/unifiedDownload$unifiedDownload;

    .line 60
    const-string p2, "url"

    invoke-virtual {p0, p2}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/unifiedDownload$unifiedDownload;

    .line 61
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->unifiedDownload()I

    move-result p2

    invoke-virtual {p1, p2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->addDownloadListener(I)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/unifiedDownload$unifiedDownload;

    .line 62
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->getDownloadedList()Z

    move-result p2

    invoke-virtual {p1, p2}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->unifiedDownload(Z)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/unifiedDownload$unifiedDownload;

    .line 63
    invoke-static {p1, p0}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;Lccsansan/p/getDownloadedList;)V

    .line 47
    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/2addr p0, v1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/16 p0, 0x10

    goto :goto_3

    :cond_2
    const/16 p0, 0x4a

    :goto_3
    packed-switch p0, :pswitch_data_1

    .line 63
    return-void

    .line 47
    :pswitch_1
    const/4 p0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    .locals 9

    .line 31
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 12
    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_1

    :pswitch_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v0, v2, :cond_5

    goto :goto_2

    :goto_1
    const/16 v2, 0x1a

    if-lt v0, v2, :cond_5

    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v2, Lccsancom/san/az/addDownloadListener;->addDownloadListener:[B

    const/16 v3, 0x2c

    aget-byte v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    sget v4, Lccsancom/san/az/addDownloadListener;->removeDownloadListener:I

    and-int/lit8 v4, v4, 0x15

    int-to-byte v4, v4

    const/16 v5, 0x32

    aget-byte v6, v2, v5

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(BSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xe

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    int-to-byte v6, v4

    const/16 v7, 0x52

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(BSS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    nop

    .line 12
    sget v3, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x3d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    :cond_1
    const/16 v3, 0x13

    :try_start_2
    aget-byte v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aget-byte v4, v2, v5

    int-to-byte v4, v4

    int-to-byte v7, v4

    invoke-static {v3, v4, v7}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(BSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v2, v5

    int-to-byte v4, v4

    const/16 v7, 0x2e

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v8, 0xd

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v4, v7, v2}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(BSS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/16 v5, 0x14

    :goto_3
    packed-switch v5, :pswitch_data_1

    goto :goto_6

    :pswitch_1
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 14
    :cond_3
    :try_start_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;)V

    invoke-static {v1, v1}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v0

    rsub-int v0, v0, 0xa6

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    sub-int/2addr v8, v2

    invoke-static {v1}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    rsub-int v2, v2, 0x5ba2

    int-to-char v2, v2

    invoke-static {v0, v8, v2}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {p0, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 20
    :try_start_4
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v2, "error"

    .line 21
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "exception"

    .line 22
    invoke-static {p0, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener()V

    :goto_4
    nop

    .line 25
    invoke-static {p0, v1, p1, p2}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 12
    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_8

    :catchall_0
    move-exception p1

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    :goto_5
    throw p2

    :cond_4
    throw p1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_5

    .line 27
    :cond_5
    :goto_6
    invoke-static {}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_8

    :catch_1
    move-exception p1

    invoke-static {v1, v1, v1, v1}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result p1

    add-int/lit8 p1, p1, 0x31

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const-string p2, "AzHelperEx"

    cmp-long v4, v0, v2

    add-int/lit8 v4, v4, 0x25

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    add-int/lit8 v5, v5, -0x1

    int-to-char v0, v5

    invoke-static {p1, v4, v0}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_6
    const-string p0, ""

    :goto_7
    invoke-static {p1, p0}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V
    .locals 2

    .line 11
    nop

    .line 10
    const-string v0, "AzHelperEx"

    const-string v1, "active app by launch-sdk"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/addDownloadListener$unifiedDownload;

    invoke-direct {v1, p0, p1}, Lccsancom/san/az/addDownloadListener$unifiedDownload;-><init>(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 p0, 0x1b

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Z)V
    .locals 1

    .line 128
    nop

    .line 91
    invoke-static {}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener()V

    .line 92
    new-instance v0, Lccsancom/san/az/addDownloadListener$getDownloadedList;

    invoke-direct {v0, p1, p0, p2, p3}, Lccsancom/san/az/addDownloadListener$getDownloadedList;-><init>(ZLccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

    sput-object v0, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    .line 128
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/Application;

    sget-object p1, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, p1}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x5f

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 3

    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v1, v0, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x62

    packed-switch v1, :pswitch_data_0

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsancom/san/az/addDownloadListener;->addDownloadListener:[B

    const/16 v1, 0xcf

    :goto_1
    sput v1, Lccsancom/san/az/addDownloadListener;->removeDownloadListener:I

    goto :goto_2

    :pswitch_0
    new-array v1, v2, [B

    fill-array-data v1, :array_1

    sput-object v1, Lccsancom/san/az/addDownloadListener;->addDownloadListener:[B

    const/16 v1, 0x22e2

    goto :goto_1

    :goto_2
    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x77t
        -0x35t
        -0x60t
        0x6ct
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
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0xft
        -0x1at
        0x15t
        0xet
        0x6t
        -0xet
        0x10t
        0x3t
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
        0x9t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        -0x35t
        -0x60t
        0x6ct
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
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0xft
        -0x1at
        0x15t
        0xet
        0x6t
        -0xet
        0x10t
        0x3t
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
        0x9t
    .end array-data
.end method

.method static synthetic addDownloadListener(Ljava/lang/String;Lccsansan/p/getDownloadedList;ZLccsansan/bh/IncentiveDownloadUtils;)V
    .locals 2

    .line 2
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Lccsansan/p/getDownloadedList;ZLccsansan/bh/IncentiveDownloadUtils;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 89
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/addDownloadListener$removeDownloadListener;

    invoke-direct {v1, p1, p0}, Lccsancom/san/az/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/p/getDownloadedList;Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x26

    goto :goto_0

    :cond_0
    const/16 p0, 0x2c

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 4

    .line 39
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 36
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 39
    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_2

    goto :goto_2

    .line 39
    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p0, 0x2e

    :try_start_1
    div-int/2addr p0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    return-void

    .line 32
    :cond_2
    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/KeyguardManager;

    if-eqz v0, :cond_3

    .line 36
    const/16 v1, 0x2b

    goto :goto_3

    :cond_3
    const/16 v1, 0x1f

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 34
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_4

    .line 36
    const/16 v0, 0x43

    goto :goto_4

    :cond_4
    const/16 v0, 0x45

    :goto_4
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    .line 39
    :pswitch_1
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "lock_screen"

    if-nez v0, :cond_5

    .line 36
    :try_start_3
    invoke-virtual {p0, v1, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    goto :goto_5

    .line 34
    :cond_5
    nop

    .line 36
    invoke-virtual {p0, v1, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 39
    :goto_5
    nop

    .line 36
    :goto_6
    :pswitch_2
    const-string v0, "is_background"

    .line 39
    :try_start_4
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    :goto_7
    return-void

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    .locals 6

    .line 22
    nop

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    int-to-char v4, v4

    invoke-static {v1, v3, v4}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AzHelperEx"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsancom/san/az/addDownloadListener;->unifiedDownload()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {}, Lccsansan/bt/unifiedDownload;->IncentiveDownloadUtils()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v0, :cond_0

    .line 7
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    goto :goto_2

    .line 22
    :pswitch_0
    sget v3, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 7
    :try_start_1
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v3

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    :try_start_2
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 22
    :catchall_0
    move-exception p0

    throw p0

    .line 7
    :cond_1
    :try_start_3
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v3

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :goto_2
    invoke-static {p0, p1, p2}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

    return-void

    .line 14
    :cond_2
    invoke-static {p0, p1, p2}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v2, v2, v2}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-char v5, v5

    invoke-static {v3, v4, v5}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error"

    invoke-virtual {p0, p2, p1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string p1, "exception"

    invoke-static {p0, p1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    const-string p1, ""

    invoke-static {p1, v2}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p2

    add-int/lit8 p2, p2, 0x31

    invoke-static {p1, v2}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-static {v2}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-char v4, v4

    invoke-static {p2, v3, v4}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-static {v1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x61

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    :cond_3
    invoke-static {p2, p1}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x45

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    .line 7
    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    nop

    :goto_3
    packed-switch v2, :pswitch_data_1

    .line 22
    :pswitch_1
    nop

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener(ZLccsansan/m/removeDownloadListener;)Z
    .locals 2

    .line 1
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener(ZLccsansan/m/removeDownloadListener;)Z

    move-result p0

    sget p1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return p0
.end method

.method private static getDownloadedList(Lccsansan/p/getDownloadedList;)V
    .locals 10

    .line 20
    const-string v0, "pkg"

    .line 1
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 20
    return-void

    .line 1
    :cond_0
    if-eqz p0, :cond_7

    .line 20
    sget v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0x31

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 20
    :catchall_0
    move-exception p0

    throw p0

    .line 7
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {p0, v5}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    packed-switch v4, :pswitch_data_1

    .line 20
    sget v4, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v4, v4, 0x73

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 8
    :cond_4
    iget-boolean v1, v1, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z

    if-eqz v1, :cond_5

    .line 4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto :goto_4

    .line 8
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_5

    :goto_4
    :pswitch_2
    const/4 v1, 0x0

    .line 9
    :goto_5
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    .line 11
    :cond_6
    new-instance v4, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v6

    shr-int/lit8 v6, v6, 0x16

    sub-int/2addr v2, v6

    const-string v6, "\u2311\u2364\ufc96\u73ad\ue3d2\ufd11\uc2d9\u6f48\u1e36\u304b\ub84d\u29e6\u59d5\uf534\u7af0\uea15\u948a"

    invoke-static {v6, v2}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 12
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 14
    :try_start_1
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "path"

    .line 15
    :try_start_2
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v5, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    invoke-static {v3, v3}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result p0

    add-int/lit16 p0, p0, 0xb3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    rsub-int/lit8 v3, v3, 0xa

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    add-int/lit8 v9, v9, -0x1

    int-to-char v5, v9

    invoke-static {p0, v3, v5}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-virtual {v2, p0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "time"

    .line 17
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, p0, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 18
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v0, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    .line 20
    const-string v0, "AzHelperEx"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsancom/san/az/addDownloadListener;->unifiedDownload:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsancom/san/az/addDownloadListener;->unifiedDownload:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic getDownloadingList(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 4
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0xb

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    .locals 6

    .line 31
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    const/16 v0, 0x37

    goto :goto_0

    :cond_0
    const/16 v0, 0x4c

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :goto_3
    const-string p2, "mode"

    const-string v0, "direct_active"

    invoke-virtual {p0, p2, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;

    invoke-direct {p2, p0, p1}, Lccsancom/san/az/addDownloadListener$getDownloadingRecordByUrl;-><init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    const-string v0, ""

    const/16 v2, 0x30

    invoke-static {v0, v2, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    rsub-int v0, v0, 0x9a

    invoke-static {v1}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0xb

    const v4, 0x87eb

    invoke-static {v2}, Lccsanandroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    add-int/2addr v2, v4

    int-to-char v2, v2

    invoke-static {v0, v3, v2}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, p1, v0, p2}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V

    .line 31
    :goto_4
    goto :goto_7

    .line 3
    :cond_1
    nop

    .line 23
    invoke-static {p0, v1, p1, p2}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Z)V

    .line 25
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1
    const/16 p1, 0x31

    goto :goto_5

    :cond_2
    const/16 p1, 0x5e

    :goto_5
    packed-switch p1, :pswitch_data_1

    goto :goto_6

    :pswitch_1
    sget p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 28
    :cond_3
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;)V

    invoke-static {v1}, Lccsanandroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    add-int/lit16 p1, p1, 0x9b

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    add-int/lit8 p2, p2, 0xb

    const v0, 0x881a

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    add-int/2addr v5, v0

    int-to-char v0, v5

    invoke-static {p1, p2, v0}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 31
    :goto_6
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->getDownloadedList(Lccsansan/p/getDownloadedList;)V

    goto :goto_4

    :goto_7
    return-void

    :catchall_0
    move-exception p0

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    .locals 11

    .line 41
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "az start..."

    const-string v2, "AzHelperEx"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "portal"

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v5}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x39

    :try_start_0
    div-int/2addr v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 41
    :catchall_0
    move-exception p0

    throw p0

    .line 6
    :cond_1
    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v5}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    const/16 v0, 0x42

    goto :goto_1

    :cond_2
    const/16 v0, 0x36

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 8
    :goto_2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    .line 8
    :pswitch_0
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 9
    const/16 v0, 0x4b

    goto :goto_4

    :cond_4
    const/16 v0, 0x51

    :goto_4
    packed-switch v0, :pswitch_data_3

    .line 8
    nop

    .line 9
    invoke-virtual {p0, v5, p1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 8
    :pswitch_1
    nop

    .line 9
    invoke-virtual {p0, v5, p1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    .line 8
    :catchall_1
    move-exception p0

    throw p0

    .line 12
    :goto_5
    :pswitch_2
    const-string v0, "si_az_enable"

    invoke-virtual {p0, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    const/16 v1, 0x26

    goto :goto_6

    :cond_5
    const/16 v1, 0x58

    :goto_6
    packed-switch v1, :pswitch_data_4

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    nop

    .line 13
    :pswitch_3
    nop

    .line 41
    const/4 v8, 0x1

    goto :goto_7

    .line 13
    :cond_6
    const/4 v8, 0x0

    .line 15
    :goto_7
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    move-object v9, p3

    move v10, p2

    invoke-direct/range {v5 .. v10}, Lccsancom/san/az/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;Z)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 41
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "system"

    invoke-static {p2, p3, p1, v0, p0}, Lccsansan/bw/getErrorCode;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4b
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x58
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x20

    goto :goto_0

    :cond_1
    const/16 p0, 0x23

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingRecordByUrl(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    invoke-static {p0}, Lccsansan/bw/getErrorCode;->addDownloadListener(Lccsansan/p/getDownloadedList;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener()V
    .locals 3

    .line 34
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 32
    :cond_0
    sget-object v0, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 33
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    sget-object v2, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Lccsanandroid/app/Application;->unregisterActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 34
    sput-object v1, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/app/Application$ActivityLifecycleCallbacks;

    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x35

    goto :goto_1

    :cond_2
    const/16 v0, 0x47

    :goto_1
    :pswitch_0
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;Lccsansan/p/getDownloadedList;ZLccsansan/bh/IncentiveDownloadUtils;)V
    .locals 4

    .line 9
    nop

    .line 4
    invoke-static {}, Lccsansan/bt/unifiedDownload;->getDownloadStatusByUrl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "AzHelperEx"

    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-static {v2}, Lccsanandroid/graphics/Color;->green(I)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x1

    const-string v0, "\u4a04\u4a65\uf781\u78a4\ud0c9\uce13\u3de9\u9036\u7739\u3b46\u8b44\ud6ce\u30cd\ufe10\u49f7\u156e\ufd8d\ub0a3\u060a\u5832\ubf30\u7341\uc355\u9ec7\u78d5\u3614\u81f3\udd6a\u258f\u08b5\u5e18\u206a\ue72d\ucb4d\u1b1f\u66cb\ua0ca\u8e07\ud9f7\ua517\u6d9c\u40a4\u9677"

    invoke-static {v0, p3}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-static {v3, p3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p1, p0, p2}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

    goto :goto_2

    .line 4
    :pswitch_0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p2

    const/4 v0, 0x0

    const-string v1, "\u8bee\u8b8f\u5500\uda25\u108a\u0e50\ucc7d\u61a2\ub6d3\u99c7\u4b07\u275a\uf127\u5c91\u89b4\ue4fa\u3c67\u1222\uc649\ua9a6\u7edd\ud1ca\u031e\u6f44\ub92f\u948b\u41b0\u2cfe\ue462\uaa2c\u9e5b\ud1e1\u2682\u69c8\udb12\u9745\u613a\u2c94\u19ac\u548e"

    cmpl-float p2, p2, v0

    invoke-static {v1, p2}, Lccsancom/san/az/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v3, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p0, p3}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Ljava/lang/String;Lccsansan/bh/IncentiveDownloadUtils;)V

    .line 9
    :goto_1
    goto :goto_3

    :goto_2
    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_3
    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 26
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 23
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/trackReportClick;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 24
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl(Lccsansan/p/getDownloadedList;)V

    .line 25
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;)V

    .line 26
    const-string v0, "no_permission"

    invoke-static {p0, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x43

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    .locals 2

    .line 5
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x42

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    invoke-static {p0, p1, p2}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V

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
    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V
    .locals 4

    .line 40
    nop

    .line 23
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24
    const-string p0, "AD_CONVERT"

    const-string v0, "Activate break: \"ad_apk_operate_config\" is false"

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad_apk_operate_config"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Lccsansan/bh/IncentiveDownloadUtils;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "trigger_scene"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p1, "cloud_config"

    invoke-static {p0, p1, v0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->deleteDownList()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 33
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 35
    const-string v0, "AzHelperEx"

    const-string v1, "active app by original"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    invoke-direct {v0}, Lccsansan/bs/removeDownloadListener$addDownloadListener;-><init>()V

    .line 37
    invoke-virtual {v0, p1}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->removeDownloadListener(Lccsansan/bh/IncentiveDownloadUtils;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 38
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lccsansan/bs/removeDownloadListener$addDownloadListener;->unifiedDownload(Ljava/lang/Boolean;)Lccsansan/bs/removeDownloadListener$addDownloadListener;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;

    move-result-object p1

    check-cast p1, Lccsansan/bs/removeDownloadListener$addDownloadListener;

    .line 40
    invoke-static {p1, p0}, Lccsancom/san/az/addDownloadListener;->addDownloadListener(Lccsansan/bs/getDownloadingRecordByUrl$removeDownloadListener;Lccsansan/p/getDownloadedList;)V

    goto :goto_2

    :pswitch_0
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 33
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    nop

    :goto_1
    invoke-static {p0, p1}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/16 p0, 0xe

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 40
    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static removeDownloadListener(ZLccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    .locals 2

    .line 46
    nop

    .line 42
    const-string p0, "AzHelperEx"

    const-string v0, "GP2P start"

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    .line 44
    const-string v0, "si_az_key"

    invoke-virtual {p1, v0}, Lccsansan/p/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Lccsancom/san/az/addDownloadListener$addDownloadListener;

    invoke-direct {v1, p1, p3, p2}, Lccsancom/san/az/addDownloadListener$addDownloadListener;-><init>(Lccsansan/p/getDownloadedList;ZLjava/lang/String;)V

    invoke-static {p0, p1, v0, v1}, Lccsansan/be/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;Lccsansan/be/unifiedDownload;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x2d

    goto :goto_0

    :cond_0
    const/16 p0, 0x50

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x61

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(ZLccsansan/m/removeDownloadListener;)Z
    .locals 4

    .line 3
    nop

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 3
    sget v2, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 2
    :cond_0
    const-string v2, "si_az_key"

    invoke-virtual {p1, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 2
    :cond_2
    nop

    .line 3
    const/4 p1, 0x1

    goto :goto_2

    .line 2
    :cond_3
    :goto_1
    nop

    .line 3
    const/4 p1, 0x0

    :goto_2
    invoke-static {}, Lccsansan/bt/unifiedDownload;->getDownloadingList()Z

    move-result v2

    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_1

    if-eqz p0, :cond_5

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_5
    :pswitch_1
    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_6

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(BSS)Ljava/lang/String;
    .locals 9

    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x61

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x21

    sget-object v0, Lccsancom/san/az/addDownloadListener;->addDownloadListener:[B

    mul-int/lit8 p0, p0, 0x2

    rsub-int/lit8 p0, p0, 0x4a

    new-array v4, p1, [B

    add-int/2addr p1, v3

    if-nez v0, :cond_2

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x4

    ushr-int p2, v0, p2

    add-int/lit8 p2, p2, 0x5a

    ushr-int p1, v0, p1

    mul-int/lit8 p1, p1, 0x68

    sget-object v0, Lccsancom/san/az/addDownloadListener;->addDownloadListener:[B

    const/4 v4, 0x5

    shl-int p0, v4, p0

    rsub-int/lit8 p0, p0, 0x23

    new-array v4, p1, [B

    add-int/lit8 p1, p1, 0x12

    if-nez v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :goto_2
    :pswitch_1
    move p2, p1

    move v5, p2

    move p1, p0

    goto :goto_4

    :cond_2
    :goto_3
    add-int/2addr v3, v2

    int-to-byte v5, p2

    aput-byte v5, v4, v3

    if-ne v3, p1, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v1}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    return-object p0

    :cond_4
    aget-byte v5, v0, p0

    sget v6, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v6, v6, 0x6b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v6, v6, 0x2

    move v8, p1

    move p1, p0

    move p0, p2

    move p2, v8

    :goto_4
    add-int/2addr p0, v5

    add-int/lit8 p0, p0, -0x2

    add-int/2addr p1, v2

    move v8, p2

    move p2, p0

    move p0, p1

    move p1, v8

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->getDownloadedList(Lccsansan/p/getDownloadedList;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
    .locals 2

    .line 22
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->getDownloadedRecordByUrl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    const-string p2, "mode"

    const-string v0, "direct_active"

    invoke-virtual {p0, p2, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Lccsancom/san/az/addDownloadListener$getDownloadingList;

    invoke-direct {p2, p0, p1}, Lccsancom/san/az/addDownloadListener$getDownloadingList;-><init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    const-string v0, "no_permission"

    invoke-static {p0, v1, p1, v0, p2}, Lccsancom/san/az/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Ljava/lang/String;Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;)V

    goto :goto_0

    :cond_1
    nop

    .line 21
    invoke-static {p0, v1, p1, p2}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;ZLjava/lang/String;Z)V

    .line 22
    invoke-static {p0}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener(Lccsansan/p/getDownloadedList;)V

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :cond_2
    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload()Z
    .locals 8

    .line 90
    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x7b

    if-lt v0, v2, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :cond_1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_6

    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    sget v2, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    :cond_2
    :try_start_0
    sget-object v2, Lccsancom/san/az/addDownloadListener;->addDownloadListener:[B

    const/16 v3, 0x2c

    aget-byte v3, v2, v3

    sub-int/2addr v3, v1

    int-to-byte v3, v3

    sget v4, Lccsancom/san/az/addDownloadListener;->removeDownloadListener:I

    and-int/lit8 v4, v4, 0x15

    int-to-byte v4, v4

    const/16 v5, 0x32

    aget-byte v6, v2, v5

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(BSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xe

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    int-to-byte v6, v4

    const/16 v7, 0x52

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(BSS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x13

    :try_start_1
    aget-byte v3, v2, v3

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aget-byte v4, v2, v5

    int-to-byte v4, v4

    int-to-byte v7, v4

    invoke-static {v3, v4, v7}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(BSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v2, v5

    int-to-byte v4, v4

    const/16 v5, 0x2e

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v7, 0xd

    aget-byte v2, v2, v7

    int-to-byte v2, v2

    invoke-static {v4, v5, v2}, Lccsancom/san/az/addDownloadListener;->unifiedDownload(BSS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    const/16 v0, 0x56

    goto :goto_2

    :cond_3
    const/4 v0, 0x6

    :goto_2
    packed-switch v0, :pswitch_data_1

    sget v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    throw v1

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    throw v1

    :cond_5
    throw v0

    :cond_6
    :pswitch_0
    const/4 v1, 0x0

    :cond_7
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;)Z
    .locals 11

    .line 88
    nop

    .line 64
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    goto/16 :goto_4

    .line 67
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v3, ""

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 p0, 0x0

    const-string v8, "AzHelperEx"

    cmp-long v9, v4, v6

    rsub-int v4, v9, 0x87

    invoke-static {p0, p0}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float p0, v5, p0

    rsub-int/lit8 p0, p0, 0x15

    const v5, 0xf73a

    const/16 v6, 0x30

    invoke-static {v3, v6}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    sub-int/2addr v5, v3

    int-to-char v3, v5

    invoke-static {v4, p0, v3}, Lccsancom/san/az/addDownloadListener;->IncentiveDownloadUtils(IIC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget p0, Lccsancom/san/az/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener;->getDownloadingRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return v2

    :goto_2
    const/16 p0, 0x33

    :try_start_0
    div-int/2addr p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    throw p0

    .line 73
    :cond_2
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    .line 74
    new-instance v4, Lccsansan/p/getDownloadedList;

    invoke-direct {v4}, Lccsansan/p/getDownloadedList;-><init>()V

    if-eqz v0, :cond_3

    .line 78
    iget-object v3, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    .line 79
    iget-object v0, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 74
    :cond_3
    const-string v0, "CPIReportInfo null"

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    .line 79
    :goto_3
    :try_start_2
    const-string v5, "portal"

    .line 81
    invoke-virtual {v4, v5, v3}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    .line 82
    invoke-virtual {v4, v3, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v4, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/util/List;)V

    .line 87
    invoke-virtual {v4, p0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;)V

    .line 88
    sget-object p0, Lccsansan/bh/IncentiveDownloadUtils;->GP_SUCCESS:Lccsansan/bh/IncentiveDownloadUtils;

    invoke-static {v4, p0}, Lccsancom/san/az/addDownloadListener;->removeDownloadListener(Lccsansan/p/getDownloadedList;Lccsansan/bh/IncentiveDownloadUtils;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catch_0
    move-exception p0

    return v2

    :goto_4
    const/4 p0, 0x0

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    :goto_5
    packed-switch p0, :pswitch_data_2

    return v1

    .line 64
    :pswitch_2
    return v2

    :pswitch_data_0
    .packed-switch 0x21
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
.end method
