.class final Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$1;
.super Ljava/lang/Object;
.source "MBridgeContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->preLoadData(Lccsancom/mbridge/msdk/video/signal/factory/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/signal/factory/b;

.field final synthetic b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/video/signal/factory/b;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$1;->a:Lccsancom/mbridge/msdk/video/signal/factory/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView$1;->a:Lccsancom/mbridge/msdk/video/signal/factory/b;

    iget-object v2, v0, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;Lccsancom/mbridge/msdk/video/signal/factory/b;Ljava/lang/Integer;)V

    .line 125
    return-void
.end method
