.class Lccsancom/google/common/base/Suppliers$MemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lccsancom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemoizingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Supplier<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile transient initialized:Z

.field transient value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lccsancom/google/common/base/Suppliers$MemoizingSupplier;, "Lccsancom/google/common/base/Suppliers$MemoizingSupplier<TT;>;"
    .local p1, "delegate":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Supplier;

    iput-object v0, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lccsancom/google/common/base/Supplier;

    .line 121
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lccsancom/google/common/base/Suppliers$MemoizingSupplier;, "Lccsancom/google/common/base/Suppliers$MemoizingSupplier<TT;>;"
    iget-boolean v0, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    if-nez v0, :cond_1

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lccsancom/google/common/base/Supplier;

    invoke-interface {v0}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "t":Ljava/lang/Object;, "TT;"
    iput-object v0, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    .line 132
    monitor-exit p0

    return-object v0

    .line 134
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 136
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 141
    .local p0, "this":Lccsancom/google/common/base/Suppliers$MemoizingSupplier;, "Lccsancom/google/common/base/Suppliers$MemoizingSupplier<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.memoize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<supplier that returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lccsancom/google/common/base/Supplier;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
