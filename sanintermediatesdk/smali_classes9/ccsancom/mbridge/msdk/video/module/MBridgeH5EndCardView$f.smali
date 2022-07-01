.class final Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;
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
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field private b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 713
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 715
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 719
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_1

    .line 720
    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->setCloseVisible(I)V

    .line 723
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$f;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z

    .line 725
    :cond_1
    return-void
.end method
