.class final Lccsancom/google/common/reflect/TypeToken$ClassSet;
.super Lccsancom/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClassSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/reflect/TypeToken<",
        "TT;>.TypeSet;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient classes:Lccsancom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Lccsancom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/reflect/TypeToken;


# direct methods
.method private constructor <init>(Lccsancom/google/common/reflect/TypeToken;)V
    .locals 0

    .line 756
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$ClassSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lccsancom/google/common/reflect/TypeToken$TypeSet;-><init>(Lccsancom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/reflect/TypeToken;Lccsancom/google/common/reflect/TypeToken$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/reflect/TypeToken;
    .param p2, "x1"    # Lccsancom/google/common/reflect/TypeToken$1;

    .line 756
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-direct {p0, p1}, Lccsancom/google/common/reflect/TypeToken$ClassSet;-><init>(Lccsancom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 797
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$ClassSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lccsancom/google/common/reflect/TypeToken;->getTypes()Lccsancom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/reflect/TypeToken$TypeSet;->classes()Lccsancom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lccsancom/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 779
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 756
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-virtual {p0}, Lccsancom/google/common/reflect/TypeToken$ClassSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 756
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    invoke-virtual {p0}, Lccsancom/google/common/reflect/TypeToken$ClassSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 762
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$ClassSet;->classes:Lccsancom/google/common/collect/ImmutableSet;

    .line 763
    .local v0, "result":Lccsancom/google/common/collect/ImmutableSet;, "Lccsancom/google/common/collect/ImmutableSet<Lccsancom/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 765
    sget-object v1, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->FOR_GENERIC_TYPE:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    .line 767
    invoke-virtual {v1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/reflect/TypeToken$ClassSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-virtual {v1, v2}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 768
    .local v1, "collectedTypes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/reflect/TypeToken<-TT;>;>;"
    nop

    .line 769
    invoke-static {v1}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v2

    sget-object v3, Lccsancom/google/common/reflect/TypeToken$TypeFilter;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lccsancom/google/common/reflect/TypeToken$TypeFilter;

    .line 770
    invoke-virtual {v2, v3}, Lccsancom/google/common/collect/FluentIterable;->filter(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v2

    .line 771
    invoke-virtual {v2}, Lccsancom/google/common/collect/FluentIterable;->toSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/common/reflect/TypeToken$ClassSet;->classes:Lccsancom/google/common/collect/ImmutableSet;

    .line 768
    return-object v2

    .line 773
    .end local v1    # "collectedTypes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/reflect/TypeToken<-TT;>;>;"
    :cond_0
    return-object v0
.end method

.method public interfaces()Lccsancom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 793
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "classes().interfaces() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 786
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$ClassSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.ClassSet;"
    sget-object v0, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    .line 787
    invoke-virtual {v0}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->classesOnly()Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/reflect/TypeToken$ClassSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-static {v1}, Lccsancom/google/common/reflect/TypeToken;->access$300(Lccsancom/google/common/reflect/TypeToken;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 788
    .local v0, "collectedTypes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method
