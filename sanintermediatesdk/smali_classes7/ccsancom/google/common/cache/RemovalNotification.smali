.class public final Lccsancom/google/common/cache/RemovalNotification;
.super Ljava/util/AbstractMap$SimpleImmutableEntry;
.source "RemovalNotification.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap$SimpleImmutableEntry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Lccsancom/google/common/cache/RemovalCause;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lccsancom/google/common/cache/RemovalCause;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "cause"    # Lccsancom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lccsancom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lccsancom/google/common/cache/RemovalNotification;, "Lccsancom/google/common/cache/RemovalNotification<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/RemovalCause;

    iput-object v0, p0, Lccsancom/google/common/cache/RemovalNotification;->cause:Lccsancom/google/common/cache/RemovalCause;

    .line 53
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Lccsancom/google/common/cache/RemovalCause;)Lccsancom/google/common/cache/RemovalNotification;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "cause"    # Lccsancom/google/common/cache/RemovalCause;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lccsancom/google/common/cache/RemovalCause;",
            ")",
            "Lccsancom/google/common/cache/RemovalNotification<",
            "TK;TV;>;"
        }
    .end annotation

    .line 47
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/cache/RemovalNotification;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/google/common/cache/RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lccsancom/google/common/cache/RemovalCause;)V

    return-object v0
.end method


# virtual methods
.method public getCause()Lccsancom/google/common/cache/RemovalCause;
    .locals 1

    .line 57
    .local p0, "this":Lccsancom/google/common/cache/RemovalNotification;, "Lccsancom/google/common/cache/RemovalNotification<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/RemovalNotification;->cause:Lccsancom/google/common/cache/RemovalCause;

    return-object v0
.end method

.method public wasEvicted()Z
    .locals 1

    .line 65
    .local p0, "this":Lccsancom/google/common/cache/RemovalNotification;, "Lccsancom/google/common/cache/RemovalNotification<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/RemovalNotification;->cause:Lccsancom/google/common/cache/RemovalCause;

    invoke-virtual {v0}, Lccsancom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v0

    return v0
.end method
