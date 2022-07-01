.class public abstract Lccsancom/google/common/base/Optional;
.super Ljava/lang/Object;
.source "Optional.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    .local p0, "this":Lccsancom/google/common/base/Optional;, "Lccsancom/google/common/base/Optional<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absent()Lccsancom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Lccsancom/google/common/base/Absent;->withType()Lccsancom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lccsancom/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 114
    .local p0, "nullableReference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/base/Present;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lccsancom/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsancom/google/common/base/Present;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/base/Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/base/Optional<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 288
    .local p0, "optionals":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/base/Optional<+TT;>;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v0, Lccsancom/google/common/base/Optional$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Optional$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public abstract asSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isPresent()Z
.end method

.method public abstract or(Lccsancom/google/common/base/Optional;)Lccsancom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Optional<",
            "+TT;>;)",
            "Lccsancom/google/common/base/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract or(Lccsancom/google/common/base/Supplier;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract or(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract orNull()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract transform(Lccsancom/google/common/base/Function;)Lccsancom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TT;TV;>;)",
            "Lccsancom/google/common/base/Optional<",
            "TV;>;"
        }
    .end annotation
.end method
