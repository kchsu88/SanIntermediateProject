.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/nativex/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
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

    .line 2531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2532
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;->a:Ljava/lang/ref/WeakReference;

    .line 2533
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2537
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2538
    if-eqz v0, :cond_0

    .line 2539
    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->L(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2541
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2569
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2570
    if-eqz v0, :cond_0

    .line 2571
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Ljava/lang/String;)V

    .line 2573
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 2545
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2546
    if-eqz v0, :cond_0

    .line 2547
    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->M(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2549
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 2577
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2578
    if-eqz v0, :cond_0

    .line 2579
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->b(Ljava/lang/String;)V

    .line 2581
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 2553
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2554
    if-eqz v0, :cond_0

    .line 2555
    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->N(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2557
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 2561
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2562
    if-eqz v0, :cond_0

    .line 2563
    invoke-static {v0}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->O(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 2565
    :cond_0
    return-void
.end method
