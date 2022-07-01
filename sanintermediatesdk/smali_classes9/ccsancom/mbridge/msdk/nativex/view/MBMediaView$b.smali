.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$b;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/mbridge/msdk/nativex/view/MBMediaView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 1

    .line 2509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2510
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$b;->a:Ljava/lang/ref/WeakReference;

    .line 2511
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2515
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2517
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->l(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    if-ne v1, v2, :cond_0

    .line 2518
    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->K(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2519
    sget-object v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;->b:Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;)Lccsancom/mbridge/msdk/nativex/view/MBMediaView$a;

    .line 2520
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->changeNoticeURL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2522
    :catchall_0
    move-exception v0

    .line 2523
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MBMediaView"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2524
    :cond_0
    :goto_0
    nop

    .line 2525
    :goto_1
    return-void
.end method
