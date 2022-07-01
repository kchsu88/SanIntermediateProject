.class Lccsanandroidx/work/Worker$1;
.super Ljava/lang/Object;
.source "Worker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/Worker;->startWork()Lccsancom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/Worker;


# direct methods
.method constructor <init>(Lccsanandroidx/work/Worker;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/Worker;

    .line 81
    iput-object p1, p0, Lccsanandroidx/work/Worker$1;->this$0:Lccsanandroidx/work/Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/Worker$1;->this$0:Lccsanandroidx/work/Worker;

    invoke-virtual {v0}, Lccsanandroidx/work/Worker;->doWork()Lccsanandroidx/work/ListenableWorker$Result;

    move-result-object v0

    .line 86
    .local v0, "result":Lccsanandroidx/work/ListenableWorker$Result;
    iget-object v1, p0, Lccsanandroidx/work/Worker$1;->this$0:Lccsanandroidx/work/Worker;

    iget-object v1, v1, Lccsanandroidx/work/Worker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    nop

    .end local v0    # "result":Lccsanandroidx/work/ListenableWorker$Result;
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lccsanandroidx/work/Worker$1;->this$0:Lccsanandroidx/work/Worker;

    iget-object v1, v1, Lccsanandroidx/work/Worker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 91
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
