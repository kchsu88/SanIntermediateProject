.class public interface abstract Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;
.super Ljava/lang/Object;
.source "ExecutorSupplier.java"


# virtual methods
.method public abstract getBackgroundTasks()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getDownloadResultTasks()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getDownloadTasks()Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;
.end method

.method public abstract getLruCacheThreadTasks()Ljava/util/concurrent/ExecutorService;
.end method
