.class public Lccsansan/aa/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static synthetic $r8$lambda$hJcyOGtTKY-MXNwKNsDgFtTMjCU(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lccsansan/aa/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yHahhg5TjKCYDbRhlfAqU3-mqjk(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsansan/aa/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private static synthetic getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/aa/removeDownloadListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lccsansan/aa/removeDownloadListener$$ExternalSyntheticLambda1;-><init>(Lccsanandroid/content/Context;)V

    .line 3
    new-instance v1, Lccsansan/aa/removeDownloadListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsansan/aa/removeDownloadListener$$ExternalSyntheticLambda0;-><init>(Lccsanandroid/content/Context;)V

    .line 5
    new-instance v2, Lccsanen/hance/launchsdk/CommonConfigs$Builder;

    invoke-direct {v2}, Lccsanen/hance/launchsdk/CommonConfigs$Builder;-><init>()V

    .line 6
    invoke-virtual {v2, v0}, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->setTracker(Lccsanen/hance/launchsdk/ITracker;)Lccsanen/hance/launchsdk/CommonConfigs$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->setCloudConfig(Lccsanen/hance/launchsdk/ICloudConfig;)Lccsanen/hance/launchsdk/CommonConfigs$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lccsanen/hance/launchsdk/CommonConfigs$Builder;->build()Lccsanen/hance/launchsdk/CommonConfigs;

    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Lccsanen/hance/launchsdk/LaunchStarter;->init(Lccsanandroid/content/Context;Lccsanen/hance/launchsdk/CommonConfigs;)V

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 12
    new-instance v0, Lccsansan/aa/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/aa/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v1, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    invoke-direct {v1}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;-><init>()V

    .line 28
    invoke-virtual {v1, p0}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->setPackageName(Ljava/lang/String;)Lccsanenhance/f/a$a;

    move-result-object p0

    check-cast p0, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    .line 29
    invoke-virtual {p0, p1}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->setIconPath(Ljava/lang/String;)Lccsanenhance/f/a$a;

    move-result-object p0

    check-cast p0, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    .line 30
    invoke-virtual {p0, p2}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->setCoverPath(Ljava/lang/String;)Lccsanenhance/f/a$a;

    move-result-object p0

    check-cast p0, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    .line 31
    invoke-virtual {p0, p3}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->setTitle(Ljava/lang/String;)Lccsanenhance/f/a$a;

    move-result-object p0

    check-cast p0, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    .line 32
    invoke-virtual {p0, p4}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->setDescription(Ljava/lang/String;)Lccsanenhance/f/a$a;

    move-result-object p0

    check-cast p0, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    .line 33
    invoke-virtual {p0, p5}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->setActionName(Ljava/lang/String;)Lccsanenhance/f/a$a;

    move-result-object p0

    check-cast p0, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    .line 34
    invoke-virtual {p0, p6}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->setTriggerScene(Ljava/lang/String;)Lccsanenhance/f/a$a;

    move-result-object p0

    check-cast p0, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;

    .line 35
    invoke-virtual {p0}, Lccsanen/hance/launchsdk/task/LaunchTask$Builder;->build()Lccsanenhance/f/a;

    move-result-object p0

    check-cast p0, Lccsanen/hance/launchsdk/task/LaunchTask;

    .line 36
    invoke-static {p0, v0}, Lccsanen/hance/launchsdk/LaunchStarter;->enqueue(Lccsanen/hance/launchsdk/task/LaunchTask;Lccsanen/hance/launchsdk/ICallback;)V

    return-void
.end method

.method private static synthetic unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p0, p1, v0}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
