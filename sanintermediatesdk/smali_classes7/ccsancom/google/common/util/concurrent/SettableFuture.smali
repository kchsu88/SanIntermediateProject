.class public final Lccsancom/google/common/util/concurrent/SettableFuture;
.super Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    .local p0, "this":Lccsancom/google/common/util/concurrent/SettableFuture;, "Lccsancom/google/common/util/concurrent/SettableFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    return-void
.end method

.method public static create()Lccsancom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/util/concurrent/SettableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lccsancom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v0}, Lccsancom/google/common/util/concurrent/SettableFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 48
    .local p0, "this":Lccsancom/google/common/util/concurrent/SettableFuture;, "Lccsancom/google/common/util/concurrent/SettableFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 54
    .local p0, "this":Lccsancom/google/common/util/concurrent/SettableFuture;, "Lccsancom/google/common/util/concurrent/SettableFuture<TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsancom/google/common/util/concurrent/SettableFuture;, "Lccsancom/google/common/util/concurrent/SettableFuture<TV;>;"
    .local p1, "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;->setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v0

    return v0
.end method
