.class public final Lccsancom/google/common/base/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/base/Functions$SupplierFunction;,
        Lccsancom/google/common/base/Functions$ConstantFunction;,
        Lccsancom/google/common/base/Functions$PredicateFunction;,
        Lccsancom/google/common/base/Functions$FunctionComposition;,
        Lccsancom/google/common/base/Functions$ForMapWithDefault;,
        Lccsancom/google/common/base/Functions$FunctionForMapNoDefault;,
        Lccsancom/google/common/base/Functions$IdentityFunction;,
        Lccsancom/google/common/base/Functions$ToStringFunction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lccsancom/google/common/base/Function;Lccsancom/google/common/base/Function;)Lccsancom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "TB;TC;>;",
            "Lccsancom/google/common/base/Function<",
            "TA;+TB;>;)",
            "Lccsancom/google/common/base/Function<",
            "TA;TC;>;"
        }
    .end annotation

    .line 224
    .local p0, "g":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<TB;TC;>;"
    .local p1, "f":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<TA;+TB;>;"
    new-instance v0, Lccsancom/google/common/base/Functions$FunctionComposition;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/base/Functions$FunctionComposition;-><init>(Lccsancom/google/common/base/Function;Lccsancom/google/common/base/Function;)V

    return-object v0
.end method

.method public static constant(Ljava/lang/Object;)Lccsancom/google/common/base/Function;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lccsancom/google/common/base/Function<",
            "Ljava/lang/Object;",
            "TE;>;"
        }
    .end annotation

    .line 320
    .local p0, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Lccsancom/google/common/base/Functions$ConstantFunction;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Functions$ConstantFunction;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;)Lccsancom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lccsancom/google/common/base/Function<",
            "TK;TV;>;"
        }
    .end annotation

    .line 116
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/base/Functions$FunctionForMapNoDefault;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Functions$FunctionForMapNoDefault;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;Ljava/lang/Object;)Lccsancom/google/common/base/Function;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;TV;)",
            "Lccsancom/google/common/base/Function<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;+TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/base/Functions$ForMapWithDefault;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/base/Functions$ForMapWithDefault;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forPredicate(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Predicate<",
            "TT;>;)",
            "Lccsancom/google/common/base/Function<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 273
    .local p0, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<TT;>;"
    new-instance v0, Lccsancom/google/common/base/Functions$PredicateFunction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/base/Functions$PredicateFunction;-><init>(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Functions$1;)V

    return-object v0
.end method

.method public static forSupplier(Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/base/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;)",
            "Lccsancom/google/common/base/Function<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .line 365
    .local p0, "supplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<TT;>;"
    new-instance v0, Lccsancom/google/common/base/Functions$SupplierFunction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/base/Functions$SupplierFunction;-><init>(Lccsancom/google/common/base/Supplier;Lccsancom/google/common/base/Functions$1;)V

    return-object v0
.end method

.method public static identity()Lccsancom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/base/Function<",
            "TE;TE;>;"
        }
    .end annotation

    .line 83
    sget-object v0, Lccsancom/google/common/base/Functions$IdentityFunction;->INSTANCE:Lccsancom/google/common/base/Functions$IdentityFunction;

    return-object v0
.end method

.method public static toStringFunction()Lccsancom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lccsancom/google/common/base/Functions$ToStringFunction;->INSTANCE:Lccsancom/google/common/base/Functions$ToStringFunction;

    return-object v0
.end method
