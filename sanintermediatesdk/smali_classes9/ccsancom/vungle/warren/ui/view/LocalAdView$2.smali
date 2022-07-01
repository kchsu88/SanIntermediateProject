.class Lccsancom/vungle/warren/ui/view/LocalAdView$2;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/LocalAdView;->setupPlayerProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field duration:F

.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/LocalAdView;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 180
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 192
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->isVideoPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getCurrentVideoPosition()I

    move-result v0

    .line 194
    .local v0, "currentPosition":I
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    iget-object v1, v1, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getVideoDuration()I

    move-result v1

    .line 196
    .local v1, "currentDuration":I
    if-lez v1, :cond_1

    .line 197
    iget v2, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    const/high16 v3, -0x40000000    # -2.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 198
    int-to-float v2, v1

    iput v2, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    .line 201
    :cond_0
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v2}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$000(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v2

    iget v3, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    invoke-interface {v2, v0, v3}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onProgressUpdate(IF)V

    .line 202
    iget-object v2, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    iget-object v2, v2, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    iget v3, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->duration:F

    invoke-virtual {v2, v0, v3}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setProgress(IF)V

    .line 207
    .end local v0    # "currentPosition":I
    .end local v1    # "currentDuration":I
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$500(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsanandroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 214
    .local v0, "released":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    iget-object v1, v1, Lccsancom/vungle/warren/ui/view/LocalAdView;->TAG:Ljava/lang/String;

    const-string v2, "IllegalStateException while reporting progress indicates activity was killed via SIGKILL."

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0    # "released":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method
