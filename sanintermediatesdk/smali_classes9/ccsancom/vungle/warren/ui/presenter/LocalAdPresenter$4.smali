.class Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$4;
.super Ljava/lang/Object;
.source "LocalAdPresenter.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->showIncetivizedDialog()V
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

    .line 499
    iput-object p1, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$4;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 502
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 505
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$4;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    const/4 v1, 0x0

    const-string v2, "video_close"

    invoke-virtual {v0, v2, v1}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter$4;->this$0:Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;->access$700(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    .line 508
    :cond_0
    return-void
.end method
