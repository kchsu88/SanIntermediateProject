.class public Lccsancom/vungle/warren/utility/WeakLoadAdCallback;
.super Ljava/lang/Object;
.source "WeakLoadAdCallback.java"

# interfaces
.implements Lccsancom/vungle/warren/LoadAdCallback;


# instance fields
.field private weak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/vungle/warren/LoadAdCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/LoadAdCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/vungle/warren/LoadAdCallback;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/WeakLoadAdCallback;->weak:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lccsancom/vungle/warren/utility/WeakLoadAdCallback;->weak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/LoadAdCallback;

    .line 18
    .local v0, "callback":Lccsancom/vungle/warren/LoadAdCallback;
    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p1}, Lccsancom/vungle/warren/LoadAdCallback;->onAdLoad(Ljava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 1
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "exception"    # Lccsancom/vungle/warren/error/VungleException;

    .line 25
    iget-object v0, p0, Lccsancom/vungle/warren/utility/WeakLoadAdCallback;->weak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/LoadAdCallback;

    .line 26
    .local v0, "callback":Lccsancom/vungle/warren/LoadAdCallback;
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1, p2}, Lccsancom/vungle/warren/LoadAdCallback;->onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V

    .line 29
    :cond_0
    return-void
.end method
