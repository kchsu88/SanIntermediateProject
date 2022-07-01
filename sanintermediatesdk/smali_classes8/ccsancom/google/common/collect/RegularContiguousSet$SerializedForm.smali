.class final Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;
.super Ljava/lang/Object;
.source "RegularContiguousSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/RegularContiguousSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
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
.field final domain:Lccsancom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field

.field final range:Lccsancom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;, "Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm<TC;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    .local p2, "domain":Lccsancom/google/common/collect/DiscreteDomain;, "Lccsancom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;->range:Lccsancom/google/common/collect/Range;

    .line 223
    iput-object p2, p0, Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    .line 224
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/DiscreteDomain;Lccsancom/google/common/collect/RegularContiguousSet$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/Range;
    .param p2, "x1"    # Lccsancom/google/common/collect/DiscreteDomain;
    .param p3, "x2"    # Lccsancom/google/common/collect/RegularContiguousSet$1;

    .line 217
    .local p0, "this":Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;, "Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm<TC;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;-><init>(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/DiscreteDomain;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 227
    .local p0, "this":Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;, "Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm<TC;>;"
    new-instance v0, Lccsancom/google/common/collect/RegularContiguousSet;

    iget-object v1, p0, Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;->range:Lccsancom/google/common/collect/Range;

    iget-object v2, p0, Lccsancom/google/common/collect/RegularContiguousSet$SerializedForm;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/RegularContiguousSet;-><init>(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/DiscreteDomain;)V

    return-object v0
.end method
