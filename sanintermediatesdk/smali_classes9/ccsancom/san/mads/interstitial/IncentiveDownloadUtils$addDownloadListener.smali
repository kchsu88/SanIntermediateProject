.class Lccsancom/san/mads/interstitial/IncentiveDownloadUtils$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->addDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public removeDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;

    invoke-virtual {v0, p1}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;)V

    return-void
.end method
