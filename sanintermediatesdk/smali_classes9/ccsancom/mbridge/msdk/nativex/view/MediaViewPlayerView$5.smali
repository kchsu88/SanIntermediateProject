.class final Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$5;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->gonePauseView()V
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

    .line 540
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$5;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 544
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$5;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    .line 545
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$5;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->h(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_0
    return-void
.end method
