.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 2718
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2722
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2723
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0, v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2724
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->Q(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    goto :goto_0

    .line 2726
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->R(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2730
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$8;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->H(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2733
    goto :goto_1

    .line 2731
    :catch_0
    move-exception v0

    .line 2732
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBMediaView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    :goto_1
    return-void
.end method
