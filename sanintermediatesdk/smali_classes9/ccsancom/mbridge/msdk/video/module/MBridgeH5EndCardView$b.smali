.class final Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;
.super Ljava/lang/Object;
.source "MBridgeH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field private b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 739
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 743
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_0

    .line 744
    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->c(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z

    .line 746
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Z

    .line 747
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x5

    const-string v2, "timeout"

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    .line 748
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$b;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v1, 0x7f

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 749
    const-string v0, "MBridgeBaseView"

    const-string v1, "notify TYPE_NOTIFY_SHOW_NATIVE_ENDCARD"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_0
    return-void
.end method
