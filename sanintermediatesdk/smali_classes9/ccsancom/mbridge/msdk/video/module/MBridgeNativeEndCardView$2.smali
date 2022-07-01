.class final Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$2;
.super Ljava/lang/Object;
.source "MBridgeNativeEndCardView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/dynview/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/view/View;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->addView(Lccsanandroid/view/View;)V

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Lccsanandroid/view/View;)Z

    move-result p1

    iput-boolean p1, v0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->f:Z

    .line 159
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V

    .line 160
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/video/dynview/c/a;)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/video/dynview/c/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
