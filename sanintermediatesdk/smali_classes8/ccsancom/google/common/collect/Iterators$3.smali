.class final Lccsancom/google/common/collect/Iterators$3;
.super Lccsancom/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Iterators;->consumingForArray([Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic val$elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lccsancom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 451
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/google/common/collect/Iterators$3;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 455
    iget v0, p0, Lccsancom/google/common/collect/Iterators$3;->index:I

    iget-object v1, p0, Lccsancom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lccsancom/google/common/collect/Iterators$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lccsancom/google/common/collect/Iterators$3;->val$elements:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/Iterators$3;->index:I

    aget-object v2, v0, v1

    .line 464
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 465
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsancom/google/common/collect/Iterators$3;->index:I

    .line 466
    return-object v2

    .line 461
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
