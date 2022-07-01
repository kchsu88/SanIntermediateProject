.class public Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;
.super Ljava/lang/Object;
.source "PresenterAppLeftCallback.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;


# instance fields
.field private final bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private final placement:Lccsancom/vungle/warren/model/Placement;


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;Lccsancom/vungle/warren/model/Placement;)V
    .locals 0
    .param p1, "bus"    # Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .param p2, "placement"    # Lccsancom/vungle/warren/model/Placement;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 16
    iput-object p2, p0, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;->placement:Lccsancom/vungle/warren/model/Placement;

    .line 17
    return-void
.end method


# virtual methods
.method public onLeftApplication()V
    .locals 4

    .line 21
    iget-object v0, p0, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;->bus:Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    if-eqz v0, :cond_1

    .line 22
    iget-object v1, p0, Lccsancom/vungle/warren/ui/PresenterAppLeftCallback;->placement:Lccsancom/vungle/warren/model/Placement;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lccsancom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "open"

    const-string v3, "adLeftApplication"

    invoke-interface {v0, v2, v3, v1}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_1
    return-void
.end method
