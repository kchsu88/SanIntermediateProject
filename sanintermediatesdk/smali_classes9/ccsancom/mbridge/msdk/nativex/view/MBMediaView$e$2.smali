.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->onSensorChanged(Lccsanandroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;)V
    .locals 0

    .line 2357
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2361
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v1, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->u(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v2, v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v2}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/nativex/view/mbfullview/a;->a(Lccsancom/mbridge/msdk/nativex/view/mbfullview/BaseView;Z)V

    .line 2362
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->I(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2363
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->E(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2364
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->F(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2365
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->G(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2366
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2367
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v0, v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->w(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e$2;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;

    iget-object v1, v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$e;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->x(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->orientation(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2371
    :cond_0
    goto :goto_0

    .line 2369
    :catch_0
    move-exception v0

    .line 2370
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2372
    :goto_0
    return-void
.end method
