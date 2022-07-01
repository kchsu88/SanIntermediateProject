.class Lccsancom/vungle/warren/ui/view/FullAdWidget$5;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnErrorListener;


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

    .line 236
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$5;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Lccsanandroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 239
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$5;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$700(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$5;->this$0:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->access$700(Lccsancom/vungle/warren/ui/view/FullAdWidget;)Lccsanandroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/media/MediaPlayer$OnErrorListener;->onError(Lccsanandroid/media/MediaPlayer;II)Z

    move-result v0

    return v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
