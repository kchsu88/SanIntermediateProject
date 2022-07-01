.class Lccsancom/vungle/warren/Vungle$12;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->clearAdvertisements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ServiceLocator;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$12;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1268
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$12;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/Downloader;->cancelAll()V

    .line 1269
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$12;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdLoader;->clear()V

    .line 1270
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$12;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/Repository;

    .line 1271
    .local v0, "repository":Lccsancom/vungle/warren/persistence/Repository;
    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$12;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v2, Lccsancom/vungle/warren/utility/Executors;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/utility/Executors;

    .line 1272
    .local v1, "sdkExecutors":Lccsancom/vungle/warren/utility/Executors;
    invoke-interface {v1}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lccsancom/vungle/warren/Vungle$12$1;

    invoke-direct {v3, p0, v0}, Lccsancom/vungle/warren/Vungle$12$1;-><init>(Lccsancom/vungle/warren/Vungle$12;Lccsancom/vungle/warren/persistence/Repository;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1286
    return-void
.end method
