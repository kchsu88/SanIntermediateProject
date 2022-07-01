.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;
.super Ljava/lang/Object;
.source "MBridgeVideoView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/view/ViewGroup;

.field final synthetic b:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Lccsanandroid/view/ViewGroup;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->a:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->a:Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 220
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1$1;-><init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;)V

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 236
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V

    .line 237
    const/4 p1, 0x0

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(Z)Z

    .line 238
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorMsg\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/c/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method
