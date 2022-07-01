.class final Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 1

    .line 418
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 419
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    .line 420
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/nativex/listener/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 421
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/nativex/listener/a;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/nativex/listener/a;->a()V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 425
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/nativex/listener/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 426
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/nativex/listener/a;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/nativex/listener/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    :cond_1
    :goto_0
    goto :goto_1

    .line 429
    :catchall_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaViewPlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :goto_1
    return-void
.end method
