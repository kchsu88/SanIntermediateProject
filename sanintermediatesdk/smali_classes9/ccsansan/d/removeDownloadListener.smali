.class public Lccsansan/d/removeDownloadListener;
.super Lccsansan/d/getDownloadingList;
.source ""


# static fields
.field private static IncentiveSDK:I

.field private static deleteDownItem:Ljava/lang/reflect/Constructor;

.field private static getDownloadStatusByUrl:Ljava/lang/reflect/Method;

.field private static getDownloadedList:Ljava/lang/reflect/Method;

.field private static getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

.field public static final getDownloadingList:[B

.field private static getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

.field static removeDownloadListener:[B

.field private static trackReportClick:I

.field public static final unifiedDownload:I


# instance fields
.field public IncentiveDownloadUtils:J

.field private deleteDownList:I

.field private getDownloadedCount:Lccsanandroid/util/TypedValue;

.field private final getDownloadingCount:Ljava/lang/Object;

.field private pause:[I

.field private resume:[Ljava/lang/Object;

.field private trackReportShow:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    sput v0, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    const/4 v1, 0x1

    sput v1, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    invoke-static {}, Lccsansan/d/removeDownloadListener;->unifiedDownload()V

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsansan/d/removeDownloadListener;->removeDownloadListener:[B

    invoke-static {}, Lccsansan/d/removeDownloadListener;->removeDownloadListener()V

    .line 62
    :try_start_0
    const-class v2, Lccsanandroid/content/res/ResourcesImpl;

    const/16 v3, 0x5b

    int-to-short v4, v3

    sget-object v5, Lccsansan/d/removeDownloadListener;->getDownloadingList:[B

    const/16 v6, 0x11

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    const/16 v7, 0x10

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    const-class v7, Lccsanandroid/util/TypedValue;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 63
    sput-object v2, Lccsansan/d/removeDownloadListener;->getDownloadedList:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 65
    const/16 v2, 0x62

    int-to-short v2, v2

    const/16 v4, 0x8d

    aget-byte v6, v5, v4

    int-to-byte v6, v6

    const/16 v7, 0x1d

    int-to-byte v7, v7

    invoke-static {v2, v6, v7}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget v6, Lccsansan/d/removeDownloadListener;->unifiedDownload:I

    xor-int/lit8 v7, v6, 0xa

    and-int/lit8 v9, v6, 0xa

    or-int/2addr v7, v9

    int-to-short v7, v7

    const/16 v9, 0x58

    aget-byte v9, v5, v9

    int-to-byte v9, v9

    int-to-byte v10, v9

    invoke-static {v7, v9, v10}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v7

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v0

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v1

    invoke-virtual {v2, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lccsansan/d/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    .line 67
    aget-byte v2, v5, v3

    neg-int v2, v2

    int-to-short v2, v2

    aget-byte v3, v5, v4

    int-to-byte v3, v3

    add-int/lit8 v4, v3, 0x2

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 69
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, [B

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lccsansan/d/removeDownloadListener;->deleteDownItem:Ljava/lang/reflect/Constructor;

    .line 70
    const/16 v3, 0x4a

    int-to-short v3, v3

    const/16 v4, 0x22

    aget-byte v4, v5, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v7, 0xe

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {v3, v4, v7}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lccsansan/d/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    .line 71
    const/16 v3, 0x9e

    int-to-short v3, v3

    and-int/lit8 v4, v6, 0x5f

    int-to-byte v4, v4

    const/16 v6, 0x4b

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsansan/d/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    .line 73
    sget-object v0, Lccsansan/d/removeDownloadListener;->deleteDownItem:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    sget v0, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/2addr v0, v8

    if-nez v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x60
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

.method constructor <init>(Lccsanandroid/content/res/ResourcesImpl;Lccsanandroid/content/res/Resources;)V
    .locals 3

    const-wide/32 v0, 0x38897dbb

    iput-wide v0, p0, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils:J

    .line 92
    invoke-virtual {p1}, Lccsanandroid/content/res/ResourcesImpl;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    .line 94
    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    .line 95
    invoke-virtual {p2}, Lccsanandroid/content/res/Resources;->getDisplayAdjustments()Lccsanandroid/view/DisplayAdjustments;

    move-result-object p2

    .line 92
    invoke-direct {p0, v0, v1, v2, p2}, Lccsansan/d/getDownloadingList;-><init>(Lccsanandroid/content/res/AssetManager;Lccsanandroid/util/DisplayMetrics;Lccsanandroid/content/res/Configuration;Lccsanandroid/view/DisplayAdjustments;)V

    .line 47
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsansan/d/removeDownloadListener;->getDownloadingCount:Ljava/lang/Object;

    .line 48
    new-instance p2, Lccsanandroid/util/TypedValue;

    invoke-direct {p2}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object p2, p0, Lccsansan/d/removeDownloadListener;->getDownloadedCount:Lccsanandroid/util/TypedValue;

    .line 97
    iput-object p1, p0, Lccsansan/d/getDownloadingList;->addDownloadListener:Lccsanandroid/content/res/ResourcesImpl;

    .line 99
    const/4 p1, 0x4

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lccsansan/d/removeDownloadListener;->resume:[Ljava/lang/Object;

    .line 100
    new-array p2, p1, [I

    iput-object p2, p0, Lccsansan/d/removeDownloadListener;->pause:[I

    .line 101
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lccsansan/d/removeDownloadListener;->trackReportShow:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method private static IncentiveDownloadUtils(SSI)Ljava/lang/String;
    .locals 8

    sget v0, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    add-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    goto :goto_0

    :cond_0
    const/16 v1, 0x48

    :goto_0
    const/4 v2, 0x0

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 p2, p2, 0x3

    rsub-int/lit8 v1, p1, 0x78

    sget-object p1, Lccsansan/d/removeDownloadListener;->getDownloadingList:[B

    xor-int/lit8 v4, p0, 0x4

    and-int/lit8 p0, p0, 0x4

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr p0, v4

    new-array v5, p2, [B

    sub-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    if-nez p1, :cond_2

    goto :goto_1

    :pswitch_0
    or-int/lit8 v1, p2, 0x43

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 p2, p2, 0x43

    sub-int/2addr v1, p2

    and-int/lit8 p2, v1, 0x30

    const/16 v4, 0x30

    or-int/2addr v1, v4

    add-int/2addr p2, v1

    const/16 v1, 0x7a

    rem-int/2addr v1, p1

    sget-object p1, Lccsansan/d/removeDownloadListener;->getDownloadingList:[B

    add-int/lit8 p0, p0, 0x61

    new-array v5, p2, [B

    add-int/lit8 p2, p2, 0x3

    if-nez p1, :cond_1

    const/16 v4, 0x18

    :cond_1
    packed-switch v4, :pswitch_data_1

    goto :goto_3

    :goto_1
    const/16 v4, 0x3e

    goto :goto_2

    :cond_2
    const/16 v4, 0x22

    :goto_2
    packed-switch v4, :pswitch_data_2

    goto :goto_5

    :goto_3
    :pswitch_1
    and-int/lit8 v4, v0, 0x75

    or-int/lit8 v0, v0, 0x75

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    const/16 v0, 0xa

    goto :goto_4

    :cond_3
    const/16 v0, 0xc

    :goto_4
    packed-switch v0, :pswitch_data_3

    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_2
    move v0, p2

    goto :goto_6

    :catchall_0
    move-exception p0

    throw p0

    :goto_5
    :pswitch_3
    and-int/lit8 v0, v3, -0x70

    or-int/lit8 v3, v3, -0x70

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x72

    add-int/lit8 v0, v0, -0x1

    int-to-byte v3, v1

    aput-byte v3, v5, v0

    if-ne v0, p2, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_4
    aget-byte v3, p1, p0

    sget v4, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    add-int/lit8 v4, v4, 0x3d

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v4, v4, 0x2

    move v7, v0

    move v0, p2

    move p2, v3

    move v3, v7

    :goto_6
    xor-int/lit8 v4, p0, -0x4a

    and-int/lit8 p0, p0, -0x4a

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v4, p0

    or-int/lit8 p0, v4, 0x4b

    shl-int/lit8 p0, p0, 0x1

    xor-int/lit8 v4, v4, 0x4b

    sub-int/2addr p0, v4

    neg-int p2, p2

    add-int/2addr v1, p2

    or-int/lit8 p2, v1, 0x2

    shl-int/lit8 p2, p2, 0x1

    xor-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    move p2, v0

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc
        :pswitch_2
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Ljava/io/InputStream;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    nop

    .line 286
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    const/16 v1, 0x4000

    new-array v2, v1, [B

    .line 292
    sget v3, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 295
    :goto_1
    :pswitch_0
    nop

    .line 290
    :goto_2
    invoke-virtual {p0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1

    .line 292
    const/4 v6, 0x1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_3
    packed-switch v6, :pswitch_data_1

    .line 294
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 295
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto :goto_5

    :pswitch_1
    sget v6, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    add-int/lit8 v6, v6, 0x63

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    .line 292
    const/16 v6, 0x38

    goto :goto_4

    :cond_2
    const/16 v6, 0x27

    :goto_4
    packed-switch v6, :pswitch_data_2

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :goto_5
    sget v0, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    xor-int/lit8 v1, v0, 0x11

    and-int/lit8 v0, v0, 0x11

    shl-int/2addr v0, v5

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    .line 295
    return-object p0

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
    .packed-switch 0x38
        :pswitch_2
    .end packed-switch
.end method

.method private addDownloadListener(IILjava/lang/String;)Ljava/lang/Object;
    .locals 12

    .line 268
    nop

    .line 261
    sget v0, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    add-int/lit8 v0, v0, 0x72

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    const/4 v2, 0x2

    rem-int/2addr v0, v2

    const/16 v3, 0x33

    if-nez v0, :cond_0

    .line 245
    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 240
    :try_start_0
    sget-object v0, Lccsansan/d/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsansan/d/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lccsansan/d/removeDownloadListener;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object p3, v7, v5

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 242
    nop

    .line 245
    const/4 v6, 0x1

    goto :goto_2

    .line 240
    :goto_1
    invoke-virtual {p0}, Lccsansan/d/removeDownloadListener;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object p3, v7, v1

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 242
    nop

    .line 245
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    :goto_3
    sget-object v8, Lccsansan/d/removeDownloadListener;->removeDownloadListener:[B

    array-length v8, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x42

    const/4 v10, 0x0

    if-ge v6, v8, :cond_7

    sget v8, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    and-int/lit8 v11, v8, 0x6d

    or-int/lit8 v8, v8, 0x6d

    add-int/2addr v11, v8

    rem-int/lit16 v8, v11, 0x80

    sput v8, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    rem-int/2addr v11, v2

    if-eqz v11, :cond_1

    const/16 v8, 0x42

    goto :goto_4

    :cond_1
    const/16 v8, 0x44

    :goto_4
    packed-switch v8, :pswitch_data_1

    goto :goto_6

    :pswitch_1
    if-eqz v7, :cond_2

    const/16 v8, 0x4b

    goto :goto_5

    :cond_2
    const/16 v8, 0x12

    :goto_5
    packed-switch v8, :pswitch_data_2

    goto :goto_7

    :goto_6
    :try_start_1
    invoke-super {v10}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_7

    .line 268
    :goto_7
    sget v8, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    add-int/2addr v8, v3

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    rem-int/2addr v8, v2

    if-eqz v8, :cond_4

    .line 247
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    .line 248
    sget-object v9, Lccsansan/d/removeDownloadListener;->removeDownloadListener:[B

    aget-byte v9, v9, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v10, 0x45

    :try_start_3
    div-int/2addr v10, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v8, v9, :cond_3

    .line 245
    const/4 v8, 0x0

    goto :goto_8

    :cond_3
    const/4 v8, 0x1

    :goto_8
    packed-switch v8, :pswitch_data_3

    goto :goto_c

    .line 268
    :catchall_0
    move-exception p1

    throw p1

    .line 247
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v8

    int-to-byte v8, v8

    .line 248
    sget-object v9, Lccsansan/d/removeDownloadListener;->removeDownloadListener:[B

    aget-byte v9, v9, v6

    if-eq v8, v9, :cond_5

    .line 245
    const/16 v8, 0x4f

    goto :goto_9

    :cond_5
    const/16 v8, 0x2b

    :goto_9
    packed-switch v8, :pswitch_data_4

    .line 250
    :pswitch_2
    nop

    .line 251
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 253
    sget-object v0, Lccsansan/d/removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lccsansan/d/removeDownloadListener;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object p3, v8, v1

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 245
    sget v7, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    add-int/lit8 v7, v7, 0x2e

    sub-int/2addr v7, v1

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    rem-int/2addr v7, v2

    if-eqz v7, :cond_6

    const/16 v7, 0x1a

    goto :goto_a

    :cond_6
    const/16 v7, 0x60

    :goto_a
    packed-switch v7, :pswitch_data_5

    goto :goto_b

    .line 268
    :pswitch_3
    nop

    .line 245
    :goto_b
    const/4 v7, 0x0

    :goto_c
    :pswitch_4
    add-int/lit8 v6, v6, 0x5b

    sub-int/2addr v6, v1

    xor-int/lit8 v8, v6, -0x59

    and-int/lit8 v6, v6, -0x59

    shl-int/2addr v6, v1

    add-int/2addr v6, v8

    goto/16 :goto_3

    :catchall_1
    move-exception p1

    throw p1

    .line 257
    :cond_7
    :pswitch_5
    :try_start_5
    invoke-static {v0}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 258
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 259
    if-eqz v7, :cond_8

    .line 245
    const/16 v0, 0x1b

    goto :goto_d

    :cond_8
    const/16 v0, 0x5f

    :goto_d
    packed-switch v0, :pswitch_data_6

    .line 248
    sget v0, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    add-int/2addr v0, v4

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_9

    .line 245
    goto :goto_e

    :cond_9
    const/16 v9, 0x13

    :goto_e
    packed-switch v9, :pswitch_data_7

    .line 261
    :try_start_6
    invoke-virtual {p0, p2, p1, p3}, Lccsansan/d/removeDownloadListener;->getDownloadingList([BILjava/lang/String;)[B

    move-result-object p2

    goto :goto_f

    :pswitch_6
    invoke-virtual {p0, p2, p1, p3}, Lccsansan/d/removeDownloadListener;->getDownloadingList([BILjava/lang/String;)[B

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    array-length p1, v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_f

    .line 248
    :catchall_2
    move-exception p1

    throw p1

    .line 264
    :goto_f
    :pswitch_7
    :try_start_8
    sget-object p1, Lccsansan/d/removeDownloadListener;->deleteDownItem:Ljava/lang/reflect/Constructor;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v5

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 261
    sget p2, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    xor-int/lit8 p3, p2, 0x21

    and-int/lit8 p2, p2, 0x21

    shl-int/2addr p2, v1

    add-int/2addr p3, p2

    rem-int/lit16 p2, p3, 0x80

    sput p2, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/2addr p3, v2

    if-nez p3, :cond_a

    :try_start_9
    array-length p2, v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-object p1

    :catchall_3
    move-exception p1

    throw p1

    .line 268
    :cond_a
    return-object p1

    .line 266
    :catch_0
    move-exception p1

    .line 268
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_11

    :goto_10
    throw p2

    :goto_11
    goto :goto_10

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2b
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x60
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x5f
        :pswitch_7
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x42
        :pswitch_6
    .end packed-switch
.end method

.method private static removeDownloadListener([BI)I
    .locals 4

    .line 1092
    sget v0, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    or-int/lit8 v2, p1, 0x1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int v3, v0, v2

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    and-int/lit8 v2, p1, 0x2

    or-int/lit8 v3, p1, 0x2

    add-int/2addr v2, v3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    xor-int/lit8 v2, p1, 0x3

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v2, p1

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    xor-int p1, v0, p0

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    const/16 p1, 0x3d

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method static removeDownloadListener()V
    .locals 3

    sget v0, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    or-int/lit8 v1, v0, 0x33

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x33

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v1, 0x51

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private unifiedDownload(Ljava/lang/String;IILjava/lang/String;I)Lccsanandroid/content/res/XmlResourceParser;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 181
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    move-object/from16 v3, p4

    const/16 v8, 0x4b

    const/4 v9, 0x4

    if-eqz p2, :cond_4

    .line 185
    :try_start_0
    iget-object v10, v1, Lccsansan/d/removeDownloadListener;->resume:[Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    iget-object v11, v1, Lccsansan/d/removeDownloadListener;->pause:[I

    .line 188
    iget-object v12, v1, Lccsansan/d/removeDownloadListener;->trackReportShow:[Ljava/lang/String;

    .line 189
    iget-object v13, v1, Lccsansan/d/removeDownloadListener;->resume:[Ljava/lang/Object;

    .line 191
    array-length v14, v12

    .line 192
    const/4 v15, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v14, :cond_1

    .line 194
    aget v5, v11, v4

    if-ne v5, v0, :cond_0

    aget-object v5, v12, v4

    if-eqz v5, :cond_0

    aget-object v5, v12, v4

    .line 195
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    sget-object v0, Lccsansan/d/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    aget-object v4, v13, v4

    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/res/XmlResourceParser;

    monitor-exit v10

    return-object v0

    .line 192
    :cond_0
    and-int/lit8 v5, v4, 0x1

    or-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v5

    goto :goto_0

    .line 203
    :cond_1
    move/from16 v4, p5

    invoke-direct {v1, v4, v0, v2}, Lccsansan/d/removeDownloadListener;->addDownloadListener(IILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 204
    if-eqz v4, :cond_3

    .line 206
    iget v5, v1, Lccsansan/d/removeDownloadListener;->deleteDownList:I

    xor-int/lit8 v16, v5, 0x1

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x1

    add-int v16, v16, v5

    rem-int v5, v16, v14

    .line 207
    iput v5, v1, Lccsansan/d/removeDownloadListener;->deleteDownList:I

    .line 208
    aget-object v14, v13, v5

    .line 209
    if-eqz v14, :cond_2

    .line 211
    sget-object v6, Lccsansan/d/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v6, v14, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_2
    aput v0, v11, v5

    .line 214
    aput-object v2, v12, v5

    .line 215
    aput-object v4, v13, v5

    .line 216
    sget-object v0, Lccsansan/d/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    new-array v5, v15, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/res/XmlResourceParser;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 218
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

    .line 220
    :catch_0
    move-exception v0

    .line 222
    new-instance v4, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lccsansan/d/removeDownloadListener;->getDownloadingList:[B

    aget-byte v7, v6, v9

    neg-int v7, v7

    int-to-short v7, v7

    sget v10, Lccsansan/d/removeDownloadListener;->unifiedDownload:I

    add-int/lit8 v11, v10, -0x2

    add-int/lit8 v11, v11, -0x1

    int-to-byte v11, v11

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    invoke-static {v7, v11, v8}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v10, v9

    int-to-short v2, v10

    const/16 v7, 0x58

    int-to-byte v7, v7

    const/16 v8, 0x1b

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    invoke-static {v2, v7, v8}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8f

    int-to-short v2, v2

    const/4 v3, 0x7

    aget-byte v3, v6, v3

    int-to-byte v3, v3

    invoke-static {v2, v7, v3}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 225
    throw v4

    .line 229
    :cond_4
    :goto_1
    new-instance v0, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lccsansan/d/removeDownloadListener;->getDownloadingList:[B

    aget-byte v6, v5, v9

    neg-int v6, v6

    int-to-short v6, v6

    sget v7, Lccsansan/d/removeDownloadListener;->unifiedDownload:I

    and-int/lit8 v9, v7, -0x3

    or-int/lit8 v10, v7, -0x3

    add-int/2addr v9, v10

    int-to-byte v9, v9

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    invoke-static {v6, v9, v8}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, v7, -0x4

    and-int/lit8 v6, v7, -0x4

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v2, v6

    int-to-short v2, v2

    const/16 v6, 0x58

    int-to-byte v6, v6

    const/16 v7, 0x1b

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {v2, v6, v7}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8f

    int-to-short v2, v2

    const/4 v3, 0x7

    aget-byte v3, v5, v3

    int-to-byte v3, v3

    invoke-static {v2, v6, v3}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
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

.method static unifiedDownload()V
    .locals 3

    sget v0, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0xa6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/d/removeDownloadListener;->getDownloadingList:[B

    const/16 v0, 0x35

    sput v0, Lccsansan/d/removeDownloadListener;->unifiedDownload:I

    or-int/lit8 v0, v1, 0x29

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    xor-int/lit8 v1, v1, 0x29

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x4dt
        0x2ft
        0x26t
        0x71t
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
        -0x7t
        -0x1t
        -0x2t
        0x10t
    .end array-data
.end method


# virtual methods
.method public IncentiveDownloadUtils(ILccsanandroid/util/TypedValue;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 139
    sget v0, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    xor-int/lit8 v1, v0, 0x6b

    and-int/lit8 v0, v0, 0x6b

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    const/4 v0, 0x2

    rem-int/2addr v1, v0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :try_start_0
    sget-object v1, Lccsansan/d/removeDownloadListener;->getDownloadedList:Ljava/lang/reflect/Method;

    goto :goto_1

    :pswitch_0
    sget-object v1, Lccsansan/d/removeDownloadListener;->getDownloadedList:Ljava/lang/reflect/Method;

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

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object p2, v0, v3

    const/4 p1, 0x5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_2
    return-void

    .line 137
    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 149
    iget-object v0, p0, Lccsansan/d/removeDownloadListener;->getDownloadingCount:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lccsansan/d/removeDownloadListener;->getDownloadedCount:Lccsanandroid/util/TypedValue;

    .line 152
    if-nez v1, :cond_0

    .line 154
    new-instance v1, Lccsanandroid/util/TypedValue;

    invoke-direct {v1}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lccsansan/d/removeDownloadListener;->getDownloadedCount:Lccsanandroid/util/TypedValue;

    .line 157
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(ILccsanandroid/util/TypedValue;Z)V

    .line 158
    iget v2, v1, Lccsanandroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 160
    iget v7, v1, Lccsanandroid/util/TypedValue;->assetCookie:I

    .line 161
    iget-object v2, v1, Lccsanandroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    iget v9, v1, Lccsanandroid/util/TypedValue;->resourceId:I

    move-object v4, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lccsansan/d/removeDownloadListener;->unifiedDownload(Ljava/lang/String;IILjava/lang/String;I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 165
    :cond_1
    new-instance p2, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lccsansan/d/removeDownloadListener;->getDownloadingList:[B

    const/16 v4, 0x1e

    aget-byte v4, v3, v4

    int-to-short v4, v4

    const/4 v5, 0x2

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    const/16 v6, 0x1b

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x12

    aget-byte p1, v3, p1

    int-to-short p1, p1

    xor-int/lit8 v4, p1, 0x58

    and-int/lit8 v5, p1, 0x58

    or-int/2addr v4, v5

    int-to-byte v4, v4

    const/16 v5, 0xe

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    invoke-static {p1, v4, v5}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lccsanandroid/util/TypedValue;->type:I

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x81

    int-to-short p1, p1

    const/16 v1, 0x58

    int-to-byte v1, v1

    const/16 v4, 0x22

    aget-byte v3, v3, v4

    neg-int v3, v3

    int-to-byte v3, v3

    invoke-static {p1, v1, v3}, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 168
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDownloadingList([BILjava/lang/String;)[B
    .locals 10

    .line 1068
    sget p3, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    xor-int/lit8 v0, p3, 0xb

    and-int/lit8 p3, p3, 0xb

    const/4 v1, 0x1

    shl-int/2addr p3, v1

    add-int/2addr v0, p3

    rem-int/lit16 p3, v0, 0x80

    sput p3, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1061
    :cond_0
    array-length p3, p1

    const/4 v0, 0x4

    sub-int/2addr p3, v0

    new-array v2, p3, [B

    .line 1063
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lccsansan/d/removeDownloadListener;->removeDownloadListener([BI)I

    move-result v4

    and-int v5, v4, p2

    xor-int/lit8 v5, v5, -0x1

    or-int/2addr p2, v4

    and-int/2addr p2, v5

    .line 1064
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_1

    .line 1068
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    sget v5, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    and-int/lit8 v6, v5, 0x31

    or-int/lit8 v5, v5, 0x31

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_2

    goto :goto_2

    :pswitch_0
    sget p1, Lccsansan/d/removeDownloadListener;->IncentiveSDK:I

    and-int/lit8 p2, p1, 0x6b

    or-int/lit8 p1, p1, 0x6b

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/d/removeDownloadListener;->trackReportClick:I

    rem-int/lit8 p2, p2, 0x2

    return-object v2

    .line 1066
    :cond_2
    :goto_2
    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p1, v0

    mul-int v6, v4, p2

    xor-int/2addr v0, v6

    int-to-long v6, v0

    iget-wide v8, p0, Lccsansan/d/removeDownloadListener;->IncentiveDownloadUtils:J

    xor-long/2addr v6, v8

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    .line 1064
    add-int/lit8 v4, v4, -0x24

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x27

    sub-int/2addr v4, v1

    move v0, v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
