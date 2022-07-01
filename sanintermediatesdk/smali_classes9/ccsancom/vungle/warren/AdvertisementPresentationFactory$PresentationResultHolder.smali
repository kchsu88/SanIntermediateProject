.class Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;
.super Ljava/lang/Object;
.source "AdvertisementPresentationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdvertisementPresentationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PresentationResultHolder"
.end annotation


# instance fields
.field private adView:Lccsancom/vungle/warren/ui/contract/AdContract$AdView;

.field private advertisementPresenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

.field private exception:Lccsancom/vungle/warren/error/VungleException;

.field private webClient:Lccsancom/vungle/warren/ui/view/VungleWebClient;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/error/VungleException;)V
    .locals 0
    .param p1, "exception"    # Lccsancom/vungle/warren/error/VungleException;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->exception:Lccsancom/vungle/warren/error/VungleException;

    .line 189
    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;Lccsancom/vungle/warren/ui/view/VungleWebClient;)V
    .locals 0
    .param p1, "adView"    # Lccsancom/vungle/warren/ui/contract/AdContract$AdView;
    .param p2, "advertisementPresenter"    # Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .param p3, "webClient"    # Lccsancom/vungle/warren/ui/view/VungleWebClient;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->adView:Lccsancom/vungle/warren/ui/contract/AdContract$AdView;

    .line 195
    iput-object p2, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->advertisementPresenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    .line 196
    iput-object p3, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->webClient:Lccsancom/vungle/warren/ui/view/VungleWebClient;

    .line 197
    return-void
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/error/VungleException;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    .line 181
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->exception:Lccsancom/vungle/warren/error/VungleException;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/view/VungleWebClient;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    .line 181
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->webClient:Lccsancom/vungle/warren/ui/view/VungleWebClient;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    .line 181
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->advertisementPresenter:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;)Lccsancom/vungle/warren/ui/contract/AdContract$AdView;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;

    .line 181
    iget-object v0, p0, Lccsancom/vungle/warren/AdvertisementPresentationFactory$PresentationResultHolder;->adView:Lccsancom/vungle/warren/ui/contract/AdContract$AdView;

    return-object v0
.end method
