.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$7;
.super Lccsancom/mbridge/msdk/widget/a;
.source "MBridgeBTNativeEC.java"


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

    .line 329
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$7;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 2

    .line 332
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$7;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;I)V

    .line 333
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$7;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;FF)V

    .line 334
    return-void
.end method
