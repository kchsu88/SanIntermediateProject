.class public Lccsansan/d/IncentiveDownloadUtils;
.super Lccsansan/d/getDownloadingList;
.source ""


# static fields
.field private static ActionTypeDetailPage:I

.field static IncentiveDownloadUtils:[B

.field private static IncentiveSDK$1:I

.field private static deleteDownItem:Ljava/lang/reflect/Method;

.field private static deleteDownList:Ljava/lang/reflect/Method;

.field private static getDownloadStatusByUrl:Ljava/lang/reflect/Method;

.field private static getDownloadedCount:Ljava/lang/reflect/Method;

.field private static getDownloadedList:Ljava/lang/reflect/Method;

.field private static getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

.field private static getDownloadingCount:Ljava/lang/reflect/Field;

.field public static final getDownloadingList:I

.field private static getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

.field private static getThumbPathByRecord:Ljava/lang/reflect/Field;

.field private static pause:Ljava/lang/reflect/Field;

.field public static final removeDownloadListener:[B

.field private static resume:Ljava/lang/reflect/Constructor;

.field private static trackReportClick:Ljava/lang/reflect/Field;


# instance fields
.field private IncentiveSDK:[Ljava/lang/Object;

.field private execute:[I

.field private final getPackageNameByRecord:Ljava/lang/Object;

.field private resolveUrl:[Ljava/lang/String;

.field private trackReportShow:Lccsanandroid/util/TypedValue;

.field public unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x0

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    const/4 v1, 0x1

    sput v1, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    invoke-static {}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener()V

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    sput-object v3, Lccsansan/d/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    invoke-static {}, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingList()V

    .line 67
    :try_start_0
    const-class v3, Lccsanandroid/content/res/ResourcesImpl;

    sget-object v4, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener:[B

    const/16 v5, 0x10

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x8

    aget-byte v7, v4, v6

    int-to-byte v7, v7

    const/16 v8, 0xb9

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    const-class v8, Lccsanandroid/util/TypedValue;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsansan/d/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/reflect/Method;

    .line 68
    const-class v3, Lccsanandroid/content/res/ResourcesImpl;

    const/16 v5, 0x33

    aget-byte v7, v4, v5

    int-to-byte v7, v7

    aget-byte v8, v4, v6

    int-to-byte v8, v8

    sget v10, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v10, v10, -0x5

    int-to-short v10, v10

    invoke-static {v7, v8, v10}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/reflect/Method;

    .line 69
    const-class v3, Lccsanandroid/content/res/ResourcesImpl;

    const/4 v7, 0x7

    aget-byte v8, v4, v7

    int-to-byte v8, v8

    aget-byte v10, v4, v6

    int-to-byte v10, v10

    const/16 v11, 0xc0

    int-to-short v11, v11

    invoke-static {v8, v10, v11}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v8

    new-array v10, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsansan/d/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    .line 70
    const-class v3, Lccsanandroid/content/res/ResourcesImpl;

    const/16 v8, 0xc3

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v10, 0x10b

    int-to-short v10, v10

    invoke-static {v8, v6, v10}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v6

    new-array v8, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    .line 72
    sget-object v3, Lccsansan/d/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 73
    sget-object v3, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 74
    sget-object v3, Lccsansan/d/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 75
    sget-object v3, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 77
    const/16 v3, 0x1d

    int-to-byte v3, v3

    const/16 v6, 0x41

    int-to-byte v6, v6

    xor-int/lit16 v8, v6, 0x8e

    and-int/lit16 v10, v6, 0x8e

    or-int/2addr v8, v10

    int-to-short v8, v8

    invoke-static {v3, v6, v8}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v8, 0x54

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v10, 0x39

    aget-byte v10, v4, v10

    int-to-byte v10, v10

    const/16 v11, 0x7e

    int-to-short v11, v11

    invoke-static {v8, v10, v11}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v8

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v0

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v1

    invoke-virtual {v3, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    .line 79
    const/16 v3, 0x19

    int-to-byte v3, v3

    const/16 v8, 0x95

    aget-byte v8, v4, v8

    neg-int v8, v8

    int-to-short v8, v8

    invoke-static {v3, v6, v8}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 81
    new-array v6, v1, [Ljava/lang/Class;

    const-class v8, [B

    aput-object v8, v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    sput-object v6, Lccsansan/d/IncentiveDownloadUtils;->resume:Ljava/lang/reflect/Constructor;

    .line 82
    const/16 v6, 0xe

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v8, 0x3d

    aget-byte v10, v4, v8

    int-to-byte v10, v10

    const/16 v11, 0x99

    int-to-short v11, v11

    invoke-static {v6, v10, v11}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v6

    new-array v10, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/reflect/Method;

    .line 83
    const/16 v6, 0x7d

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    xor-int/lit8 v10, v6, 0x41

    and-int/lit8 v11, v6, 0x41

    or-int/2addr v10, v11

    int-to-byte v10, v10

    const/16 v11, 0x11f

    int-to-short v11, v11

    invoke-static {v6, v10, v11}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v6

    new-array v10, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsansan/d/IncentiveDownloadUtils;->deleteDownList:Ljava/lang/reflect/Method;

    .line 85
    sget-object v3, Lccsansan/d/IncentiveDownloadUtils;->resume:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 87
    const-class v3, Lccsanandroid/content/res/ResourcesImpl;

    const/16 v6, 0x15

    int-to-byte v6, v6

    aget-byte v10, v4, v8

    or-int/lit8 v11, v10, -0x1

    shl-int/2addr v11, v1

    xor-int/lit8 v10, v10, -0x1

    sub-int/2addr v11, v10

    int-to-byte v10, v11

    aget-byte v2, v4, v2

    neg-int v2, v2

    int-to-short v2, v2

    invoke-static {v6, v10, v2}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lccsansan/d/IncentiveDownloadUtils;->pause:Ljava/lang/reflect/Field;

    .line 88
    const-class v2, Lccsanandroid/content/res/ResourcesImpl;

    aget-byte v3, v4, v7

    int-to-byte v3, v3

    xor-int/lit8 v6, v3, 0x40

    and-int/lit8 v7, v3, 0x40

    or-int/2addr v6, v7

    int-to-byte v6, v6

    const/16 v7, 0xa1

    int-to-short v7, v7

    invoke-static {v3, v6, v7}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/reflect/Field;

    .line 89
    const-class v2, Lccsanandroid/content/res/ResourcesImpl;

    const/16 v3, 0xce

    aget-byte v3, v4, v3

    int-to-byte v3, v3

    aget-byte v6, v4, v8

    xor-int/lit8 v7, v6, -0x1

    and-int/lit8 v6, v6, -0x1

    shl-int/2addr v6, v1

    add-int/2addr v7, v6

    int-to-byte v6, v7

    const/16 v7, 0x69

    int-to-short v7, v7

    invoke-static {v3, v6, v7}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lccsansan/d/IncentiveDownloadUtils;->trackReportClick:Ljava/lang/reflect/Field;

    .line 90
    const-class v2, Lccsanandroid/content/res/ResourcesImpl;

    const/16 v3, 0x11

    aget-byte v3, v4, v3

    int-to-byte v3, v3

    aget-byte v4, v4, v8

    or-int/lit8 v6, v4, -0x1

    shl-int/2addr v6, v1

    xor-int/lit8 v4, v4, -0x1

    sub-int/2addr v6, v4

    int-to-byte v4, v6

    const/16 v6, 0x3f

    int-to-short v6, v6

    invoke-static {v3, v4, v6}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lccsansan/d/IncentiveDownloadUtils;->getThumbPathByRecord:Ljava/lang/reflect/Field;

    .line 92
    sget-object v2, Lccsansan/d/IncentiveDownloadUtils;->pause:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 93
    sget-object v2, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 94
    sget-object v2, Lccsansan/d/IncentiveDownloadUtils;->trackReportClick:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 95
    sget-object v2, Lccsansan/d/IncentiveDownloadUtils;->getThumbPathByRecord:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    sget v2, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    and-int/lit8 v3, v2, 0x1f

    or-int/lit8 v2, v2, 0x1f

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/2addr v3, v9

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    :try_start_1
    div-int/2addr v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x12t
        -0x49t
        -0x6bt
        0x7bt
    .end array-data
.end method

.method constructor <init>(Lccsanandroid/content/res/ResourcesImpl;)V
    .locals 4

    const-wide/32 v0, 0x38897dbb

    iput-wide v0, p0, Lccsansan/d/IncentiveDownloadUtils;->unifiedDownload:J

    .line 106
    invoke-virtual {p1}, Lccsanandroid/content/res/ResourcesImpl;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v0

    .line 107
    invoke-static {p1}, Lccsansan/d/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/res/ResourcesImpl;)Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    .line 108
    invoke-static {p1}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/res/ResourcesImpl;)Lccsanandroid/content/res/Configuration;

    move-result-object v2

    .line 109
    invoke-static {p1}, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/res/ResourcesImpl;)Lccsanandroid/view/DisplayAdjustments;

    move-result-object v3

    .line 106
    invoke-direct {p0, v0, v1, v2, v3}, Lccsansan/d/getDownloadingList;-><init>(Lccsanandroid/content/res/AssetManager;Lccsanandroid/util/DisplayMetrics;Lccsanandroid/content/res/Configuration;Lccsanandroid/view/DisplayAdjustments;)V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsansan/d/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/Object;

    .line 54
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsansan/d/IncentiveDownloadUtils;->trackReportShow:Lccsanandroid/util/TypedValue;

    .line 111
    iput-object p1, p0, Lccsansan/d/getDownloadingList;->addDownloadListener:Lccsanandroid/content/res/ResourcesImpl;

    .line 114
    :try_start_0
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingCount:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK:[Ljava/lang/Object;

    .line 115
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->trackReportClick:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lccsansan/d/IncentiveDownloadUtils;->execute:[I

    .line 116
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->getThumbPathByRecord:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lccsansan/d/IncentiveDownloadUtils;->resolveUrl:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 119
    :catch_0
    move-exception p1

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;IILjava/lang/String;I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 241
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    move-object/from16 v3, p4

    const/16 v7, 0x16

    const/16 v8, 0x7d

    if-eqz p2, :cond_4

    .line 245
    :try_start_0
    iget-object v10, v1, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK:[Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :try_start_1
    iget-object v11, v1, Lccsansan/d/IncentiveDownloadUtils;->execute:[I

    .line 248
    iget-object v12, v1, Lccsansan/d/IncentiveDownloadUtils;->resolveUrl:[Ljava/lang/String;

    .line 249
    iget-object v13, v1, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK:[Ljava/lang/Object;

    .line 251
    array-length v14, v12

    .line 252
    const/4 v15, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v14, :cond_1

    .line 254
    aget v9, v11, v4

    if-ne v9, v0, :cond_0

    aget-object v9, v12, v4

    if-eqz v9, :cond_0

    aget-object v9, v12, v4

    .line 255
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 257
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/reflect/Method;

    aget-object v4, v13, v4

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/res/XmlResourceParser;

    monitor-exit v10

    return-object v0

    .line 252
    :cond_0
    or-int/lit8 v9, v4, 0x1

    shl-int/lit8 v9, v9, 0x1

    xor-int/lit8 v4, v4, 0x1

    sub-int v4, v9, v4

    goto :goto_0

    .line 263
    :cond_1
    move/from16 v4, p5

    invoke-direct {v1, v4, v0, v2}, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingList(IILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 264
    if-eqz v4, :cond_3

    .line 266
    sget-object v9, Lccsansan/d/IncentiveDownloadUtils;->pause:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x1

    rem-int/2addr v9, v14

    .line 267
    sget-object v14, Lccsansan/d/IncentiveDownloadUtils;->pause:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v1, v9}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 268
    aget-object v14, v13, v9

    .line 269
    if-eqz v14, :cond_2

    .line 271
    sget-object v5, Lccsansan/d/IncentiveDownloadUtils;->deleteDownList:Ljava/lang/reflect/Method;

    new-array v6, v15, [Ljava/lang/Object;

    invoke-virtual {v5, v14, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_2
    aput v0, v11, v9

    .line 274
    aput-object v2, v12, v9

    .line 275
    aput-object v4, v13, v9

    .line 276
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/reflect/Method;

    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/res/XmlResourceParser;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 278
    :cond_3
    :try_start_2
    monitor-exit v10

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    new-instance v4, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener:[B

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v9, 0xb0

    int-to-short v9, v9

    invoke-static {v8, v7, v9}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    const/16 v7, 0x12

    aget-byte v8, v6, v7

    int-to-byte v7, v8

    xor-int/lit8 v8, v7, 0x31

    and-int/lit8 v9, v7, 0x31

    or-int/2addr v8, v9

    int-to-short v8, v8

    invoke-static {v2, v7, v8}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    const/16 v3, 0x12

    aget-byte v3, v6, v3

    int-to-byte v3, v3

    xor-int/lit16 v6, v3, 0xfc

    and-int/lit16 v7, v3, 0xfc

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v2, v3, v6}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 285
    throw v4

    .line 289
    :cond_4
    :goto_1
    new-instance v0, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener:[B

    aget-byte v6, v5, v8

    int-to-byte v6, v6

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    const/16 v8, 0xb0

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    const/16 v6, 0x12

    aget-byte v7, v5, v6

    int-to-byte v6, v7

    xor-int/lit8 v7, v6, 0x31

    and-int/lit8 v8, v6, 0x31

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v2, v6, v7}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    const/16 v3, 0x12

    aget-byte v3, v5, v3

    int-to-byte v3, v3

    xor-int/lit16 v5, v3, 0xfc

    and-int/lit16 v6, v3, 0xfc

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v2, v3, v5}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static IncentiveDownloadUtils(Ljava/io/InputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    nop

    .line 346
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 348
    const/16 v1, 0x4000

    new-array v2, v1, [B

    .line 350
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_0

    .line 355
    const/16 v5, 0x49

    goto :goto_1

    :cond_0
    const/16 v5, 0x5a

    :goto_1
    packed-switch v5, :pswitch_data_0

    sget v5, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    xor-int/lit8 v6, v5, 0x1b

    and-int/lit8 v5, v5, 0x1b

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    goto :goto_3

    .line 354
    :pswitch_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 355
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    and-int/lit8 v1, v0, 0x3b

    or-int/lit8 v0, v0, 0x3b

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v0, 0x24

    goto :goto_2

    :cond_1
    const/16 v0, 0x41

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/16 v0, 0x44

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    .line 352
    :cond_2
    :goto_3
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList([BI)I
    .locals 4

    .line 1092
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x32

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    aget-byte v0, p0, p1

    xor-int/lit16 v0, v0, 0x6efd

    rem-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, 0xbfa

    xor-int/lit8 v2, v2, -0x1

    or-int/lit16 v1, v1, 0xbfa

    and-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x6c

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0x63ff

    add-int/lit8 v1, v1, 0x2e

    xor-int v2, v0, v1

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    mul-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    or-int/lit16 p0, p0, 0x3cd4

    div-int/lit8 p0, p0, 0xf

    and-int/2addr p0, v0

    goto :goto_1

    :pswitch_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/lit8 v2, p1, 0x1

    shl-int/2addr v2, v1

    xor-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int v3, v0, v2

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    xor-int/lit8 v2, p1, 0x2

    and-int/lit8 v3, p1, 0x2

    shl-int/lit8 v1, v3, 0x1

    add-int/2addr v2, v1

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    xor-int v2, v0, v1

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    xor-int p1, v0, p0

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/res/ResourcesImpl;)Lccsanandroid/view/DisplayAdjustments;
    .locals 3

    .line 160
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 156
    :cond_0
    :try_start_0
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/view/DisplayAdjustments;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    goto :goto_0

    :cond_1
    const/16 v0, 0x58

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    :try_start_1
    div-int/2addr v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    .line 158
    :catch_0
    move-exception p0

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingList(IILjava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 328
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    xor-int/lit8 v1, v0, 0x73

    and-int/lit8 v0, v0, 0x73

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    const/4 v0, 0x2

    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 300
    :cond_0
    :try_start_0
    sget-object v1, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lccsansan/d/IncentiveDownloadUtils;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p3, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 302
    nop

    .line 305
    nop

    .line 328
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 305
    :cond_1
    :goto_0
    sget-object v5, Lccsansan/d/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 328
    const/16 v5, 0x44

    goto :goto_1

    :cond_2
    const/16 v5, 0x63

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 305
    if-eqz v4, :cond_3

    .line 328
    const/16 v5, 0x35

    goto :goto_2

    :cond_3
    const/16 v5, 0x4c

    :goto_2
    packed-switch v5, :pswitch_data_1

    goto :goto_6

    .line 307
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    .line 308
    sget-object v7, Lccsansan/d/IncentiveDownloadUtils;->IncentiveDownloadUtils:[B

    aget-byte v7, v7, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v7, :cond_4

    .line 328
    const/4 v5, 0x4

    goto :goto_3

    :cond_4
    const/16 v5, 0x51

    :goto_3
    packed-switch v5, :pswitch_data_2

    goto :goto_5

    :pswitch_1
    sget v4, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 v4, v4, 0x4a

    sub-int/2addr v4, v2

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/2addr v4, v0

    if-nez v4, :cond_5

    .line 310
    :cond_5
    nop

    .line 311
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 313
    sget-object v1, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lccsansan/d/IncentiveDownloadUtils;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p3, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 328
    sget v4, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 v4, v4, 0x6a

    sub-int/2addr v4, v2

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/2addr v4, v0

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    packed-switch v4, :pswitch_data_3

    .line 305
    :pswitch_2
    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    .line 328
    sget v5, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    and-int/lit8 v7, v5, 0x27

    or-int/lit8 v5, v5, 0x27

    add-int/2addr v7, v5

    rem-int/lit16 v5, v7, 0x80

    sput v5, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/2addr v7, v0

    if-eqz v7, :cond_1

    goto :goto_0

    .line 317
    :goto_6
    :pswitch_3
    :try_start_2
    invoke-static {v1}, Lccsansan/d/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 318
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 319
    if-eqz v4, :cond_7

    .line 328
    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    packed-switch v1, :pswitch_data_4

    :goto_8
    goto :goto_9

    :pswitch_4
    sget v1, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    xor-int/lit8 v3, v1, 0x9

    and-int/lit8 v1, v1, 0x9

    shl-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/2addr v3, v0

    if-eqz v3, :cond_8

    .line 321
    :cond_8
    :try_start_3
    invoke-virtual {p0, p2, p1, p3}, Lccsansan/d/IncentiveDownloadUtils;->unifiedDownload([BILjava/lang/String;)[B

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 328
    sget p1, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    xor-int/lit8 p3, p1, 0x67

    and-int/lit8 p1, p1, 0x67

    shl-int/2addr p1, v2

    add-int/2addr p3, p1

    rem-int/lit16 p1, p3, 0x80

    sput p1, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/2addr p3, v0

    if-nez p3, :cond_9

    const/16 p1, 0x54

    goto :goto_8

    :cond_9
    const/16 p1, 0x3c

    goto :goto_8

    .line 324
    :goto_9
    :try_start_4
    sget-object p1, Lccsansan/d/IncentiveDownloadUtils;->resume:Ljava/lang/reflect/Constructor;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v6

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 328
    sget p2, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    xor-int/lit8 p3, p2, 0x49

    and-int/lit8 p2, p2, 0x49

    shl-int/2addr p2, v2

    add-int/2addr p3, p2

    rem-int/lit16 p2, p3, 0x80

    sput p2, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/2addr p3, v0

    if-nez p3, :cond_a

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    packed-switch v2, :pswitch_data_5

    return-object p1

    :pswitch_5
    const/4 p2, 0x0

    :try_start_5
    invoke-super {p2}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    .line 326
    :catch_0
    move-exception p1

    .line 328
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_c

    :goto_b
    throw p2

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 2

    sget v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/res/ResourcesImpl;)Lccsanandroid/content/res/Configuration;
    .locals 2

    .line 147
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 v0, v0, 0x7a

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 143
    :cond_0
    :try_start_0
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/res/Configuration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 v0, v0, 0x42

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    .line 145
    :catch_0
    move-exception p0

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static removeDownloadListener(SIS)Ljava/lang/String;
    .locals 7

    sget v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    and-int/lit8 v1, v0, 0x3

    or-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x49

    goto :goto_0

    :cond_0
    const/16 v1, 0x47

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener:[B

    xor-int/lit8 v4, p2, 0x4

    and-int/lit8 p2, p2, 0x4

    shl-int/2addr p2, v3

    add-int/2addr p2, v4

    or-int/lit8 v4, p1, 0x20

    shl-int/2addr v4, v3

    xor-int/lit8 p1, p1, 0x20

    sub-int/2addr v4, p1

    and-int/lit8 p1, p0, 0x3

    or-int/lit8 p0, p0, 0x3

    add-int/2addr p1, p0

    new-array p0, p1, [B

    and-int/lit8 v5, p1, -0x1

    or-int/lit8 p1, p1, -0x1

    add-int/2addr p1, v5

    if-nez v1, :cond_2

    goto :goto_2

    :pswitch_0
    sget-object v1, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener:[B

    xor-int/lit8 v4, p2, 0x59

    and-int/lit8 p2, p2, 0x59

    shl-int/2addr p2, v3

    add-int/2addr v4, p2

    xor-int/lit8 p2, v4, -0x4f

    and-int/lit8 v4, v4, -0x4f

    shl-int/2addr v4, v3

    add-int/2addr p2, v4

    and-int/lit8 v4, p1, 0x30

    or-int/lit8 p1, p1, 0x30

    add-int/2addr v4, p1

    and-int/lit8 p1, p0, 0x78

    or-int/lit8 p0, p0, 0x78

    add-int/2addr p1, p0

    new-array p0, p1, [B

    add-int/lit16 p1, p1, 0xc6

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x7e

    sub-int/2addr p1, v3

    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    :goto_3
    packed-switch v5, :pswitch_data_2

    :goto_4
    const/4 v0, 0x0

    goto :goto_7

    :pswitch_1
    or-int/lit8 v5, v0, 0x31

    shl-int/2addr v5, v3

    xor-int/lit8 v0, v0, 0x31

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    const/16 v0, 0x48

    goto :goto_5

    :cond_3
    const/16 v0, 0x38

    :goto_5
    packed-switch v0, :pswitch_data_3

    goto :goto_6

    :pswitch_2
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    throw p0

    :goto_6
    move v0, p2

    const/4 v5, 0x0

    goto :goto_8

    :goto_7
    int-to-byte v5, v4

    aput-byte v5, p0, v0

    add-int/lit8 v5, v0, 0x1

    if-ne v0, p1, :cond_4

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v2}, Ljava/lang/String;-><init>([BI)V

    sget p0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 p0, p0, 0x2

    return-object p1

    :cond_4
    aget-byte v0, v1, p2

    move v6, v0

    move v0, p2

    move p2, v6

    :goto_8
    neg-int p2, p2

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr v4, p2

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v0, 0x2d

    sub-int/2addr v0, v3

    or-int/lit8 p2, v0, -0x2b

    shl-int/2addr p2, v3

    xor-int/lit8 v0, v0, -0x2b

    sub-int/2addr p2, v0

    move v0, v5

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x48
        :pswitch_2
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 3

    sget v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 v1, v0, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v1, 0x127

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener:[B

    const/16 v1, 0x8e

    sput v1, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :array_0
    .array-data 1
        0x3at
        0x50t
        0x57t
        0x46t
        -0x52t
        -0x3t
        0xbt
        0xdt
        0x47t
        -0x1t
        -0xbt
        -0x46t
        -0x11t
        -0xct
        0x6t
        -0x4t
        0x5t
        0x11t
        0x0t
        0x47t
        -0x27t
        0x7t
        0x26t
        -0x1t
        -0xbt
        -0x46t
        -0xbt
        0xct
        -0xct
        0x5t
        0x8t
        0x7t
        0x38t
        -0x33t
        -0xat
        0x3t
        -0x4t
        0x11t
        -0x7t
        -0x4t
        0x48t
        -0x42t
        0xft
        -0xct
        0x47t
        -0x28t
        -0x13t
        0x3t
        0x2ct
        -0x28t
        -0x1t
        0xet
        -0x6t
        -0x44t
        -0xat
        0x5t
        0x4t
        0x4ft
        -0x56t
        0xdt
        0x3t
        0x4et
        -0x52t
        -0x3t
        0xbt
        0xdt
        0x47t
        0x2ct
        -0x1ct
        0x0t
        -0x3t
        0x5t
        0x3t
        0xet
        -0x13t
        0x3t
        0x2ct
        -0x28t
        -0x1t
        0xet
        -0x6t
        0x27t
        -0x21t
        -0x1t
        0x9t
        -0xct
        0x23t
        -0x13t
        -0x10t
        0x1t
        0x33t
        -0x1ct
        0x0t
        -0x3t
        0x5t
        0x3t
        0xet
        -0x13t
        0x3t
        0x2ct
        -0x28t
        -0x1t
        0xet
        -0x6t
        0x24t
        -0x23t
        0xct
        0x1t
        -0x11t
        0x2ct
        -0x1ct
        0x0t
        -0x3t
        0x5t
        0x3t
        0xet
        -0x13t
        0x3t
        0x2ct
        -0x28t
        -0x1t
        0xet
        -0x6t
        0x2at
        -0x2at
        0x2t
        0x6t
        0x4t
        0x6t
        -0xct
        0x1t
        0xdt
        -0x7t
        0x22t
        -0x1ft
        0x3t
        0x2ft
        -0x30t
        0x2t
        0x10t
        -0xdt
        0x4t
        -0xdt
        0x32t
        -0x23t
        -0x8t
        0x5t
        0x6t
        0xdt
        -0x16t
        0x2et
        -0x16t
        -0xdt
        0x4t
        0xbt
        0x8t
        -0xet
        0xbt
        -0x10t
        0x29t
        -0xft
        -0xft
        0x1t
        0x10t
        -0xbt
        0x2ct
        -0x1ct
        0x0t
        -0x3t
        0x5t
        0x3t
        0xet
        -0x13t
        0x3t
        0x2ct
        -0x28t
        -0x1t
        0xet
        -0x6t
        -0x6t
        -0x21t
        -0x1t
        0x9t
        0x47t
        0xdt
        -0x16t
        0xct
        -0x4t
        0x3t
        0x4t
        -0xdt
        0x20t
        -0x9t
        -0x9t
        -0x7t
        0x12t
        0x4t
        -0xdt
        0x33t
        -0x2at
        0x3t
        0xat
        -0x1t
        0x4t
        -0xct
        0x5t
        0x13t
        -0x11t
        0xdt
        -0x4t
        0x3t
        -0xbt
        0xct
        -0xct
        0x5t
        0x8t
        0x7t
        0x38t
        -0x33t
        -0xat
        0x3t
        -0x4t
        0x11t
        -0x7t
        -0x4t
        0x48t
        -0x42t
        0xft
        -0xct
        0x47t
        -0x11t
        -0x30t
        0x2t
        0x10t
        -0xdt
        0x29t
        -0x12t
        -0xbt
        0xft
        -0x4t
        0x4t
        -0xbt
        -0x47t
        -0x8t
        0x55t
        -0x4ct
        0x1t
        -0x3t
        0x56t
        -0x54t
        0x17t
        -0x9t
        0x5t
        0x7t
        0xdt
        0x3t
        -0x50t
        0xft
        -0xct
        0x6t
        -0x4t
        0x5t
        0x11t
        0x0t
        0x47t
        -0x27t
        0x7t
        0x26t
        -0x1t
        -0xbt
        -0x46t
        0x4t
        -0xdt
        0x32t
        -0x23t
        -0x8t
        0x5t
        0x6t
        0xdt
        -0x16t
        0x3at
        -0x21t
        -0x4t
        -0x9t
        0x4t
        0x1t
        0x9t
        0xat
        -0x7t
        -0x4t
        0x3t
        -0x7t
        -0x1t
        -0x2t
        0x10t
    .end array-data
.end method

.method private static unifiedDownload(Lccsanandroid/content/res/ResourcesImpl;)Lccsanandroid/util/DisplayMetrics;
    .locals 2

    .line 134
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    or-int/lit8 v1, v0, 0x47

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x47

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 130
    const/16 v0, 0x3b

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :try_start_0
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/reflect/Method;

    goto :goto_2

    :pswitch_0
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Lccsanandroid/util/DisplayMetrics;

    goto :goto_3

    .line 132
    :catch_0
    move-exception p0

    goto :goto_6

    .line 130
    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    :goto_3
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    or-int/lit8 v1, v0, 0x1b

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x1b

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 130
    const/16 v0, 0x5d

    goto :goto_4

    :cond_1
    const/16 v0, 0x8

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 134
    goto :goto_5

    :pswitch_1
    return-object p0

    :goto_5
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :goto_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public IncentiveDownloadUtils(ILccsanandroid/util/TypedValue;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 199
    sget v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    and-int/lit8 v1, v0, 0x1f

    or-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    const/4 v0, 0x2

    rem-int/2addr v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 195
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :try_start_0
    sget-object v0, Lccsansan/d/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/reflect/Method;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lccsansan/d/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 197
    :catch_0
    move-exception p1

    goto :goto_3

    .line 195
    :goto_1
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    const/4 p1, 0x4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_2
    return-void

    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method addDownloadListener(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lccsansan/d/IncentiveDownloadUtils;->getPackageNameByRecord:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lccsansan/d/IncentiveDownloadUtils;->trackReportShow:Lccsanandroid/util/TypedValue;

    .line 212
    if-nez v1, :cond_0

    .line 214
    new-instance v1, Lccsanandroid/util/TypedValue;

    invoke-direct {v1}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lccsansan/d/IncentiveDownloadUtils;->trackReportShow:Lccsanandroid/util/TypedValue;

    .line 217
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lccsansan/d/IncentiveDownloadUtils;->IncentiveDownloadUtils(ILccsanandroid/util/TypedValue;Z)V

    .line 218
    iget v2, v1, Lccsanandroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 220
    iget v7, v1, Lccsanandroid/util/TypedValue;->assetCookie:I

    .line 221
    iget-object v2, v1, Lccsanandroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    iget v9, v1, Lccsanandroid/util/TypedValue;->resourceId:I

    move-object v4, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lccsansan/d/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;IILjava/lang/String;I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 225
    :cond_1
    new-instance p2, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener:[B

    const/16 v4, 0x1b

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/16 v5, 0x8f

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    const/16 v6, 0x1e

    aget-byte v6, v3, v6

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xe

    aget-byte p1, v3, p1

    int-to-byte p1, p1

    const/16 v4, 0x12

    aget-byte v5, v3, v4

    int-to-byte v5, v5

    int-to-short v6, v5

    invoke-static {p1, v5, v6}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lccsanandroid/util/TypedValue;->type:I

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xc9

    aget-byte p1, v3, p1

    int-to-byte p1, p1

    aget-byte v1, v3, v4

    int-to-byte v1, v1

    xor-int/lit16 v3, v1, 0xee

    and-int/lit16 v4, v1, 0xee

    or-int/2addr v3, v4

    int-to-short v3, v3

    invoke-static {p1, v1, v3}, Lccsansan/d/IncentiveDownloadUtils;->removeDownloadListener(SIS)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 228
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unifiedDownload([BILjava/lang/String;)[B
    .locals 11

    .line 1068
    sget p3, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 p3, p3, 0x2f

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1061
    :cond_0
    array-length p3, p1

    and-int/lit8 v0, p3, -0x4

    or-int/lit8 p3, p3, -0x4

    add-int/2addr v0, p3

    new-array p3, v0, [B

    .line 1063
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lccsansan/d/IncentiveDownloadUtils;->getDownloadingList([BI)I

    move-result v2

    and-int v3, v2, p2

    xor-int/lit8 v3, v3, -0x1

    or-int/2addr p2, v2

    and-int/2addr p2, v3

    .line 1064
    const/4 v2, 0x4

    .line 1068
    sget v3, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    :cond_1
    const/4 v3, 0x0

    .line 1064
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_2

    .line 1068
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v5, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 v6, v5, 0x5d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    .line 1066
    :cond_3
    add-int/lit8 v6, v2, 0x2

    sub-int/2addr v6, v4

    aget-byte v2, p1, v2

    mul-int v7, v3, p2

    and-int v8, v2, v7

    xor-int/lit8 v8, v8, -0x1

    or-int/2addr v2, v7

    and-int/2addr v2, v8

    int-to-long v7, v2

    iget-wide v9, p0, Lccsansan/d/IncentiveDownloadUtils;->unifiedDownload:J

    xor-long/2addr v7, v9

    long-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    .line 1064
    xor-int/lit8 v2, v3, -0x54

    and-int/lit8 v3, v3, -0x54

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x56

    add-int/lit8 v3, v2, -0x1

    .line 1068
    and-int/lit8 v2, v5, 0x3f

    or-int/lit8 v5, v5, 0x3f

    add-int/2addr v2, v5

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    const/4 v4, 0x0

    :cond_4
    packed-switch v4, :pswitch_data_1

    .line 1064
    :pswitch_1
    move v2, v6

    goto :goto_0

    .line 1068
    :goto_2
    sget p1, Lccsansan/d/IncentiveDownloadUtils;->ActionTypeDetailPage:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/d/IncentiveDownloadUtils;->IncentiveSDK$1:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    const/16 p1, 0x8

    goto :goto_3

    :cond_5
    const/16 p1, 0x17

    :goto_3
    packed-switch p1, :pswitch_data_2

    return-object p3

    :pswitch_2
    const/16 p1, 0x52

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_2
    .end packed-switch
.end method
