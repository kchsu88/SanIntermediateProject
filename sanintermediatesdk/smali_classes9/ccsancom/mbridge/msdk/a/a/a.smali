.class public final Lccsancom/mbridge/msdk/a/a/a;
.super Ljava/lang/Object;
.source "PreloadListenerEx.java"

# interfaces
.implements Lccsancom/mbridge/msdk/out/PreloadListener;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/mbridge/msdk/out/PreloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/out/PreloadListener;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/a/a/a;->b:Z

    .line 12
    iput v0, p0, Lccsancom/mbridge/msdk/a/a/a;->c:I

    .line 31
    if-eqz p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/a/a/a;->a:Ljava/lang/ref/WeakReference;

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/a/a/a;->b:Z

    .line 28
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/a/a/a;->b:Z

    return v0
.end method

.method public final onPreloadFaild(Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/a/a/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/a/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/out/PreloadListener;

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/out/PreloadListener;->onPreloadFaild(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public final onPreloadSucceed()V
    .locals 1

    .line 38
    iget-object v0, p0, Lccsancom/mbridge/msdk/a/a/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lccsancom/mbridge/msdk/a/a/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/out/PreloadListener;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/out/PreloadListener;->onPreloadSucceed()V

    .line 41
    :cond_0
    return-void
.end method
