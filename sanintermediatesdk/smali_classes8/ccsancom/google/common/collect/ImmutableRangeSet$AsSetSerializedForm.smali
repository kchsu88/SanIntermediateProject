.class Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsSetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final domain:Lccsancom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final ranges:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 674
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;, "Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm<TC;>;"
    .local p1, "ranges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TC;>;>;"
    .local p2, "domain":Lccsancom/google/common/collect/DiscreteDomain;, "Lccsancom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 676
    iput-object p2, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    .line 677
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 680
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;, "Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm<TC;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;->asSet(Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
