.class Lccsancom/vungle/warren/AdActivity$4;
.super Ljava/lang/Object;
.source "AdActivity.java"

# interfaces
.implements Lccsancom/vungle/warren/PresentationFactory$FullScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdActivity;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdActivity;

    .line 351
    iput-object p1, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lccsanandroid/util/Pair;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 3
    .param p2, "error"    # Lccsancom/vungle/warren/error/VungleException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/Pair<",
            "Lccsancom/vungle/warren/ui/contract/AdContract$AdView;",
            "Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;",
            ">;",
            "Lccsancom/vungle/warren/error/VungleException;",
            ")V"
        }
    .end annotation

    .line 355
    .local p1, "result":Lccsanandroid/util/Pair;, "Lccsanandroid/util/Pair<Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;>;"
    if-eqz p2, :cond_0

    .line 356
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/vungle/warren/AdActivity;->access$002(Lccsancom/vungle/warren/AdActivity;Lccsancom/vungle/warren/PresentationFactory;)Lccsancom/vungle/warren/PresentationFactory;

    .line 357
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getExceptionCode()I

    move-result v1

    iget-object v2, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-static {v2}, Lccsancom/vungle/warren/AdActivity;->access$100(Lccsancom/vungle/warren/AdActivity;)Lccsancom/vungle/warren/AdRequest;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/AdActivity;->access$200(Lccsancom/vungle/warren/AdActivity;ILccsancom/vungle/warren/AdRequest;)V

    .line 358
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdActivity;->finish()V

    .line 359
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    iget-object v1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    invoke-static {v0, v1}, Lccsancom/vungle/warren/AdActivity;->access$302(Lccsancom/vungle/warren/AdActivity;Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    .line 363
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-static {v0}, Lccsancom/vungle/warren/AdActivity;->access$300(Lccsancom/vungle/warren/AdActivity;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v0

    invoke-static {}, Lccsancom/vungle/warren/AdActivity;->access$400()Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->setEventListener(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V

    .line 365
    iget-object v0, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lccsancom/vungle/warren/ui/contract/AdContract$AdView;

    .line 367
    .local v0, "adView":Lccsancom/vungle/warren/ui/contract/AdContract$AdView;
    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-static {v1}, Lccsancom/vungle/warren/AdActivity;->access$300(Lccsancom/vungle/warren/AdActivity;)Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-static {v2}, Lccsancom/vungle/warren/AdActivity;->access$500(Lccsancom/vungle/warren/AdActivity;)Lccsancom/vungle/warren/ui/state/OptionsState;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;->attach(Lccsancom/vungle/warren/ui/contract/AdContract$AdView;Lccsancom/vungle/warren/ui/state/OptionsState;)V

    .line 369
    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-static {v1}, Lccsancom/vungle/warren/AdActivity;->access$600(Lccsancom/vungle/warren/AdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lccsancom/vungle/warren/AdActivity$4;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-static {v1}, Lccsancom/vungle/warren/AdActivity;->access$700(Lccsancom/vungle/warren/AdActivity;)V

    .line 372
    :cond_1
    return-void
.end method
