.class final Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;
.super Lccsancom/google/common/collect/IndexedImmutableSet;
.source "RegularImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/RegularImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/IndexedImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/RegularImmutableMultiset;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/RegularImmutableMultiset;)V
    .locals 0

    .line 74
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>.ElementSet;"
    iput-object p1, p0, Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;->this$0:Lccsancom/google/common/collect/RegularImmutableMultiset;

    invoke-direct {p0}, Lccsancom/google/common/collect/IndexedImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/RegularImmutableMultiset;Lccsancom/google/common/collect/RegularImmutableMultiset$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/RegularImmutableMultiset;
    .param p2, "x1"    # Lccsancom/google/common/collect/RegularImmutableMultiset$1;

    .line 74
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>.ElementSet;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;-><init>(Lccsancom/google/common/collect/RegularImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 83
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>.ElementSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;->this$0:Lccsancom/google/common/collect/RegularImmutableMultiset;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/RegularImmutableMultiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>.ElementSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;->this$0:Lccsancom/google/common/collect/RegularImmutableMultiset;

    iget-object v0, v0, Lccsancom/google/common/collect/RegularImmutableMultiset;->contents:Lccsancom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ObjectCountHashMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 88
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>.ElementSet;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 93
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;, "Lccsancom/google/common/collect/RegularImmutableMultiset<TE;>.ElementSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMultiset$ElementSet;->this$0:Lccsancom/google/common/collect/RegularImmutableMultiset;

    iget-object v0, v0, Lccsancom/google/common/collect/RegularImmutableMultiset;->contents:Lccsancom/google/common/collect/ObjectCountHashMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ObjectCountHashMap;->size()I

    move-result v0

    return v0
.end method
