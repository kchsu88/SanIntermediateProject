.class Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;
.super Lccsancom/google/common/util/concurrent/ImmediateFuture;
.source "ImmediateFuture.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateSuccessfulCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lccsancom/google/common/util/concurrent/ImmediateFuture<",
        "TV;>;",
        "Lccsancom/google/common/util/concurrent/CheckedFuture<",
        "TV;TX;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/ImmediateFuture;-><init>()V

    .line 101
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    .line 102
    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status=SUCCESS, result=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
