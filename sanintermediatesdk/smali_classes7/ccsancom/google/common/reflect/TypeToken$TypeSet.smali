.class public Lccsancom/google/common/reflect/TypeToken$TypeSet;
.super Lccsancom/google/common/collect/ForwardingSet;
.source "TypeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ForwardingSet<",
        "Lccsancom/google/common/reflect/TypeToken<",
        "-TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lccsancom/google/common/reflect/TypeToken;

.field private transient types:Lccsancom/google/common/collect/ImmutableSet;
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


# direct methods
.method constructor <init>(Lccsancom/google/common/reflect/TypeToken;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/reflect/TypeToken;

    .line 661
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$TypeSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method public classes()Lccsancom/google/common/reflect/TypeToken$TypeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 670
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    new-instance v0, Lccsancom/google/common/reflect/TypeToken$ClassSet;

    iget-object v1, p0, Lccsancom/google/common/reflect/TypeToken$TypeSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/reflect/TypeToken$ClassSet;-><init>(Lccsancom/google/common/reflect/TypeToken;Lccsancom/google/common/reflect/TypeToken$1;)V

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 657
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    invoke-virtual {p0}, Lccsancom/google/common/reflect/TypeToken$TypeSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 657
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    invoke-virtual {p0}, Lccsancom/google/common/reflect/TypeToken$TypeSet;->delegate()Ljava/util/Set;

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

    .line 675
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$TypeSet;->types:Lccsancom/google/common/collect/ImmutableSet;

    .line 676
    .local v0, "filteredTypes":Lccsancom/google/common/collect/ImmutableSet;, "Lccsancom/google/common/collect/ImmutableSet<Lccsancom/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 679
    sget-object v1, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->FOR_GENERIC_TYPE:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    iget-object v2, p0, Lccsancom/google/common/reflect/TypeToken$TypeSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    .line 680
    invoke-virtual {v1, v2}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 681
    .local v1, "collectedTypes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/reflect/TypeToken<-TT;>;>;"
    nop

    .line 682
    invoke-static {v1}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v2

    sget-object v3, Lccsancom/google/common/reflect/TypeToken$TypeFilter;->IGNORE_TYPE_VARIABLE_OR_WILDCARD:Lccsancom/google/common/reflect/TypeToken$TypeFilter;

    .line 683
    invoke-virtual {v2, v3}, Lccsancom/google/common/collect/FluentIterable;->filter(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v2

    .line 684
    invoke-virtual {v2}, Lccsancom/google/common/collect/FluentIterable;->toSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/common/reflect/TypeToken$TypeSet;->types:Lccsancom/google/common/collect/ImmutableSet;

    .line 681
    return-object v2

    .line 686
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

    .line 665
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    new-instance v0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;

    iget-object v1, p0, Lccsancom/google/common/reflect/TypeToken$TypeSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-direct {v0, v1, p0}, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;-><init>(Lccsancom/google/common/reflect/TypeToken;Lccsancom/google/common/reflect/TypeToken$TypeSet;)V

    return-object v0
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

    .line 694
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$TypeSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    sget-object v0, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    iget-object v1, p0, Lccsancom/google/common/reflect/TypeToken$TypeSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    .line 695
    invoke-static {v1}, Lccsancom/google/common/reflect/TypeToken;->access$300(Lccsancom/google/common/reflect/TypeToken;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 696
    .local v0, "collectedTypes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method
