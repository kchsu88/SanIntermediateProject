.class Lccsancom/google/common/collect/Range$RangeLexOrdering;
.super Lccsancom/google/common/collect/Ordering;
.source "Range.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeLexOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Ordering<",
        "Lccsancom/google/common/collect/Range<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lccsancom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Ordering<",
            "Lccsancom/google/common/collect/Range<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 700
    new-instance v0, Lccsancom/google/common/collect/Range$RangeLexOrdering;

    invoke-direct {v0}, Lccsancom/google/common/collect/Range$RangeLexOrdering;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/Range$RangeLexOrdering;->INSTANCE:Lccsancom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Lccsancom/google/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/Range;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "*>;",
            "Lccsancom/google/common/collect/Range<",
            "*>;)I"
        }
    .end annotation

    .line 704
    .local p1, "left":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<*>;"
    .local p2, "right":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<*>;"
    invoke-static {}, Lccsancom/google/common/collect/ComparisonChain;->start()Lccsancom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    iget-object v2, p2, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    .line 705
    invoke-virtual {v0, v1, v2}, Lccsancom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lccsancom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    iget-object v2, p2, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    .line 706
    invoke-virtual {v0, v1, v2}, Lccsancom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lccsancom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Lccsancom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    .line 704
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 699
    check-cast p1, Lccsancom/google/common/collect/Range;

    check-cast p2, Lccsancom/google/common/collect/Range;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Range$RangeLexOrdering;->compare(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/Range;)I

    move-result p1

    return p1
.end method
