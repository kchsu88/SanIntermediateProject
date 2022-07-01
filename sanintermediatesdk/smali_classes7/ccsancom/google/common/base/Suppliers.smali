.class public final Lccsancom/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/base/Suppliers$SupplierFunctionImpl;,
        Lccsancom/google/common/base/Suppliers$SupplierFunction;,
        Lccsancom/google/common/base/Suppliers$ThreadSafeSupplier;,
        Lccsancom/google/common/base/Suppliers$SupplierOfInstance;,
        Lccsancom/google/common/base/Suppliers$ExpiringMemoizingSupplier;,
        Lccsancom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;,
        Lccsancom/google/common/base/Suppliers$MemoizingSupplier;,
        Lccsancom/google/common/base/Suppliers$SupplierComposition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lccsancom/google/common/base/Function;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TF;TT;>;",
            "Lccsancom/google/common/base/Supplier<",
            "TF;>;)",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TF;TT;>;"
    .local p1, "supplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<TF;>;"
    new-instance v0, Lccsancom/google/common/base/Suppliers$SupplierComposition;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/base/Suppliers$SupplierComposition;-><init>(Lccsancom/google/common/base/Function;Lccsancom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static memoize(Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;)",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 102
    .local p0, "delegate":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<TT;>;"
    instance-of v0, p0, Lccsancom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    if-nez v0, :cond_2

    instance-of v0, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lccsancom/google/common/base/Supplier;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lccsancom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;-><init>(Lccsancom/google/common/base/Supplier;)V

    :goto_0
    return-object v0

    .line 104
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static memoizeWithExpiration(Lccsancom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)Lccsancom/google/common/base/Supplier;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 212
    .local p0, "delegate":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<TT;>;"
    new-instance v0, Lccsancom/google/common/base/Suppliers$ExpiringMemoizingSupplier;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsancom/google/common/base/Suppliers$ExpiringMemoizingSupplier;-><init>(Lccsancom/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static ofInstance(Ljava/lang/Object;)Lccsancom/google/common/base/Supplier;
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
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 268
    .local p0, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsancom/google/common/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static supplierFunction()Lccsancom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/base/Function<",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 345
    sget-object v0, Lccsancom/google/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lccsancom/google/common/base/Suppliers$SupplierFunctionImpl;

    .line 346
    .local v0, "sf":Lccsancom/google/common/base/Suppliers$SupplierFunction;, "Lccsancom/google/common/base/Suppliers$SupplierFunction<TT;>;"
    return-object v0
.end method

.method public static synchronizedSupplier(Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;)",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 310
    .local p0, "delegate":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<TT;>;"
    new-instance v0, Lccsancom/google/common/base/Suppliers$ThreadSafeSupplier;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Suppliers$ThreadSafeSupplier;-><init>(Lccsancom/google/common/base/Supplier;)V

    return-object v0
.end method
