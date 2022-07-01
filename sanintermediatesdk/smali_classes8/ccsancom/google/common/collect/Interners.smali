.class public final Lccsancom/google/common/collect/Interners;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/Interners$InternerFunction;,
        Lccsancom/google/common/collect/Interners$InternerImpl;,
        Lccsancom/google/common/collect/Interners$InternerBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFunction(Lccsancom/google/common/collect/Interner;)Lccsancom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Interner<",
            "TE;>;)",
            "Lccsancom/google/common/base/Function<",
            "TE;TE;>;"
        }
    .end annotation

    .line 157
    .local p0, "interner":Lccsancom/google/common/collect/Interner;, "Lccsancom/google/common/collect/Interner<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/Interners$InternerFunction;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Interner;

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/Interners$InternerFunction;-><init>(Lccsancom/google/common/collect/Interner;)V

    return-object v0
.end method

.method public static newBuilder()Lccsancom/google/common/collect/Interners$InternerBuilder;
    .locals 2

    .line 90
    new-instance v0, Lccsancom/google/common/collect/Interners$InternerBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/Interners$InternerBuilder;-><init>(Lccsancom/google/common/collect/Interners$1;)V

    return-object v0
.end method

.method public static newStrongInterner()Lccsancom/google/common/collect/Interner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 99
    invoke-static {}, Lccsancom/google/common/collect/Interners;->newBuilder()Lccsancom/google/common/collect/Interners$InternerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/Interners$InternerBuilder;->strong()Lccsancom/google/common/collect/Interners$InternerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/Interners$InternerBuilder;->build()Lccsancom/google/common/collect/Interner;

    move-result-object v0

    return-object v0
.end method

.method public static newWeakInterner()Lccsancom/google/common/collect/Interner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 110
    invoke-static {}, Lccsancom/google/common/collect/Interners;->newBuilder()Lccsancom/google/common/collect/Interners$InternerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/Interners$InternerBuilder;->weak()Lccsancom/google/common/collect/Interners$InternerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/Interners$InternerBuilder;->build()Lccsancom/google/common/collect/Interner;

    move-result-object v0

    return-object v0
.end method
