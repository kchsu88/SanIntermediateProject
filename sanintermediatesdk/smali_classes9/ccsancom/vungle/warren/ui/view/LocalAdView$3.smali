.class Lccsancom/vungle/warren/ui/view/LocalAdView$3;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/LocalAdView;->onPrepared(Lccsanandroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/LocalAdView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 278
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lccsanandroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lccsanandroid/media/MediaPlayer;

    .line 281
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lccsancom/vungle/warren/ui/view/LocalAdView;->TAG:Ljava/lang/String;

    const-string v1, "mediaplayer onCompletion"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$600(Lccsancom/vungle/warren/ui/view/LocalAdView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$500(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsanandroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$600(Lccsancom/vungle/warren/ui/view/LocalAdView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$3;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$000(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onProgressUpdate(IF)V

    .line 288
    return-void
.end method
