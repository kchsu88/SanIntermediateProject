.class Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;
.super Lccsancom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LargeLazyStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/Striped$PowerOfTwoStriped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final locks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final size:I

.field final supplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILccsancom/google/common/base/Supplier;)V
    .locals 2
    .param p1, "stripes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsancom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 515
    .local p0, "this":Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;, "Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped<TL;>;"
    .local p2, "supplier":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<TL;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    .line 516
    iget v0, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->mask:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget v0, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->mask:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->size:I

    .line 517
    iput-object p2, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->supplier:Lccsancom/google/common/base/Supplier;

    .line 518
    new-instance v0, Lccsancom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMaker;->weakValues()Lccsancom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->locks:Ljava/util/concurrent/ConcurrentMap;

    .line 519
    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 523
    .local p0, "this":Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;, "Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped<TL;>;"
    iget v0, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->size:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->size()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 526
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    .local v0, "existing":Ljava/lang/Object;, "TL;"
    if-eqz v0, :cond_1

    .line 528
    return-object v0

    .line 530
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->supplier:Lccsancom/google/common/base/Supplier;

    invoke-interface {v1}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 531
    .local v1, "created":Ljava/lang/Object;, "TL;"
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->locks:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .locals 1

    .line 537
    .local p0, "this":Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;, "Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped<TL;>;"
    iget v0, p0, Lccsancom/google/common/util/concurrent/Striped$LargeLazyStriped;->size:I

    return v0
.end method
