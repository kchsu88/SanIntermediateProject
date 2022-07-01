.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$6;
.super Ljava/lang/Object;
.source "MBridgeVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;
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

    .line 947
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$6;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 950
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$6;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->g(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    .line 951
    return-void
.end method
