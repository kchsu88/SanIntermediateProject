.class Lccsancom/san/mads/nativead/MadsNativeAd$addDownloadListener;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/nativead/MadsNativeAd;->initHandler()Lccsanandroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;


# direct methods
.method constructor <init>(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const-string v0, "Mads.NativeAd"

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad clicked, pid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-virtual {v1}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {p1, v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$800(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad showed, pid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-virtual {v1}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$addDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {p1, v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$700(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    :goto_0
    return-void
.end method
