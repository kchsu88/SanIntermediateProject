.class final Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;
.super Lccsancom/google/common/collect/IndexedImmutableSet;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/IndexedImmutableSet<",
        "Lccsancom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableMultiset;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/ImmutableMultiset;)V
    .locals 0

    .line 319
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lccsancom/google/common/collect/IndexedImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/ImmutableMultiset;Lccsancom/google/common/collect/ImmutableMultiset$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/ImmutableMultiset;
    .param p2, "x1"    # Lccsancom/google/common/collect/ImmutableMultiset$1;

    .line 319
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lccsancom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 337
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    instance-of v0, p1, Lccsancom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 338
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Multiset$Entry;

    .line 339
    .local v0, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 340
    return v1

    .line 342
    :cond_0
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableMultiset;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 343
    .local v2, "count":I
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 345
    .end local v0    # "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "count":I
    :cond_2
    return v1
.end method

.method get(I)Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMultiset;->getEntry(I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 318
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;->get(I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 350
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 322
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 332
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultiset;->elementSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 356
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;, "Lccsancom/google/common/collect/ImmutableMultiset<TE;>.EntrySet;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMultiset$EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableMultiset$EntrySetSerializedForm;-><init>(Lccsancom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
