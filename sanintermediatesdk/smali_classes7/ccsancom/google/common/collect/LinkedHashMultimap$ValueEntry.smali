.class final Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;
.super Lccsancom/google/common/collect/ImmutableEntry;
.source "LinkedHashMultimap.java"

# interfaces
.implements Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ValueEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextInValueBucket:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field predecessorInMultimap:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field predecessorInValueSet:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final smearedValueHash:I

.field successorInMultimap:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field successorInValueSet:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "smearedValueHash"    # I
    .param p4    # Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p4, "nextInValueBucket":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    iput p3, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    .line 167
    iput-object p4, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->nextInValueBucket:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 168
    return-void
.end method


# virtual methods
.method public getPredecessorInMultimap()Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method public getPredecessorInValueSet()Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method public getSuccessorInMultimap()Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInValueSet:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    return-object v0
.end method

.method matchesValue(Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "smearedVHash"    # I

    .line 171
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->smearedValueHash:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPredecessorInMultimap(Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 207
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "multimapPredecessor":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInMultimap:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 208
    return-void
.end method

.method public setPredecessorInValueSet(Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 186
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->predecessorInValueSet:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 187
    return-void
.end method

.method public setSuccessorInMultimap(Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "multimapSuccessor":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInMultimap:Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;

    .line 204
    return-void
.end method

.method public setSuccessorInValueSet(Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 191
    .local p0, "this":Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;, "Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink<TK;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedHashMultimap$ValueEntry;->successorInValueSet:Lccsancom/google/common/collect/LinkedHashMultimap$ValueSetLink;

    .line 192
    return-void
.end method