.class final Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$3;
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

    .line 453
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$3;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 0

    .line 456
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$3;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayButton()V

    .line 457
    return-void
.end method
