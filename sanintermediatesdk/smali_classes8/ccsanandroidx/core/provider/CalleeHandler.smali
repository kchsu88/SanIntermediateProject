.class Lccsanandroidx/core/provider/CalleeHandler;
.super Ljava/lang/Object;
.source "CalleeHandler.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lccsanandroid/os/Handler;
    .locals 2

    .line 36
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .local v0, "handler":Lccsanandroid/os/Handler;
    goto :goto_0

    .line 39
    .end local v0    # "handler":Lccsanandroid/os/Handler;
    :cond_0
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    .line 41
    .restart local v0    # "handler":Lccsanandroid/os/Handler;
    :goto_0
    return-object v0
.end method
