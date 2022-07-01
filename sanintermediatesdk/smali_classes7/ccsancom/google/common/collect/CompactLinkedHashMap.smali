.class Lccsancom/google/common/collect/CompactLinkedHashMap;
.super Lccsancom/google/common/collect/CompactHashMap;
.source "CompactLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ENDPOINT:I = -0x2


# instance fields
.field private final accessOrder:Z

.field private transient firstEntry:I

.field private transient lastEntry:I

.field transient links:[J
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 87
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    .line 88
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "expectedSize"    # I

    .line 91
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/google/common/collect/CompactLinkedHashMap;-><init>(IFZ)V

    .line 92
    return-void
.end method

.method constructor <init>(IFZ)V
    .locals 0
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F
    .param p3, "accessOrder"    # Z

    .line 95
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/CompactHashMap;-><init>(IF)V

    .line 96
    iput-boolean p3, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    .line 97
    return-void
.end method

.method public static create()Lccsancom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lccsancom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0}, Lccsancom/google/common/collect/CompactLinkedHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lccsancom/google/common/collect/CompactLinkedHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lccsancom/google/common/collect/CompactLinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lccsancom/google/common/collect/CompactLinkedHashMap;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/CompactLinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method private getPredecessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .line 109
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const/16 v0, 0x20

    ushr-long v0, v1, v0

    long-to-int v1, v0

    return v1
.end method

.method private setPredecessor(II)V
    .locals 8
    .param p1, "entry"    # I
    .param p2, "pred"    # I

    .line 123
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, -0x100000000L

    .line 124
    .local v0, "predMask":J
    iget-object v2, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p1

    const-wide/16 v5, -0x1

    xor-long/2addr v5, v0

    and-long/2addr v3, v5

    int-to-long v5, p2

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 125
    return-void
.end method

.method private setSucceeds(II)V
    .locals 1
    .param p1, "pred"    # I
    .param p2, "succ"    # I

    .line 128
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 129
    iput p2, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSuccessor(II)V

    .line 133
    :goto_0
    if-ne p2, v0, :cond_1

    .line 134
    iput p1, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    goto :goto_1

    .line 136
    :cond_1
    invoke-direct {p0, p2, p1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setPredecessor(II)V

    .line 138
    :goto_1
    return-void
.end method

.method private setSuccessor(II)V
    .locals 7
    .param p1, "entry"    # I
    .param p2, "succ"    # I

    .line 118
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    const-wide v0, 0xffffffffL

    .line 119
    .local v0, "succMask":J
    iget-object v2, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p1

    const-wide/16 v5, -0x1

    xor-long/2addr v5, v0

    and-long/2addr v3, v5

    int-to-long v5, p2

    and-long/2addr v5, v0

    or-long/2addr v3, v5

    aput-wide v3, v2, p1

    .line 120
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 2
    .param p1, "index"    # I

    .line 149
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-boolean v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 153
    iget v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 154
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 155
    iget v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->modCount:I

    .line 157
    :cond_0
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 183
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public clear()V
    .locals 1

    .line 188
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/CompactHashMap;->clear()V

    .line 189
    const/4 v0, -0x2

    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 190
    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 191
    return-void
.end method

.method firstEntryIndex()I
    .locals 1

    .line 178
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return v0
.end method

.method getSuccessor(I)I
    .locals 3
    .param p1, "entry"    # I

    .line 114
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    long-to-int v0, v1

    return v0
.end method

.method init(IF)V
    .locals 3
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .line 101
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/CompactHashMap;->init(IF)V

    .line 102
    const/4 v0, -0x2

    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 103
    iput v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 104
    new-array v0, p1, [J

    iput-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 105
    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 106
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "entryIndex"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 143
    iget v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-direct {p0, v0, p1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 144
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 145
    return-void
.end method

.method moveLastEntry(I)V
    .locals 3
    .param p1, "dstIndex"    # I

    .line 161
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/CompactLinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 162
    .local v0, "srcIndex":I
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 163
    if-ge p1, v0, :cond_0

    .line 164
    invoke-direct {p0, v0}, Lccsancom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 165
    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lccsancom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lccsancom/google/common/collect/CompactHashMap;->moveLastEntry(I)V

    .line 168
    return-void
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 172
    .local p0, "this":Lccsancom/google/common/collect/CompactLinkedHashMap;, "Lccsancom/google/common/collect/CompactLinkedHashMap<TK;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 173
    iget-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/CompactLinkedHashMap;->links:[J

    .line 174
    return-void
.end method
