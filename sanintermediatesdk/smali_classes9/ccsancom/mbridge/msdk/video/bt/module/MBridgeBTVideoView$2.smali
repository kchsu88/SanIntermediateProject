.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$2;
.super Ljava/lang/Object;
.source "MBridgeBTVideoView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 418
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 419
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$2;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    const-string v1, "onPlayerCloseBtnClicked"

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void
.end method
