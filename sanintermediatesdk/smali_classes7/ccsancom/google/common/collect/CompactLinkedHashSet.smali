.class Lccsancom/google/common/collect/CompactLinkedHashSet;
.super Lccsancom/google/common/collect/CompactHashSet;
.source "CompactLinkedHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/CompactHashSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private transient firstEntry:I

.field private transient lastEntry:I

.field private transient predecessor:[I
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient successor:[I
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/CompactHashSet;-><init>()V

    .line 116
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 119
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/CompactHashSet;-><init>(I)V

    .line 120
    return-void
.end method

.method public static create()Lccsancom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lccsancom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0}, Lccsancom/google/common/collect/CompactLinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lccsancom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 62
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lccsancom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lccsancom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 63
    .local v0, "set":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lccsancom/google/common/collect/CompactLinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lccsancom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lccsancom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 75
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lccsancom/google/common/collect/CompactLinkedHashSet;->createWithExpectedSize(I)Lccsancom/google/common/collect/CompactLinkedHashSet;

    move-result-object v0

    .line 76
    .local v0, "set":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lccsancom/google/common/collect/CompactLinkedHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lccsancom/google/common/collect/CompactLinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lccsancom/google/common/collect/CompactLinkedHashSet;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/CompactLinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method private succeeds(II)V
    .locals 2
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 135
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 136
    iput p2, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    goto :goto_0

    .line 138
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput p2, v1, p1

    .line 141
    :goto_0
    if-ne p2, v0, :cond_1

    .line 142
    iput p1, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    goto :goto_1

    .line 144
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aput p1, v0, p2

    .line 146
    :goto_1
    return-void
.end method


# virtual methods
.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 208
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 2

    .line 171
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/CompactHashSet;->clear()V

    .line 172
    const/4 v0, -0x2

    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 173
    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 174
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 175
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 176
    return-void
.end method

.method firstEntryIndex()I
    .locals 1

    .line 203
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 1
    .param p1, "entryIndex"    # I

    .line 213
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v0, v0, p1

    return v0
.end method

.method init(IF)V
    .locals 2
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .line 124
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/CompactHashSet;->init(IF)V

    .line 125
    new-array v0, p1, [I

    iput-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 126
    new-array v1, p1, [I

    iput-object v1, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 128
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 129
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 130
    const/4 v0, -0x2

    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->firstEntry:I

    .line 131
    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    .line 132
    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 151
    iget v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lccsancom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 152
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 153
    return-void
.end method

.method moveEntry(I)V
    .locals 3
    .param p1, "dstIndex"    # I

    .line 157
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/CompactLinkedHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 158
    .local v0, "srcIndex":I
    invoke-super {p0, p1}, Lccsancom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 160
    iget-object v1, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, p1

    iget-object v2, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v2, v2, p1

    invoke-direct {p0, v1, v2}, Lccsancom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 161
    if-eq v0, p1, :cond_0

    .line 162
    iget-object v1, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    aget v1, v1, v0

    invoke-direct {p0, v1, p1}, Lccsancom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 163
    iget-object v1, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lccsancom/google/common/collect/CompactLinkedHashSet;->succeeds(II)V

    .line 165
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 166
    iget-object v1, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    aput v2, v1, v0

    .line 167
    return-void
.end method

.method resizeEntries(I)V
    .locals 3
    .param p1, "newCapacity"    # I

    .line 180
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 181
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    array-length v1, v0

    .line 182
    .local v1, "oldCapacity":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    .line 183
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    .line 185
    if-ge v1, p1, :cond_0

    .line 186
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->predecessor:[I

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 187
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashSet;->successor:[I

    invoke-static {v0, v1, p1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 189
    :cond_0
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 193
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashSet;, "Lccsancom/google/common/collect/CompactLinkedHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
