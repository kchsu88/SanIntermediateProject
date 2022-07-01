.class Lccsancom/google/common/collect/ImmutableMultimap$2;
.super Lccsancom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ImmutableMultimap;->valueIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/UnmodifiableIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableMultimap;

.field valueCollectionItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field valueItr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMultimap;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/ImmutableMultimap;

    .line 669
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$2;, "Lccsancom/google/common/collect/ImmutableMultimap$2;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->this$0:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lccsancom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 670
    iget-object v0, p1, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->values()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableCollection;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->valueCollectionItr:Ljava/util/Iterator;

    .line 671
    invoke-static {}, Lccsancom/google/common/collect/Iterators;->emptyIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 675
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$2;, "Lccsancom/google/common/collect/ImmutableMultimap$2;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->valueCollectionItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 680
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$2;, "Lccsancom/google/common/collect/ImmutableMultimap$2;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->valueCollectionItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableCollection;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    .line 683
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$2;->valueItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
