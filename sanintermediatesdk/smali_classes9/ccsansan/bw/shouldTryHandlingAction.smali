.class public Lccsansan/bw/shouldTryHandlingAction;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method public static IncentiveDownloadUtils(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Z)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    const-string v1, "style"

    invoke-static {v0, p0, v1, p1}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static addDownloadListener(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "drawable"

    invoke-static {p0, v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static addDownloadListener(Ljava/lang/String;Z)I
    .locals 2

    .line 2
    sget-object v0, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, p0, v1, p1}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static deleteDownItem(Ljava/lang/String;)I
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static getDownloadedList(Ljava/lang/String;)[I
    .locals 6

    .line 1
    sget-object v0, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    sput-object v0, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    .line 4
    :cond_0
    sget-object v0, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5
    new-array p0, v1, [I

    return-object p0

    .line 7
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v3}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".R$styleable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 8
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 9
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static getDownloadedRecordByUrl(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "layout"

    invoke-static {p0, v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDownloadingList(Ljava/lang/String;)I
    .locals 1

    .line 2
    const-string v0, "color"

    invoke-static {p0, v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 3
    sget-object v0, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    sput-object v0, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    .line 6
    :cond_0
    sget-object v0, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".R"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "styleable"

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 15
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 18
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 p0, 0x0

    .line 20
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return v1
.end method

.method public static getDownloadingRecordByUrl(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "raw"

    invoke-static {p0, v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static removeDownloadListener(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "string"

    invoke-static {p0, v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static removeDownloadListener(Ljava/lang/String;Z)I
    .locals 2

    .line 2
    const/4 v0, 0x0

    const-string v1, "mipmap"

    invoke-static {v0, p0, v1, p1}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lccsanandroid/content/res/Resources;->getSystem()Lccsanandroid/content/res/Resources;

    move-result-object p0

    const-string p3, "android"

    invoke-virtual {p0, p1, p2, p3}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    .line 7
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p2, p0}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static unifiedDownload(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string v0, "dimen"

    invoke-static {p0, v0}, Lccsansan/bw/shouldTryHandlingAction;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static unifiedDownload(Ljava/lang/String;Z)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    const-string v1, "attr"

    invoke-static {v0, p0, v1, p1}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method
