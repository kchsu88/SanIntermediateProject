.class Lccsancom/vungle/warren/ui/view/FullAdWidget$6;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/FullAdWidget;->bindListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/FullAdWidget;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;

    .line 246
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$6;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lccsanandroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Lccsanandroid/media/MediaPlayer;

    .line 249
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$6;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$800(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$6;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$800(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsanandroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Lccsanandroid/media/MediaPlayer;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$6;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$600(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setEnabled(Z)V

    .line 254
    return-void
.end method
