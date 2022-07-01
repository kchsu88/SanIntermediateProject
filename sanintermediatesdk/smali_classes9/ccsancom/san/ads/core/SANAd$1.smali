.class Lccsancom/san/ads/core/SANAd$1;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/core/SANAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/ads/core/SANAd;


# direct methods
.method constructor <init>(Lccsancom/san/ads/core/SANAd;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/SANAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/core/SANAd;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    .line 2
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/san/ads/core/SANAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/core/SANAd;

    iget-object p1, p1, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    if-eqz p1, :cond_0

    .line 3
    const-string v0, "callbackInTime"

    invoke-virtual {p1, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->cancelAdLoad(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
