.class public Lccsansan/d/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field static IncentiveDownloadUtils:[B

.field public static final addDownloadListener:I

.field private static deleteDownItem:Ljava/lang/reflect/Constructor;

.field private static getDownloadStatusByUrl:Ljava/lang/reflect/Method;

.field private static getDownloadedList:Ljava/lang/reflect/Method;

.field private static getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

.field public static final getDownloadingList:[B

.field private static getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

.field private static trackReportClick:I

.field private static trackReportShow:I


# instance fields
.field private final IncentiveSDK:[Ljava/lang/String;

.field private deleteDownList:I

.field private final getDownloadedCount:[I

.field private final getDownloadingCount:Ljava/lang/Object;

.field private final pause:[Ljava/lang/Object;

.field public removeDownloadListener:J

.field private resume:Lccsanandroid/util/TypedValue;

.field unifiedDownload:Lccsanandroid/content/res/ResourcesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    sput v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    const/4 v1, 0x1

    sput v1, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    invoke-static {}, Lccsansan/d/getDownloadStatusByUrl;->IncentiveDownloadUtils()V

    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    sput-object v3, Lccsansan/d/getDownloadStatusByUrl;->IncentiveDownloadUtils:[B

    invoke-static {}, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload()V

    .line 63
    :try_start_0
    sget-object v3, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingList:[B

    const/16 v4, 0x33

    aget-byte v5, v3, v4

    int-to-byte v5, v5

    sget v6, Lccsansan/d/getDownloadStatusByUrl;->addDownloadListener:I

    and-int/lit16 v7, v6, 0x1e8

    int-to-short v7, v7

    const/16 v8, 0x1b

    int-to-byte v9, v8

    invoke-static {v5, v7, v9}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x1e

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    const/16 v10, 0x35

    int-to-short v10, v10

    const/4 v11, 0x6

    aget-byte v11, v3, v11

    int-to-byte v11, v11

    invoke-static {v7, v10, v11}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v2, v1

    const-class v10, Lccsanandroid/util/TypedValue;

    const/4 v11, 0x2

    aput-object v10, v2, v11

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v10, v2, v12

    invoke-virtual {v5, v7, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 64
    sput-object v2, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 66
    aget-byte v2, v3, v4

    int-to-byte v2, v2

    and-int/lit16 v5, v6, 0x1e8

    int-to-short v5, v5

    invoke-static {v2, v5, v9}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x12

    aget-byte v6, v3, v5

    int-to-byte v6, v6

    const/16 v7, 0x16

    aget-byte v7, v3, v7

    int-to-short v7, v7

    const/16 v9, 0x15

    aget-byte v9, v3, v9

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v11

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lccsansan/d/getDownloadStatusByUrl;->getDownloadedList:Ljava/lang/reflect/Method;

    .line 68
    aget-byte v2, v3, v4

    int-to-byte v2, v2

    const/16 v4, 0x89

    int-to-short v4, v4

    const/16 v6, 0x6a

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    invoke-static {v2, v4, v6}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 70
    new-array v4, v1, [Ljava/lang/Class;

    const-class v6, [B

    aput-object v6, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lccsansan/d/getDownloadStatusByUrl;->deleteDownItem:Ljava/lang/reflect/Constructor;

    .line 71
    const/16 v4, 0x66

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    aget-byte v6, v3, v8

    int-to-short v6, v6

    aget-byte v7, v3, v0

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lccsansan/d/getDownloadStatusByUrl;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    .line 72
    aget-byte v4, v3, v8

    int-to-byte v4, v4

    aget-byte v6, v3, v0

    int-to-short v6, v6

    aget-byte v3, v3, v5

    int-to-byte v3, v3

    invoke-static {v4, v6, v3}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    .line 74
    sget-object v0, Lccsansan/d/getDownloadStatusByUrl;->deleteDownItem:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    xor-int/lit8 v2, v0, 0x5f

    and-int/lit8 v0, v0, 0x5f

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/2addr v2, v11

    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 1
        0x12t
        -0x49t
        -0x6bt
        0x7bt
    .end array-data
.end method

.method constructor <init>(Lccsanandroid/content/res/ResourcesImpl;)V
    .locals 2

    const-wide/32 v0, 0x38897dbb

    iput-wide v0, p0, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener:J

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingCount:Ljava/lang/Object;

    .line 48
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lccsansan/d/getDownloadStatusByUrl;->resume:Lccsanandroid/util/TypedValue;

    .line 85
    iput-object p1, p0, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/res/ResourcesImpl;

    .line 87
    const/4 p1, 0x4

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lccsansan/d/getDownloadStatusByUrl;->pause:[Ljava/lang/Object;

    .line 88
    new-array v0, p1, [I

    iput-object v0, p0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadedCount:[I

    .line 89
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lccsansan/d/getDownloadStatusByUrl;->IncentiveSDK:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method static IncentiveDownloadUtils()V
    .locals 2

    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    add-int/lit8 v0, v0, 0x60

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0xa7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingList:[B

    const/16 v0, 0x76

    sput v0, Lccsansan/d/getDownloadStatusByUrl;->addDownloadListener:I

    xor-int/lit8 v0, v1, 0x3f

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        -0x40t
        -0x4dt
        0x19t
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
        0x4t
        -0xdt
        0x24t
        -0x11t
        -0xct
        0x6t
        -0x4t
        0x5t
        0x11t
        0x0t
        0x11t
        -0x9t
        -0x9t
        -0x7t
        0x12t
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
        0xbt
        -0x10t
        0x29t
        -0xft
        -0xft
        0x1t
        0x10t
        -0xbt
        -0x7t
        -0x1t
        -0x2t
        0x10t
        -0x21t
        -0x1t
        0x9t
        0x47t
    .end array-data
.end method

.method private removeDownloadListener(IILjava/lang/String;)Ljava/lang/Object;
    .locals 10

    .line 236
    nop

    .line 216
    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 208
    :cond_0
    :try_start_0
    sget-object v0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadedList:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/res/ResourcesImpl;

    invoke-virtual {v2}, Lccsanandroid/content/res/ResourcesImpl;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 210
    nop

    .line 213
    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_0
    sget-object v7, Lccsansan/d/getDownloadStatusByUrl;->IncentiveDownloadUtils:[B

    array-length v7, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v7, :cond_1

    .line 229
    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    packed-switch v7, :pswitch_data_0

    sget v7, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    add-int/lit8 v8, v7, 0x48

    sub-int/2addr v8, v5

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/2addr v8, v1

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    :goto_2
    packed-switch v8, :pswitch_data_1

    .line 213
    if-eqz v4, :cond_4

    goto :goto_4

    .line 229
    :pswitch_0
    const/16 v8, 0x11

    :try_start_1
    div-int/2addr v8, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    packed-switch v8, :pswitch_data_2

    goto/16 :goto_a

    :catchall_0
    move-exception p1

    throw p1

    :goto_4
    const/16 v8, 0x12

    goto :goto_5

    :cond_4
    const/16 v8, 0x54

    :goto_5
    packed-switch v8, :pswitch_data_3

    goto :goto_a

    .line 236
    :pswitch_1
    add-int/lit8 v7, v7, 0x75

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/2addr v7, v1

    if-eqz v7, :cond_6

    .line 215
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    .line 216
    sget-object v8, Lccsansan/d/getDownloadStatusByUrl;->IncentiveDownloadUtils:[B

    aget-byte v8, v8, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v9, 0x0

    :try_start_3
    invoke-super {v9}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eq v7, v8, :cond_5

    .line 229
    const/4 v7, 0x0

    goto :goto_6

    :cond_5
    const/4 v7, 0x1

    :goto_6
    packed-switch v7, :pswitch_data_4

    goto :goto_8

    .line 236
    :catchall_1
    move-exception p1

    throw p1

    .line 215
    :cond_6
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    .line 216
    sget-object v8, Lccsansan/d/getDownloadStatusByUrl;->IncentiveDownloadUtils:[B

    aget-byte v8, v8, v2

    if-eq v7, v8, :cond_7

    .line 229
    const/16 v7, 0x45

    goto :goto_7

    :cond_7
    const/4 v7, 0x7

    :goto_7
    packed-switch v7, :pswitch_data_5

    :pswitch_2
    goto :goto_9

    .line 218
    :goto_8
    :pswitch_3
    nop

    .line 219
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 221
    sget-object v0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadedList:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/res/ResourcesImpl;

    invoke-virtual {v4}, Lccsanandroid/content/res/ResourcesImpl;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v4

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    aput-object p3, v7, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 216
    sget v4, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    add-int/lit8 v4, v4, 0x38

    sub-int/2addr v4, v5

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/2addr v4, v1

    if-nez v4, :cond_8

    .line 236
    :cond_8
    const/4 v4, 0x0

    .line 213
    :goto_9
    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v5

    goto/16 :goto_0

    .line 225
    :goto_a
    :pswitch_4
    :try_start_5
    invoke-static {v0}, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 226
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 227
    if-eqz v4, :cond_a

    .line 216
    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    xor-int/lit8 v2, v0, 0x49

    and-int/lit8 v0, v0, 0x49

    shl-int/2addr v0, v5

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/2addr v2, v1

    if-eqz v2, :cond_9

    .line 229
    const/4 v0, 0x0

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    :goto_b
    packed-switch v0, :pswitch_data_6

    :try_start_6
    invoke-virtual {p0, p2, p1, p3}, Lccsansan/d/getDownloadStatusByUrl;->IncentiveDownloadUtils([BILjava/lang/String;)[B

    move-result-object p2

    goto :goto_c

    :pswitch_5
    invoke-virtual {p0, p2, p1, p3}, Lccsansan/d/getDownloadStatusByUrl;->IncentiveDownloadUtils([BILjava/lang/String;)[B

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_d

    :goto_c
    const/4 p1, 0x3

    :try_start_7
    div-int/2addr p1, v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_d

    .line 216
    :catchall_2
    move-exception p1

    throw p1

    .line 232
    :cond_a
    :goto_d
    :try_start_8
    sget-object p1, Lccsansan/d/getDownloadStatusByUrl;->deleteDownItem:Ljava/lang/reflect/Constructor;

    new-array p3, v5, [Ljava/lang/Object;

    aput-object p2, p3, v6

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 236
    return-object p1

    .line 234
    :catch_0
    move-exception p1

    .line 236
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_f

    :goto_e
    throw p2

    :goto_f
    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x45
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private static removeDownloadListener(BSS)Ljava/lang/String;
    .locals 9

    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    xor-int/lit8 v1, v0, 0x77

    and-int/lit8 v0, v0, 0x77

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingList:[B

    neg-int p0, p0

    xor-int/lit8 v3, p0, 0x6f

    and-int/lit8 p0, p0, 0x6f

    shl-int/2addr p0, v2

    add-int/2addr v3, p0

    or-int/lit8 p0, p2, -0x38

    shl-int/2addr p0, v2

    xor-int/lit8 p2, p2, -0x38

    sub-int/2addr p0, p2

    or-int/lit8 p2, p0, 0x3d

    shl-int/2addr p2, v2

    xor-int/lit8 p0, p0, 0x3d

    sub-int/2addr p2, p0

    neg-int p0, p1

    xor-int/lit16 p1, p0, 0xa3

    and-int/lit16 p0, p0, 0xa3

    shl-int/2addr p0, v2

    add-int/2addr p1, p0

    new-array p0, p2, [B

    and-int/lit8 v4, p2, -0x64

    or-int/lit8 p2, p2, -0x64

    add-int/2addr v4, p2

    xor-int/lit8 p2, v4, 0x63

    and-int/lit8 v4, v4, 0x63

    shl-int/2addr v4, v2

    add-int/2addr p2, v4

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    packed-switch v5, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_3

    :pswitch_0
    and-int/lit8 v5, v0, 0x17

    or-int/lit8 v0, v0, 0x17

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    move v0, p2

    const/4 v5, 0x0

    move p2, p1

    goto :goto_5

    :goto_3
    int-to-byte v5, v3

    aput-byte v5, p0, v0

    add-int/lit8 v5, v0, 0x2

    sub-int/2addr v5, v2

    if-ne v0, p2, :cond_2

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v4}, Ljava/lang/String;-><init>([BI)V

    sget p0, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    xor-int/lit8 p2, p0, 0x27

    and-int/lit8 p0, p0, 0x27

    shl-int/2addr p0, v2

    add-int/2addr p2, p0

    rem-int/lit16 p0, p2, 0x80

    sput p0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1

    :cond_2
    aget-byte v0, v1, p1

    sget v6, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    or-int/lit8 v7, v6, 0x59

    shl-int/2addr v7, v2

    xor-int/lit8 v6, v6, 0x59

    sub-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_3

    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    const/4 v6, 0x1

    :goto_4
    packed-switch v6, :pswitch_data_2

    :pswitch_2
    move v8, p2

    move p2, p1

    move p1, v0

    move v0, v8

    :goto_5
    neg-int p1, p1

    add-int/2addr p2, v2

    neg-int p1, p1

    neg-int p1, p1

    or-int v6, v3, p1

    shl-int/2addr v6, v2

    xor-int/2addr p1, v3

    sub-int/2addr v6, p1

    or-int/lit8 p1, v6, 0x2

    shl-int/2addr p1, v2

    xor-int/lit8 v3, v6, 0x2

    sub-int v3, p1, v3

    move p1, p2

    move p2, v0

    move v0, v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload([BI)I
    .locals 4

    .line 1092
    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    aget-byte v0, p0, p1

    xor-int/lit16 v1, v0, 0x5940

    and-int/lit16 v0, v0, 0x5940

    or-int/2addr v0, v1

    and-int/lit8 v1, p1, 0x0

    or-int/lit8 v2, p1, 0x0

    add-int/2addr v1, v2

    aget-byte v1, p0, v1

    xor-int/lit16 v2, v1, 0x5d15

    and-int/lit16 v1, v1, 0x5d15

    or-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3e

    and-int/2addr v0, v1

    and-int/lit8 v1, p1, -0x5

    or-int/lit8 v2, p1, -0x5

    add-int/2addr v1, v2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0x6446

    shr-int/lit8 v1, v1, 0x70

    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    div-int/lit8 p1, p1, 0x5

    aget-byte p0, p0, p1

    xor-int/lit16 p1, p0, 0x1cc8

    and-int/lit16 p0, p0, 0x1cc8

    or-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x23

    and-int p1, v0, p0

    xor-int/lit8 p1, p1, -0x1

    or-int/2addr p0, v0

    and-int/2addr p0, p1

    goto :goto_1

    :pswitch_0
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    or-int/lit8 v2, p1, 0x2

    shl-int/2addr v2, v1

    xor-int/lit8 v3, p1, 0x2

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int v3, v0, v2

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    xor-int/lit8 v2, p1, 0x3

    and-int/lit8 p1, p1, 0x3

    shl-int/2addr p1, v1

    add-int/2addr v2, p1

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    :goto_1
    return p0

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

    .line 149
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p3

    move-object/from16 v3, p4

    const/16 v8, 0x12

    const/16 v9, 0x5b

    if-eqz p2, :cond_4

    .line 153
    :try_start_0
    iget-object v11, v1, Lccsansan/d/getDownloadStatusByUrl;->pause:[Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v12, v1, Lccsansan/d/getDownloadStatusByUrl;->getDownloadedCount:[I

    .line 156
    iget-object v13, v1, Lccsansan/d/getDownloadStatusByUrl;->IncentiveSDK:[Ljava/lang/String;

    .line 157
    iget-object v14, v1, Lccsansan/d/getDownloadStatusByUrl;->pause:[Ljava/lang/Object;

    .line 159
    array-length v15, v13

    .line 160
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v15, :cond_1

    .line 162
    aget v6, v12, v5

    if-ne v6, v0, :cond_0

    aget-object v6, v13, v5

    if-eqz v6, :cond_0

    aget-object v6, v13, v5

    .line 163
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    sget-object v0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    aget-object v5, v14, v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/res/XmlResourceParser;

    monitor-exit v11

    return-object v0

    .line 160
    :cond_0
    add-int/lit8 v5, v5, -0x6f

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v6, v5, 0x71

    or-int/lit8 v5, v5, 0x71

    add-int/2addr v5, v6

    goto :goto_0

    .line 171
    :cond_1
    move/from16 v5, p5

    invoke-direct {v1, v5, v0, v2}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(IILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 172
    if-eqz v5, :cond_3

    .line 174
    iget v6, v1, Lccsansan/d/getDownloadStatusByUrl;->deleteDownList:I

    or-int/lit8 v16, v6, 0x1

    shl-int/lit8 v16, v16, 0x1

    xor-int/lit8 v6, v6, 0x1

    sub-int v16, v16, v6

    rem-int v6, v16, v15

    .line 175
    iput v6, v1, Lccsansan/d/getDownloadStatusByUrl;->deleteDownList:I

    .line 176
    aget-object v15, v14, v6

    .line 177
    if-eqz v15, :cond_2

    .line 179
    sget-object v7, Lccsansan/d/getDownloadStatusByUrl;->getDownloadedRecordByUrl:Ljava/lang/reflect/Method;

    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_2
    aput v0, v12, v6

    .line 182
    aput-object v2, v13, v6

    .line 183
    aput-object v5, v14, v6

    .line 184
    sget-object v0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadStatusByUrl:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/res/XmlResourceParser;

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 186
    :cond_3
    :try_start_2
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    new-instance v4, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingList:[B

    aget-byte v7, v6, v9

    int-to-byte v7, v7

    aget-byte v8, v6, v8

    int-to-short v8, v8

    int-to-byte v9, v8

    invoke-static {v7, v8, v9}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    aget-byte v7, v6, v2

    int-to-byte v7, v7

    const/16 v8, 0x6e

    int-to-short v8, v8

    const/16 v9, 0x22

    aget-byte v9, v6, v9

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    const/16 v3, 0x1b

    int-to-short v3, v3

    const/4 v7, 0x6

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v2, v3, v6}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 193
    throw v4

    .line 197
    :cond_4
    :goto_1
    new-instance v0, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingList:[B

    aget-byte v6, v5, v9

    int-to-byte v6, v6

    aget-byte v7, v5, v8

    int-to-short v7, v7

    int-to-byte v8, v7

    invoke-static {v6, v7, v8}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    aget-byte v6, v5, v2

    int-to-byte v6, v6

    const/16 v7, 0x6e

    int-to-short v7, v7

    const/16 v8, 0x22

    aget-byte v8, v5, v8

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    const/16 v3, 0x1b

    int-to-short v3, v3

    const/4 v6, 0x6

    aget-byte v5, v5, v6

    int-to-byte v5, v5

    invoke-static {v2, v3, v5}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
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
    .locals 2

    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    add-int/lit8 v0, v0, 0x60

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private unifiedDownload(ILccsanandroid/util/TypedValue;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 133
    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    and-int/lit8 v1, v0, 0x35

    or-int/lit8 v0, v0, 0x35

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    const/4 v0, 0x2

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 127
    :cond_0
    :try_start_0
    sget-object v1, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingRecordByUrl:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/content/res/ResourcesImpl;

    invoke-virtual {v2}, Lccsanandroid/content/res/ResourcesImpl;->getAssets()Lccsanandroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p2, v3, v0

    const/4 p2, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v3, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    .line 133
    sget p1, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/2addr p1, v0

    return-void

    .line 131
    :cond_1
    :try_start_1
    new-instance p2, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    sget v1, Lccsansan/d/getDownloadStatusByUrl;->addDownloadListener:I

    ushr-int/lit8 v0, v1, 0x2

    int-to-byte v0, v0

    const/16 v1, 0x97

    int-to-short v1, v1

    sget-object v2, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingList:[B

    const/16 v3, 0x22

    aget-byte v2, v2, v3

    neg-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static unifiedDownload(Ljava/io/InputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    nop

    .line 254
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 256
    const/16 v1, 0x4000

    new-array v2, v1, [B

    .line 258
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/16 v5, 0x40

    if-ltz v4, :cond_0

    .line 263
    const/16 v6, 0x40

    goto :goto_1

    :cond_0
    const/16 v6, 0x20

    :goto_1
    packed-switch v6, :pswitch_data_0

    sget v5, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    and-int/lit8 v6, v5, 0x4f

    or-int/lit8 v5, v5, 0x4f

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2

    goto :goto_2

    .line 262
    :pswitch_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 263
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    sget v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    and-int/lit8 v1, v0, 0x1f

    or-int/lit8 v0, v0, 0x1f

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v5, 0x25

    :cond_1
    packed-switch v5, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/16 v0, 0xf

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    .line 260
    :cond_2
    :goto_2
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method IncentiveDownloadUtils(ILjava/lang/String;)Lccsanandroid/content/res/XmlResourceParser;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingCount:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lccsansan/d/getDownloadStatusByUrl;->resume:Lccsanandroid/util/TypedValue;

    .line 98
    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lccsanandroid/util/TypedValue;

    invoke-direct {v1}, Lccsanandroid/util/TypedValue;-><init>()V

    iput-object v1, p0, Lccsansan/d/getDownloadStatusByUrl;->resume:Lccsanandroid/util/TypedValue;

    .line 103
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload(ILccsanandroid/util/TypedValue;Z)V

    .line 104
    iget v2, v1, Lccsanandroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 106
    iget v7, v1, Lccsanandroid/util/TypedValue;->assetCookie:I

    .line 107
    iget-object v2, v1, Lccsanandroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    iget v9, v1, Lccsanandroid/util/TypedValue;->resourceId:I

    move-object v4, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;IILjava/lang/String;I)Lccsanandroid/content/res/XmlResourceParser;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 111
    :cond_1
    new-instance p2, Lccsanandroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lccsansan/d/getDownloadStatusByUrl;->addDownloadListener:I

    ushr-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    const/16 v4, 0x97

    int-to-short v4, v4

    sget-object v5, Lccsansan/d/getDownloadStatusByUrl;->getDownloadingList:[B

    const/16 v6, 0x22

    aget-byte v6, v5, v6

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x39

    aget-byte v3, v5, p1

    int-to-byte v3, v3

    const/16 v4, 0x9f

    int-to-short v4, v4

    const/4 v6, 0x0

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    invoke-static {v3, v4, v6}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lccsanandroid/util/TypedValue;->type:I

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, v5, p1

    int-to-byte p1, p1

    and-int/lit16 v1, p1, 0x1f1

    int-to-short v1, v1

    const/16 v3, 0x1e

    aget-byte v3, v5, v3

    int-to-byte v3, v3

    invoke-static {p1, v1, v3}, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lccsanandroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 114
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public IncentiveDownloadUtils([BILjava/lang/String;)[B
    .locals 10

    .line 1068
    sget p3, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    or-int/lit8 v0, p3, 0x15

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    xor-int/lit8 p3, p3, 0x15

    sub-int/2addr v0, p3

    rem-int/lit16 p3, v0, 0x80

    sput p3, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    const/4 p3, 0x2

    rem-int/2addr v0, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1064
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1061
    array-length v0, p1

    and-int/lit8 v3, v0, -0x4

    or-int/lit8 v0, v0, -0x4

    add-int/2addr v3, v0

    new-array v0, v3, [B

    .line 1063
    invoke-static {p1, v2}, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload([BI)I

    move-result v3

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v4, v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr p2, v3

    or-int/2addr p2, v4

    .line 1064
    const/4 v3, 0x4

    goto :goto_1

    .line 1061
    :pswitch_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1063
    invoke-static {p1, v1}, Lccsansan/d/getDownloadStatusByUrl;->unifiedDownload([BI)I

    move-result v3

    xor-int v4, v3, p2

    and-int/2addr p2, v3

    or-int/2addr p2, v4

    .line 1064
    const/4 v3, 0x2

    .line 1068
    :goto_1
    nop

    .line 1064
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_1

    const/16 v4, 0xc

    goto :goto_3

    :cond_1
    const/16 v4, 0x53

    :goto_3
    packed-switch v4, :pswitch_data_1

    sget v4, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    xor-int/lit8 v5, v4, 0x15

    and-int/lit8 v4, v4, 0x15

    shl-int/2addr v4, v1

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/2addr v5, p3

    if-nez v5, :cond_2

    goto :goto_4

    .line 1068
    :pswitch_1
    nop

    .line 1064
    sget p1, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    add-int/lit8 p1, p1, 0x27

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/d/getDownloadStatusByUrl;->trackReportShow:I

    rem-int/2addr p1, p3

    .line 1068
    return-object v0

    .line 1066
    :cond_2
    :goto_4
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    mul-int v6, v2, p2

    and-int v7, v3, v6

    xor-int/lit8 v7, v7, -0x1

    or-int/2addr v3, v6

    and-int/2addr v3, v7

    int-to-long v6, v3

    iget-wide v8, p0, Lccsansan/d/getDownloadStatusByUrl;->removeDownloadListener:J

    xor-long/2addr v6, v8

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1064
    add-int/lit8 v2, v2, 0x1

    .line 1068
    xor-int/lit8 v3, v4, 0x9

    and-int/lit8 v4, v4, 0x9

    shl-int/2addr v4, v1

    add-int/2addr v3, v4

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/d/getDownloadStatusByUrl;->trackReportClick:I

    rem-int/2addr v3, p3

    if-eqz v3, :cond_3

    :cond_3
    move v3, v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_1
    .end packed-switch
.end method
