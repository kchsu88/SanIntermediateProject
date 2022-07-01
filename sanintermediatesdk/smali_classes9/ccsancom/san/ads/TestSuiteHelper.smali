.class public Lccsancom/san/ads/TestSuiteHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdNetworkKey(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lccsancom/san/core/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdNetworkKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/ads/TestSuiteHelper;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lccsancom/san/ads/TestSuiteHelper;->getAdNetworkKey(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdapterVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/core/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCommonConfig()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/core/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getIsSupport(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/core/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getLayerConfig()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/core/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/deleteDownList;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 0

    .line 1
    invoke-static {}, Lccsancom/san/core/addDownloadListener;->unifiedDownload()V

    return-void
.end method

.method public static loadAd(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;Lccsancom/san/ads/AdSize;Lccsancom/san/ads/base/IAdListener$AdLoadListener;)V
    .locals 7

    .line 1
    new-instance v6, Lccsancom/san/ads/TestSuiteHelper$1;

    invoke-direct {v6, p6}, Lccsancom/san/ads/TestSuiteHelper$1;-><init>(Lccsancom/san/ads/base/IAdListener$AdLoadListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lccsancom/san/core/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;Lccsancom/san/ads/AdSize;Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;)V

    return-void
.end method

.method public static supportMediation()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/core/unifiedDownload;->removeDownloadListener()Z

    move-result v0

    return v0
.end method

.method public static updateCommonConfig(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/core/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void
.end method

.method public static updateLayerConfig(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/core/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    return-void
.end method
