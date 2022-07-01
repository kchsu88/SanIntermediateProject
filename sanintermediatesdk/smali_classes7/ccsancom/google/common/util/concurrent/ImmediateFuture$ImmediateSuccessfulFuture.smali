.class Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;
.super Lccsancom/google/common/util/concurrent/ImmediateFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateSuccessfulFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/ImmediateFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final NULL:Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->NULL:Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    return-void
.end method

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

    .line 78
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/ImmediateFuture;-><init>()V

    .line 79
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    .local p0, "this":Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;, "Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status=SUCCESS, result=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
