.class public Lccsansan/bw/performActionWhenOffline;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/performActionWhenOffline$addDownloadListener;
    }
.end annotation


# static fields
.field private static volatile addDownloadListener:Lccsancom/san/ads/base/ICloudConfigListener;


# direct methods
.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 7
    invoke-static {}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/ads/base/ICloudConfigListener;->getStringConfig(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)J
    .locals 1

    .line 9
    invoke-static {}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lccsancom/san/ads/base/ICloudConfigListener;->getLongConfig(Lccsanandroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;
    .locals 2

    .line 2
    sget-object v0, Lccsansan/bw/performActionWhenOffline;->addDownloadListener:Lccsancom/san/ads/base/ICloudConfigListener;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lccsansan/bw/performActionWhenOffline$addDownloadListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsansan/bw/performActionWhenOffline$addDownloadListener;-><init>(Lccsansan/bw/performActionWhenOffline$IncentiveDownloadUtils;)V

    sput-object v0, Lccsansan/bw/performActionWhenOffline;->addDownloadListener:Lccsancom/san/ads/base/ICloudConfigListener;

    .line 5
    :cond_0
    sget-object v0, Lccsansan/bw/performActionWhenOffline;->addDownloadListener:Lccsancom/san/ads/base/ICloudConfigListener;

    return-object v0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/ads/base/ICloudConfigListener;->setConfig(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lccsancom/san/ads/base/ICloudConfigListener;->hasConfig(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    .line 10
    invoke-static {}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/ads/base/ICloudConfigListener;->getBooleanConfig(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 8
    invoke-static {}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener()Lccsancom/san/ads/base/ICloudConfigListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/ads/base/ICloudConfigListener;->getIntConfig(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static unifiedDownload(Lccsancom/san/ads/base/ICloudConfigListener;)V
    .locals 0

    .line 1
    sput-object p0, Lccsansan/bw/performActionWhenOffline;->addDownloadListener:Lccsancom/san/ads/base/ICloudConfigListener;

    return-void
.end method
