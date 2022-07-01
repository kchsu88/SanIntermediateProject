.class final Lccsancom/google/common/reflect/TypeToken$InterfaceSet;
.super Lccsancom/google/common/reflect/TypeToken$TypeSet;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterfaceSet"
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
.field private final transient allTypes:Lccsancom/google/common/reflect/TypeToken$TypeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation
.end field

.field private transient interfaces:Lccsancom/google/common/collect/ImmutableSet;
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
.method constructor <init>(Lccsancom/google/common/reflect/TypeToken;Lccsancom/google/common/reflect/TypeToken$TypeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;)V"
        }
    .end annotation

    .line 707
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    .local p2, "allTypes":Lccsancom/google/common/reflect/TypeToken$TypeSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.TypeSet;"
    iput-object p1, p0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lccsancom/google/common/reflect/TypeToken$TypeSet;-><init>(Lccsancom/google/common/reflect/TypeToken;)V

    .line 708
    iput-object p2, p0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->allTypes:Lccsancom/google/common/reflect/TypeToken$TypeSet;

    .line 709
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 750
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lccsancom/google/common/reflect/TypeToken;->getTypes()Lccsancom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/reflect/TypeToken$TypeSet;->interfaces()Lccsancom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lccsancom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "interfaces().classes() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 702
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    invoke-virtual {p0}, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 702
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    invoke-virtual {p0}, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 713
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    iget-object v0, p0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lccsancom/google/common/collect/ImmutableSet;

    .line 714
    .local v0, "result":Lccsancom/google/common/collect/ImmutableSet;, "Lccsancom/google/common/collect/ImmutableSet<Lccsancom/google/common/reflect/TypeToken<-TT;>;>;"
    if-nez v0, :cond_0

    .line 715
    iget-object v1, p0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->allTypes:Lccsancom/google/common/reflect/TypeToken$TypeSet;

    .line 716
    invoke-static {v1}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v1

    sget-object v2, Lccsancom/google/common/reflect/TypeToken$TypeFilter;->INTERFACE_ONLY:Lccsancom/google/common/reflect/TypeToken$TypeFilter;

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/FluentIterable;->filter(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/FluentIterable;->toSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->interfaces:Lccsancom/google/common/collect/ImmutableSet;

    .line 715
    return-object v1

    .line 718
    :cond_0
    return-object v0
.end method

.method public interfaces()Lccsancom/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 724
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    return-object p0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 731
    .local p0, "this":Lccsancom/google/common/reflect/TypeToken$InterfaceSet;, "Lccsancom/google/common/reflect/TypeToken<TT;>.InterfaceSet;"
    sget-object v0, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->FOR_RAW_TYPE:Lccsancom/google/common/reflect/TypeToken$TypeCollector;

    iget-object v1, p0, Lccsancom/google/common/reflect/TypeToken$InterfaceSet;->this$0:Lccsancom/google/common/reflect/TypeToken;

    .line 732
    invoke-static {v1}, Lccsancom/google/common/reflect/TypeToken;->access$300(Lccsancom/google/common/reflect/TypeToken;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/reflect/TypeToken$TypeCollector;->collectTypes(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 733
    .local v0, "collectedTypes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Ljava/lang/Class<-TT;>;>;"
    invoke-static {v0}, Lccsancom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v1

    new-instance v2, Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;

    invoke-direct {v2, p0}, Lccsancom/google/common/reflect/TypeToken$InterfaceSet$1;-><init>(Lccsancom/google/common/reflect/TypeToken$InterfaceSet;)V

    .line 734
    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/FluentIterable;->filter(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/FluentIterable;

    move-result-object v1

    .line 741
    invoke-virtual {v1}, Lccsancom/google/common/collect/FluentIterable;->toSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 733
    return-object v1
.end method
