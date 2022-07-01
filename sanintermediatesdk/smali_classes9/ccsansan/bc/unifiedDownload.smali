.class public final Lccsansan/bc/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bc/unifiedDownload$unifiedDownload;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[I

.field private static addDownloadListener:[I

.field private static getDownloadedList:[Ljava/lang/String;

.field private static final getDownloadedRecordByUrl:[Ljava/lang/String;

.field public static final getDownloadingList:I

.field private static removeDownloadListener:Lccsanandroid/content/pm/PackageManager;

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lccsansan/bc/unifiedDownload;->unifiedDownload()V

    .line 1
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.android.calculator"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "com.android.calculator2"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "com.android.calendar"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "com.android.contacts"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "com.android.email"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v8, "com.android.gallery3d"

    aput-object v8, v0, v1

    const/4 v1, 0x7

    const-string v8, "com.android.mms"

    aput-object v8, v0, v1

    const/16 v1, 0x8

    const-string v8, "com.android.music"

    aput-object v8, v0, v1

    const/16 v1, 0x9

    const-string v8, "com.android.settings"

    aput-object v8, v0, v1

    const/16 v1, 0xa

    const-string v8, "com.android.soundrecorder"

    aput-object v8, v0, v1

    const/16 v1, 0xb

    const-string v8, "com.android.videoeditor"

    aput-object v8, v0, v1

    const/16 v1, 0xc

    const-string v8, "com.android.quicksearchbox"

    aput-object v8, v0, v1

    const/16 v1, 0xd

    const-string v8, "com.android.task"

    aput-object v8, v0, v1

    const/16 v1, 0xe

    const-string v8, "com.android.stk"

    aput-object v8, v0, v1

    const/16 v1, 0xf

    const-string v8, "com.android.camera"

    aput-object v8, v0, v1

    const/16 v1, 0x10

    const-string v8, "com.android.deskclock"

    aput-object v8, v0, v1

    const/16 v1, 0x11

    const-string v8, "com.android.development"

    aput-object v8, v0, v1

    const/16 v1, 0x12

    const-string v8, "com.cooliris.media"

    aput-object v8, v0, v1

    const/16 v1, 0x13

    const-string v8, "com.mediatek.FMRadio"

    aput-object v8, v0, v1

    const/16 v1, 0x14

    const-string v8, "com.mediatek.bluetooth"

    aput-object v8, v0, v1

    const/16 v1, 0x15

    const-string v8, "com.mtk.telephony"

    aput-object v8, v0, v1

    const/16 v1, 0x16

    const-string v8, "com.lenovo.fm"

    aput-object v8, v0, v1

    const/16 v1, 0x17

    const-string v8, "com.mediatek.StkSelection"

    aput-object v8, v0, v1

    const/16 v1, 0x18

    const-string v8, "com.lenovo.email"

    aput-object v8, v0, v1

    const/16 v1, 0x19

    const-string v8, "com.lenovo.music"

    aput-object v8, v0, v1

    const/16 v1, 0x1a

    const-string v8, "com.lenovo.videoplayer"

    aput-object v8, v0, v1

    const/16 v1, 0x1b

    const-string v8, "com.lenovo.app.Calendar"

    aput-object v8, v0, v1

    const/16 v1, 0x1c

    const-string v8, "com.lenovo.ideafriend"

    aput-object v8, v0, v1

    const/16 v1, 0x1d

    const-string v8, "com.lenovo.launcher"

    aput-object v8, v0, v1

    const/16 v1, 0x1e

    const-string v8, "com.lenovo.wo3g"

    aput-object v8, v0, v1

    const/16 v1, 0x1f

    const-string v8, "com.mediatek.wo3g"

    aput-object v8, v0, v1

    const/16 v1, 0x20

    const-string v8, "com.lenovo.android.settings.tether"

    aput-object v8, v0, v1

    const/16 v1, 0x21

    const-string v8, "com.lenovomobile.deskclock"

    aput-object v8, v0, v1

    sput-object v0, Lccsansan/bc/unifiedDownload;->getDownloadedList:[Ljava/lang/String;

    .line 93
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "5."

    aput-object v1, v0, v2

    const-string v1, "6."

    aput-object v1, v0, v3

    const-string v1, "7."

    aput-object v1, v0, v4

    const-string v1, "8."

    aput-object v1, v0, v5

    const-string v1, "9."

    aput-object v1, v0, v6

    sput-object v0, Lccsansan/bc/unifiedDownload;->getDownloadedRecordByUrl:[Ljava/lang/String;

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Z)Lccsansan/bc/unifiedDownload$unifiedDownload;
    .locals 4

    .line 10
    sget-object v0, Lccsansan/bc/unifiedDownload;->getDownloadedList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    const-string p2, "com.lenovo.launcher"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-static {p0}, Lccsansan/bc/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lccsansan/bc/unifiedDownload$unifiedDownload;->APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

    goto :goto_1

    :cond_0
    sget-object p0, Lccsansan/bc/unifiedDownload$unifiedDownload;->NATIVE_APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

    :goto_1
    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lccsansan/bc/unifiedDownload$unifiedDownload;->NATIVE_APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    .line 19
    sget-object p1, Lccsansan/bc/unifiedDownload;->IncentiveDownloadUtils:[I

    if-eqz p1, :cond_4

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_5

    :cond_4
    sget-object p1, Lccsansan/bc/unifiedDownload;->addDownloadListener:[I

    if-eqz p1, :cond_6

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_6

    .line 20
    :cond_5
    sget-object p0, Lccsansan/bc/unifiedDownload$unifiedDownload;->GAME:Lccsansan/bc/unifiedDownload$unifiedDownload;

    return-object p0

    :cond_6
    if-eqz p2, :cond_7

    .line 22
    sget-object p0, Lccsansan/bc/unifiedDownload$unifiedDownload;->WIDGET:Lccsansan/bc/unifiedDownload$unifiedDownload;

    return-object p0

    .line 24
    :cond_7
    sget-object p0, Lccsansan/bc/unifiedDownload$unifiedDownload;->APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

    return-object p0
.end method

.method private static addDownloadListener(Ljava/lang/String;)Z
    .locals 5

    .line 25
    sget-object v0, Lccsansan/bc/unifiedDownload;->getDownloadedRecordByUrl:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 26
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 27
    const-string v0, "com.lenovo.launcher"

    invoke-static {p0, v0}, Lccsansan/bw/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_0
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p0}, Lccsansan/bc/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static removeDownloadListener(BBB)Ljava/lang/String;
    .locals 7

    mul-int/lit8 p0, p0, 0x16

    rsub-int/lit8 p0, p0, 0x1a

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x11

    sget-object v0, Lccsansan/bc/unifiedDownload;->unifiedDownload:[B

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p1

    move p1, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    move v5, p1

    move p1, p0

    move p0, p2

    move p2, v5

    :goto_0
    int-to-byte v4, p0

    aput-byte v4, v1, v3

    if-ne v3, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v4, v0, p1

    add-int/lit8 v3, v3, 0x1

    move v5, p1

    move p1, p0

    move p0, v5

    move-object v6, v0

    move v0, p2

    move p2, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v6

    :goto_1
    neg-int p2, p2

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v5, p1

    move p1, p0

    move p0, v5

    goto :goto_0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/content/pm/PackageInfo;)Lccsansan/bc/unifiedDownload$unifiedDownload;
    .locals 5

    .line 1
    sget-object v0, Lccsansan/bc/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/pm/PackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    sget v0, Lccsansan/bc/unifiedDownload;->getDownloadingList:I

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    int-to-byte v2, v0

    add-int/lit8 v3, v2, -0x1

    int-to-byte v3, v3

    invoke-static {v0, v2, v3}, Lccsansan/bc/unifiedDownload;->removeDownloadListener(BBB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    int-to-byte v2, v1

    int-to-byte v3, v2

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lccsansan/bc/unifiedDownload;->removeDownloadListener(BBB)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v0, Lccsansan/bc/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/pm/PackageManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 5
    sget-object v0, Lccsansan/bc/unifiedDownload;->removeDownloadListener:Lccsanandroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveSDK(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 9
    :cond_2
    invoke-static {p0, p1, v1}, Lccsansan/bc/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Z)Lccsansan/bc/unifiedDownload$unifiedDownload;

    move-result-object p0

    return-object p0
.end method

.method static unifiedDownload()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bc/unifiedDownload;->unifiedDownload:[B

    const/16 v0, 0x7f

    sput v0, Lccsansan/bc/unifiedDownload;->getDownloadingList:I

    return-void

    :array_0
    .array-data 1
        0x2at
        0x78t
        0xat
        0x3t
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
