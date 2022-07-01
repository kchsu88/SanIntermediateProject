.class public Lccsansan/bw/IncentiveSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Ljava/lang/String;

.field private static removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/app/Application;)Ljava/lang/String;
    .locals 4

    .line 11
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mLoadedApk"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 12
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mActivityThread"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getProcessName"

    :try_start_1
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 18
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/bw/IncentiveSDK;->removeDownloadListener:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 4
    invoke-static {}, Lccsansan/bw/IncentiveSDK;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lccsanandroid/app/Application;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Lccsanandroid/app/Application;

    invoke-static {p0}, Lccsansan/bw/IncentiveSDK;->IncentiveDownloadUtils(Lccsanandroid/app/Application;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsansan/bw/IncentiveSDK;->removeDownloadListener:Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    sget-object v0, Lccsansan/bw/IncentiveSDK;->IncentiveDownloadUtils:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    const-string v0, "com.san.process"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/bw/IncentiveSDK;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-static {p0}, Lccsansan/bw/IncentiveSDK;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 7
    sget-object v1, Lccsansan/bw/IncentiveSDK;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    sget-object p0, Lccsansan/bw/IncentiveSDK;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {p0, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 11
    :cond_2
    invoke-static {p0, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static removeDownloadListener()Ljava/lang/String;
    .locals 3

    .line 9
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lccsanandroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "getProcessName"

    :try_start_1
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    return-object v0
.end method
