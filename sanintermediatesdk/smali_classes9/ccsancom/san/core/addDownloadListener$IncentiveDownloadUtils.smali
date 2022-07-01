.class final Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;Lccsancom/san/ads/AdSize;Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/ads/base/SANBaseAd;

.field final synthetic addDownloadListener:J

.field final synthetic removeDownloadListener:Lccsancom/san/ads/AdInfo;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/ads/AdInfo;Ljava/lang/String;JLccsancom/san/ads/base/SANBaseAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/ads/AdInfo;

    iput-object p2, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iput-wide p3, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:J

    iput-object p5, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/ads/base/SANBaseAd;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/ads/AdInfo;

    .line 2
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getDetailId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3
    const-string v1, "%s#doLoadItem(Thread) with %s on [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestSuiteInnerHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/ads/base/SANBaseAd;

    iget-object v1, p0, Lccsancom/san/core/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/base/SANBaseAd;->load(Lccsancom/san/ads/AdInfo;)V

    return-void
.end method
