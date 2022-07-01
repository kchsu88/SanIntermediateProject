.class public Lccsancom/san/az/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedRecordByUrl:I

.field public static final getDownloadingList:I

.field private static unifiedDownload:Lccsancom/san/az/IncentiveDownloadUtils;


# instance fields
.field private addDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private getDownloadedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/util/Pair<",
            "Lccsansan/p/getDownloadedList;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    const/16 v0, 0x6f

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingList:I

    return-void

    :array_0
    .array-data 1
        0x15t
        -0x42t
        -0x31t
        0x71t
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedList:Ljava/util/Map;

    return-void
.end method

.method public static addDownloadListener()Lccsancom/san/az/IncentiveDownloadUtils;
    .locals 2

    .line 4
    sget-object v0, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/az/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lccsancom/san/az/IncentiveDownloadUtils;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/az/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lccsancom/san/az/IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsancom/san/az/IncentiveDownloadUtils;-><init>()V

    sput-object v1, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/az/IncentiveDownloadUtils;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/az/IncentiveDownloadUtils;

    return-object v0
.end method

.method private static addDownloadListener(ISS)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x61

    sget-object v0, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    add-int/lit8 p2, p2, 0x4

    mul-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x17

    new-array v1, p0, [B

    add-int/lit8 p0, p0, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    move p2, p1

    move p1, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p1

    add-int/lit8 p2, p2, 0x1

    aput-byte v4, v1, v3

    if-ne v3, p0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v0, p2

    move v5, p1

    move p1, p0

    move p0, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move v0, p2

    move p2, v5

    :goto_1
    neg-int p0, p0

    add-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v5, p1

    move p1, p0

    move p0, v5

    goto :goto_0
.end method

.method private addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 39
    nop

    .line 31
    sget v4, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/16 v5, 0x45

    and-int/lit8 v6, v4, -0x46

    xor-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    and-int/2addr v4, v5

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v6, v6, 0x2

    const/16 v4, 0x3b

    if-nez v6, :cond_0

    .line 29
    const/16 v6, 0x3b

    goto :goto_0

    :cond_0
    const/16 v6, 0x40

    :goto_0
    const/16 v8, 0xb

    const/4 v9, 0x0

    const/4 v10, 0x0

    packed-switch v6, :pswitch_data_0

    .line 1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    goto :goto_2

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    .line 29
    const/16 v6, 0x50

    goto :goto_1

    :cond_1
    const/16 v6, 0x18

    :goto_1
    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    .line 1
    :goto_2
    :try_start_1
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v6, :cond_2

    .line 29
    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    const/4 v6, 0x1

    :goto_3
    packed-switch v6, :pswitch_data_2

    goto/16 :goto_1e

    .line 1
    :goto_4
    :try_start_2
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_4

    .line 29
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    or-int/lit8 v2, v0, 0x10

    shl-int/2addr v2, v5

    xor-int/lit8 v0, v0, 0x10

    sub-int/2addr v2, v0

    sub-int/2addr v2, v10

    sub-int/2addr v2, v5

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    :cond_3
    packed-switch v5, :pswitch_data_3

    .line 39
    goto/16 :goto_1e

    .line 3
    :cond_4
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v11, :cond_5

    .line 39
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v2, v0, 0x6b

    and-int/lit8 v0, v0, 0x6b

    shl-int/2addr v0, v5

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    return-void

    .line 8
    :cond_5
    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v11, :cond_6

    .line 29
    const/16 v11, 0x48

    goto :goto_5

    :cond_6
    const/16 v11, 0x12

    :goto_5
    packed-switch v11, :pswitch_data_4

    sget v7, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v11, v7, 0x4f

    xor-int/lit8 v12, v11, -0x1

    or-int/lit8 v7, v7, 0x4f

    and-int/2addr v7, v12

    shl-int/2addr v11, v5

    neg-int v11, v11

    neg-int v11, v11

    xor-int v12, v7, v11

    and-int/2addr v7, v11

    shl-int/2addr v7, v5

    add-int/2addr v12, v7

    rem-int/lit16 v7, v12, 0x80

    sput v7, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_16

    goto/16 :goto_14

    .line 22
    :pswitch_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 29
    sget v6, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    or-int/lit8 v11, v6, 0x2c

    shl-int/2addr v11, v5

    xor-int/lit8 v6, v6, 0x2c

    sub-int/2addr v11, v6

    sub-int/2addr v11, v5

    rem-int/lit16 v6, v11, 0x80

    sput v6, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_7

    .line 39
    :cond_7
    const/4 v6, 0x0

    .line 22
    :cond_8
    :goto_6
    if-ge v6, v4, :cond_9

    .line 29
    const/16 v11, 0x30

    goto :goto_7

    :cond_9
    const/16 v11, 0x5e

    :goto_7
    packed-switch v11, :pswitch_data_5

    :goto_8
    :pswitch_3
    goto/16 :goto_1f

    :pswitch_4
    sget v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v12, v11, 0xd

    xor-int/lit8 v11, v11, 0xd

    or-int/2addr v11, v12

    and-int v13, v12, v11

    or-int/2addr v11, v12

    add-int/2addr v13, v11

    rem-int/lit16 v11, v13, 0x80

    sput v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_a

    .line 22
    :cond_a
    :try_start_6
    aget-object v11, v3, v6

    .line 23
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 39
    sget v13, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v14, v13, -0x4a

    xor-int/lit8 v15, v13, -0x1

    and-int/lit8 v15, v15, 0x49

    or-int/2addr v14, v15

    and-int/lit8 v13, v13, 0x49

    shl-int/2addr v13, v5

    or-int v15, v14, v13

    shl-int/2addr v15, v5

    xor-int/2addr v13, v14

    sub-int/2addr v15, v13

    rem-int/lit16 v13, v15, 0x80

    sput v13, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v15, v15, 0x2

    if-eqz v15, :cond_b

    .line 29
    const/16 v13, 0x63

    goto :goto_9

    :cond_b
    const/4 v13, 0x3

    :goto_9
    packed-switch v13, :pswitch_data_6

    .line 39
    :pswitch_5
    nop

    .line 23
    int-to-byte v13, v10

    int-to-byte v14, v13

    and-int/lit8 v15, v14, -0x1

    or-int/lit8 v16, v14, -0x1

    xor-int v17, v15, v16

    and-int v15, v15, v16

    shl-int/2addr v15, v5

    add-int v15, v17, v15

    int-to-byte v15, v15

    :try_start_7
    invoke-static {v13, v14, v15}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener(ISS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sget v14, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingList:I

    and-int/2addr v14, v5

    int-to-byte v14, v14

    int-to-byte v15, v14

    sget-object v16, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    aget-byte v7, v16, v10

    int-to-byte v7, v7

    invoke-static {v14, v15, v7}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v12, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroid/content/pm/PackageManager;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 24
    :try_start_8
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12, v5}, Lccsanandroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-nez v7, :cond_c

    .line 39
    sget v7, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v11, v7, 0x57

    xor-int/lit8 v12, v11, -0x1

    or-int/lit8 v7, v7, 0x57

    and-int/2addr v7, v12

    shl-int/2addr v11, v5

    add-int/2addr v7, v11

    rem-int/lit16 v11, v7, 0x80

    sput v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_14

    goto/16 :goto_13

    .line 27
    :cond_c
    :try_start_9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11, v7}, Lccsansan/bw/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v7

    .line 28
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v11, :cond_d

    .line 29
    const/4 v11, 0x1

    goto :goto_a

    :cond_d
    const/4 v11, 0x0

    :goto_a
    packed-switch v11, :pswitch_data_7

    .line 1
    sget v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v12, v11, -0x1a

    xor-int/lit8 v13, v11, -0x1

    and-int/lit8 v13, v13, 0x19

    or-int/2addr v12, v13

    and-int/lit8 v11, v11, 0x19

    shl-int/2addr v11, v5

    neg-int v11, v11

    neg-int v11, v11

    xor-int/lit8 v11, v11, -0x1

    sub-int/2addr v12, v11

    sub-int/2addr v12, v5

    rem-int/lit16 v11, v12, 0x80

    sput v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_e

    .line 28
    :cond_e
    :try_start_a
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-nez v11, :cond_f

    .line 29
    const/16 v11, 0x35

    goto :goto_b

    :cond_f
    const/16 v11, 0x4b

    :goto_b
    packed-switch v11, :pswitch_data_8

    goto/16 :goto_13

    .line 1
    :pswitch_6
    sget v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    const/16 v12, 0x11

    and-int/lit8 v13, v11, -0x12

    xor-int/lit8 v14, v11, -0x1

    and-int/2addr v14, v12

    or-int/2addr v13, v14

    and-int/2addr v11, v12

    shl-int/2addr v11, v5

    xor-int/lit8 v11, v11, -0x1

    sub-int/2addr v13, v11

    sub-int/2addr v13, v5

    rem-int/lit16 v11, v13, 0x80

    sput v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_10

    .line 29
    const/16 v11, 0x1e

    goto :goto_c

    :cond_10
    const/16 v11, 0x9

    :goto_c
    packed-switch v11, :pswitch_data_9

    :try_start_b
    iget-object v11, v1, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    goto :goto_e

    :pswitch_7
    iget-object v11, v1, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsanandroid/util/Pair;

    if-eqz v11, :cond_11

    const/4 v12, 0x0

    goto :goto_d

    :cond_11
    const/4 v12, 0x1

    :goto_d
    packed-switch v12, :pswitch_data_a

    goto :goto_13

    :goto_e
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsanandroid/util/Pair;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v11, :cond_12

    const/4 v12, 0x0

    goto :goto_f

    :cond_12
    const/4 v12, 0x1

    :goto_f
    packed-switch v12, :pswitch_data_b

    goto :goto_13

    .line 39
    :pswitch_8
    sget v2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v3, v2, -0x54

    xor-int/lit8 v4, v2, -0x1

    and-int/lit8 v4, v4, 0x53

    or-int/2addr v3, v4

    and-int/lit8 v2, v2, 0x53

    shl-int/2addr v2, v5

    neg-int v2, v2

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_13

    .line 29
    const/4 v2, 0x1

    goto :goto_10

    :cond_13
    const/4 v2, 0x0

    :goto_10
    packed-switch v2, :pswitch_data_c

    .line 31
    :try_start_d
    iget-object v2, v11, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    goto :goto_11

    :pswitch_9
    iget-object v2, v11, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v7, v2}, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v7, v2}, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :try_start_e
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 39
    :goto_12
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    .line 1
    :catchall_1
    move-exception v0

    move-object v2, v0

    throw v2

    .line 31
    :cond_14
    :goto_13
    :pswitch_a
    and-int/lit8 v7, v6, -0x7a

    or-int/lit8 v6, v6, -0x7a

    xor-int/lit8 v6, v6, -0x1

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    and-int/lit8 v6, v7, 0x7c

    or-int/lit8 v7, v7, 0x7c

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    .line 39
    sget v7, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v7, v7, 0x61

    rem-int/lit16 v11, v7, 0x80

    sput v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    goto/16 :goto_6

    .line 23
    :catchall_2
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_15

    throw v2

    :cond_15
    throw v0

    .line 9
    :cond_16
    :goto_14
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 39
    sget v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v12, v11, -0x44

    xor-int/lit8 v13, v11, -0x1

    and-int/lit8 v13, v13, 0x43

    or-int/2addr v12, v13

    and-int/lit8 v11, v11, 0x43

    shl-int/2addr v11, v5

    neg-int v11, v11

    neg-int v11, v11

    and-int v13, v12, v11

    or-int/2addr v11, v12

    add-int/2addr v13, v11

    rem-int/lit16 v11, v13, 0x80

    sput v11, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_17

    .line 29
    const/4 v11, 0x0

    goto :goto_15

    :cond_17
    const/4 v11, 0x1

    :goto_15
    packed-switch v11, :pswitch_data_d

    .line 39
    :pswitch_b
    nop

    .line 9
    int-to-byte v11, v10

    int-to-byte v12, v11

    or-int/lit8 v13, v12, 0x0

    shl-int/2addr v13, v5

    xor-int/lit8 v14, v12, 0x0

    sub-int/2addr v13, v14

    sub-int/2addr v13, v10

    sub-int/2addr v13, v5

    int-to-byte v13, v13

    :try_start_10
    invoke-static {v11, v12, v13}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sget v12, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingList:I

    and-int/2addr v12, v5

    int-to-byte v12, v12

    int-to-byte v13, v12

    sget-object v14, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    aget-byte v14, v14, v10

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener(ISS)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroid/content/pm/PackageManager;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 10
    :try_start_11
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v5}, Lccsanandroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    if-nez v6, :cond_18

    .line 29
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x76

    sub-int/2addr v0, v10

    sub-int/2addr v0, v5

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    .line 39
    return-void

    .line 13
    :cond_18
    :try_start_12
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3, v6}, Lccsansan/bw/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    if-nez v6, :cond_19

    .line 29
    const/4 v6, 0x0

    goto :goto_16

    :cond_19
    const/4 v6, 0x1

    :goto_16
    packed-switch v6, :pswitch_data_e

    .line 39
    sget v6, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v7, v6, 0xb

    or-int/2addr v6, v8

    or-int v9, v7, v6

    shl-int/2addr v9, v5

    xor-int/2addr v6, v7

    sub-int/2addr v9, v6

    rem-int/lit16 v6, v9, 0x80

    sput v6, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1a

    .line 29
    const/4 v6, 0x0

    goto :goto_17

    :cond_1a
    const/4 v6, 0x1

    :goto_17
    packed-switch v6, :pswitch_data_f

    .line 39
    :try_start_13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1a

    .line 15
    :pswitch_c
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    if-nez v2, :cond_1b

    .line 29
    const/4 v2, 0x1

    goto :goto_18

    :cond_1b
    const/4 v2, 0x0

    :goto_18
    packed-switch v2, :pswitch_data_10

    :goto_19
    goto :goto_1c

    .line 39
    :goto_1a
    const/16 v6, 0x48

    :try_start_14
    div-int/2addr v6, v10
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-nez v2, :cond_1c

    .line 29
    const/4 v2, 0x1

    goto :goto_1b

    :cond_1c
    const/4 v2, 0x0

    :goto_1b
    packed-switch v2, :pswitch_data_11

    goto :goto_19

    .line 16
    :goto_1c
    :try_start_15
    iget-object v2, v1, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/util/Pair;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    if-eqz v2, :cond_1d

    .line 29
    const/4 v6, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v6, 0x0

    :goto_1d
    packed-switch v6, :pswitch_data_12

    goto/16 :goto_8

    .line 1
    :pswitch_d
    sget v6, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    xor-int/lit8 v7, v6, 0x1

    and-int/lit8 v9, v6, 0x1

    or-int/2addr v7, v9

    shl-int/2addr v7, v5

    and-int/lit8 v9, v6, -0x2

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v5

    or-int/2addr v6, v9

    neg-int v6, v6

    and-int v9, v7, v6

    or-int/2addr v6, v7

    add-int/2addr v9, v6

    rem-int/lit16 v6, v9, 0x80

    sput v6, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1e

    .line 18
    :cond_1e
    :try_start_16
    iget-object v2, v2, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v2}, Lccsancom/san/az/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    .line 29
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v2, v0, -0x3c

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    and-int/2addr v0, v4

    shl-int/2addr v0, v5

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v2, v0

    and-int/2addr v0, v2

    shl-int/2addr v0, v5

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1f

    .line 39
    :cond_1f
    goto :goto_1f

    :catchall_3
    move-exception v0

    move-object v2, v0

    throw v2

    .line 9
    :catchall_4
    move-exception v0

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_20

    throw v2

    :cond_20
    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    .line 31
    :goto_1e
    :pswitch_e
    nop

    .line 39
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    .line 31
    :catchall_5
    move-exception v0

    move-object v2, v0

    throw v2

    .line 39
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    :goto_1f
    nop

    .line 1
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    or-int/lit8 v2, v0, 0x2c

    shl-int/2addr v2, v5

    xor-int/lit8 v0, v0, 0x2c

    sub-int/2addr v2, v0

    and-int/lit8 v0, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_22

    .line 29
    goto :goto_20

    :cond_22
    const/16 v8, 0x2f

    :goto_20
    packed-switch v8, :pswitch_data_13

    .line 39
    return-void

    .line 1
    :pswitch_f
    const/16 v2, 0x4b

    :try_start_18
    div-int/lit8 v7, v2, 0x0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    move-object v2, v0

    goto :goto_22

    :goto_21
    throw v2

    :goto_22
    goto :goto_21

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x12
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x30
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x35
        :pswitch_6
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x9
        :pswitch_7
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0xb
        :pswitch_f
    .end packed-switch
.end method

.method private getDownloadStatusByUrl(Ljava/lang/String;)Z
    .locals 4

    .line 42
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x5e

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/util/Pair;

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/util/Pair;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_c

    .line 42
    :goto_4
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v3, v0, 0x5b

    xor-int/lit8 v0, v0, 0x5b

    or-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 41
    const/16 v0, 0x3f

    goto :goto_5

    :cond_3
    const/16 v0, 0x4e

    :goto_5
    packed-switch v0, :pswitch_data_3

    .line 42
    iget-object v0, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_7

    :pswitch_2
    iget-object v0, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 41
    const/16 v0, 0x44

    goto :goto_6

    :cond_4
    const/16 v0, 0x2e

    :goto_6
    packed-switch v0, :pswitch_data_4

    goto :goto_c

    .line 42
    :goto_7
    const/16 v3, 0xc

    :try_start_1
    div-int/2addr v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_5

    .line 41
    const/16 v0, 0x1c

    goto :goto_8

    :cond_5
    const/16 v0, 0x1b

    :goto_8
    packed-switch v0, :pswitch_data_5

    goto :goto_c

    .line 42
    :pswitch_3
    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 41
    const/4 p1, 0x1

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    :goto_9
    packed-switch p1, :pswitch_data_6

    goto :goto_c

    .line 42
    :pswitch_4
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v0, p1, 0x3d

    xor-int/lit8 v3, p1, 0x3d

    or-int/2addr v3, v0

    add-int/2addr v0, v3

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    .line 41
    const/16 v0, 0x58

    goto :goto_a

    :cond_7
    const/16 v0, 0x15

    :goto_a
    packed-switch v0, :pswitch_data_7

    .line 42
    :pswitch_5
    add-int/lit8 p1, p1, 0x7e

    sub-int/2addr p1, v1

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_8

    .line 41
    const/4 p1, 0x1

    goto :goto_b

    :cond_8
    const/4 p1, 0x0

    :goto_b
    packed-switch p1, :pswitch_data_8

    .line 42
    :pswitch_6
    const/4 p1, 0x1

    goto :goto_e

    :catchall_0
    move-exception p1

    throw p1

    :goto_c
    :pswitch_7
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    xor-int/lit8 v0, p1, 0x1f

    and-int/lit8 v3, p1, 0x1f

    or-int/2addr v0, v3

    shl-int/2addr v0, v1

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 p1, p1, 0x1f

    and-int/2addr p1, v3

    neg-int p1, p1

    or-int v3, v0, p1

    shl-int/2addr v3, v1

    xor-int/2addr p1, v0

    sub-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    .line 41
    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    const/4 p1, 0x1

    :goto_d
    packed-switch p1, :pswitch_data_9

    .line 42
    :pswitch_8
    const/4 p1, 0x0

    :goto_e
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v3, v0, 0x23

    and-int/lit8 v0, v0, 0x23

    shl-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_a

    .line 41
    goto :goto_f

    :cond_a
    const/4 v1, 0x0

    :goto_f
    packed-switch v1, :pswitch_data_a

    .line 42
    goto :goto_10

    :pswitch_9
    return p1

    :goto_10
    const/16 v0, 0xe

    :try_start_2
    div-int/2addr v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_1
    move-exception p1

    throw p1

    :catchall_2
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4e
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x44
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1c
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x58
        :pswitch_5
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method private getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 3
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v1, v0, 0x51

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v0, v0, 0x51

    and-int/2addr v0, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    neg-int v1, v1

    neg-int v1, v1

    and-int v3, v0, v1

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/util/Pair;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_3

    :pswitch_0
    sget v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v3, v1, 0x15

    or-int/lit8 v1, v1, 0x15

    neg-int v1, v1

    neg-int v1, v1

    xor-int v4, v3, v1

    and-int/2addr v1, v3

    shl-int/2addr v1, v2

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 2
    :cond_2
    iget-object v1, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    const/16 v1, 0x18

    goto :goto_2

    :cond_3
    const/16 v1, 0x4a

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    sget v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v3, v1, 0x43

    xor-int/lit8 v1, v1, 0x43

    or-int/2addr v1, v3

    neg-int v1, v1

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    :cond_4
    iget-object p1, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v3, v1, 0x57

    xor-int/lit8 v1, v1, 0x57

    or-int/2addr v1, v3

    neg-int v1, v1

    neg-int v1, v1

    and-int v4, v3, v1

    or-int/2addr v1, v3

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    :cond_5
    packed-switch v2, :pswitch_data_2

    return-object p1

    :pswitch_2
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    const-string p1, ""

    sget v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    xor-int/lit8 v3, v1, 0x60

    and-int/lit8 v1, v1, 0x60

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    or-int/lit8 v1, v3, -0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v2, v3, -0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/16 v1, 0x11

    goto :goto_4

    :cond_6
    const/16 v1, 0x63

    :goto_4
    packed-switch v1, :pswitch_data_3

    goto :goto_5

    :pswitch_3
    return-object p1

    :goto_5
    const/16 v1, 0x29

    :try_start_1
    div-int/2addr v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x63
        :pswitch_3
    .end packed-switch
.end method

.method private removeDownloadListener()Z
    .locals 8

    .line 40
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    xor-int/lit8 v1, v0, 0x55

    and-int/lit8 v0, v0, 0x55

    or-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_2

    :goto_1
    const/16 v4, 0x32

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_1

    goto :goto_5

    :pswitch_1
    sget v4, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/16 v5, 0x35

    and-int/lit8 v6, v4, -0x36

    xor-int/lit8 v7, v4, -0x1

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    and-int/2addr v4, v5

    shl-int/2addr v4, v2

    neg-int v4, v4

    neg-int v4, v4

    xor-int v5, v6, v4

    and-int/2addr v4, v6

    shl-int/2addr v4, v2

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/2addr v5, v1

    if-nez v5, :cond_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    const/4 v4, 0x1

    :goto_4
    packed-switch v4, :pswitch_data_2

    goto :goto_2

    :pswitch_2
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v3, v0, 0x73

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 v0, v0, 0x73

    and-int/2addr v0, v4

    shl-int/2addr v3, v2

    or-int v4, v0, v3

    shl-int/2addr v4, v2

    xor-int/2addr v0, v3

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/2addr v4, v1

    if-eqz v4, :cond_4

    :cond_4
    and-int/lit8 v3, v0, 0x47

    xor-int/lit8 v4, v3, -0x1

    or-int/lit8 v0, v0, 0x47

    and-int/2addr v0, v4

    shl-int/2addr v3, v2

    xor-int v4, v0, v3

    and-int/2addr v0, v3

    shl-int/2addr v0, v2

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/2addr v4, v1

    return v2

    :goto_5
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v4, v0, 0x37

    and-int/lit8 v5, v0, 0x37

    or-int/2addr v4, v5

    shl-int/2addr v4, v2

    xor-int/lit8 v5, v5, -0x1

    or-int/lit8 v0, v0, 0x37

    and-int/2addr v0, v5

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/2addr v4, v1

    return v3

    :catchall_0
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 4

    .line 7
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    or-int/lit8 v2, v0, 0x65

    shl-int/2addr v2, v1

    xor-int/lit8 v0, v0, 0x65

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 2
    :cond_2
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedList:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/san/az/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v0, p1, v2, v3}, Lccsancom/san/az/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v0, p1, 0xa

    or-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    or-int/lit8 p1, v0, -0x1

    shl-int/2addr p1, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0x1a

    goto :goto_1

    :cond_3
    const/16 p1, 0x42

    :goto_1
    :pswitch_0
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    new-instance v1, Lccsanandroid/util/Pair;

    invoke-direct {v1, p2, p3}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 p2, p1, 0x3f

    xor-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, p2

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener(Ljava/lang/String;)Lccsanandroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Lccsansan/p/getDownloadedList;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    or-int/lit8 v1, v0, 0x3b

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x3b

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x42

    goto :goto_0

    :cond_0
    const/16 v0, 0x57

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/util/Pair;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/util/Pair;

    goto :goto_2

    :goto_1
    const/16 v0, 0x41

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v3, v0, 0x47

    xor-int/lit8 v0, v0, 0x47

    or-int/2addr v0, v3

    and-int v4, v3, v0

    or-int/2addr v0, v3

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    return-object p1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl(Ljava/lang/String;)V
    .locals 5

    .line 21
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v1, v0, 0x33

    const/16 v2, 0x33

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v1, v0

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 21
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v4, v0, 0x3

    and-int/lit8 v0, v0, 0x3

    shl-int/2addr v0, v1

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 19
    :cond_3
    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v4, "notification"

    invoke-virtual {v0, v4}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    xor-int/lit8 v0, p1, 0x57

    and-int/lit8 p1, p1, 0x57

    shl-int/2addr p1, v1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :goto_2
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    or-int/lit8 v0, p1, 0x54

    shl-int/2addr v0, v1

    xor-int/lit8 p1, p1, 0x54

    sub-int/2addr v0, p1

    and-int/lit8 p1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x34

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/16 p1, 0x5f

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
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
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 8

    .line 11
    nop

    .line 2
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v1, v0, 0x11

    const/16 v2, 0x11

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    and-int v3, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/4 v0, 0x2

    rem-int/2addr v3, v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 1
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x25

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    move-result v3

    :try_start_0
    array-length v7, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    .line 2
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :goto_2
    const/16 v3, 0x25

    goto :goto_3

    :cond_2
    const/16 v3, 0x2b

    :goto_3
    packed-switch v3, :pswitch_data_2

    :goto_4
    goto/16 :goto_e

    .line 11
    :pswitch_1
    sget v3, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v7, v3, 0x67

    and-int/lit8 v3, v3, 0x67

    shl-int/2addr v3, v4

    add-int/2addr v7, v3

    rem-int/lit16 v3, v7, 0x80

    sput v3, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/2addr v7, v0

    if-nez v7, :cond_3

    .line 1
    const/16 v5, 0x51

    goto :goto_5

    :cond_3
    nop

    :goto_5
    packed-switch v5, :pswitch_data_3

    .line 2
    invoke-direct {p0}, Lccsancom/san/az/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_7

    :pswitch_2
    invoke-direct {p0}, Lccsancom/san/az/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v3

    :try_start_1
    array-length v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_4

    .line 1
    const/16 v3, 0x33

    goto :goto_6

    :cond_4
    const/16 v3, 0x52

    :goto_6
    packed-switch v3, :pswitch_data_4

    goto :goto_9

    .line 11
    :catchall_1
    move-exception p1

    throw p1

    .line 1
    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    :cond_5
    const/4 v3, 0x0

    :goto_8
    packed-switch v3, :pswitch_data_5

    :goto_9
    goto :goto_b

    .line 6
    :pswitch_3
    iget-object v1, p0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsancom/san/az/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v1, v3, p1}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v1, p1, 0x19

    xor-int/lit8 p1, p1, 0x19

    or-int/2addr p1, v1

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_6

    .line 1
    const/16 p1, 0x57

    goto :goto_a

    :cond_6
    const/16 p1, 0x62

    :goto_a
    packed-switch p1, :pswitch_data_6

    .line 11
    :pswitch_4
    goto :goto_e

    .line 2
    :goto_b
    nop

    .line 3
    invoke-virtual {p0, p1, v1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Z)V

    .line 11
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    or-int/lit8 v1, p1, 0x47

    shl-int/2addr v1, v4

    xor-int/lit8 p1, p1, 0x47

    sub-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/2addr v1, v0

    if-nez v1, :cond_7

    .line 1
    const/16 p1, 0x4a

    goto :goto_c

    :cond_7
    const/16 p1, 0x29

    :goto_c
    packed-switch p1, :pswitch_data_7

    .line 11
    goto :goto_d

    :pswitch_5
    return-void

    :goto_d
    :try_start_2
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    throw p1

    :goto_e
    nop

    .line 1
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/2addr p1, v0

    if-eqz p1, :cond_8

    goto :goto_f

    :cond_8
    const/16 v2, 0x1d

    :goto_f
    packed-switch v2, :pswitch_data_8

    goto :goto_10

    .line 11
    :pswitch_6
    return-void

    .line 1
    :goto_10
    :try_start_3
    array-length p1, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x51
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x52
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x57
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x29
        :pswitch_5
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1d
        :pswitch_6
    .end packed-switch
.end method

.method public getDownloadingList(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 3

    .line 3
    nop

    .line 2
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/Map;

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsanandroid/util/Pair;

    invoke-direct {v2, p1, p2}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    xor-int/lit8 p2, p1, 0x55

    and-int/lit8 p1, p1, 0x55

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/16 p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x31

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x3c

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 7
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    xor-int/lit8 v1, v0, 0x55

    and-int/lit8 v0, v0, 0x55

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    const/16 v0, 0x49

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x67

    sub-int/2addr v0, v2

    or-int/lit8 v3, v0, -0x1

    shl-int/2addr v3, v2

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 2
    :cond_2
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedList:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsancom/san/az/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, v3, p1}, Lccsancom/san/az/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    and-int/lit8 v0, p1, 0x5f

    xor-int/lit8 p1, p1, 0x5f

    or-int/2addr p1, v0

    and-int v3, v0, p1

    or-int/2addr p1, v0

    add-int/2addr v3, p1

    rem-int/lit16 p1, v3, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v0, p1, 0x7c

    or-int/lit8 p1, p1, 0x7c

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0x46

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 3
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x2

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    neg-int v0, v0

    xor-int v3, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/util/Pair;

    if-eqz p1, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/util/Pair;

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 3
    :catchall_0
    move-exception p1

    throw p1

    .line 1
    :goto_2
    const/16 v0, 0x35

    goto :goto_3

    :cond_2
    const/4 v0, 0x3

    :goto_3
    packed-switch v0, :pswitch_data_2

    :goto_4
    :pswitch_1
    goto :goto_8

    .line 2
    :pswitch_2
    iget-object v0, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0xd

    if-nez v0, :cond_3

    .line 1
    const/16 v0, 0xd

    goto :goto_5

    :cond_3
    const/16 v0, 0x20

    :goto_5
    packed-switch v0, :pswitch_data_3

    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    and-int/lit8 v4, v0, 0x4f

    xor-int/lit8 v0, v0, 0x4f

    or-int/2addr v0, v4

    neg-int v0, v0

    neg-int v0, v0

    and-int v5, v4, v0

    or-int/2addr v0, v4

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    .line 3
    :cond_4
    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    const/16 v4, 0x6f

    xor-int/lit8 v5, v0, 0x6f

    and-int/lit8 v6, v0, 0x6f

    or-int/2addr v5, v6

    shl-int/2addr v5, v2

    and-int/lit8 v6, v0, -0x70

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v4

    or-int/2addr v0, v6

    neg-int v0, v0

    or-int v4, v5, v0

    shl-int/lit8 v2, v4, 0x1

    xor-int/2addr v0, v5

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 1
    const/16 v3, 0x5e

    goto :goto_6

    :cond_5
    nop

    :goto_6
    packed-switch v3, :pswitch_data_4

    .line 3
    goto :goto_7

    :pswitch_3
    return-object p1

    :goto_7
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    throw p1

    :goto_8
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v0, p1, 0x51

    and-int/lit8 p1, p1, 0x51

    or-int/2addr p1, v0

    shl-int/2addr p1, v2

    neg-int v0, v0

    xor-int v1, p1, v0

    and-int/2addr p1, v0

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const-string p1, ""

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x35
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd
        :pswitch_3
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/String;Z)V
    .locals 5

    .line 17
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4d

    goto :goto_1

    :cond_1
    const/16 v0, 0x31

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 17
    :pswitch_2
    sget v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    xor-int/lit8 v1, v0, 0x6b

    and-int/lit8 v4, v0, 0x6b

    or-int/2addr v1, v4

    shl-int/2addr v1, v2

    and-int/lit8 v4, v0, -0x6c

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x6b

    or-int/2addr v0, v4

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 12
    :cond_3
    iget-object v0, p0, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedList:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 14
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/san/az/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 16
    invoke-direct {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lccsancom/san/az/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v0, p1, v1, v4, p2}, Lccsancom/san/az/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    or-int/lit8 p2, p1, 0x12

    shl-int/2addr p2, v2

    xor-int/lit8 p1, p1, 0x12

    sub-int/2addr p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p2, p2, -0x1

    shl-int/2addr p2, v2

    add-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 17
    :cond_4
    nop

    :goto_4
    sget p1, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    xor-int/lit8 p2, p1, 0x2f

    and-int/lit8 p1, p1, 0x2f

    or-int/2addr p1, p2

    shl-int/2addr p1, v2

    neg-int p2, p2

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr p1, p2

    sub-int/2addr p1, v2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 11
    const/16 p1, 0x36

    goto :goto_5

    :cond_5
    const/16 p1, 0x52

    :goto_5
    packed-switch p1, :pswitch_data_3

    .line 17
    goto :goto_6

    :pswitch_3
    return-void

    :goto_6
    :try_start_1
    array-length p1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x52
        :pswitch_3
    .end packed-switch
.end method
