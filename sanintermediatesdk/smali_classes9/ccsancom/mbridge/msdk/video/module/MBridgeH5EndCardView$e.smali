.class final Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$e;
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
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field private b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$e;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$e;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 493
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 497
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$e;->b:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_0

    .line 498
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->c(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z

    .line 500
    :cond_0
    return-void
.end method
