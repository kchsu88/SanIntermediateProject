.class public Lccsansan/bw/execute;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/execute$unifiedDownload;
    }
.end annotation


# static fields
.field private static IncentiveDownloadUtils:Lccsancom/san/ads/base/IBeylaIdHelper;


# direct methods
.method public static IncentiveDownloadUtils()V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/execute;->addDownloadListener()Lccsancom/san/ads/base/IBeylaIdHelper;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/san/ads/base/IBeylaIdHelper;->forceInitBeylaId()V

    return-void
.end method

.method private static addDownloadListener()Lccsancom/san/ads/base/IBeylaIdHelper;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/bw/execute;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IBeylaIdHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsansan/bw/execute$unifiedDownload;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsansan/bw/execute$unifiedDownload;-><init>(Lccsansan/bw/execute$removeDownloadListener;)V

    sput-object v0, Lccsansan/bw/execute;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IBeylaIdHelper;

    .line 4
    :cond_0
    sget-object v0, Lccsansan/bw/execute;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IBeylaIdHelper;

    return-object v0
.end method

.method public static removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/execute;->addDownloadListener()Lccsancom/san/ads/base/IBeylaIdHelper;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/san/ads/base/IBeylaIdHelper;->getBeylaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeDownloadListener(Lccsancom/san/ads/base/IBeylaIdHelper;)V
    .locals 0

    .line 2
    sput-object p0, Lccsansan/bw/execute;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IBeylaIdHelper;

    return-void
.end method
