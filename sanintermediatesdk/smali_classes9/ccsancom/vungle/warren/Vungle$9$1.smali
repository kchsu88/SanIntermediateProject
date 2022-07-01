.class Lccsancom/vungle/warren/Vungle$9$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Lccsancom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/vungle/warren/network/Callback<",
        "Lccsancom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/Vungle$9;

.field final synthetic val$finalAdvertisement:Lccsancom/vungle/warren/model/Advertisement;

.field final synthetic val$finalStreamingOnly:Z

.field final synthetic val$placement:Lccsancom/vungle/warren/model/Placement;

.field final synthetic val$request:Lccsancom/vungle/warren/AdRequest;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle$9;ZLccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/Vungle$9;

    .line 1004
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iput-boolean p2, p0, Lccsancom/vungle/warren/Vungle$9$1;->val$finalStreamingOnly:Z

    iput-object p3, p0, Lccsancom/vungle/warren/Vungle$9$1;->val$request:Lccsancom/vungle/warren/AdRequest;

    iput-object p4, p0, Lccsancom/vungle/warren/Vungle$9$1;->val$placement:Lccsancom/vungle/warren/model/Placement;

    iput-object p5, p0, Lccsancom/vungle/warren/Vungle$9$1;->val$finalAdvertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lccsancom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1053
    .local p1, "call":Lccsancom/vungle/warren/network/Call;, "Lccsancom/vungle/warren/network/Call<Lccsancom/google/gson/JsonObject;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9;->val$sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/Vungle$9$1$2;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/Vungle$9$1$2;-><init>(Lccsancom/vungle/warren/Vungle$9$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1063
    return-void
.end method

.method public onResponse(Lccsancom/vungle/warren/network/Call;Lccsancom/vungle/warren/network/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;",
            "Lccsancom/vungle/warren/network/Response<",
            "Lccsancom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 1009
    .local p1, "call":Lccsancom/vungle/warren/network/Call;, "Lccsancom/vungle/warren/network/Call<Lccsancom/google/gson/JsonObject;>;"
    .local p2, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9;->val$sdkExecutors:Lccsancom/vungle/warren/utility/Executors;

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/Vungle$9$1$1;

    invoke-direct {v1, p0, p2}, Lccsancom/vungle/warren/Vungle$9$1$1;-><init>(Lccsancom/vungle/warren/Vungle$9$1;Lccsancom/vungle/warren/network/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1048
    return-void
.end method
