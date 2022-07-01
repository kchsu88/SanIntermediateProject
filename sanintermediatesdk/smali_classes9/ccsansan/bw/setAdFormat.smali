.class public Lccsansan/bw/setAdFormat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/setAdFormat$removeDownloadListener;,
        Lccsansan/bw/setAdFormat$addDownloadListener;,
        Lccsansan/bw/setAdFormat$unifiedDownload;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field public static final getDownloadingList:[B

.field private static removeDownloadListener:Lccsansan/bw/setAdFormat$removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lccsansan/bw/setAdFormat;->removeDownloadListener()V

    return-void
.end method

.method public static IncentiveDownloadUtils()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "getTelephonyProperty"

    .line 2
    const/4 v3, 0x3

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "gsm.operator.alpha"

    aput-object v4, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    return-object v0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;
    .locals 5

    .line 4
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_0
    new-instance v1, Lccsansan/bw/setAdFormat$removeDownloadListener;

    invoke-direct {v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;-><init>()V

    .line 10
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lccsansan/bw/setAdFormat;->getDownloadingList(Lccsanandroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 11
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lccsansan/bw/setAdFormat;->getDownloadingList(Lccsanandroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 12
    invoke-static {p0, v0, v2}, Lccsansan/bw/setAdFormat;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 13
    invoke-static {p0, v0, v3}, Lccsansan/bw/setAdFormat;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lccsansan/bw/setAdFormat;->IncentiveDownloadUtils(Lccsanandroid/telephony/TelephonyManager;)Lccsansan/bw/setAdFormat$unifiedDownload;

    move-result-object v2

    iput-object v2, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 15
    invoke-static {p0, v0}, Lccsansan/bw/setAdFormat;->getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/telephony/TelephonyManager;)Lccsansan/bw/setAdFormat$addDownloadListener;

    move-result-object p0

    iput-object p0, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener:Lccsansan/bw/setAdFormat$addDownloadListener;

    .line 16
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->UNKNOWN:Lccsansan/bw/setAdFormat$addDownloadListener;

    if-ne p0, v0, :cond_1

    .line 17
    invoke-virtual {v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener()V

    .line 19
    :cond_1
    iget-object p0, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->UNKNOWN:Lccsansan/bw/setAdFormat$unifiedDownload;

    if-ne p0, v0, :cond_2

    .line 20
    invoke-virtual {v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingRecordByUrl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/telephony/TelephonyManager;)Lccsansan/bw/setAdFormat$unifiedDownload;
    .locals 3

    .line 21
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->UNKNOWN:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 22
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 23
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 32
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->NO_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    goto :goto_0

    .line 33
    :cond_0
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->DUAL_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->SINGLE_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static addDownloadListener(SIB)Ljava/lang/String;
    .locals 7

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x61

    mul-int/lit8 p0, p0, 0x2

    rsub-int/lit8 p0, p0, 0x4

    sget-object v0, Lccsansan/bw/setAdFormat;->getDownloadingList:[B

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x17

    new-array v1, p2, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, p1

    aput-byte v5, v1, v3

    if-ne v4, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p0

    move-object v6, v0

    move v0, p2

    move p2, v3

    move-object v3, v1

    move-object v1, v6

    :goto_1
    add-int/2addr p1, p2

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;
    .locals 13

    const-string v0, "getDefault"

    .line 1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "com.android.internal.telephony.Phone"

    .line 3
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v7, "GEMINI_SIM_1"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 6
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v8

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v2, v8

    goto :goto_0

    :catchall_1
    move-exception v7

    :goto_0
    :try_start_3
    const-string v7, "GEMINI_SIM_2"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 13
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 14
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 15
    :try_start_4
    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object v4, v7

    goto :goto_1

    :catchall_3
    move-exception v6

    :goto_1
    move-object v7, v4

    .line 22
    :goto_2
    new-instance v4, Lccsansan/bw/setAdFormat$removeDownloadListener;

    invoke-direct {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;-><init>()V

    :try_start_5
    const-string v6, "android.provider.MultiSIMUtils"

    .line 24
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 25
    new-array v8, v3, [Ljava/lang/Class;

    int-to-byte v9, v1

    int-to-byte v10, v9

    int-to-byte v11, v10

    invoke-static {v9, v10, v11}, Lccsansan/bw/setAdFormat;->addDownloadListener(SIB)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 26
    new-array v9, v3, [Ljava/lang/Object;

    aput-object p0, v9, v1

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v8, :cond_0

    const-string v9, "getDeviceId"

    .line 28
    :try_start_6
    new-array v10, v3, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v1

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const-string v10, "getSubscriberId"

    .line 29
    :try_start_7
    new-array v12, v3, [Ljava/lang/Class;

    aput-object v11, v12, v1

    invoke-virtual {v6, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 30
    sget-object v10, Lccsansan/bw/setAdFormat$unifiedDownload;->DUAL_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v10, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 31
    new-array v10, v3, [Ljava/lang/Object;

    aput-object v2, v10, v1

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 32
    new-array v10, v3, [Ljava/lang/Object;

    aput-object v2, v10, v1

    invoke-virtual {v6, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 33
    new-array v10, v3, [Ljava/lang/Object;

    aput-object v7, v10, v1

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 34
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 35
    invoke-virtual {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener()V

    .line 36
    invoke-virtual {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingRecordByUrl()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v6

    .line 41
    :cond_0
    :goto_3
    invoke-virtual {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v4

    .line 45
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/telephony/TelephonyManager;

    if-nez p0, :cond_2

    return-object v5

    .line 51
    :cond_2
    :try_start_8
    const-class v5, Lccsanandroid/telephony/TelephonyManager;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const-string v6, "getDeviceIdGemini"

    :try_start_9
    new-array v8, v3, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 52
    const-class v6, Lccsanandroid/telephony/TelephonyManager;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    const-string v8, "getSubscriberIdGemini"

    :try_start_a
    new-array v10, v3, [Ljava/lang/Class;

    aput-object v9, v10, v1

    invoke-virtual {v6, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 53
    sget-object v8, Lccsansan/bw/setAdFormat$unifiedDownload;->DUAL_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v8, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 54
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v1

    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 55
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v1

    invoke-virtual {v6, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 56
    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v1

    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 57
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v7, v5, v1

    invoke-virtual {v6, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 58
    invoke-virtual {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener()V

    .line 59
    invoke-virtual {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingRecordByUrl()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v5

    .line 62
    :goto_4
    invoke-virtual {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    .line 67
    :cond_3
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 68
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v1

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/telephony/TelephonyManager;

    .line 70
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/telephony/TelephonyManager;

    if-eqz v2, :cond_4

    if-eqz p0, :cond_4

    .line 72
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->DUAL_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v0, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 73
    invoke-virtual {v2}, Lccsanandroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 74
    invoke-virtual {v2}, Lccsanandroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 77
    invoke-virtual {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener()V

    .line 78
    invoke-virtual {v4}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingRecordByUrl()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception p0

    :cond_4
    :goto_5
    return-object v4
.end method

.method private static getDownloadedList(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;
    .locals 8

    .line 1
    new-instance v0, Lccsansan/bw/setAdFormat$removeDownloadListener;

    invoke-direct {v0}, Lccsansan/bw/setAdFormat$removeDownloadListener;-><init>()V

    :try_start_0
    const-string v1, "android.telephony.MSimTelephonyManager"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v2, "phone_msim"

    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v2, "getDeviceId"

    .line 7
    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "getSubscriberId"

    .line 8
    :try_start_2
    new-array v7, v3, [Ljava/lang/Class;

    aput-object v5, v7, v6

    invoke-virtual {v1, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 10
    sget-object v7, Lccsansan/bw/setAdFormat$unifiedDownload;->DUAL_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v7, v0, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 11
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v6

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v0, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 12
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v6

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 13
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v5, v4, v6

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 14
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v5, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener()V

    .line 16
    invoke-virtual {v0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingRecordByUrl()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-object v0
.end method

.method private static getDownloadingList(Lccsanandroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 2

    .line 60
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lccsanandroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Lccsanandroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Lccsanandroid/telephony/TelephonyManager;)Lccsansan/bw/setAdFormat$addDownloadListener;
    .locals 4

    .line 35
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->UNKNOWN:Lccsansan/bw/setAdFormat$addDownloadListener;

    .line 36
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_2

    const/4 p0, 0x0

    .line 37
    invoke-virtual {p1, p0}, Lccsanandroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p0

    .line 38
    invoke-virtual {p1, v2}, Lccsanandroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 41
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->DOUBLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    goto :goto_0

    :cond_0
    if-eq p0, v1, :cond_1

    if-ne p1, v1, :cond_5

    .line 44
    :cond_1
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->SINGLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    goto :goto_0

    :cond_2
    const/16 p1, 0x16

    if-lt v1, p1, :cond_5

    .line 47
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, "telephony_subscription_service"

    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/telephony/SubscriptionManager;

    .line 48
    invoke-virtual {p0}, Lccsanandroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result p0

    if-eq p0, v2, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    .line 57
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->NO_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    goto :goto_0

    .line 58
    :cond_3
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->DOUBLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    goto :goto_0

    .line 59
    :cond_4
    sget-object v0, Lccsansan/bw/setAdFormat$addDownloadListener;->SINGLE_ACTIVE:Lccsansan/bw/setAdFormat$addDownloadListener;

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lccsansan/bw/setAdFormat;->addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-static {p0}, Lccsansan/bw/setAdFormat;->getDownloadedList(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 9
    :cond_2
    invoke-static {p0}, Lccsansan/bw/setAdFormat;->getDownloadingRecordByUrl(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lccsansan/bw/setAdFormat;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getDownloadingRecordByUrl(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;
    .locals 9

    .line 1
    const-string v0, "phone"

    new-instance v1, Lccsansan/bw/setAdFormat$removeDownloadListener;

    invoke-direct {v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;-><init>()V

    :try_start_0
    const-string v2, "com.android.internal.telephony.PhoneFactory"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "getServiceName"

    .line 4
    const/4 v4, 0x2

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 5
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 11
    sget-object v3, Lccsansan/bw/setAdFormat$unifiedDownload;->SINGLE_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v3, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 12
    invoke-virtual {v0}, Lccsanandroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Lccsanandroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 15
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/telephony/TelephonyManager;

    if-eqz p0, :cond_2

    .line 17
    sget-object v0, Lccsansan/bw/setAdFormat$unifiedDownload;->DUAL_SIM:Lccsansan/bw/setAdFormat$unifiedDownload;

    iput-object v0, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/bw/setAdFormat$unifiedDownload;

    .line 18
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 21
    :cond_2
    invoke-virtual {v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;->removeDownloadListener()V

    .line 22
    invoke-virtual {v1}, Lccsansan/bw/setAdFormat$removeDownloadListener;->getDownloadingRecordByUrl()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    return-object v1

    :catchall_0
    move-exception p0

    :goto_1
    return-object v1
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lccsansan/bw/setAdFormat;->unifiedDownload(Lccsanandroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/telephony/TelephonyManager;I)Ljava/lang/String;
    .locals 9

    .line 67
    const/4 v0, 0x0

    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    const-string v3, "telephony_subscription_service"

    if-lt v1, v2, :cond_1

    .line 68
    :try_start_1
    invoke-virtual {p0, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/telephony/SubscriptionManager;

    .line 69
    invoke-virtual {p0, p2}, Lccsanandroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Lccsanandroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Lccsanandroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    .line 72
    invoke-virtual {p1, p0}, Lccsanandroid/telephony/TelephonyManager;->createForSubscriptionId(I)Lccsanandroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    goto :goto_1

    .line 75
    :cond_1
    const-class v2, Lccsanandroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "getSubscriberId"

    const/4 v5, 0x1

    :try_start_2
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v4, 0x16

    if-lt v1, v4, :cond_2

    .line 77
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/telephony/SubscriptionManager;

    .line 78
    invoke-virtual {p0, p2}, Lccsanandroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Lccsanandroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 80
    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsanandroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v8

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    :cond_2
    nop

    .line 83
    new-array p0, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v8

    invoke-virtual {v2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, p0

    .line 80
    :goto_0
    nop

    .line 83
    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    if-nez p2, :cond_4

    .line 88
    invoke-virtual {p1}, Lccsanandroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    nop

    :goto_1
    return-object v0
.end method

.method static removeDownloadListener()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/setAdFormat;->getDownloadingList:[B

    const/16 v0, 0x83

    sput v0, Lccsansan/bw/setAdFormat;->IncentiveDownloadUtils:I

    return-void

    :array_0
    .array-data 1
        0x41t
        0x79t
        0x42t
        -0x2at
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
    .end array-data
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lccsansan/bw/setAdFormat;->removeDownloadListener:Lccsansan/bw/setAdFormat$removeDownloadListener;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lccsansan/bw/setAdFormat;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/bw/setAdFormat$removeDownloadListener;

    move-result-object p0

    sput-object p0, Lccsansan/bw/setAdFormat;->removeDownloadListener:Lccsansan/bw/setAdFormat$removeDownloadListener;

    .line 5
    :cond_0
    sget-object p0, Lccsansan/bw/setAdFormat;->removeDownloadListener:Lccsansan/bw/setAdFormat$removeDownloadListener;

    if-nez p0, :cond_1

    .line 6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lccsansan/bw/setAdFormat$removeDownloadListener;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
