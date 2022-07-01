.class Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/render/SANNativeAdRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SNativeViewHolder"
.end annotation


# instance fields
.field IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

.field addDownloadListener:Lccsanandroid/widget/TextView;

.field getDownloadStatusByUrl:Lccsancom/san/ads/MediaView;

.field getDownloadingList:Lccsanandroid/view/View;

.field removeDownloadListener:Lccsancom/san/ads/MediaView;

.field unifiedDownload:Lccsanandroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static IncentiveDownloadUtils(Lccsanandroid/view/View;Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;)Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;

    invoke-direct {v0}, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;-><init>()V

    .line 2
    iput-object p0, v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->getDownloadingList:Lccsanandroid/view/View;

    .line 3
    iget v1, p1, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->removeDownloadListener:I

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    .line 4
    iget v1, p1, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->getDownloadingList:I

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->addDownloadListener:Lccsanandroid/widget/TextView;

    .line 5
    iget v1, p1, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->unifiedDownload:I

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->unifiedDownload:Lccsanandroid/widget/TextView;

    .line 6
    iget v1, p1, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->IncentiveDownloadUtils:I

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/MediaView;

    iput-object v1, v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->getDownloadStatusByUrl:Lccsancom/san/ads/MediaView;

    .line 7
    iget v1, p1, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->getDownloadedRecordByUrl:I

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/san/ads/MediaView;

    iput-object v1, v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->removeDownloadListener:Lccsancom/san/ads/MediaView;

    .line 8
    iget v1, p1, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->deleteDownItem:I

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    .line 9
    iget p1, p1, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->getDownloadingRecordByUrl:I

    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p0

    check-cast p0, Lccsanandroid/widget/TextView;

    return-object v0
.end method
