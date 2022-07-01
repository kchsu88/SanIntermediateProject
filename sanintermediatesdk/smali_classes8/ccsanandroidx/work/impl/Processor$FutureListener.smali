.class Lccsanandroidx/work/impl/Processor$FutureListener;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FutureListener"
.end annotation


# instance fields
.field private mExecutionListener:Lccsanandroidx/work/impl/ExecutionListener;

.field private mFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkSpecId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/ExecutionListener;Ljava/lang/String;Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "executionListener"    # Lccsanandroidx/work/impl/ExecutionListener;
    .param p2, "workSpecId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/ExecutionListener;",
            "Ljava/lang/String;",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p3, "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lccsanandroidx/work/impl/Processor$FutureListener;->mExecutionListener:Lccsanandroidx/work/impl/ExecutionListener;

    .line 250
    iput-object p2, p0, Lccsanandroidx/work/impl/Processor$FutureListener;->mWorkSpecId:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lccsanandroidx/work/impl/Processor$FutureListener;->mFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 252
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 258
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor$FutureListener;->mFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v0, "needsReschedule":Z
    goto :goto_1

    .line 259
    .end local v0    # "needsReschedule":Z
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    move v0, v1

    .line 263
    .local v0, "needsReschedule":Z
    :goto_1
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor$FutureListener;->mExecutionListener:Lccsanandroidx/work/impl/ExecutionListener;

    iget-object v2, p0, Lccsanandroidx/work/impl/Processor$FutureListener;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lccsanandroidx/work/impl/ExecutionListener;->onExecuted(Ljava/lang/String;Z)V

    .line 264
    return-void
.end method
