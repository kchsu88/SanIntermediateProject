.class Lccsancom/san/ads/MediaView$1;
.super Lccsansan/i/getDownloadedRecordByUrl;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/MediaView;->loadMadsMediaView(Lccsancom/san/ads/base/INativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/mads/nativead/MadsNativeAd;

.field final synthetic unifiedDownload:Lccsancom/san/ads/MediaView;


# direct methods
.method constructor <init>(Lccsancom/san/ads/MediaView;Lccsancom/san/mads/nativead/MadsNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/MediaView$1;->unifiedDownload:Lccsancom/san/ads/MediaView;

    iput-object p2, p0, Lccsancom/san/ads/MediaView$1;->addDownloadListener:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-direct {p0}, Lccsansan/i/getDownloadedRecordByUrl;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/MediaView$1;->unifiedDownload:Lccsancom/san/ads/MediaView;

    invoke-static {v0}, Lccsancom/san/ads/MediaView;->unifiedDownload(Lccsancom/san/ads/MediaView;)Lccsansan/j/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/MediaView$1;->addDownloadListener:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-virtual {v1}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/i/addDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    return-void
.end method
