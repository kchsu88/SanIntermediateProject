.class final Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;
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
    name = "LinkedHashSetSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Supplier<",
        "Ljava/util/Set<",
        "TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final expectedValuesPerKey:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedValuesPerKey"    # I

    .line 228
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;, "Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->expectedValuesPerKey:I

    .line 230
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 225
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;, "Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier<TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;, "Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier<TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;->expectedValuesPerKey:I

    invoke-static {v0}, Lccsancom/google/common/collect/Platform;->newLinkedHashSetWithExpectedSize(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
