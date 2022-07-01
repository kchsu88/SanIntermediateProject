.class Lccsancom/google/common/collect/Lists$RandomAccessPartition;
.super Lccsancom/google/common/collect/Lists$Partition;
.source "Lists.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessPartition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Lists$Partition<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 681
    .local p0, "this":Lccsancom/google/common/collect/Lists$RandomAccessPartition;, "Lccsancom/google/common/collect/Lists$RandomAccessPartition<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Lists$Partition;-><init>(Ljava/util/List;I)V

    .line 682
    return-void
.end method
