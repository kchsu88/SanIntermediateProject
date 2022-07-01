.class Lccsancom/vungle/warren/Vungle$12$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/Vungle$12;

.field final synthetic val$repository:Lccsancom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle$12;Lccsancom/vungle/warren/persistence/Repository;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/Vungle$12;

    .line 1272
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$12$1;->this$0:Lccsancom/vungle/warren/Vungle$12;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$12$1;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1275
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$12$1;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    const-class v1, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1276
    .local v0, "ads":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/model/Advertisement;>;"
    if-eqz v0, :cond_0

    .line 1277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/model/Advertisement;

    .line 1279
    .local v2, "ad":Lccsancom/vungle/warren/model/Advertisement;
    :try_start_0
    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$12$1;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    goto :goto_1

    .line 1280
    :catch_0
    move-exception v3

    .line 1282
    .end local v2    # "ad":Lccsancom/vungle/warren/model/Advertisement;
    :goto_1
    goto :goto_0

    .line 1284
    :cond_0
    return-void
.end method
