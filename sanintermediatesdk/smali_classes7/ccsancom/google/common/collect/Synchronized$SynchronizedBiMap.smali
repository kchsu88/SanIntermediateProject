.class Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lccsancom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lccsancom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Synchronized$SynchronizedMap<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lccsancom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/BiMap;Ljava/lang/Object;Lccsancom/google/common/collect/BiMap;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Lccsancom/google/common/collect/BiMap;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            "Lccsancom/google/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 1168
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/BiMap;, "Lccsancom/google/common/collect/BiMap<TK;TV;>;"
    .local p3, "inverse":Lccsancom/google/common/collect/BiMap;, "Lccsancom/google/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1169
    iput-object p3, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lccsancom/google/common/collect/BiMap;

    .line 1170
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/BiMap;Ljava/lang/Object;Lccsancom/google/common/collect/BiMap;Lccsancom/google/common/collect/Synchronized$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/BiMap;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lccsancom/google/common/collect/BiMap;
    .param p4, "x3"    # Lccsancom/google/common/collect/Synchronized$1;

    .line 1161
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lccsancom/google/common/collect/BiMap;Ljava/lang/Object;Lccsancom/google/common/collect/BiMap;)V

    return-void
.end method


# virtual methods
.method delegate()Lccsancom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1174
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/BiMap;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1160
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lccsancom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .line 1160
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lccsancom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1189
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lccsancom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public inverse()Lccsancom/google/common/collect/BiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1196
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lccsancom/google/common/collect/BiMap;

    if-nez v1, :cond_0

    .line 1198
    new-instance v1, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;

    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lccsancom/google/common/collect/BiMap;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/google/common/collect/BiMap;->inverse()Lccsancom/google/common/collect/BiMap;

    move-result-object v2

    iget-object v3, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;-><init>(Lccsancom/google/common/collect/BiMap;Ljava/lang/Object;Lccsancom/google/common/collect/BiMap;)V

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lccsancom/google/common/collect/BiMap;

    .line 1200
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->inverse:Lccsancom/google/common/collect/BiMap;

    monitor-exit v0

    return-object v1

    .line 1201
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1160
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 1179
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;, "Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1180
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1181
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lccsancom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    .line 1183
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
