.class Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/nativead/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/nativead/MadsNativeAd;->innerLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;


# direct methods
.method constructor <init>(Lccsancom/san/mads/nativead/MadsNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList(Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataError error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.NativeAd"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$400(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
    .locals 4

    .line 1
    const-string v0, "Mads.NativeAd"

    const-string v1, "onDataLoaded"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$002(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsansan/dt/removeDownloadListener;)Lccsansan/dt/removeDownloadListener;

    .line 3
    new-instance p1, Lccsancom/san/ads/base/AdWrapper;

    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-direct {p1, v0, v1}, Lccsancom/san/ads/base/AdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    new-instance v1, Lccsansan/ck/getDownloadedList;

    invoke-virtual {v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v3}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$200(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsanandroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsansan/ck/getDownloadedList;-><init>(Lccsansan/dt/removeDownloadListener;Lccsanandroid/os/Handler;)V

    invoke-static {v0, v1}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$102(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsansan/ck/getDownloadedList;)Lccsansan/ck/getDownloadedList;

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$300(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/ads/base/AdWrapper;)V

    return-void
.end method
