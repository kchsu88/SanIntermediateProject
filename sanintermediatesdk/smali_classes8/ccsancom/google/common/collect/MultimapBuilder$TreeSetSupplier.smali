.class final Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"

# interfaces
.implements Lccsancom/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TreeSetSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Supplier<",
        "Ljava/util/SortedSet<",
        "TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier;, "Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier<TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier;->comparator:Ljava/util/Comparator;

    .line 243
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 238
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier;, "Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier<TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier;->get()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 247
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier;, "Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier<TV;>;"
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
