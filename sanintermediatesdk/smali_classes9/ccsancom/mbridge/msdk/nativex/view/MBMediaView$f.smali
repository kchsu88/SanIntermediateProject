.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$f;
.super Ljava/lang/Object;
.source "MBMediaView.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
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

    .line 2488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2489
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$f;->a:Ljava/lang/ref/WeakReference;

    .line 2490
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 2494
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    .line 2495
    if-eqz p1, :cond_0

    .line 2496
    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->H(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$b;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$b;-><init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2498
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2502
    return-void
.end method
