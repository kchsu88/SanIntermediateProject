.class Lccsancom/vungle/warren/ui/view/VungleNativeView$3;
.super Ljava/lang/Object;
.source "VungleNativeView.java"

# interfaces
.implements Lccsancom/vungle/warren/PresentationFactory$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/VungleNativeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 310
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lccsanandroid/util/Pair;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 4
    .param p2, "error"    # Lccsancom/vungle/warren/error/VungleException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/Pair<",
            "Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;",
            "Lccsancom/vungle/warren/ui/view/VungleWebClient;",
            ">;",
            "Lccsancom/vungle/warren/error/VungleException;",
            ")V"
        }
    .end annotation

    .line 313
    .local p1, "result":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;Lccsancom/vungle/warren/ui/view/VungleWebClient;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsancom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lccsancom/vungle/warren/PresentationFactory;

    .line 314
    if-eqz p2, :cond_1

    .line 315
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$000(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$000(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$100(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/AdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lccsancom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    iget-object v2, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-static {v0, v2}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$202(Lccsancom/vungle/warren/ui/view/VungleNativeView;Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    .line 322
    iget-object v0, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;

    .line 323
    .local v0, "webViewClient":Lccsancom/vungle/warren/ui/view/VungleWebClient;
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v2, v0}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 325
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v2}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$200(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v3}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$000(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object v3

    invoke-interface {v2, v3}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->setEventListener(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 326
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v2}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$200(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    move-result-object v2

    iget-object v3, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-interface {v2, v3, v1}, Lccsancom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->attach(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 327
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$300(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V

    .line 328
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$400(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 329
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->access$400(Lccsancom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    .line 331
    :cond_2
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$3;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 332
    .local v1, "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_3

    .line 333
    const/4 v2, -0x1

    iput v2, v1, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    iput v2, v1, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    .line 336
    :cond_3
    return-void
.end method
