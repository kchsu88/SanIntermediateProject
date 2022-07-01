.class public Lccsancom/vungle/warren/ui/view/MRAIDAdView;
.super Lccsancom/vungle/warren/ui/view/BaseAdView;
.source "MRAIDAdView.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/vungle/warren/ui/view/BaseAdView<",
        "Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;",
        ">;",
        "Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdView;"
    }
.end annotation


# instance fields
.field private presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "view"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;
    .param p3, "orientationDelegate"    # Lccsancom/vungle/warren/ui/OrientationDelegate;
    .param p4, "closeDelegate"    # Lccsancom/vungle/warren/ui/CloseDelegate;

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/vungle/warren/ui/view/BaseAdView;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic setPresenter(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .locals 0

    .line 15
    check-cast p1, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/view/MRAIDAdView;->setPresenter(Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 41
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/MRAIDAdView;->presenter:Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 42
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 36
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/MRAIDAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setVisibility(I)V

    .line 37
    return-void
.end method

.method public showWebsite(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/MRAIDAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->showWebsite(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public updateWindow()V
    .locals 1

    .line 30
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/MRAIDAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->updateWindow()V

    .line 31
    return-void
.end method
