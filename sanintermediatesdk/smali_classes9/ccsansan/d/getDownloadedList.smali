.class public Lccsansan/d/getDownloadedList;
.super Lccsanandroid/content/res/Resources;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Ljava/lang/reflect/Method;

.field public static final addDownloadListener:I

.field private static deleteDownItem:Ljava/lang/reflect/Field;

.field private static deleteDownList:Lccsansan/d/getDownloadedList;

.field private static getDownloadStatusByUrl:Ljava/lang/reflect/Method;

.field private static getDownloadedList:Ljava/lang/reflect/Field;

.field private static getDownloadedRecordByUrl:Ljava/lang/reflect/Constructor;

.field private static getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

.field private static getPackageNameByRecord:I

.field public static final removeDownloadListener:[B

.field private static resume:Ljava/lang/reflect/Field;

.field private static trackReportShow:I

.field static unifiedDownload:[B


# instance fields
.field private IncentiveSDK:[Ljava/lang/Object;

.field private getDownloadedCount:Lccsanandroid/util/TypedValue;

.field private getDownloadingCount:Lccsanandroid/content/res/Resources;

.field public getDownloadingList:J

.field private final pause:Ljava/lang/Object;

.field private trackReportClick:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    sput v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    const/4 v1, 0x1

    sput v1, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    invoke-static {}, Lccsansan/d/getDownloadedList;->unifiedDownload()V

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsansan/d/getDownloadedList;->unifiedDownload:[B

    invoke-static {}, Lccsansan/d/getDownloadedList;->getDownloadingList()V

    .line 64
    :try_start_0
    sget-object v2, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    const/16 v3, 0xbd

    aget-byte v4, v2, v3

    int-to-byte v4, v4

    const/16 v5, 0x1d

    int-to-byte v5, v5

    xor-int/lit8 v6, v5, 0x22

    and-int/lit8 v7, v5, 0x22

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x7e

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    int-to-byte v6, v5

    xor-int/lit8 v7, v6, 0x72

    and-int/lit8 v8, v6, 0x72

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils:Ljava/lang/reflect/Method;

    .line 66
    aget-byte v3, v2, v3

    int-to-byte v3, v3

    aget-byte v4, v2, v0

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0xa2

    and-int/lit16 v7, v4, 0xa2

    or-int/2addr v5, v7

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 68
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lccsansan/d/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/reflect/Constructor;

    .line 69
    const/16 v4, 0x22

    aget-byte v4, v2, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0xe

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/4 v7, 0x3

    aget-byte v7, v2, v7

    int-to-short v7, v7

    invoke-static {v4, v5, v7}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lccsansan/d/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    .line 70
    const/16 v4, 0x15

    int-to-byte v4, v4

    const/16 v5, 0x62

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v7, 0x12

    aget-byte v7, v2, v7

    int-to-short v7, v7

    invoke-static {v4, v5, v7}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsansan/d/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    .line 72
    sget-object v0, Lccsansan/d/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 74
    const-class v0, Lccsanandroid/content/res/Resources;

    const/4 v3, 0x6

    aget-byte v5, v2, v3

    int-to-byte v5, v5

    const/16 v7, 0x92

    int-to-short v7, v7

    invoke-static {v5, v4, v7}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lccsansan/d/getDownloadedList;->deleteDownItem:Ljava/lang/reflect/Field;

    .line 75
    const-class v0, Lccsanandroid/content/res/Resources;

    aget-byte v4, v2, v3

    int-to-byte v4, v4

    const/16 v5, 0x2a

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v7, 0xc3

    aget-byte v7, v2, v7

    neg-int v7, v7

    int-to-short v7, v7

    invoke-static {v4, v5, v7}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lccsansan/d/getDownloadedList;->getDownloadedList:Ljava/lang/reflect/Field;

    .line 76
    const-class v0, Lccsanandroid/content/res/Resources;

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/4 v4, 0x7

    aget-byte v2, v2, v4

    int-to-byte v2, v2

    const/16 v4, 0x68

    int-to-short v4, v4

    invoke-static {v3, v2, v4}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lccsansan/d/getDownloadedList;->resume:Ljava/lang/reflect/Field;

    .line 78
    sget-object v0, Lccsansan/d/getDownloadedList;->deleteDownItem:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 79
    sget-object v0, Lccsansan/d/getDownloadedList;->getDownloadedList:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 80
    sget-object v0, Lccsansan/d/getDownloadedList;->resume:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    sget v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/2addr v0, v6

    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x12t
        -0x49t
        -0x6bt
        0x7bt
    .end array-data
.end method

.method private constructor <init>(Lccsanandroid/content/res/Resources;)V
    .locals 3

    const-wide/32 v0, 0x38897dbb

    iput-wide v0, p0, Lccsansan/d/getDownloadedList;->getDownloadingList:J

    .line 104
    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lccsanandroid/content/res/Resources;-><init>(Lccsanandroid/content/res/AssetManager;Lccsanandroid/util/DisplayMetrics;Lccsanandroid/content/res/Configuration;)V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsansan/d/getDownloadedList;->pause:Ljava/lang/Object;

    .line 52
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsansan/d/getDownloadedList;->getDownloadedCount:Lccsanandroid/util/TypedValue;

    .line 105
    iput-object p1, p0, Lccsansan/d/getDownloadedList;->getDownloadingCount:Lccsanandroid/content/res/Resources;

    .line 108
    :try_start_0
    sget-object v0, Lccsansan/d/getDownloadedList;->getDownloadedList:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lccsansan/d/getDownloadedList;->trackReportClick:[I

    .line 109
    sget-object v0, Lccsansan/d/getDownloadedList;->resume:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lccsansan/d/getDownloadedList;->IncentiveSDK:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 112
    :catch_0
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static IncentiveDownloadUtils(BSI)Ljava/lang/String;
    .locals 10

    sget v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v1, v0, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    rsub-int/lit8 p0, p0, 0x78

    sget-object v1, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    or-int/lit8 v2, p1, -0x15

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    xor-int/lit8 p1, p1, -0x15

    sub-int/2addr v2, p1

    and-int/lit8 p1, v2, 0x18

    or-int/lit8 v2, v2, 0x18

    add-int/2addr p1, v2

    neg-int p2, p2

    xor-int/lit16 v2, p2, 0xd5

    and-int/lit16 p2, p2, 0xd5

    shl-int/2addr p2, v3

    add-int/2addr v2, p2

    new-array p2, p1, [B

    const/16 v4, 0x47

    if-nez v1, :cond_0

    const/16 v5, 0x2a

    goto :goto_0

    :cond_0
    const/16 v5, 0x47

    :goto_0
    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0
    and-int/lit8 v5, v0, 0xf

    or-int/lit8 v7, v0, 0xf

    add-int/2addr v5, v7

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v0, 0x6f

    shl-int/2addr v5, v3

    xor-int/lit8 v0, v0, 0x6f

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move-object v0, p2

    const/4 v7, 0x0

    move p2, p1

    goto :goto_3

    :goto_2
    and-int/lit8 v5, v0, -0x59

    or-int/lit8 v7, v0, -0x59

    add-int/2addr v5, v7

    xor-int/lit8 v7, v5, 0x5a

    and-int/lit8 v5, v5, 0x5a

    shl-int/2addr v5, v3

    add-int/2addr v7, v5

    int-to-byte v5, p0

    aput-byte v5, p2, v0

    if-ne v7, p1, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v6}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    aget-byte v0, v1, v2

    sget v5, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/2addr v5, v4

    rem-int/lit16 v8, v5, 0x80

    sput v8, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v5, v5, 0x2

    move-object v9, p2

    move p2, p1

    move p1, v0

    move-object v0, v9

    :goto_3
    neg-int p1, p1

    xor-int/lit8 v5, v2, -0x64

    and-int/lit8 v2, v2, -0x64

    shl-int/2addr v2, v3

    add-int/2addr v5, v2

    xor-int/lit8 v2, v5, 0x65

    and-int/lit8 v5, v5, 0x65

    shl-int/2addr v5, v3

    add-int/2addr v2, v5

    and-int v5, p0, p1

    or-int/2addr p0, p1

    add-int/2addr v5, p0

    xor-int/lit8 p0, v5, 0x2

    and-int/lit8 p1, v5, 0x2

    shl-int/2addr p1, v3

    add-int/2addr p0, p1

    move p1, p2

    move-object p2, v0

    move v0, v7

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static declared-synchronized addDownloadListener(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;
    .locals 6

    const-class v0, Lccsansan/d/getDownloadedList;

    monitor-enter v0

    .line 98
    nop

    .line 92
    :try_start_0
    sget v1, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v2, v1, 0x65

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 90
    :cond_0
    instance-of v2, p0, Lccsansan/d/getDownloadedList;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 92
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 94
    sget-object v2, Lccsansan/d/getDownloadedList;->deleteDownList:Lccsansan/d/getDownloadedList;

    goto :goto_4

    .line 98
    :pswitch_0
    and-int/lit8 v1, v3, 0x23

    or-int/lit8 v2, v3, 0x23

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_2

    .line 92
    const/16 v1, 0x15

    goto :goto_1

    :cond_2
    const/16 v1, 0x60

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_3

    :pswitch_1
    const/16 v1, 0x20

    :try_start_1
    div-int/2addr v1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 98
    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_3
    monitor-exit v0

    return-object p0

    .line 94
    :goto_4
    if-eqz v2, :cond_3

    .line 92
    const/4 v3, 0x1

    goto :goto_5

    :cond_3
    const/4 v3, 0x0

    :goto_5
    packed-switch v3, :pswitch_data_2

    and-int/lit8 v3, v1, 0x3f

    or-int/lit8 v1, v1, 0x3f

    add-int/2addr v3, v1

    :try_start_3
    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    goto :goto_6

    :cond_4
    const/4 v1, 0x1

    :goto_6
    packed-switch v1, :pswitch_data_3

    goto :goto_7

    .line 94
    :pswitch_2
    iget-object v1, v2, Lccsansan/d/getDownloadedList;->getDownloadingCount:Lccsanandroid/content/res/Resources;

    if-eq v1, p0, :cond_5

    goto :goto_8

    .line 92
    :goto_7
    iget-object v1, v2, Lccsansan/d/getDownloadedList;->getDownloadingCount:Lccsanandroid/content/res/Resources;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v2, 0x0

    :try_start_4
    array-length v2, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eq v1, p0, :cond_5

    .line 96
    :goto_8
    :pswitch_3
    :try_start_5
    new-instance v1, Lccsansan/d/getDownloadedList;

    invoke-direct {v1, p0}, Lccsansan/d/getDownloadedList;-><init>(Lccsanandroid/content/res/Resources;)V

    sput-object v1, Lccsansan/d/getDownloadedList;->deleteDownList:Lccsansan/d/getDownloadedList;

    .line 98
    :cond_5
    sget-object p0, Lccsansan/d/getDownloadedList;->deleteDownList:Lccsansan/d/getDownloadedList;

    .line 92
    sget v1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 v1, v1, 0x48

    sub-int/2addr v1, v4

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v1, :cond_6

    const/16 v1, 0x1a

    goto :goto_9

    :cond_6
    const/16 v1, 0x4c

    :goto_9
    packed-switch v1, :pswitch_data_4

    .line 98
    goto :goto_3

    .line 92
    :pswitch_4
    const/16 v1, 0xb

    :try_start_6
    div-int/2addr v1, v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    :goto_a
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_2
    move-exception p0

    goto :goto_a

    .line 89
    :catchall_3
    move-exception p0

    monitor-exit v0

    goto :goto_c

    :goto_b
    throw p0

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1a
        :pswitch_4
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;IILjava/lang/String;I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 202
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    const/16 v7, 0xa0

    const/16 v8, 0x58

    const/16 v9, 0x59

    const/16 v10, 0x62

    const/4 v11, 0x1

    if-eqz v3, :cond_5

    .line 207
    :try_start_0
    iget-object v12, v1, Lccsansan/d/getDownloadedList;->trackReportClick:[I

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :try_start_1
    iget-object v0, v1, Lccsansan/d/getDownloadedList;->trackReportClick:[I

    array-length v0, v0

    .line 211
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v0, :cond_1

    .line 213
    iget-object v15, v1, Lccsansan/d/getDownloadedList;->trackReportClick:[I

    aget v15, v15, v14

    if-ne v15, v3, :cond_0

    .line 215
    sget-object v0, Lccsansan/d/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    iget-object v15, v1, Lccsansan/d/getDownloadedList;->IncentiveSDK:[Ljava/lang/Object;

    aget-object v14, v15, v14

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/res/XmlResourceParser;

    monitor-exit v12

    return-object v0

    .line 211
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 221
    :cond_1
    move/from16 v14, p3

    move/from16 v15, p5

    invoke-direct {v1, v15, v14, v2}, Lccsansan/d/getDownloadedList;->getDownloadingList(IILjava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 222
    if-eqz v14, :cond_4

    .line 224
    sget-object v15, Lccsansan/d/getDownloadedList;->deleteDownItem:Ljava/lang/reflect/Field;

    invoke-virtual {v15, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    add-int/2addr v15, v11

    .line 225
    if-lt v15, v0, :cond_2

    .line 227
    const/4 v15, 0x0

    .line 229
    :cond_2
    sget-object v0, Lccsansan/d/getDownloadedList;->deleteDownItem:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1, v15}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 230
    iget-object v0, v1, Lccsansan/d/getDownloadedList;->IncentiveSDK:[Ljava/lang/Object;

    aget-object v0, v0, v15

    .line 231
    if-eqz v0, :cond_3

    .line 233
    sget-object v5, Lccsansan/d/getDownloadedList;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    new-array v6, v13, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_3
    iget-object v0, v1, Lccsansan/d/getDownloadedList;->trackReportClick:[I

    aput v3, v0, v15

    .line 236
    iget-object v0, v1, Lccsansan/d/getDownloadedList;->IncentiveSDK:[Ljava/lang/Object;

    aput-object v14, v0, v15

    .line 237
    sget-object v0, Lccsansan/d/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v14, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/res/XmlResourceParser;

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 239
    :cond_4
    :try_start_2
    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    :catch_0
    move-exception v0

    .line 243
    new-instance v5, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    sget v12, Lccsansan/d/getDownloadedList;->addDownloadListener:I

    and-int/lit16 v12, v12, 0xbe

    int-to-byte v12, v12

    sget-object v13, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    aget-byte v10, v13, v10

    int-to-byte v10, v10

    int-to-short v9, v9

    invoke-static {v12, v10, v9}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v2, v8

    aget-byte v8, v13, v11

    int-to-byte v8, v8

    int-to-short v7, v7

    invoke-static {v2, v8, v7}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    aget-byte v4, v13, v4

    int-to-byte v4, v4

    const/16 v7, 0xaf

    aget-byte v7, v13, v7

    neg-int v7, v7

    int-to-short v7, v7

    invoke-static {v2, v4, v7}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 247
    throw v5

    .line 251
    :cond_5
    :goto_1
    new-instance v0, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    sget v6, Lccsansan/d/getDownloadedList;->addDownloadListener:I

    and-int/lit16 v6, v6, 0xbe

    int-to-byte v6, v6

    sget-object v12, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    aget-byte v10, v12, v10

    int-to-byte v10, v10

    int-to-short v9, v9

    invoke-static {v6, v10, v9}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-byte v2, v8

    aget-byte v6, v12, v11

    int-to-byte v6, v6

    int-to-short v7, v7

    invoke-static {v2, v6, v7}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    aget-byte v4, v12, v4

    int-to-byte v4, v4

    const/16 v6, 0xaf

    aget-byte v6, v12, v6

    neg-int v6, v6

    int-to-short v6, v6

    invoke-static {v2, v4, v6}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private getDownloadingList(IILjava/lang/String;)Ljava/lang/Object;
    .locals 9

    .line 291
    nop

    .line 271
    sget v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x74

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    if-nez v0, :cond_0

    .line 268
    const/16 v0, 0x4e

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 263
    :try_start_0
    sget-object v0, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils:Ljava/lang/reflect/Method;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object p3, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 265
    nop

    .line 268
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    .line 263
    :goto_1
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object p3, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    nop

    .line 268
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 271
    :goto_2
    sget v6, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v6, v6, 0xc

    sub-int/2addr v6, v1

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/2addr v6, v2

    if-eqz v6, :cond_1

    .line 291
    :cond_1
    nop

    .line 268
    :goto_3
    :try_start_1
    sget-object v6, Lccsansan/d/getDownloadedList;->unifiedDownload:[B

    array-length v6, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v5, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    :goto_4
    packed-switch v6, :pswitch_data_1

    .line 271
    sget v6, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v7, v6, 0x76

    sub-int/2addr v7, v1

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/2addr v7, v2

    if-eqz v7, :cond_4

    const/16 v7, 0x36

    :try_start_2
    div-int/2addr v7, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    .line 268
    const/16 v7, 0x5c

    goto :goto_5

    :cond_3
    const/16 v7, 0x4b

    :goto_5
    packed-switch v7, :pswitch_data_2

    goto :goto_7

    .line 271
    :catchall_0
    move-exception p1

    throw p1

    .line 268
    :cond_4
    if-eqz v4, :cond_5

    const/4 v7, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    :goto_6
    packed-switch v7, :pswitch_data_3

    goto :goto_e

    .line 291
    :goto_7
    :pswitch_1
    add-int/lit8 v6, v6, 0x37

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/2addr v6, v2

    if-eqz v6, :cond_6

    .line 268
    const/4 v6, 0x0

    goto :goto_8

    :cond_6
    const/4 v6, 0x1

    :goto_8
    packed-switch v6, :pswitch_data_4

    .line 270
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v6

    goto :goto_b

    :pswitch_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    .line 271
    sget-object v7, Lccsansan/d/getDownloadedList;->unifiedDownload:[B

    aget-byte v7, v7, v5

    if-eq v6, v7, :cond_7

    .line 268
    const/4 v6, 0x0

    goto :goto_9

    :cond_7
    const/4 v6, 0x1

    :goto_9
    packed-switch v6, :pswitch_data_5

    :goto_a
    goto :goto_d

    .line 270
    :goto_b
    int-to-byte v6, v6

    .line 271
    sget-object v7, Lccsansan/d/getDownloadedList;->unifiedDownload:[B

    aget-byte v7, v7, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v8, 0x0

    :try_start_4
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eq v6, v7, :cond_8

    .line 268
    const/4 v6, 0x0

    goto :goto_c

    :cond_8
    const/4 v6, 0x1

    :goto_c
    packed-switch v6, :pswitch_data_6

    goto :goto_a

    .line 273
    :pswitch_3
    nop

    .line 274
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 276
    sget-object v0, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object p3, v6, v1

    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v4, 0x0

    .line 268
    :goto_d
    or-int/lit8 v6, v5, 0xa

    shl-int/2addr v6, v1

    xor-int/lit8 v5, v5, 0xa

    sub-int/2addr v6, v5

    and-int/lit8 v5, v6, -0x9

    or-int/lit8 v6, v6, -0x9

    add-int/2addr v5, v6

    goto/16 :goto_3

    .line 291
    :catchall_1
    move-exception p1

    throw p1

    .line 280
    :goto_e
    :pswitch_4
    :try_start_6
    invoke-static {v0}, Lccsansan/d/getDownloadedList;->getDownloadingList(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 281
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 282
    if-eqz v4, :cond_9

    .line 268
    const/16 v0, 0x49

    goto :goto_f

    :cond_9
    const/16 v0, 0x35

    :goto_f
    packed-switch v0, :pswitch_data_7

    .line 271
    sget v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    or-int/lit8 v4, v0, 0xb

    shl-int/2addr v4, v1

    xor-int/lit8 v0, v0, 0xb

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/2addr v4, v2

    if-nez v4, :cond_a

    .line 284
    :cond_a
    :try_start_7
    invoke-virtual {p0, p2, p1, p3}, Lccsansan/d/getDownloadedList;->addDownloadListener([BILjava/lang/String;)[B

    move-result-object p2

    .line 287
    :pswitch_5
    sget-object p1, Lccsansan/d/getDownloadedList;->getDownloadedRecordByUrl:Ljava/lang/reflect/Constructor;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v3

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 271
    sget p2, Lccsansan/d/getDownloadedList;->trackReportShow:I

    or-int/lit8 p3, p2, 0x11

    shl-int/2addr p3, v1

    xor-int/lit8 p2, p2, 0x11

    sub-int/2addr p3, p2

    rem-int/lit16 p2, p3, 0x80

    sput p2, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/2addr p3, v2

    .line 291
    return-object p1

    .line 289
    :catch_0
    move-exception p1

    .line 291
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_11

    :goto_10
    throw p2

    :goto_11
    goto :goto_10

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4b
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x35
        :pswitch_5
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 2

    sget v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private static getDownloadingList(Ljava/io/InputStream;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    nop

    .line 309
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 311
    const/16 v1, 0x4000

    new-array v2, v1, [B

    .line 318
    sget v3, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 315
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 318
    :goto_1
    :pswitch_0
    nop

    .line 313
    invoke-virtual {p0, v2, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1

    .line 315
    const/16 v6, 0x15

    goto :goto_2

    :cond_1
    const/16 v6, 0x49

    :goto_2
    packed-switch v6, :pswitch_data_1

    .line 317
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 318
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_5

    :pswitch_1
    sget v6, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v6, v6, 0x38

    sub-int/2addr v6, v4

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    .line 315
    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    packed-switch v6, :pswitch_data_2

    :pswitch_2
    invoke-virtual {v0, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 318
    sget v3, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 v3, v3, 0x54

    sub-int/2addr v3, v4

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    .line 315
    const/16 v3, 0xb

    goto :goto_4

    :cond_3
    const/16 v3, 0x5a

    :goto_4
    packed-switch v3, :pswitch_data_3

    .line 318
    goto :goto_1

    .line 315
    :goto_5
    sget v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto :goto_6

    :cond_4
    const/16 v0, 0x36

    :goto_6
    packed-switch v0, :pswitch_data_4

    goto :goto_7

    .line 318
    :pswitch_3
    return-object p0

    .line 315
    :goto_7
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x36
        :pswitch_3
    .end packed-switch
.end method

.method private static unifiedDownload([BI)I
    .locals 3

    .line 1092
    sget v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    or-int/lit8 v1, v0, 0x19

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x19

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x37

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    packed-switch v0, :pswitch_data_0

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, p1, 0x1

    or-int/lit8 v2, p1, 0x1

    add-int/2addr v1, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    xor-int/lit8 v1, p1, 0x2

    and-int/lit8 v2, p1, 0x2

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    xor-int v2, v0, v1

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, -0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    xor-int p1, v0, p0

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    goto :goto_1

    :pswitch_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x77a6

    or-int/lit8 v1, p1, 0x0

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, p1, 0x0

    sub-int/2addr v1, v2

    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, -0x345d

    xor-int/lit8 v1, v1, -0x1

    and-int/lit16 v1, v1, 0x345c

    or-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x3f

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v2, v1, -0x1c5b

    xor-int/lit8 v1, v1, -0x1

    and-int/lit16 v1, v1, 0x1c5a

    or-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x62

    or-int/2addr v0, v1

    mul-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0x2be3

    ushr-int/lit8 p0, p0, 0x7

    and-int/2addr p0, v0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lccsansan/d/getDownloadedList;->pause:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lccsansan/d/getDownloadedList;->getDownloadedCount:Lccsanandroid/util/TypedValue;

    .line 177
    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lccsanandroid/util/TypedValue;

    invoke-direct {v1}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lccsansan/d/getDownloadedList;->getDownloadedCount:Lccsanandroid/util/TypedValue;

    .line 181
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 182
    iget v3, v1, Lccsanandroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 184
    iget v8, v1, Lccsanandroid/util/TypedValue;->assetCookie:I

    .line 185
    iget-object v2, v1, Lccsanandroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    iget v10, v1, Lccsanandroid/util/TypedValue;->resourceId:I

    move-object v5, p0

    move v7, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lccsansan/d/getDownloadedList;->addDownloadListener(Ljava/lang/String;IILjava/lang/String;I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 189
    :cond_1
    new-instance p2, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    const/16 v5, 0x16

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    const/16 v6, 0xc9

    int-to-short v6, v6

    invoke-static {v5, v2, v6}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x58

    int-to-byte p1, p1

    const/16 v2, 0xe

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    const/16 v5, 0xd1

    int-to-short v5, v5

    invoke-static {p1, v2, v5}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lccsanandroid/util/TypedValue;->type:I

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    aget-byte v1, v4, v1

    neg-int v1, v1

    int-to-byte v1, v1

    sget v2, Lccsansan/d/getDownloadedList;->addDownloadListener:I

    and-int/lit16 v2, v2, 0xa8

    int-to-short v2, v2

    invoke-static {p1, v1, v2}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 192
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static unifiedDownload()V
    .locals 2

    sget v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    and-int/lit8 v1, v0, 0x47

    or-int/lit8 v0, v0, 0x47

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xd9

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    const/16 v0, 0x4a

    :goto_1
    sput v0, Lccsansan/d/getDownloadedList;->addDownloadListener:I

    goto :goto_2

    :pswitch_0
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    const/16 v0, 0x73

    goto :goto_1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x19t
        0xct
        0x37t
        0x70t
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
        0x24t
        -0x19t
        -0xdt
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
        -0xbt
        0x7t
        -0x2t
        -0x7t
        -0x1t
        -0x2t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x19t
        0xct
        0x37t
        0x70t
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
        0x24t
        -0x19t
        -0xdt
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
        -0xbt
        0x7t
        -0x2t
        -0x7t
        -0x1t
        -0x2t
        0x10t
    .end array-data
.end method


# virtual methods
.method public addDownloadListener([BILjava/lang/String;)[B
    .locals 9

    .line 1068
    sget p3, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 p3, p3, 0x5e

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    rem-int/lit16 v1, p3, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 p3, p3, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1064
    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    const/4 v2, 0x4

    packed-switch p3, :pswitch_data_0

    .line 1061
    array-length p3, p1

    and-int/lit8 v1, p3, 0x2

    or-int/lit8 p3, p3, 0x2

    add-int/2addr v1, p3

    new-array p3, v1, [B

    .line 1063
    invoke-static {p1, v0}, Lccsansan/d/getDownloadedList;->unifiedDownload([BI)I

    move-result v1

    xor-int v2, v1, p2

    and-int/2addr p2, v1

    or-int/2addr p2, v2

    .line 1064
    const/4 v2, 0x5

    const/4 v1, 0x1

    goto :goto_1

    .line 1061
    :pswitch_0
    array-length p3, p1

    sub-int/2addr p3, v2

    new-array p3, p3, [B

    .line 1063
    invoke-static {p1, v1}, Lccsansan/d/getDownloadedList;->unifiedDownload([BI)I

    move-result v3

    and-int v4, v3, p2

    xor-int/lit8 v4, v4, -0x1

    or-int/2addr p2, v3

    and-int/2addr p2, v4

    .line 1064
    nop

    .line 1068
    :goto_1
    nop

    .line 1064
    :goto_2
    array-length v3, p3

    if-ge v1, v3, :cond_1

    const/16 v3, 0x38

    goto :goto_3

    :cond_1
    const/16 v3, 0x4d

    :goto_3
    packed-switch v3, :pswitch_data_1

    sget v3, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    or-int/lit8 v4, v3, 0x1

    shl-int/2addr v4, v0

    xor-int/lit8 v5, v3, 0x1

    sub-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    goto :goto_4

    .line 1068
    :pswitch_1
    return-object p3

    .line 1066
    :cond_2
    :goto_4
    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p1, v2

    mul-int v5, v1, p2

    and-int v6, v2, v5

    xor-int/lit8 v6, v6, -0x1

    or-int/2addr v2, v5

    and-int/2addr v2, v6

    int-to-long v5, v2

    iget-wide v7, p0, Lccsansan/d/getDownloadedList;->getDownloadingList:J

    xor-long/2addr v5, v7

    long-to-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 1064
    add-int/lit8 v1, v1, 0x1

    or-int/lit8 v2, v3, 0x61

    shl-int/2addr v2, v0

    xor-int/lit8 v3, v3, 0x61

    sub-int/2addr v2, v3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1068
    :cond_3
    move v2, v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_1
    .end packed-switch
.end method

.method public getAnimation(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 129
    sget v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    or-int/lit8 v1, v0, 0x69

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0x69

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 124
    :cond_0
    nop

    .line 125
    shr-int/lit8 v1, p1, 0x18

    const/16 v3, 0x7f

    if-ne v1, v3, :cond_1

    .line 127
    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v0, v3

    goto :goto_4

    .line 129
    :pswitch_0
    add-int/lit8 v0, v0, 0x48

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x57

    if-nez v0, :cond_2

    .line 127
    const/16 v0, 0x57

    goto :goto_1

    :cond_2
    const/16 v0, 0x4a

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget-object v0, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    const/16 v4, 0x6034

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v5, 0x9

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    const/16 v6, 0x60

    aget-byte v0, v0, v6

    goto :goto_2

    :pswitch_1
    sget-object v0, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    const/16 v4, 0xbd

    aget-byte v4, v0, v4

    int-to-byte v4, v4

    const/16 v5, 0x46

    aget-byte v5, v0, v5

    int-to-byte v5, v5

    const/16 v6, 0x23

    aget-byte v0, v0, v6

    :goto_2
    int-to-short v0, v0

    invoke-static {v4, v5, v0}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsansan/d/getDownloadedList;->unifiedDownload(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 129
    sget v4, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v4, v4, 0x2d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 127
    goto :goto_3

    :cond_3
    const/4 v1, 0x7

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 129
    :pswitch_2
    nop

    :goto_4
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 127
    const/4 v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_5
    packed-switch v4, :pswitch_data_3

    .line 129
    invoke-super {p0, p1}, Lccsanandroid/content/res/Resources;->getAnimation(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    goto :goto_9

    :pswitch_3
    sget p1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    .line 127
    const/16 v1, 0xd

    goto :goto_6

    :cond_5
    nop

    :goto_6
    packed-switch v1, :pswitch_data_4

    .line 129
    :goto_7
    goto :goto_8

    :pswitch_4
    :try_start_0
    array-length p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p1

    throw p1

    :goto_8
    return-object v0

    :goto_9
    sget v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x2c

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd
        :pswitch_4
    .end packed-switch
.end method

.method public getConfiguration()Lccsanandroid/content/res/Configuration;
    .locals 2

    .line 159
    sget v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    xor-int/lit8 v1, v0, 0x2d

    and-int/lit8 v0, v0, 0x2d

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x41

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/d/getDownloadedList;->getDownloadingCount:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/d/getDownloadedList;->getDownloadingCount:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;
    .locals 2

    .line 165
    sget v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 v0, v0, 0x52

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    goto :goto_0

    :cond_0
    const/16 v0, 0x58

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/d/getDownloadedList;->getDownloadingCount:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/d/getDownloadedList;->getDownloadingCount:Lccsanandroid/content/res/Resources;

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch
.end method

.method public getLayout(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 141
    sget v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    shr-int/lit8 v2, p1, 0x18

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_1

    .line 139
    const/16 v2, 0x32

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 141
    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 139
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    sget-object v0, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    aget-byte v1, v0, v4

    int-to-byte v1, v1

    const/16 v2, 0x23

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v5, 0xb7

    aget-byte v0, v0, v5

    :goto_2
    int-to-short v0, v0

    invoke-static {v1, v2, v0}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsansan/d/getDownloadedList;->unifiedDownload(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_3

    :pswitch_0
    sget-object v0, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    aget-byte v1, v0, v4

    int-to-byte v1, v1

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    const/16 v5, 0x5399

    aget-byte v0, v0, v5

    goto :goto_2

    .line 141
    :goto_3
    nop

    :pswitch_1
    const/16 v1, 0x54

    if-eqz v0, :cond_3

    .line 139
    const/16 v2, 0x54

    goto :goto_4

    :cond_3
    const/16 v2, 0x27

    :goto_4
    packed-switch v2, :pswitch_data_2

    .line 141
    invoke-super {p0, p1}, Lccsanandroid/content/res/Resources;->getLayout(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    goto :goto_6

    :pswitch_2
    sget p1, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    or-int/lit8 v2, p1, 0x71

    shl-int/2addr v2, v4

    xor-int/lit8 p1, p1, 0x71

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 139
    :cond_4
    or-int/lit8 v2, p1, 0x59

    shl-int/2addr v2, v4

    xor-int/lit8 p1, p1, 0x59

    sub-int/2addr v2, p1

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    const/16 v1, 0x3e

    :goto_5
    packed-switch v1, :pswitch_data_3

    .line 141
    return-object v0

    .line 139
    :pswitch_3
    const/16 p1, 0x38

    :try_start_0
    div-int/2addr p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    throw p1

    :goto_6
    sget v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    and-int/lit8 v1, v0, 0x11

    or-int/lit8 v0, v0, 0x11

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    .line 141
    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x54
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x54
        :pswitch_3
    .end packed-switch
.end method

.method public getXml(I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 153
    sget v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    or-int/lit8 v1, v0, 0x37

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x37

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 148
    nop

    .line 149
    shr-int/lit8 v1, p1, 0x77

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_2

    goto :goto_2

    .line 148
    :pswitch_0
    nop

    .line 149
    shr-int/lit8 v1, p1, 0x18

    const/16 v4, 0x7f

    if-ne v1, v4, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :goto_2
    const/16 v1, 0xb

    goto :goto_3

    :cond_2
    const/16 v1, 0x5f

    :goto_3
    packed-switch v1, :pswitch_data_2

    :pswitch_1
    move-object v1, v3

    goto :goto_5

    .line 151
    :goto_4
    :pswitch_2
    sget-object v1, Lccsansan/d/getDownloadedList;->removeDownloadListener:[B

    const/16 v4, 0x12

    aget-byte v1, v1, v4

    int-to-byte v1, v1

    int-to-byte v4, v1

    xor-int/lit8 v5, v4, 0x14

    and-int/lit8 v6, v4, 0x14

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v1, v4, v5}, Lccsansan/d/getDownloadedList;->IncentiveDownloadUtils(BSI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsansan/d/getDownloadedList;->unifiedDownload(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 149
    sget v4, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 v4, v4, 0xe

    sub-int/2addr v4, v2

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 153
    :cond_3
    nop

    :goto_5
    if-eqz v1, :cond_4

    .line 149
    const/4 v4, 0x1

    goto :goto_6

    :cond_4
    const/4 v4, 0x0

    :goto_6
    packed-switch v4, :pswitch_data_3

    sget p1, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    and-int/lit8 v0, p1, 0x63

    or-int/lit8 p1, p1, 0x63

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    goto :goto_9

    .line 153
    :pswitch_3
    invoke-super {p0, p1}, Lccsanandroid/content/res/Resources;->getXml(I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 149
    sget v1, Lccsansan/d/getDownloadedList;->trackReportShow:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    goto :goto_7

    :cond_5
    const/4 v2, 0x0

    :goto_7
    packed-switch v2, :pswitch_data_4

    goto :goto_8

    .line 153
    :pswitch_4
    return-object p1

    .line 149
    :goto_8
    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    .line 153
    :cond_6
    :goto_9
    nop

    .line 149
    add-int/lit8 p1, p1, 0x28

    sub-int/2addr p1, v2

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/d/getDownloadedList;->getPackageNameByRecord:I

    rem-int/lit8 p1, p1, 0x2

    .line 153
    return-object v1

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
    .packed-switch 0xb
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method
