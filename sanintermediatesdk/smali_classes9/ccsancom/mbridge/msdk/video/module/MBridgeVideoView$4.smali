.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;
.super Ljava/lang/Object;
.source "MBridgeVideoView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 304
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 305
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 306
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 307
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v0, 0x7b

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->f(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    .line 314
    :goto_0
    return-void
.end method
