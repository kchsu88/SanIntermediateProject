.class Lccsancom/san/ads/SANBanner$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/SANBanner;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/ads/SANBanner;


# direct methods
.method constructor <init>(Lccsancom/san/ads/SANBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/SANBanner$1;->removeDownloadListener:Lccsancom/san/ads/SANBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvisible()V
    .locals 2

    .line 1
    const-string v0, "SANBanner"

    const-string v1, "#onInvisible"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/SANBanner$1;->removeDownloadListener:Lccsancom/san/ads/SANBanner;

    invoke-static {v0}, Lccsancom/san/ads/SANBanner;->getDownloadingList(Lccsancom/san/ads/SANBanner;)V

    return-void
.end method

.method public onVisibility()V
    .locals 2

    .line 1
    const-string v0, "SANBanner"

    const-string v1, "#onVisibility"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/SANBanner$1;->removeDownloadListener:Lccsancom/san/ads/SANBanner;

    invoke-static {v0}, Lccsancom/san/ads/SANBanner;->removeDownloadListener(Lccsancom/san/ads/SANBanner;)V

    return-void
.end method
