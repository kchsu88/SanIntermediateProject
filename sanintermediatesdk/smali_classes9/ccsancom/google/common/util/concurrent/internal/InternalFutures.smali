.class public final Lccsancom/google/common/util/concurrent/internal/InternalFutures;
.super Ljava/lang/Object;
.source "InternalFutures.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryInternalFastPathGetFailure(Lccsancom/google/common/util/concurrent/internal/InternalFutureFailureAccess;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "future"    # Lccsancom/google/common/util/concurrent/internal/InternalFutureFailureAccess;

    .line 41
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/internal/InternalFutureFailureAccess;->tryInternalFastPathGetFailure()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
