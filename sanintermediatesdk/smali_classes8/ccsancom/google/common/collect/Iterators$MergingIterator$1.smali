.class Lccsancom/google/common/collect/Iterators$MergingIterator$1;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Iterators$MergingIterator;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsancom/google/common/collect/PeekingIterator<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Iterators$MergingIterator;

.field final synthetic val$itemComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Iterators$MergingIterator;Ljava/util/Comparator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Iterators$MergingIterator;

    .line 1258
    .local p0, "this":Lccsancom/google/common/collect/Iterators$MergingIterator$1;, "Lccsancom/google/common/collect/Iterators$MergingIterator$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/Iterators$MergingIterator$1;->this$0:Lccsancom/google/common/collect/Iterators$MergingIterator;

    iput-object p2, p0, Lccsancom/google/common/collect/Iterators$MergingIterator$1;->val$itemComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lccsancom/google/common/collect/PeekingIterator;Lccsancom/google/common/collect/PeekingIterator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/PeekingIterator<",
            "TT;>;",
            "Lccsancom/google/common/collect/PeekingIterator<",
            "TT;>;)I"
        }
    .end annotation

    .line 1261
    .local p0, "this":Lccsancom/google/common/collect/Iterators$MergingIterator$1;, "Lccsancom/google/common/collect/Iterators$MergingIterator$1;"
    .local p1, "o1":Lccsancom/google/common/collect/PeekingIterator;, "Lccsancom/google/common/collect/PeekingIterator<TT;>;"
    .local p2, "o2":Lccsancom/google/common/collect/PeekingIterator;, "Lccsancom/google/common/collect/PeekingIterator<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Iterators$MergingIterator$1;->val$itemComparator:Ljava/util/Comparator;

    invoke-interface {p1}, Lccsancom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lccsancom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1258
    .local p0, "this":Lccsancom/google/common/collect/Iterators$MergingIterator$1;, "Lccsancom/google/common/collect/Iterators$MergingIterator$1;"
    check-cast p1, Lccsancom/google/common/collect/PeekingIterator;

    check-cast p2, Lccsancom/google/common/collect/PeekingIterator;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Iterators$MergingIterator$1;->compare(Lccsancom/google/common/collect/PeekingIterator;Lccsancom/google/common/collect/PeekingIterator;)I

    move-result p1

    return p1
.end method
