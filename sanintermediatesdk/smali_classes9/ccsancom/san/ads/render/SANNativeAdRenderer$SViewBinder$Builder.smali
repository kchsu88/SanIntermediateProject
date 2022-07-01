.class public final Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:I

.field private final addDownloadListener:I

.field private deleteDownItem:I

.field private getDownloadStatusByUrl:I

.field private getDownloadedList:I

.field private getDownloadedRecordByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingList:I

.field private removeDownloadListener:I

.field private unifiedDownload:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedRecordByUrl:Ljava/util/Map;

    .line 5
    iput p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->addDownloadListener:I

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedRecordByUrl:Ljava/util/Map;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->removeDownloadListener:I

    return p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->unifiedDownload:I

    return p0
.end method

.method static synthetic deleteDownItem(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedRecordByUrl:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic getDownloadStatusByUrl(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadStatusByUrl:I

    return p0
.end method

.method static synthetic getDownloadedList(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->deleteDownItem:I

    return p0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedList:I

    return p0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->addDownloadListener:I

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->IncentiveDownloadUtils:I

    return p0
.end method

.method static synthetic unifiedDownload(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadingList:I

    return p0
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;I)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedRecordByUrl:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final addExtras(Ljava/util/Map;)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedRecordByUrl:Ljava/util/Map;

    return-object p0
.end method

.method public final build()Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;
    .locals 2

    .line 1
    new-instance v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;-><init>(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;Lccsancom/san/ads/render/SANNativeAdRenderer$1;)V

    return-object v0
.end method

.method public final callToActionId(I)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->unifiedDownload:I

    return-object p0
.end method

.method public final iconImageId(I)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->deleteDownItem:I

    return-object p0
.end method

.method public final mainImageId(I)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadingList:I

    return-object p0
.end method

.method public final privacyInformationIconImageId(I)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadedList:I

    return-object p0
.end method

.method public final sponsoredTextId(I)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->getDownloadStatusByUrl:I

    return-object p0
.end method

.method public final textId(I)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->removeDownloadListener:I

    return-object p0
.end method

.method public final titleId(I)Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder$Builder;->IncentiveDownloadUtils:I

    return-object p0
.end method
