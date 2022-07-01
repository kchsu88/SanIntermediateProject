.class final Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableRangeSet;
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
.method constructor <init>(Lccsancom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 793
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;, "Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm<TC;>;"
    .local p1, "ranges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 795
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 798
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;, "Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->of()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 800
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-static {}, Lccsancom/google/common/collect/Range;->all()Lccsancom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeSet;->all()Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0

    .line 803
    :cond_1
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet$SerializedForm;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
