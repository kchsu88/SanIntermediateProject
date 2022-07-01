.class Lccsancom/vungle/warren/ui/view/FullAdWidget$4;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnPreparedListener;


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

    .line 220
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$4;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lccsanandroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lccsanandroid/media/MediaPlayer;

    .line 223
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$4;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$400(Lccsancom/vungle/warren/ui/view/FullAdWidget;)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lccsanandroid/media/MediaPlayer;->seekTo(JI)V

    .line 228
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$4;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$500(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$4;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$500(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsanandroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Lccsanandroid/media/MediaPlayer;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$4;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$600(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 233
    return-void
.end method
