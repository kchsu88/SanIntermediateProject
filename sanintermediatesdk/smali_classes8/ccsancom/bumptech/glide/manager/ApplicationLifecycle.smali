.class Lccsancom/bumptech/glide/manager/ApplicationLifecycle;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"

# interfaces
.implements Lccsancom/bumptech/glide/manager/Lifecycle;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lccsancom/bumptech/glide/manager/LifecycleListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/bumptech/glide/manager/LifecycleListener;

    .line 15
    invoke-interface {p1}, Lccsancom/bumptech/glide/manager/LifecycleListener;->onStart()V

    .line 16
    return-void
.end method
