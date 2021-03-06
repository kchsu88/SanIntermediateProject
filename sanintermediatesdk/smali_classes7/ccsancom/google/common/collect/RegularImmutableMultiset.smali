.class Lccsancom/google/common/collect/RegularImmutableMultiset;
.super Lccsancom/google/common/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/RegularImmutableMultiset$SerializedForm;,
        Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lccsancom/google/common/collect/RegularImmutableMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/RegularImmutableMultiset<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient contents:Lccsancom/google/common/collect/ObjectCountHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ObjectCountHashMap<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient elementSet:Lccsancom/google/common/collect/ImmutableSet;
    .annotation runtime Lccsancom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableMultiset;

    .line 36
    invoke-static {}, Lccsancom/google/common/collect/ObjectCountHashMap;->create()Lccsancom/google/common/collect/ObjectCountHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/RegularImmutableMultiset;-><init>(Lccsancom/google/common/collect/ObjectCountHashMap;)V

    sput-object v0, Lccsancom/google/common/collect/RegularImmutableMultiset;->EMPTY:Lccsancom/google/common/collect/RegularImmutableMultiset;

    .line 35
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/ObjectCountHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ObjectCountHashMap<",
            "TE;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>;"
    .local p1, "contents":Lccsancom/google/common/collect/ObjectCountHashMap;, "Lccsancom/google/common/collect/ObjectCountHashMap<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 44
    iput-object p1, p0, Lccsancom/google/common/collect/RegularImmutableMultiset;->contents:Lccsancom/google/common/collect/ObjectCountHashMap;

    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .local v0, "size":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 47
    invoke-virtual {p1, v2}, Lccsancom/google/common/collect/ObjectCountHashMap;->getValue(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "i":I
    :cond_0
    invoke-static {v0, v1}, Lccsancom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    iput v2, p0, Lccsancom/google/common/collect/RegularImmutableMultiset;->size:I

    .line 50
    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 59
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMultiset;->contents:Lccsancom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ObjectCountHashMap;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public elementSet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMultiset;->elementSet:Lccsancom/google/common/collect/ImmutableSet;

    .line 70
    .local v0, "result":Lccsancom/google/common/collect/ImmutableSet;, "Lccsancom/google/common/collect/ImmutableSet<TE;>;"
    if-nez v0, :cond_0

    new-instance v1, Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;-><init>(Lccsancom/google/common/collect/RegularImmutableMultiset;Lccsancom/google/common/collect/RegularImmutableMultiset$1;)V

    iput-object v1, p0, Lccsancom/google/common/collect/RegularImmutableMultiset;->elementSet:Lccsancom/google/common/collect/ImmutableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 32
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/RegularImmutableMultiset;->elementSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMultiset;->contents:Lccsancom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ObjectCountHashMap;->getEntry(I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 64
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>;"
    iget v0, p0, Lccsancom/google/common/collect/RegularImmutableMultiset;->size:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 134
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/RegularImmutableMultiset$SerializedForm;-><init>(Lccsancom/google/common/collect/Multiset;)V

    return-object v0
.end method
