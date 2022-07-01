.class Lccsancom/san/ads/core/AdMediationModeLoaderManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cu/unifiedDownload$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/core/AdMediationModeLoaderManager;->unifiedDownload()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/ads/core/AdMediationModeLoaderManager;


# direct methods
.method constructor <init>(Lccsancom/san/ads/core/AdMediationModeLoaderManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$1;->unifiedDownload:Lccsancom/san/ads/core/AdMediationModeLoaderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHBConfig(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cu/getDownloadedRecordByUrl;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$1;->unifiedDownload:Lccsancom/san/ads/core/AdMediationModeLoaderManager;

    iget-object v0, v0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lccsansan/bq/removeDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;)V

    :cond_0
    return-void
.end method
