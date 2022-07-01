.class public Lccsancom/san/core/getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/ICloudConfigListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/AdError;
    .locals 2

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    const-string v1, "san_sdk_cloud_config"

    invoke-direct {v0, p1, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBooleanConfig(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/core/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/AdError;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getIntConfig(Lccsanandroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/core/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/AdError;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLongConfig(Lccsanandroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/core/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/AdError;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStringConfig(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/core/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/AdError;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasConfig(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/core/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/AdError;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setConfig(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/core/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/AdError;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
