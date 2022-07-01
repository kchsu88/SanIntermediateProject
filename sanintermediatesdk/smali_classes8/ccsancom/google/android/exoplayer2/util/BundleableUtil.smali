.class public final Lccsancom/google/android/exoplayer2/util/BundleableUtil;
.super Ljava/lang/Object;
.source "BundleableUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureClassLoader(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p0, "bundle"    # Lccsanandroid/os/Bundle;

    .line 146
    if-eqz p0, :cond_0

    .line 147
    const-class v0, Lccsancom/google/android/exoplayer2/util/BundleableUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 149
    :cond_0
    return-void
.end method

.method public static fromBundleList(Lccsancom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lccsancom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Ljava/util/List<",
            "Lccsanandroid/os/Bundle;",
            ">;)",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TT;>;"
        }
    .end annotation

    .line 74
    .local p0, "creator":Lccsancom/google/android/exoplayer2/Bundleable$Creator;, "Lccsancom/google/android/exoplayer2/Bundleable$Creator<TT;>;"
    .local p1, "bundleList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/os/Bundle;>;"
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->builder()Lccsancom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 75
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/Bundle;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/os/Bundle;

    .line 77
    .local v2, "bundle":Lccsanandroid/os/Bundle;
    invoke-interface {p0, v2}, Lccsancom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    .line 78
    .local v3, "bundleable":Lccsancom/google/android/exoplayer2/Bundleable;, "TT;"
    invoke-virtual {v0, v3}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 75
    .end local v2    # "bundle":Lccsanandroid/os/Bundle;
    .end local v3    # "bundleable":Lccsancom/google/android/exoplayer2/Bundleable;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public static fromBundleNullableList(Lccsancom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Ljava/util/List<",
            "Lccsanandroid/os/Bundle;",
            ">;",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 89
    .local p0, "creator":Lccsancom/google/android/exoplayer2/Bundleable$Creator;, "Lccsancom/google/android/exoplayer2/Bundleable$Creator<TT;>;"
    .local p1, "bundleList":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/os/Bundle;>;"
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lccsancom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lccsancom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static fromBundleNullableSparseArray(Lccsancom/google/android/exoplayer2/Bundleable$Creator;Lccsanandroid/util/SparseArray;Lccsanandroid/util/SparseArray;)Lccsanandroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Bundle;",
            ">;",
            "Lccsanandroid/util/SparseArray<",
            "TT;>;)",
            "Lccsanandroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p0, "creator":Lccsancom/google/android/exoplayer2/Bundleable$Creator;, "Lccsancom/google/android/exoplayer2/Bundleable$Creator<TT;>;"
    .local p1, "bundleSparseArray":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Bundle;>;"
    .local p2, "defaultValue":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<TT;>;"
    if-nez p1, :cond_0

    .line 101
    return-object p2

    .line 104
    :cond_0
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lccsanandroid/util/SparseArray;-><init>(I)V

    .line 105
    .local v0, "result":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 106
    invoke-virtual {p1, v1}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/os/Bundle;

    invoke-interface {p0, v3}, Lccsancom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromNullableBundle(Lccsancom/google/android/exoplayer2/Bundleable$Creator;Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;
    .locals 1
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Lccsanandroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 49
    .local p0, "creator":Lccsancom/google/android/exoplayer2/Bundleable$Creator;, "Lccsancom/google/android/exoplayer2/Bundleable$Creator<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lccsancom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static fromNullableBundle(Lccsancom/google/android/exoplayer2/Bundleable$Creator;Lccsanandroid/os/Bundle;Lccsancom/google/android/exoplayer2/Bundleable;)Lccsancom/google/android/exoplayer2/Bundleable;
    .locals 1
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lccsancom/google/android/exoplayer2/Bundleable$Creator<",
            "TT;>;",
            "Lccsanandroid/os/Bundle;",
            "TT;)TT;"
        }
    .end annotation

    .line 58
    .local p0, "creator":Lccsancom/google/android/exoplayer2/Bundleable$Creator;, "Lccsancom/google/android/exoplayer2/Bundleable$Creator<TT;>;"
    .local p2, "defaultValue":Lccsancom/google/android/exoplayer2/Bundleable;, "TT;"
    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lccsancom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Lccsanandroid/os/Bundle;)Lccsancom/google/android/exoplayer2/Bundleable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 118
    .local p0, "bundleables":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/os/Bundle;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/Bundleable;

    .line 120
    .local v2, "element":Lccsancom/google/android/exoplayer2/Bundleable;, "TT;"
    invoke-interface {v2}, Lccsancom/google/android/exoplayer2/Bundleable;->toBundle()Lccsanandroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v2    # "element":Lccsancom/google/android/exoplayer2/Bundleable;, "TT;"
    goto :goto_0

    .line 122
    :cond_0
    return-object v0
.end method

.method public static toBundleList(Ljava/util/List;)Lccsancom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsanandroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 63
    .local p0, "bundleableList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->builder()Lccsancom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 64
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<Lccsanandroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 65
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/Bundleable;

    .line 66
    .local v2, "bundleable":Lccsancom/google/android/exoplayer2/Bundleable;
    invoke-interface {v2}, Lccsancom/google/android/exoplayer2/Bundleable;->toBundle()Lccsanandroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 64
    .end local v2    # "bundleable":Lccsancom/google/android/exoplayer2/Bundleable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method public static toBundleSparseArray(Lccsanandroid/util/SparseArray;)Lccsanandroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lccsancom/google/android/exoplayer2/Bundleable;",
            ">(",
            "Lccsanandroid/util/SparseArray<",
            "TT;>;)",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 132
    .local p0, "bundleableSparseArray":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<TT;>;"
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-virtual {p0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lccsanandroid/util/SparseArray;-><init>(I)V

    .line 133
    .local v0, "sparseArray":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Bundle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 134
    invoke-virtual {p0, v1}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/exoplayer2/Bundleable;

    invoke-interface {v3}, Lccsancom/google/android/exoplayer2/Bundleable;->toBundle()Lccsanandroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toNullableBundle(Lccsancom/google/android/exoplayer2/Bundleable;)Lccsanandroid/os/Bundle;
    .locals 1
    .param p0, "bundleable"    # Lccsancom/google/android/exoplayer2/Bundleable;

    .line 39
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lccsancom/google/android/exoplayer2/Bundleable;->toBundle()Lccsanandroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0
.end method
