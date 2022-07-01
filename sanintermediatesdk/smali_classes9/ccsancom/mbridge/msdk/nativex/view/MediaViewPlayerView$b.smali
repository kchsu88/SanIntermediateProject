.class final Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Lccsanandroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$1;)V
    .locals 0

    .line 862
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;-><init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Lccsanandroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 866
    :try_start_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    new-instance p3, Lccsanandroid/view/Surface;

    invoke-direct {p3, p1}, Lccsanandroid/view/Surface;-><init>(Lccsanandroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Lccsanandroid/view/Surface;)Lccsanandroid/view/Surface;

    .line 867
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 868
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 869
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->l(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 870
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->m(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 872
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 874
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->n(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 877
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_3

    .line 875
    :cond_2
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    goto :goto_3

    .line 880
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->o(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 881
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 884
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    goto :goto_3

    .line 882
    :cond_5
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_3

    .line 887
    :cond_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->hasPrepare()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    .line 890
    :cond_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->startOrPlayVideo()V

    goto :goto_3

    .line 888
    :cond_8
    :goto_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->k(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_3
    goto :goto_4

    .line 894
    :catch_0
    move-exception p1

    .line 895
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaViewPlayerView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_4
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Lccsanandroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 907
    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->p(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->p(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->isPlayIng()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V

    .line 910
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z

    .line 911
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$b;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    goto :goto_0

    .line 912
    :catchall_0
    move-exception v0

    .line 913
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :goto_0
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Lccsanandroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 901
    const-string p1, "MediaViewPlayerView"

    const-string p2, "onSurfaceTextureSizeChanged "

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method public final onSurfaceTextureUpdated(Lccsanandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 920
    return-void
.end method
