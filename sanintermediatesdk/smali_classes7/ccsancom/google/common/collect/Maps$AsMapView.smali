.class Lccsancom/google/common/collect/Maps$AsMapView;
.super Lccsancom/google/common/collect/Maps$ViewCachingAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsMapView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Maps$ViewCachingAbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final function:Lccsancom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Function<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lccsancom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lccsancom/google/common/base/Function<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 773
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p2, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/Maps$ViewCachingAbstractMap;-><init>()V

    .line 774
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lccsancom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    .line 775
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Function;

    iput-object v0, p0, Lccsancom/google/common/collect/Maps$AsMapView;->function:Lccsancom/google/common/base/Function;

    .line 776
    return-void
.end method


# virtual methods
.method backingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 770
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 822
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 823
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 795
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 839
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Maps$AsMapView$1EntrySetImpl;-><init>(Lccsancom/google/common/collect/Maps$AsMapView;)V

    return-object v0
.end method

.method public createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 780
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Maps;->access$200(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 785
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    iget-object v1, p0, Lccsancom/google/common/collect/Maps$AsMapView;->function:Lccsancom/google/common/base/Function;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lccsancom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 800
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    move-object v0, p1

    .line 803
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lccsancom/google/common/collect/Maps$AsMapView;->function:Lccsancom/google/common/base/Function;

    invoke-interface {v1, v0}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 805
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 811
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    move-object v0, p1

    .line 814
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lccsancom/google/common/collect/Maps$AsMapView;->function:Lccsancom/google/common/base/Function;

    invoke-interface {v1, v0}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 816
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 790
    .local p0, "this":Lccsancom/google/common/collect/Maps$AsMapView;, "Lccsancom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
