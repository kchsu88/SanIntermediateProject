.class public abstract Lccsancom/google/common/collect/MultimapBuilder;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;,
        Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;,
        Lccsancom/google/common/collect/MultimapBuilder$ListMultimapBuilder;,
        Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;,
        Lccsancom/google/common/collect/MultimapBuilder$EnumSetSupplier;,
        Lccsancom/google/common/collect/MultimapBuilder$TreeSetSupplier;,
        Lccsancom/google/common/collect/MultimapBuilder$LinkedHashSetSupplier;,
        Lccsancom/google/common/collect/MultimapBuilder$HashSetSupplier;,
        Lccsancom/google/common/collect/MultimapBuilder$LinkedListSupplier;,
        Lccsancom/google/common/collect/MultimapBuilder$ArrayListSupplier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPECTED_KEYS:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder;, "Lccsancom/google/common/collect/MultimapBuilder<TK0;TV0;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/MultimapBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/MultimapBuilder$1;

    .line 64
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder;, "Lccsancom/google/common/collect/MultimapBuilder<TK0;TV0;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/MultimapBuilder;-><init>()V

    return-void
.end method

.method public static enumKeys(Ljava/lang/Class;)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Enum<",
            "TK0;>;>(",
            "Ljava/lang/Class<",
            "TK0;>;)",
            "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "TK0;>;"
        }
    .end annotation

    .line 171
    .local p0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK0;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v0, Lccsancom/google/common/collect/MultimapBuilder$4;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/MultimapBuilder$4;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static hashKeys()Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    const/16 v0, 0x8

    invoke-static {v0}, Lccsancom/google/common/collect/MultimapBuilder;->hashKeys(I)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static hashKeys(I)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .param p0, "expectedKeys"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 87
    new-instance v0, Lccsancom/google/common/collect/MultimapBuilder$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/MultimapBuilder$1;-><init>(I)V

    return-object v0
.end method

.method public static linkedHashKeys()Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 104
    const/16 v0, 0x8

    invoke-static {v0}, Lccsancom/google/common/collect/MultimapBuilder;->linkedHashKeys(I)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static linkedHashKeys(I)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .param p0, "expectedKeys"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 118
    new-instance v0, Lccsancom/google/common/collect/MultimapBuilder$2;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/MultimapBuilder$2;-><init>(I)V

    return-object v0
.end method

.method public static treeKeys()Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/MultimapBuilder;->treeKeys(Ljava/util/Comparator;)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static treeKeys(Ljava/util/Comparator;)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys<",
            "TK0;>;"
        }
    .end annotation

    .line 155
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK0;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Lccsancom/google/common/collect/MultimapBuilder$3;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/MultimapBuilder$3;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public abstract build()Lccsancom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public build(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lccsancom/google/common/collect/MultimapBuilder;, "Lccsancom/google/common/collect/MultimapBuilder<TK0;TV0;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MultimapBuilder;->build()Lccsancom/google/common/collect/Multimap;

    move-result-object v0

    .line 410
    .local v0, "result":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Multimap;->putAll(Lccsancom/google/common/collect/Multimap;)Z

    .line 411
    return-object v0
.end method
