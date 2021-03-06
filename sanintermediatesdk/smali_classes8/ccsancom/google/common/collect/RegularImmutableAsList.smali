.class Lccsancom/google/common/collect/RegularImmutableAsList;
.super Lccsancom/google/common/collect/ImmutableAsList;
.source "RegularImmutableAsList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableAsList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lccsancom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final delegateList:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableCollection;Lccsancom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TE;>;",
            "Lccsancom/google/common/collect/ImmutableList<",
            "+TE;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    .local p2, "delegateList":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<+TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableAsList;-><init>()V

    .line 35
    iput-object p1, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegate:Lccsancom/google/common/collect/ImmutableCollection;

    .line 36
    iput-object p2, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegateList:Lccsancom/google/common/collect/ImmutableList;

    .line 37
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;)V
    .locals 1
    .param p2, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    invoke-static {p2}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/RegularImmutableAsList;-><init>(Lccsancom/google/common/collect/ImmutableCollection;Lccsancom/google/common/collect/ImmutableList;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/ImmutableCollection;[Ljava/lang/Object;I)V
    .locals 1
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<TE;>;"
    invoke-static {p2, p3}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/RegularImmutableAsList;-><init>(Lccsancom/google/common/collect/ImmutableCollection;Lccsancom/google/common/collect/ImmutableList;)V

    .line 45
    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 65
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegateList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method delegateCollection()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TE;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegate:Lccsancom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method delegateList()Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableList<",
            "+TE;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegateList:Lccsancom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegateList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArray()[Ljava/lang/Object;
    .locals 1

    .line 70
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegateList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->internalArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method internalArrayEnd()I
    .locals 1

    .line 80
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegateList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->internalArrayEnd()I

    move-result v0

    return v0
.end method

.method internalArrayStart()I
    .locals 1

    .line 75
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegateList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->internalArrayStart()I

    move-result v0

    return v0
.end method

.method public listIterator(I)Lccsancom/google/common/collect/UnmodifiableListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableAsList;->delegateList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableList;->listIterator(I)Lccsancom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 28
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableAsList;, "Lccsancom/google/common/collect/RegularImmutableAsList<TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/RegularImmutableAsList;->listIterator(I)Lccsancom/google/common/collect/UnmodifiableListIterator;

    move-result-object p1

    return-object p1
.end method
