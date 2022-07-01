.class final Lccsancom/mbridge/msdk/video/module/a/a/m$1$1;
.super Ljava/lang/Object;
.source "VideoViewDefaultListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/a/a/m$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/a/a/m$1;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/a/a/m$1;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/a/a/m$1$1;->a:Lccsancom/mbridge/msdk/video/module/a/a/m$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 187
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m$1$1;->a:Lccsancom/mbridge/msdk/video/module/a/a/m$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/a/a/m$1;->a:Lccsancom/mbridge/msdk/video/module/a/a/m;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/a/a/m;->a(Lccsancom/mbridge/msdk/video/module/a/a/m;)Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    .line 188
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/a/a/m$1$1;->a:Lccsancom/mbridge/msdk/video/module/a/a/m$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/a/a/m$1;->a:Lccsancom/mbridge/msdk/video/module/a/a/m;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/a/a/m;->b(Lccsancom/mbridge/msdk/video/module/a/a/m;)Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(II)V

    .line 189
    return-void
.end method
