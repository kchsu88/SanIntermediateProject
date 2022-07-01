.class Lccsancom/vungle/warren/Vungle$11;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->clearCache()V
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

    .line 1235
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$11;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1239
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$11;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/downloader/Downloader;

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/Downloader;->cancelAll()V

    .line 1240
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$11;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdLoader;->clear()V

    .line 1241
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$11;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v1, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/Repository;->clearAllData()V

    .line 1242
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v0}, Lccsancom/vungle/warren/Vungle;->access$1700(Lccsancom/vungle/warren/Vungle;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1245
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    invoke-static {v0}, Lccsancom/vungle/warren/Vungle;->access$1000(Lccsancom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1248
    sget-object v0, Lccsancom/vungle/warren/Vungle;->_instance:Lccsancom/vungle/warren/Vungle;

    iget-object v1, p0, Lccsancom/vungle/warren/Vungle$11;->val$serviceLocator:Lccsancom/vungle/warren/ServiceLocator;

    const-class v2, Lccsancom/vungle/warren/RuntimeValues;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/RuntimeValues;

    iget-object v1, v1, Lccsancom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/InitCallback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/Vungle;->access$1400(Lccsancom/vungle/warren/Vungle;Lccsancom/vungle/warren/InitCallback;Z)V

    .line 1249
    return-void
.end method
