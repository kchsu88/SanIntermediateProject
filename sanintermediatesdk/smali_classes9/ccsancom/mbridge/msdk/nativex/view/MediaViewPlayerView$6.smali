.class final Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$6;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;
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

    .line 736
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$6;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 740
    return-void
.end method

.method public final onSuccessLoad(Lccsanandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 744
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$6;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 745
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$6;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setImageUrl(Ljava/lang/String;)V

    .line 746
    iget-object p2, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$6;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->i(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/videocommon/view/MyImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/view/MyImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V

    .line 748
    :cond_0
    return-void
.end method
