.class Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$5;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 565
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 568
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$802(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;Z)Z

    .line 569
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$500(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$5;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$200(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;->showCloseButton()V

    .line 572
    :cond_0
    return-void
.end method
