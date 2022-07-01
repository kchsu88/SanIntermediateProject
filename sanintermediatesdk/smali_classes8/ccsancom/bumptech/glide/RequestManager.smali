.class public Lccsancom/bumptech/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lccsancom/bumptech/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;,
        Lccsancom/bumptech/glide/RequestManager$OptionsApplier;,
        Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;,
        Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;,
        Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;,
        Lccsancom/bumptech/glide/RequestManager$DefaultOptions;
    }
.end annotation


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private final glide:Lccsancom/bumptech/glide/Glide;

.field private final lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

.field private options:Lccsancom/bumptech/glide/RequestManager$DefaultOptions;

.field private final optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

.field private final requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

.field private final treeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "lifecycle"    # Lccsancom/bumptech/glide/manager/Lifecycle;
    .param p3, "treeNode"    # Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 53
    new-instance v4, Lccsancom/bumptech/glide/manager/RequestTracker;

    invoke-direct {v4}, Lccsancom/bumptech/glide/manager/RequestTracker;-><init>()V

    new-instance v5, Lccsancom/bumptech/glide/manager/ConnectivityMonitorFactory;

    invoke-direct {v5}, Lccsancom/bumptech/glide/manager/ConnectivityMonitorFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/bumptech/glide/RequestManager;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/ConnectivityMonitorFactory;)V

    .line 54
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/ConnectivityMonitorFactory;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "lifecycle"    # Lccsancom/bumptech/glide/manager/Lifecycle;
    .param p3, "treeNode"    # Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;
    .param p4, "requestTracker"    # Lccsancom/bumptech/glide/manager/RequestTracker;
    .param p5, "factory"    # Lccsancom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    .line 59
    iput-object p2, p0, Lccsancom/bumptech/glide/RequestManager;->lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    .line 60
    iput-object p3, p0, Lccsancom/bumptech/glide/RequestManager;->treeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 61
    iput-object p4, p0, Lccsancom/bumptech/glide/RequestManager;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    .line 62
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->glide:Lccsancom/bumptech/glide/Glide;

    .line 63
    new-instance v0, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;-><init>(Lccsancom/bumptech/glide/RequestManager;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    .line 65
    new-instance v0, Lccsancom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {v0, p4}, Lccsancom/bumptech/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lccsancom/bumptech/glide/manager/RequestTracker;)V

    invoke-virtual {p5, p1, v0}, Lccsancom/bumptech/glide/manager/ConnectivityMonitorFactory;->build(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lccsancom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object v0

    .line 71
    .local v0, "connectivityMonitor":Lccsancom/bumptech/glide/manager/ConnectivityMonitor;
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->isOnBackgroundThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v2, Lccsancom/bumptech/glide/RequestManager$1;

    invoke-direct {v2, p0, p2}, Lccsancom/bumptech/glide/RequestManager$1;-><init>(Lccsancom/bumptech/glide/RequestManager;Lccsancom/bumptech/glide/manager/Lifecycle;)V

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lccsancom/bumptech/glide/manager/Lifecycle;->addListener(Lccsancom/bumptech/glide/manager/LifecycleListener;)V

    .line 81
    :goto_0
    invoke-interface {p2, v0}, Lccsancom/bumptech/glide/manager/Lifecycle;->addListener(Lccsancom/bumptech/glide/manager/LifecycleListener;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 43
    invoke-static {p0}, Lccsancom/bumptech/glide/RequestManager;->getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/bumptech/glide/RequestManager;)Lccsanandroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/RequestManager;

    .line 43
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/Glide;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/RequestManager;

    .line 43
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->glide:Lccsancom/bumptech/glide/Glide;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/manager/RequestTracker;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/RequestManager;

    .line 43
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/manager/Lifecycle;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/RequestManager;

    .line 43
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$OptionsApplier;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/RequestManager;

    .line 43
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    return-object v0
.end method

.method static synthetic access$800(Lccsancom/bumptech/glide/RequestManager;)Lccsancom/bumptech/glide/RequestManager$DefaultOptions;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/RequestManager;

    .line 43
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->options:Lccsancom/bumptech/glide/RequestManager$DefaultOptions;

    return-object v0
.end method

.method private static getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 641
    .local p0, "model":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 625
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    invoke-static {p1, v0}, Lccsancom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 626
    .local v0, "streamModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TT;Ljava/io/InputStream;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    invoke-static {p1, v1}, Lccsancom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v10

    .line 628
    .local v10, "fileDescriptorModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TT;Lccsanandroid/os/ParcelFileDescriptor;>;"
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    if-eqz v10, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". You must provide a Model of a type for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :cond_1
    :goto_0
    iget-object v11, p0, Lccsancom/bumptech/glide/RequestManager;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v12, Lccsancom/bumptech/glide/DrawableTypeRequest;

    iget-object v5, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    iget-object v6, p0, Lccsancom/bumptech/glide/RequestManager;->glide:Lccsancom/bumptech/glide/Glide;

    iget-object v7, p0, Lccsancom/bumptech/glide/RequestManager;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    iget-object v8, p0, Lccsancom/bumptech/glide/RequestManager;->lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    move-object v1, v12

    move-object v2, p1

    move-object v3, v0

    move-object v4, v10

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lccsancom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v11, v12}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v1
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 621
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public fromBytes()Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "[B>;"
        }
    .end annotation

    .line 576
    const-class v0, [B

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    new-instance v1, Lccsancom/bumptech/glide/signature/StringSignature;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public fromFile()Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 454
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public fromMediaStore()Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Lccsanandroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 413
    const-class v0, Lccsanandroid/net/Uri;

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    invoke-static {v0, v1}, Lccsancom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 414
    .local v0, "genericStreamLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v3, Lccsancom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    invoke-direct {v3, v1, v0}, Lccsancom/bumptech/glide/load/model/stream/MediaStoreStreamLoader;-><init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    .line 415
    .local v3, "mediaStoreLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;Ljava/io/InputStream;>;"
    const-class v1, Lccsanandroid/net/Uri;

    iget-object v2, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    invoke-static {v1, v2}, Lccsancom/bumptech/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/model/ModelLoader;

    move-result-object v10

    .line 418
    .local v10, "fileDescriptorModelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<Lccsanandroid/net/Uri;Lccsanandroid/os/ParcelFileDescriptor;>;"
    iget-object v11, p0, Lccsancom/bumptech/glide/RequestManager;->optionsApplier:Lccsancom/bumptech/glide/RequestManager$OptionsApplier;

    new-instance v12, Lccsancom/bumptech/glide/DrawableTypeRequest;

    const-class v2, Lccsanandroid/net/Uri;

    iget-object v5, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    iget-object v6, p0, Lccsancom/bumptech/glide/RequestManager;->glide:Lccsancom/bumptech/glide/Glide;

    iget-object v7, p0, Lccsancom/bumptech/glide/RequestManager;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    iget-object v8, p0, Lccsancom/bumptech/glide/RequestManager;->lifecycle:Lccsancom/bumptech/glide/manager/Lifecycle;

    move-object v1, v12

    move-object v4, v10

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lccsancom/bumptech/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsancom/bumptech/glide/load/model/ModelLoader;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/Glide;Lccsancom/bumptech/glide/manager/RequestTracker;Lccsancom/bumptech/glide/manager/Lifecycle;Lccsancom/bumptech/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v11, v12}, Lccsancom/bumptech/glide/RequestManager$OptionsApplier;->apply(Lccsancom/bumptech/glide/GenericRequestBuilder;)Lccsancom/bumptech/glide/GenericRequestBuilder;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v1
.end method

.method public fromResource()Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lccsancom/bumptech/glide/RequestManager;->context:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/bumptech/glide/signature/ApplicationVersionSignature;->obtain(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/load/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public fromString()Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public fromUri()Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Lccsanandroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 339
    const-class v0, Lccsanandroid/net/Uri;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public fromUrl()Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 136
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 137
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/RequestTracker;->isPaused()Z

    move-result v0

    return v0
.end method

.method public load(Lccsanandroid/net/Uri;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            ")",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Lccsanandroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->fromUri()Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load(Ljava/io/File;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->fromFile()Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load(Ljava/lang/Integer;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "resourceId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->fromResource()Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 598
    .local p1, "model":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lccsancom/bumptech/glide/RequestManager;->getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load(Ljava/lang/String;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->fromString()Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load(Ljava/net/URL;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->fromUrl()Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load([B)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "model"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "[B>;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->fromBytes()Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public load([BLjava/lang/String;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 2
    .param p1, "model"    # [B
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/RequestManager;->load([B)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    new-instance v1, Lccsancom/bumptech/glide/signature/StringSignature;

    invoke-direct {v1, p2}, Lccsancom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public loadFromMediaStore(Lccsanandroid/net/Uri;)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 1
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            ")",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Lccsanandroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->fromMediaStore()Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public loadFromMediaStore(Lccsanandroid/net/Uri;Ljava/lang/String;JI)Lccsancom/bumptech/glide/DrawableTypeRequest;
    .locals 2
    .param p1, "uri"    # Lccsanandroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "dateModified"    # J
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            "Ljava/lang/String;",
            "JI)",
            "Lccsancom/bumptech/glide/DrawableTypeRequest<",
            "Lccsanandroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    new-instance v0, Lccsancom/bumptech/glide/signature/MediaStoreSignature;

    invoke-direct {v0, p2, p3, p4, p5}, Lccsancom/bumptech/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    .line 369
    .local v0, "signature":Lccsancom/bumptech/glide/load/Key;
    invoke-virtual {p0, p1}, Lccsancom/bumptech/glide/RequestManager;->loadFromMediaStore(Lccsanandroid/net/Uri;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/bumptech/glide/DrawableTypeRequest;->signature(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/DrawableTypeRequest;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 221
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/RequestTracker;->clearRequests()V

    .line 222
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 95
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->clearMemory()V

    .line 96
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 213
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 88
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->glide:Lccsancom/bumptech/glide/Glide;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/Glide;->trimMemory(I)V

    .line 89
    return-void
.end method

.method public pauseRequests()V
    .locals 1

    .line 147
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 148
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/RequestTracker;->pauseRequests()V

    .line 149
    return-void
.end method

.method public pauseRequestsRecursive()V
    .locals 2

    .line 165
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 166
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 167
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->treeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/RequestManager;

    .line 168
    .local v1, "requestManager":Lccsancom/bumptech/glide/RequestManager;
    invoke-virtual {v1}, Lccsancom/bumptech/glide/RequestManager;->pauseRequests()V

    .line 169
    .end local v1    # "requestManager":Lccsancom/bumptech/glide/RequestManager;
    goto :goto_0

    .line 170
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public resumeRequests()V
    .locals 1

    .line 179
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 180
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->requestTracker:Lccsancom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/manager/RequestTracker;->resumeRequests()V

    .line 181
    return-void
.end method

.method public resumeRequestsRecursive()V
    .locals 2

    .line 189
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 190
    invoke-virtual {p0}, Lccsancom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 191
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager;->treeNode:Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lccsancom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/RequestManager;

    .line 192
    .local v1, "requestManager":Lccsancom/bumptech/glide/RequestManager;
    invoke-virtual {v1}, Lccsancom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 193
    .end local v1    # "requestManager":Lccsancom/bumptech/glide/RequestManager;
    goto :goto_0

    .line 194
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setDefaultOptions(Lccsancom/bumptech/glide/RequestManager$DefaultOptions;)V
    .locals 0
    .param p1, "options"    # Lccsancom/bumptech/glide/RequestManager$DefaultOptions;

    .line 126
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager;->options:Lccsancom/bumptech/glide/RequestManager$DefaultOptions;

    .line 127
    return-void
.end method

.method public using(Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<",
            "TA;TT;>;"
        }
    .end annotation

    .line 238
    .local p1, "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;-><init>(Lccsancom/bumptech/glide/RequestManager;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public using(Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader;)Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;
    .locals 1
    .param p1, "modelLoader"    # Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/stream/StreamByteArrayLoader;",
            ")",
            "Lccsancom/bumptech/glide/RequestManager$ImageModelRequest<",
            "[B>;"
        }
    .end annotation

    .line 260
    new-instance v0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;

    invoke-direct {v0, p0, p1}, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;-><init>(Lccsancom/bumptech/glide/RequestManager;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public using(Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader;)Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/RequestManager$ImageModelRequest<",
            "TT;>;"
        }
    .end annotation

    .line 249
    .local p1, "modelLoader":Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader;, "Lccsancom/bumptech/glide/load/model/stream/StreamModelLoader<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;

    invoke-direct {v0, p0, p1}, Lccsancom/bumptech/glide/RequestManager$ImageModelRequest;-><init>(Lccsancom/bumptech/glide/RequestManager;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public using(Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;)Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader<",
            "TT;>;)",
            "Lccsancom/bumptech/glide/RequestManager$VideoModelRequest<",
            "TT;>;"
        }
    .end annotation

    .line 271
    .local p1, "modelLoader":Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader;, "Lccsancom/bumptech/glide/load/model/file_descriptor/FileDescriptorModelLoader<TT;>;"
    new-instance v0, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;

    invoke-direct {v0, p0, p1}, Lccsancom/bumptech/glide/RequestManager$VideoModelRequest;-><init>(Lccsancom/bumptech/glide/RequestManager;Lccsancom/bumptech/glide/load/model/ModelLoader;)V

    return-object v0
.end method
