.class public Lccsansan/bw/toString;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final getDownloadingList:[B

.field public static final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lccsansan/bw/toString;->getDownloadingList()V

    return-void
.end method

.method public static IncentiveDownloadUtils(FLccsanandroid/content/Context;)I
    .locals 0

    .line 17
    invoke-static {p0, p1}, Lccsansan/bw/toString;->getDownloadingList(FLccsanandroid/content/Context;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/app/Activity;I)V
    .locals 2

    .line 17
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lccsansan/bw/toString;->addDownloadListener(Lccsanandroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    const-class p1, Lccsanandroid/app/Activity;

    const-string v0, "mActivityInfo"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_1

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lccsanandroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)V
    .locals 6

    .line 25
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    :try_start_0
    const-string v0, "accessibility"

    .line 27
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/view/accessibility/AccessibilityManager;

    .line 28
    invoke-virtual {p0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "setState"

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 34
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 48
    const-string v0, "unknown"

    :try_start_0
    sget-object v1, Lccsansan/bw/toString;->getDownloadingList:[B

    const/4 v2, 0x0

    aget-byte v3, v1, v2

    int-to-byte v3, v3

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    aget-byte v5, v1, v2

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lccsansan/bw/toString;->removeDownloadListener(BBI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x9

    aget-byte v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    invoke-static {v4, v1, v2}, Lccsansan/bw/toString;->removeDownloadListener(BBI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lccsanandroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    throw p1

    :cond_1
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getAzPackage exception = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommonUtils"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;
    .locals 6

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    .line 34
    iget v0, p0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 35
    iget v1, p0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    .line 36
    iget v2, p0, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    iget v3, p0, Lccsanandroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    move v3, v2

    .line 37
    :cond_0
    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->ydpi:F

    cmpl-float v4, v2, p0

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    div-float/2addr v0, v3

    div-float/2addr v1, v2

    float-to-double v2, v0

    .line 40
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v2, 0x401a000000000000L    # 6.5

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_2

    .line 45
    sget-object p0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->DEVICE_PAD:Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->DEVICE_PHONE:Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    return-object p0

    :catch_0
    move-exception p0

    .line 47
    sget-object p0, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->DEVICE_PHONE:Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    return-object p0
.end method

.method public static addDownloadListener()Z
    .locals 2

    .line 2
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static addDownloadListener(Lccsanandroid/app/Activity;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "com.android.internal.R$styleable"

    .line 6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Window"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 8
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 10
    invoke-virtual {p0, v1}, Lccsanandroid/app/Activity;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object p0

    .line 11
    const-class v1, Lccsanandroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "isTranslucentOrFloating"

    .line 12
    :try_start_1
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lccsanandroid/content/res/TypedArray;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method private static getDownloadingList(FLccsanandroid/content/Context;)F
    .locals 0

    .line 3
    invoke-static {p1}, Lccsansan/bw/toString;->removeDownloadListener(Lccsanandroid/content/Context;)F

    move-result p1

    div-float/2addr p0, p1

    return p0
.end method

.method private static getDownloadingList(II)I
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    return v2

    :cond_0
    return v0

    :cond_1
    if-ne v1, p1, :cond_3

    if-eq p0, v1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/16 p0, 0x8

    return p0

    :cond_3
    return v0
.end method

.method static getDownloadingList()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/toString;->getDownloadingList:[B

    const/16 v0, 0x94

    sput v0, Lccsansan/bw/toString;->unifiedDownload:I

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x80t
        0x1dt
        0x0t
        -0x72t
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

.method private static removeDownloadListener(Lccsanandroid/content/Context;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public static removeDownloadListener()Ljava/lang/String;
    .locals 3

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeDownloadListener(BBI)Ljava/lang/String;
    .locals 7

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x17

    mul-int/lit8 p1, p1, 0x16

    rsub-int/lit8 p1, p1, 0x1a

    sget-object v0, Lccsansan/bw/toString;->getDownloadingList:[B

    new-array v1, p2, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v5, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v5, v3, 0x1

    aput-byte v4, v1, v3

    if-ne v5, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p1

    move-object v6, v0

    move v0, p2

    move p2, v3

    move-object v3, v1

    move-object v1, v6

    :goto_1
    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v5

    goto :goto_0
.end method

.method private static removeDownloadListener(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeDownloadListener([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 7
    invoke-static {v3}, Lccsansan/bw/toString;->unifiedDownload(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unifiedDownload(Lccsanandroid/app/Activity;)I
    .locals 1

    .line 30
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindowManager()Lccsanandroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Display;->getRotation()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Lccsanandroid/content/res/Configuration;->orientation:I

    .line 32
    invoke-static {v0, p0}, Lccsansan/bw/toString;->getDownloadingList(II)I

    move-result p0

    return p0
.end method

.method public static unifiedDownload()Ljava/lang/String;
    .locals 3

    .line 18
    const-string v0, "ua"

    invoke-static {v0}, Lccsansan/bw/setErrorMessage;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 22
    :cond_0
    invoke-static {}, Lccsansan/bw/getErrorCode;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 24
    invoke-static {v0, v1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private static unifiedDownload(B)Ljava/lang/String;
    .locals 2

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    .line 9
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/16 v1, 0x30

    invoke-static {p0, v0, v1}, Lccsansan/bw/toString;->removeDownloadListener(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unifiedDownload(Lccsanandroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Lccsanandroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static unifiedDownload(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
