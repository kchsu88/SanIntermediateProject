.class public Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/render/SANNativeAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SViewBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    }
.end annotation


# instance fields
.field final IncentiveDownloadUtils:I

.field final addDownloadListener:I

.field final deleteDownItem:I

.field final getDownloadedRecordByUrl:I

.field final getDownloadingList:I

.field final getDownloadingRecordByUrl:I

.field final removeDownloadListener:I

.field final unifiedDownload:I


# direct methods
.method private constructor <init>(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadingList(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->addDownloadListener:I

    .line 4
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->removeDownloadListener(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->removeDownloadListener:I

    .line 5
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->IncentiveDownloadUtils(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->getDownloadingList:I

    .line 6
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->addDownloadListener(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->unifiedDownload:I

    .line 7
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->unifiedDownload(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->IncentiveDownloadUtils:I

    .line 8
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedList(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->getDownloadedRecordByUrl:I

    .line 9
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedRecordByUrl(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->deleteDownItem:I

    .line 10
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadStatusByUrl(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I

    move-result v0

    iput v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->getDownloadingRecordByUrl:I

    .line 11
    invoke-static {p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->deleteDownItem(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;Lccsancom/san/ads/render/SANNativeAdRenderer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;-><init>(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)V

    return-void
.end method
