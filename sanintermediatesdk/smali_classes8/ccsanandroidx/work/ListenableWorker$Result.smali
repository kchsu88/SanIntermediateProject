.class public abstract Lccsanandroidx/work/ListenableWorker$Result;
.super Ljava/lang/Object;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/ListenableWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/ListenableWorker$Result$Retry;,
        Lccsanandroidx/work/ListenableWorker$Result$Failure;,
        Lccsanandroidx/work/ListenableWorker$Result$Success;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    return-void
.end method

.method public static failure()Lccsanandroidx/work/ListenableWorker$Result;
    .locals 1

    .line 323
    new-instance v0, Lccsanandroidx/work/ListenableWorker$Result$Failure;

    invoke-direct {v0}, Lccsanandroidx/work/ListenableWorker$Result$Failure;-><init>()V

    return-object v0
.end method

.method public static failure(Lccsanandroidx/work/Data;)Lccsanandroidx/work/ListenableWorker$Result;
    .locals 1
    .param p0, "outputData"    # Lccsanandroidx/work/Data;

    .line 339
    new-instance v0, Lccsanandroidx/work/ListenableWorker$Result$Failure;

    invoke-direct {v0, p0}, Lccsanandroidx/work/ListenableWorker$Result$Failure;-><init>(Lccsanandroidx/work/Data;)V

    return-object v0
.end method

.method public static retry()Lccsanandroidx/work/ListenableWorker$Result;
    .locals 1

    .line 309
    new-instance v0, Lccsanandroidx/work/ListenableWorker$Result$Retry;

    invoke-direct {v0}, Lccsanandroidx/work/ListenableWorker$Result$Retry;-><init>()V

    return-object v0
.end method

.method public static success()Lccsanandroidx/work/ListenableWorker$Result;
    .locals 1

    .line 283
    new-instance v0, Lccsanandroidx/work/ListenableWorker$Result$Success;

    invoke-direct {v0}, Lccsanandroidx/work/ListenableWorker$Result$Success;-><init>()V

    return-object v0
.end method

.method public static success(Lccsanandroidx/work/Data;)Lccsanandroidx/work/ListenableWorker$Result;
    .locals 1
    .param p0, "outputData"    # Lccsanandroidx/work/Data;

    .line 297
    new-instance v0, Lccsanandroidx/work/ListenableWorker$Result$Success;

    invoke-direct {v0, p0}, Lccsanandroidx/work/ListenableWorker$Result$Success;-><init>(Lccsanandroidx/work/Data;)V

    return-object v0
.end method
