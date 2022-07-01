.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$3;
.super Ljava/lang/Object;
.source "MBridgeBTNativeEC.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a()V
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

    .line 288
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;I)V

    .line 293
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;FF)V

    .line 295
    :cond_0
    return-void
.end method
