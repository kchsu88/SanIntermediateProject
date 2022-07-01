.class final Lccsancom/san/ads/TestSuiteHelper$1;
.super Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/TestSuiteHelper;->loadAd(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;Lccsancom/san/ads/AdSize;Lccsancom/san/ads/base/IAdListener$AdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/ads/base/IAdListener$AdLoadListener;


# direct methods
.method constructor <init>(Lccsancom/san/ads/base/IAdListener$AdLoadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/TestSuiteHelper$1;->getDownloadingList:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    invoke-direct {p0}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadError(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/TestSuiteHelper$1;->getDownloadingList:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lccsancom/san/ads/base/IAdListener$AdLoadListener;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsancom/san/ads/TestSuiteHelper$1;->getDownloadingList:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lccsancom/san/ads/base/IAdListener$AdLoadListener;->onAdLoaded(Lccsancom/san/ads/core/SANAd;)V

    :cond_0
    return-void
.end method
