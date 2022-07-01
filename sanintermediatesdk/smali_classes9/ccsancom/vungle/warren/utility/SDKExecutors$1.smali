.class Lccsancom/vungle/warren/utility/SDKExecutors$1;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SDKExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/utility/SDKExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final UIHandler:Lccsanandroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 65
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/SDKExecutors$1;->UIHandler:Lccsanandroid/os/Handler;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 95
    iget-object v0, p0, Lccsancom/vungle/warren/utility/SDKExecutors$1;->UIHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method public isShutdown()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .locals 0

    .line 70
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method
