.class Lccsancom/vungle/warren/AdLoader$5;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Lccsancom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader;->fetchAdMetadata(Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V
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
.field final synthetic this$0:Lccsancom/vungle/warren/AdLoader;

.field final synthetic val$bidTokenCallBack:Lccsancom/vungle/warren/HeaderBiddingCallback;

.field final synthetic val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

.field final synthetic val$op:Lccsancom/vungle/warren/AdLoader$Operation;

.field final synthetic val$requestStartTime:J


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;JLccsancom/vungle/warren/AdLoader$DownloadCallback;Lccsancom/vungle/warren/HeaderBiddingCallback;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdLoader;

    .line 788
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iput-wide p3, p0, Lccsancom/vungle/warren/AdLoader$5;->val$requestStartTime:J

    iput-object p5, p0, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    iput-object p6, p0, Lccsancom/vungle/warren/AdLoader$5;->val$bidTokenCallBack:Lccsancom/vungle/warren/HeaderBiddingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lccsancom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .locals 9
    .param p2, "e"    # Ljava/lang/Throwable;
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

    .line 791
    .local p1, "call":Lccsancom/vungle/warren/network/Call;, "Lccsancom/vungle/warren/network/Call<Lccsancom/google/gson/JsonObject;>;"
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v3, v3, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lccsancom/vungle/warren/AdLoader$5;->val$requestStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "Request ad failed, request = %1$s, elapsed time = %2$dms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 791
    const-string v3, "ttDownloadContext"

    invoke-static {v5, v0, v3, v2}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v1, v1, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    .line 795
    const-string v1, "failed to request ad, request = %1$s, throwable = %2$s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 793
    const-string v1, "AdLoader#fetchAdMetadata; loadAd sequence"

    invoke-static {v1, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v1, p0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v1, p2}, Lccsancom/vungle/warren/AdLoader;->access$2000(Lccsancom/vungle/warren/AdLoader;Ljava/lang/Throwable;)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v1

    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public onResponse(Lccsancom/vungle/warren/network/Call;Lccsancom/vungle/warren/network/Response;)V
    .locals 6
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

    .line 801
    .local p1, "call":Lccsancom/vungle/warren/network/Call;, "Lccsancom/vungle/warren/network/Call<Lccsancom/google/gson/JsonObject;>;"
    .local p2, "response":Lccsancom/vungle/warren/network/Response;, "Lccsancom/vungle/warren/network/Response<Lccsancom/google/gson/JsonObject;>;"
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lccsancom/vungle/warren/AdLoader$5;->val$requestStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Request ad got response, request = %1$s, elapsed time = %2$dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 801
    const-string v2, "ttDownloadContext"

    invoke-static {v3, v0, v2, v1}, Lccsancom/vungle/warren/VungleLogger;->verbose(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-object v0, p0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$2500(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/utility/Executors;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/utility/Executors;->getBackgroundExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/vungle/warren/AdLoader$5$1;

    invoke-direct {v1, p0, p2}, Lccsancom/vungle/warren/AdLoader$5$1;-><init>(Lccsancom/vungle/warren/AdLoader$5;Lccsancom/vungle/warren/network/Response;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1004
    return-void
.end method
