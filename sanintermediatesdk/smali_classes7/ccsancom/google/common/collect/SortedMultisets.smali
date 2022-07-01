.class final Lccsancom/google/common/collect/SortedMultisets;
.super Ljava/lang/Object;
.source "SortedMultisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;,
        Lccsancom/google/common/collect/SortedMultisets$ElementSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/Multiset$Entry;

    .line 39
    invoke-static {p0}, Lccsancom/google/common/collect/SortedMultisets;->getElementOrThrow(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/Multiset$Entry;

    .line 39
    invoke-static {p0}, Lccsancom/google/common/collect/SortedMultisets;->getElementOrNull(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getElementOrNull(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lccsancom/google/common/collect/Multiset$Entry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 169
    .local p0, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getElementOrThrow(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 162
    .local p0, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
