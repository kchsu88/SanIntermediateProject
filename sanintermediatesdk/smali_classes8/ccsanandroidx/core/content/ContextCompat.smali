.class public Lccsanandroidx/core/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/content/ContextCompat$Api30Impl;,
        Lccsanandroidx/core/content/ContextCompat$Api28Impl;,
        Lccsanandroidx/core/content/ContextCompat$Api26Impl;,
        Lccsanandroidx/core/content/ContextCompat$Api24Impl;,
        Lccsanandroidx/core/content/ContextCompat$Api23Impl;,
        Lccsanandroidx/core/content/ContextCompat$Api21Impl;,
        Lccsanandroidx/core/content/ContextCompat$Api19Impl;,
        Lccsanandroidx/core/content/ContextCompat$Api16Impl;,
        Lccsanandroidx/core/content/ContextCompat$LegacyServiceMapHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextCompat"

.field private static final sLock:Ljava/lang/Object;

.field private static final sSync:Ljava/lang/Object;

.field private static sTempValue:Lccsanandroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsanandroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsanandroidx/core/content/ContextCompat;->sSync:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method public static checkSelfPermission(Lccsanandroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 551
    if-eqz p1, :cond_0

    .line 555
    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Lccsanandroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lccsanandroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createDeviceProtectedStorageContext(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 657
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 658
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api24Impl;->createDeviceProtectedStorageContext(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object v0

    return-object v0

    .line 660
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createFilesDir(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .line 610
    sget-object v0, Lccsanandroidx/core/content/ContextCompat;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 612
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    monitor-exit v0

    return-object p0

    .line 617
    :cond_0
    const-string v1, "ContextCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files subdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_1
    monitor-exit v0

    return-object p0

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAttributionTag(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 183
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 184
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api30Impl;->getAttributionTag(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCodeCacheDir(Lccsanandroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 597
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 598
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api21Impl;->getCodeCacheDir(Lccsanandroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 600
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 601
    .local v0, "appInfo":Lccsanandroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lccsanandroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "code_cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lccsanandroidx/core/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getColor(Lccsanandroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 535
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 536
    invoke-static {p0, p1}, Lccsanandroidx/core/content/ContextCompat$Api23Impl;->getColor(Lccsanandroid/content/Context;I)I

    move-result v0

    return v0

    .line 538
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getColorStateList(Lccsanandroid/content/Context;I)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lccsanandroidx/core/content/res/ResourcesCompat;->getColorStateList(Lccsanandroid/content/res/Resources;ILccsanandroid/content/res/Resources$Theme;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDir(Lccsanandroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 299
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 300
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api24Impl;->getDataDir(Lccsanandroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Lccsanandroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 303
    .local v0, "dataDir":Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 479
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 480
    invoke-static {p0, p1}, Lccsanandroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 481
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 482
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 489
    :cond_1
    sget-object v0, Lccsanandroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    sget-object v1, Lccsanandroidx/core/content/ContextCompat;->sTempValue:Lccsanandroid/util/TypedValue;

    if-nez v1, :cond_2

    .line 491
    new-instance v1, Lccsanandroid/util/TypedValue;

    invoke-direct {v1}, Lccsanandroid/util/TypedValue;-><init>()V

    sput-object v1, Lccsanandroidx/core/content/ContextCompat;->sTempValue:Lccsanandroid/util/TypedValue;

    .line 493
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lccsanandroidx/core/content/ContextCompat;->sTempValue:Lccsanandroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lccsanandroid/content/res/Resources;->getValue(ILccsanandroid/util/TypedValue;Z)V

    .line 494
    sget-object v1, Lccsanandroidx/core/content/ContextCompat;->sTempValue:Lccsanandroid/util/TypedValue;

    iget v1, v1, Lccsanandroid/util/TypedValue;->resourceId:I

    .line 495
    .local v1, "resolvedId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 495
    .end local v1    # "resolvedId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getExternalCacheDirs(Lccsanandroid/content/Context;)[Ljava/io/File;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 458
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 459
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api19Impl;->getExternalCacheDirs(Lccsanandroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 461
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getExternalFilesDirs(Lccsanandroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "type"
        }
    .end annotation

    .line 405
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 406
    invoke-static {p0, p1}, Lccsanandroidx/core/content/ContextCompat$Api19Impl;->getExternalFilesDirs(Lccsanandroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 408
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getMainExecutor(Lccsanandroid/content/Context;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 684
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 685
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api28Impl;->getMainExecutor(Lccsanandroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    .line 687
    :cond_0
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    invoke-static {v0}, Lccsanandroidx/core/os/ExecutorCompat;->create(Lccsanandroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static getNoBackupFilesDir(Lccsanandroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 573
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 574
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api21Impl;->getNoBackupFilesDir(Lccsanandroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 576
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 577
    .local v0, "appInfo":Lccsanandroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lccsanandroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "no_backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lccsanandroidx/core/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getObbDirs(Lccsanandroid/content/Context;)[Ljava/io/File;
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 352
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 353
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api19Impl;->getObbDirs(Lccsanandroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getSystemService(Lccsanandroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "serviceClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 719
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 720
    invoke-static {p0, p1}, Lccsanandroidx/core/content/ContextCompat$Api23Impl;->getSystemService(Lccsanandroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 723
    :cond_0
    invoke-static {p0, p1}, Lccsanandroidx/core/content/ContextCompat;->getSystemServiceName(Lccsanandroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "serviceName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getSystemServiceName(Lccsanandroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "serviceClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 738
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 739
    invoke-static {p0, p1}, Lccsanandroidx/core/content/ContextCompat$Api23Impl;->getSystemServiceName(Lccsanandroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 741
    :cond_0
    sget-object v0, Lccsanandroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isDeviceProtectedStorage(Lccsanandroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 671
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 672
    invoke-static {p0}, Lccsanandroidx/core/content/ContextCompat$Api24Impl;->isDeviceProtectedStorage(Lccsanandroid/content/Context;)Z

    move-result v0

    return v0

    .line 674
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static startActivities(Lccsanandroid/content/Context;[Lccsanandroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "intents"    # [Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intents"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsanandroidx/core/content/ContextCompat;->startActivities(Lccsanandroid/content/Context;[Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivities(Lccsanandroid/content/Context;[Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)Z
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "intents"    # [Lccsanandroid/content/Intent;
    .param p2, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intents",
            "options"
        }
    .end annotation

    .line 248
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 249
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/content/ContextCompat$Api16Impl;->startActivities(Lccsanandroid/content/Context;[Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivities([Lccsanandroid/content/Intent;)V

    .line 253
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static startActivity(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "intent",
            "options"
        }
    .end annotation

    .line 275
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 276
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/content/ContextCompat$Api16Impl;->startActivity(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 280
    :goto_0
    return-void
.end method

.method public static startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    .line 700
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 701
    invoke-static {p0, p1}, Lccsanandroidx/core/content/ContextCompat$Api26Impl;->startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    goto :goto_0

    .line 704
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    .line 706
    :goto_0
    return-void
.end method
