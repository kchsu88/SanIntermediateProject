.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$1;
.super Ljava/lang/Object;
.source "MBridgeBTNativeEC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;Z)Z

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Lccsanandroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    return-void
.end method
