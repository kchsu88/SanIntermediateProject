.class final Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$1;
.super Ljava/lang/Object;
.source "MBridgeNativeEndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->onAttachedToWindow()V
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

    .line 117
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 120
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Z)Z

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method
