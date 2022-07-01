.class public Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;
.super Ljava/lang/Object;
.source "DataLoadProviderRegistry.java"


# static fields
.field private static final GET_KEY:Lccsancom/bumptech/glide/util/MultiClassKey;


# instance fields
.field private final providers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/bumptech/glide/util/MultiClassKey;",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lccsancom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v0}, Lccsancom/bumptech/glide/util/MultiClassKey;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lccsancom/bumptech/glide/util/MultiClassKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/Class;)Lccsancom/bumptech/glide/provider/DataLoadProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 44
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    sget-object v0, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lccsancom/bumptech/glide/util/MultiClassKey;

    monitor-enter v0

    .line 45
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 46
    iget-object v2, p0, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/bumptech/glide/provider/DataLoadProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 47
    .local v1, "result":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<**>;"
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    if-nez v1, :cond_0

    .line 49
    invoke-static {}, Lccsancom/bumptech/glide/provider/EmptyDataLoadProvider;->get()Lccsancom/bumptech/glide/provider/DataLoadProvider;

    move-result-object v1

    .line 51
    :cond_0
    return-object v1

    .line 47
    .end local v1    # "result":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<**>;"
    :catchall_0
    move-exception v2

    .restart local v1    # "result":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<**>;"
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 30
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<TZ;>;"
    .local p3, "provider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    new-instance v1, Lccsancom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v1, p1, p2}, Lccsancom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
