.class public Lccsansan/bn/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:[C

.field private static deleteDownItem:I

.field private static getDownloadingList:C

.field public static final removeDownloadListener:I

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    invoke-static {}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bn/IncentiveDownloadUtils;->unifiedDownload:[B

    const/16 v0, 0x1d

    sput v0, Lccsansan/bn/IncentiveDownloadUtils;->removeDownloadListener:I

    sget v0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
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
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x68t
        0x32t
        0x34t
        -0x58t
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;JJ)V
    .locals 16

    .line 35
    move-object/from16 v0, p0

    const-string v1, "San_InitInfo"

    const-string v2, ""

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "San init duration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Stats.AdCommon"

    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x14

    .line 19
    :try_start_0
    new-array v3, v3, [F

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    aput v5, v3, v6

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x1

    aput v5, v3, v7

    const v5, 0x3e99999a    # 0.3f

    const/4 v8, 0x2

    aput v5, v3, v8

    const/4 v5, 0x3

    const/high16 v9, 0x3f000000    # 0.5f

    aput v9, v3, v5

    const/4 v5, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v3, v5

    const/4 v5, 0x5

    const/high16 v9, 0x40000000    # 2.0f

    aput v9, v3, v5

    const/4 v5, 0x6

    const/high16 v9, 0x40400000    # 3.0f

    aput v9, v3, v5

    const/4 v5, 0x7

    const/high16 v9, 0x40800000    # 4.0f

    aput v9, v3, v5

    const/16 v5, 0x8

    const/high16 v9, 0x40a00000    # 5.0f

    aput v9, v3, v5

    const/high16 v5, 0x40c00000    # 6.0f

    const/16 v9, 0x9

    aput v5, v3, v9

    const/16 v5, 0xa

    const/high16 v10, 0x40e00000    # 7.0f

    aput v10, v3, v5

    const/16 v5, 0xb

    const/high16 v10, 0x41000000    # 8.0f

    aput v10, v3, v5

    const/16 v5, 0xc

    const/high16 v10, 0x41100000    # 9.0f

    aput v10, v3, v5

    const/16 v5, 0xd

    const/high16 v10, 0x41200000    # 10.0f

    aput v10, v3, v5

    const/16 v5, 0xe

    const/high16 v10, 0x41700000    # 15.0f

    aput v10, v3, v5

    const/16 v5, 0xf

    const/high16 v10, 0x41a00000    # 20.0f

    aput v10, v3, v5

    const/16 v5, 0x10

    const/high16 v10, 0x41f00000    # 30.0f

    aput v10, v3, v5

    const/high16 v5, 0x42200000    # 40.0f

    const/16 v10, 0x11

    aput v5, v3, v10

    const/16 v5, 0x12

    const/high16 v11, 0x42480000    # 50.0f

    aput v11, v3, v5

    const/16 v5, 0x13

    const/high16 v11, 0x42700000    # 60.0f

    aput v11, v3, v5

    .line 20
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "duration"

    .line 21
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, p1

    long-to-float v12, v12

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v12, v13

    invoke-static {v12, v3}, Lccsansan/bw/AdFormat;->unifiedDownload(F[F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, "begin_init_time"

    sub-long v14, p1, p3

    long-to-float v12, v14

    div-float/2addr v12, v13

    .line 22
    :try_start_2
    invoke-static {v12, v3}, Lccsansan/bw/AdFormat;->unifiedDownload(F[F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v0, v5}, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/util/HashMap;)V

    .line 24
    invoke-static {}, Lccsansan/dr/deleteDownItem;->IncentiveDownloadUtils()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v11, "gp_ic"

    .line 25
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {}, Lccsansan/dr/deleteDownItem;->addDownloadListener()I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v11, "other_ic"

    .line 27
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v3, "process"

    .line 28
    :try_start_5
    invoke-static/range {p0 .. p0}, Lccsansan/bw/IncentiveSDK;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    invoke-static {v2, v6, v6}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    sub-int/2addr v9, v3

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2c

    int-to-byte v3, v3

    const-string v11, "\u0001\u0002\u0000\u0005\u0005\u0003\u0003\u0008\u009e"

    invoke-static {v11, v9, v3}, Lccsansan/bn/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 29
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lccsansan/bw/toString;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {v0, v1, v5}, Lccsansan/bn/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 33
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 35
    sget v0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/2addr v0, v10

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    :goto_0
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 33
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collectSanInitInfo error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    nop

    .line 46
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lccsanandroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android.intent.action.VIEW"

    :try_start_1
    const-string v3, "https://play.google.com/store/apps/details?id=com.a.b"

    invoke-static {v3}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget v2, Lccsansan/bn/IncentiveDownloadUtils;->removeDownloadListener:I

    and-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    add-int/lit8 v3, v2, -0x1

    int-to-byte v3, v3

    int-to-byte v4, v3

    invoke-static {v2, v3, v4}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    int-to-byte v4, v3

    add-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    int-to-byte v6, v5

    invoke-static {v4, v5, v6}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v2, 0x10000

    .line 49
    :try_start_3
    invoke-virtual {p0, v1, v2}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 71
    :goto_0
    nop

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/content/pm/ResolveInfo;

    .line 53
    iget-object v5, v5, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v5, v5, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    const/4 v7, 0x1

    if-lt v5, v6, :cond_1

    .line 65
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 57
    const/high16 v5, 0x20000

    .line 58
    invoke-virtual {p0, v1, v5}, Lccsanandroid/content/pm/PackageManager;->queryIntentActivities(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 59
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const/16 v1, 0x38

    goto :goto_3

    :cond_2
    const/16 v1, 0x9

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 59
    :pswitch_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/content/pm/ResolveInfo;

    .line 60
    iget-object v1, v1, Lccsanandroid/content/pm/ResolveInfo;->activityInfo:Lccsanandroid/content/pm/ActivityInfo;

    iget-object v1, v1, Lccsanandroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 64
    :goto_4
    :pswitch_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-lez p0, :cond_3

    .line 65
    goto :goto_5

    :cond_3
    const/4 v7, 0x0

    :goto_5
    packed-switch v7, :pswitch_data_2

    :goto_6
    goto :goto_7

    .line 71
    :pswitch_2
    sget p0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    const-string v1, "market_default"

    if-nez p0, :cond_4

    .line 65
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/16 p0, 0x51

    :try_start_5
    div-int/2addr p0, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 71
    :catchall_0
    move-exception p0

    throw p0

    .line 64
    :cond_4
    nop

    .line 65
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 67
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-lez p0, :cond_6

    const-string p0, "market_all"

    .line 68
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 46
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    throw p1

    :cond_5
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 68
    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#collectMarket error : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.AdCommon"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_8
    nop

    .line 65
    sget p0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x1d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_7

    :try_start_8
    array-length p0, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    throw p0

    .line 71
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils()Z
    .locals 10

    .line 45
    sget v0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 36
    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    :goto_0
    const-string v1, "Stats.AdCommon"

    const/4 v2, 0x0

    const-string v3, "San_InitInfo"

    packed-switch v0, :pswitch_data_0

    .line 45
    nop

    .line 36
    invoke-static {v3}, Lccsansan/bq/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {v3}, Lccsansan/bq/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/16 v4, 0x3b

    :try_start_0
    div-int/2addr v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_1

    .line 37
    :goto_3
    const-string v0, "#canCollectInitStats false, not enable"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget v0, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    .line 45
    return v2

    .line 37
    :cond_1
    const-wide/16 v4, 0x18

    .line 41
    invoke-static {v3, v4, v5}, Lccsansan/bq/getDownloadingList;->unifiedDownload(Ljava/lang/String;J)J

    move-result-wide v4

    .line 42
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v3}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v6

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 36
    const/16 v0, 0x50

    goto :goto_4

    :cond_2
    const/16 v0, 0x4f

    :goto_4
    packed-switch v0, :pswitch_data_1

    goto :goto_5

    .line 43
    :pswitch_1
    const-wide/32 v6, 0x36ee80

    mul-long v6, v6, v4

    cmp-long v0, v8, v6

    if-gez v0, :cond_3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#canCollectInitStats false, interval:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " < "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " hours"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    :goto_5
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
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

    .line 73
    nop

    .line 72
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 73
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

    const-string p1, "Stats.AdCommon"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(SIS)Ljava/lang/String;
    .locals 6

    sget v0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x67

    sget-object v0, Lccsansan/bn/IncentiveDownloadUtils;->unifiedDownload:[B

    mul-int/lit8 p2, p2, 0x16

    add-int/lit8 p2, p2, 0x4

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x17

    new-array v2, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_1

    :pswitch_0
    move-object v1, v0

    const/4 v5, 0x0

    move v0, p2

    move p2, p0

    move p0, p1

    goto :goto_3

    :goto_1
    move p0, p1

    move-object v1, v0

    const/4 v5, 0x0

    move v0, p2

    :goto_2
    add-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x8

    add-int/2addr v0, v3

    move p2, p1

    :goto_3
    int-to-byte p1, p2

    aput-byte p1, v2, v5

    if-ne v5, p0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte p1, v1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 1

    const/4 v0, 0x3

    sput-char v0, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList:C

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bn/IncentiveDownloadUtils;->addDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x69s
        0x6es
        0x73s
        0x74s
        0x61s
        0x6cs
        0x65s
        0x72s
        0x6as
    .end array-data
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 14
    nop

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "m"

    const-string v2, "ccf"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "result"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "portal"

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "network"

    .line 5
    :try_start_1
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p2

    invoke-static {p2}, Lccsansan/dl/getDownloadingList;->unifiedDownload(Lccsanandroid/util/Pair;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "interval"

    .line 6
    :try_start_2
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "cv"

    .line 7
    :try_start_3
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getConfigVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "ct"

    .line 8
    :try_start_4
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getConfigTAG()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cache_data_time"

    const-wide/16 p2, 0x0

    .line 9
    invoke-static {p0, p1, p2, p3}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p3, "cts"

    .line 10
    :try_start_5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CFG_PullResult"

    .line 12
    invoke-static {p0, p1, v0}, Lccsansan/bn/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 14
    sget p0, Lccsansan/bn/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 12
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "collectPullResult error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stats.AdCommon"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;
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
    sget-object v1, Lccsansan/bn/IncentiveDownloadUtils;->addDownloadListener:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p1, [C

    .line 1221
    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p1, p1, -0x1

    .line 1224
    aget-char v4, p0, p1

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, p1

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p1, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p1, :cond_5

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

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p2

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
