.class public final Lccsancom/google/common/cache/RemovalListeners;
.super Ljava/lang/Object;
.source "RemovalListeners.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asynchronous(Lccsancom/google/common/cache/RemovalListener;Ljava/util/concurrent/Executor;)Lccsancom/google/common/cache/RemovalListener;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/RemovalListener<",
            "TK;TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/cache/RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation

    .line 42
    .local p0, "listener":Lccsancom/google/common/cache/RemovalListener;, "Lccsancom/google/common/cache/RemovalListener<TK;TV;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lccsancom/google/common/cache/RemovalListeners$1;

    invoke-direct {v0, p1, p0}, Lccsancom/google/common/cache/RemovalListeners$1;-><init>(Ljava/util/concurrent/Executor;Lccsancom/google/common/cache/RemovalListener;)V

    return-object v0
.end method
