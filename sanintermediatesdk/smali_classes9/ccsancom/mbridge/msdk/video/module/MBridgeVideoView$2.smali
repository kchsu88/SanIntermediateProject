.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$2;
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

    .line 283
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 286
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$2;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/4 v0, 0x1

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 287
    return-void
.end method
