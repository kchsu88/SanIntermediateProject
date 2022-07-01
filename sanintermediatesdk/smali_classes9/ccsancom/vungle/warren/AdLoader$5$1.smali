.class Lccsancom/vungle/warren/AdLoader$5$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdLoader$5;->onResponse(Lccsancom/vungle/warren/network/Call;Lccsancom/vungle/warren/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/vungle/warren/AdLoader$5;

.field final synthetic val$response:Lccsancom/vungle/warren/network/Response;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdLoader$5;Lccsancom/vungle/warren/network/Response;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/vungle/warren/AdLoader$5;

    .line 804
    iput-object p1, p0, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iput-object p2, p0, Lccsancom/vungle/warren/AdLoader$5$1;->val$response:Lccsancom/vungle/warren/network/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 811
    move-object/from16 v1, p0

    const-string v0, "data_science_cache"

    const-string v2, "ad_markup"

    iget-object v3, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v3, v3, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v3}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v3

    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {v3, v4, v5}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/vungle/warren/model/Placement;

    .line 812
    .local v3, "placement":Lccsancom/vungle/warren/model/Placement;
    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "AdLoader#fetchAdMetadata; loadAd sequence"

    if-nez v3, :cond_0

    .line 813
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Placement metadata not found for requested advertisement."

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement metadata not found for requested advertisement. request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v5, v4}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 819
    return-void

    .line 822
    :cond_0
    iget-object v7, v1, Lccsancom/vungle/warren/AdLoader$5$1;->val$response:Lccsancom/vungle/warren/network/Response;

    invoke-virtual {v7}, Lccsancom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_3

    .line 823
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$2100(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/VungleApiClient;

    move-result-object v0

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->val$response:Lccsancom/vungle/warren/network/Response;

    invoke-virtual {v0, v2}, Lccsancom/vungle/warren/VungleApiClient;->getRetryAfterHeaderValue(Lccsancom/vungle/warren/network/Response;)J

    move-result-wide v10

    .line 824
    .local v10, "retryAfterHeaderValue":J
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_2

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->isMultipleHBPEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    :cond_1
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v3, v2, v10, v11}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response was not successful, retrying; request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0xe

    invoke-direct {v2, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v5, v4}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 830
    return-void

    .line 834
    :cond_2
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to retrieve advertisement information"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-array v0, v5, [Ljava/lang/Object;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    aput-object v2, v0, v8

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->val$response:Lccsancom/vungle/warren/network/Response;

    .line 838
    invoke-virtual {v2}, Lccsancom/vungle/warren/network/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v9

    .line 837
    const-string v2, "Response was not successful, not retrying;request = %1$s; responseCode = %2$s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-static {v6, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->val$response:Lccsancom/vungle/warren/network/Response;

    invoke-virtual {v5}, Lccsancom/vungle/warren/network/Response;->code()I

    move-result v5

    invoke-static {v2, v5}, Lccsancom/vungle/warren/AdLoader;->access$2200(Lccsancom/vungle/warren/AdLoader;I)Lccsancom/vungle/warren/error/VungleException;

    move-result-object v2

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v0, v2, v5, v4}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 840
    return-void

    .line 843
    .end local v10    # "retryAfterHeaderValue":J
    :cond_3
    iget-object v7, v1, Lccsancom/vungle/warren/AdLoader$5$1;->val$response:Lccsancom/vungle/warren/network/Response;

    invoke-virtual {v7}, Lccsancom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/google/gson/JsonObject;

    .line 844
    .local v7, "jsonObject":Lccsancom/google/gson/JsonObject;
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ads Response: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    if-eqz v7, :cond_18

    const-string v11, "ads"

    invoke-virtual {v7, v11}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {v7, v11}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/google/gson/JsonElement;->isJsonNull()Z

    move-result v12

    if-nez v12, :cond_18

    .line 846
    invoke-virtual {v7, v11}, Lccsancom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lccsancom/google/gson/JsonArray;

    move-result-object v11

    .line 848
    .local v11, "ads":Lccsancom/google/gson/JsonArray;
    if-eqz v11, :cond_17

    invoke-virtual {v11}, Lccsancom/google/gson/JsonArray;->size()I

    move-result v12

    if-nez v12, :cond_4

    goto/16 :goto_9

    .line 857
    :cond_4
    invoke-virtual {v11, v8}, Lccsancom/google/gson/JsonArray;->get(I)Lccsancom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/google/gson/JsonElement;->getAsJsonObject()Lccsancom/google/gson/JsonObject;

    move-result-object v12

    .line 859
    .local v12, "ad":Lccsancom/google/gson/JsonObject;
    :try_start_0
    new-instance v14, Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {v14, v12}, Lccsancom/vungle/warren/model/Advertisement;-><init>(Lccsancom/google/gson/JsonObject;)V

    .line 861
    .local v14, "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    iget-object v15, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v15, v15, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v15}, Lccsancom/vungle/warren/AdLoader;->access$2300(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/VisionController;

    move-result-object v15

    invoke-virtual {v15}, Lccsancom/vungle/warren/VisionController;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 862
    invoke-virtual {v12, v2}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v15

    .line 863
    .local v15, "markup":Lccsancom/google/gson/JsonObject;
    invoke-static {v15, v0}, Lccsancom/vungle/warren/model/JsonUtil;->hasNonNull(Lccsancom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 864
    iget-object v13, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v13}, Lccsancom/vungle/warren/AdLoader;->access$2300(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/VisionController;

    move-result-object v13

    invoke-virtual {v15, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lccsancom/vungle/warren/VisionController;->setDataScienceCache(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :cond_5
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$2300(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/VisionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lccsancom/vungle/warren/VisionController;->setDataScienceCache(Ljava/lang/String;)V

    .line 877
    .end local v15    # "markup":Lccsancom/google/gson/JsonObject;
    :cond_6
    :goto_0
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    const-class v15, Lccsancom/vungle/warren/model/Advertisement;

    invoke-virtual {v0, v13, v15}, Lccsancom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/model/Advertisement;

    .line 878
    .local v0, "advertisementInDB":Lccsancom/vungle/warren/model/Advertisement;
    if-eqz v0, :cond_8

    .line 879
    invoke-virtual {v0}, Lccsancom/vungle/warren/model/Advertisement;->getState()I

    move-result v13

    .line 880
    .local v13, "state":I
    if-eqz v13, :cond_7

    if-eq v13, v9, :cond_7

    if-ne v13, v5, :cond_8

    .line 881
    :cond_7
    invoke-static {}, Lccsancom/vungle/warren/AdLoader;->access$1300()Ljava/lang/String;

    move-result-object v15

    const-string v5, "Operation Cancelled"

    invoke-static {v15, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v15, Lccsancom/vungle/warren/error/VungleException;

    const/16 v9, 0x19

    invoke-direct {v15, v9}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v9, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-interface {v5, v15, v9, v4}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 883
    return-void

    .line 887
    .end local v13    # "state":I
    :cond_8
    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->isHeaderBidding()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$bidTokenCallBack:Lccsancom/vungle/warren/HeaderBiddingCallback;

    if-eqz v5, :cond_9

    .line 888
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$bidTokenCallBack:Lccsancom/vungle/warren/HeaderBiddingCallback;

    iget-object v9, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v9}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getBidToken()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v9, v13}, Lccsancom/vungle/warren/HeaderBiddingCallback;->onBidTokenAvailable(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_9
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v5}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v5

    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lccsancom/vungle/warren/persistence/Repository;->deleteAdvertisement(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getDownloadableUrls()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 895
    .local v5, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v9, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-virtual {v9, v14}, Lccsancom/vungle/warren/AdLoader;->getDestinationDir(Lccsancom/vungle/warren/model/Advertisement;)Ljava/io/File;

    move-result-object v9

    .line 896
    .local v9, "destinationDir":Ljava/io/File;
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_a

    move-object v8, v5

    goto/16 :goto_4

    .line 906
    :cond_a
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 907
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Ljava/lang/String;

    invoke-static {v4, v8}, Lccsancom/vungle/warren/AdLoader;->access$2400(Lccsancom/vungle/warren/AdLoader;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 908
    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    .line 909
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Ljava/lang/String;

    .line 908
    invoke-virtual {v4, v14, v9, v8, v10}, Lccsancom/vungle/warren/AdLoader;->saveAsset(Lccsancom/vungle/warren/model/Advertisement;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v8, 0x0

    goto :goto_1

    .line 911
    .restart local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    const-string v4, "Response was successful, but one of downloadable urls is neither http nor https : url = %1$s; op.request = %2$s, ad.getId() = %3$s"

    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Object;

    .line 916
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    const/4 v13, 0x0

    aput-object v8, v10, v13

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v13, 0x1

    aput-object v8, v10, v13

    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    aput-object v8, v10, v13

    .line 912
    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 911
    invoke-static {v6, v4}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v8, Lccsancom/vungle/warren/error/VungleException;

    const/16 v10, 0xb

    invoke-direct {v8, v10}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v8, v10, v13}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 918
    return-void

    .line 922
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    invoke-virtual {v3}, Lccsancom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_f

    .line 923
    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v4

    if-ne v4, v8, :cond_d

    const-string v4, "banner"

    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getTemplateType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 924
    :cond_d
    const-string v4, "Response was successful, but placement is banner while %1$s; op.request = %2$s, ad.getId() = %3$s"

    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Object;

    .line 929
    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getAdType()I

    move-result v8

    const/4 v13, 0x1

    if-eq v8, v13, :cond_e

    .line 930
    const-string v8, "ad type is not MRAID"

    goto :goto_2

    .line 931
    :cond_e
    const-string v8, "advertisement template type is not banner"

    :goto_2
    const/4 v13, 0x0

    aput-object v8, v10, v13

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v13, 0x1

    aput-object v8, v10, v13

    .line 932
    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x2

    aput-object v8, v10, v13

    .line 925
    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 924
    invoke-static {v6, v4}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v8, Lccsancom/vungle/warren/error/VungleException;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v8, v10, v13}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 935
    return-void

    .line 938
    :cond_f
    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getAdConfig()Lccsancom/vungle/warren/AdConfig;

    move-result-object v4

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v4, v8}, Lccsancom/vungle/warren/AdConfig;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 939
    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    move-object v8, v5

    .end local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v8, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-wide v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$requestStartTime:J

    invoke-virtual {v14, v4, v5}, Lccsancom/vungle/warren/model/Advertisement;->setAdRequestStartTime(J)V

    .line 940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v14, v4, v5}, Lccsancom/vungle/warren/model/Advertisement;->setAssetDownloadStartTime(J)V

    .line 941
    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v4}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v4

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v5}, Lccsancom/vungle/warren/AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v4, v14, v5, v10}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 943
    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v4}, Lccsancom/vungle/warren/AdRequest;->getType()I

    move-result v4

    .line 944
    .local v4, "type":I
    if-eqz v4, :cond_12

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    goto :goto_3

    .line 947
    :cond_10
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v5}, Lccsancom/vungle/warren/AdRequest;->getType()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_16

    .line 948
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v13, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v13}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v13

    invoke-static {v5, v10, v13}, Lccsancom/vungle/warren/AdLoader;->access$1800(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/persistence/Repository;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 949
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-static {v5, v10}, Lccsancom/vungle/warren/AdLoader;->access$700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)V

    .line 950
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v13, 0x0

    invoke-interface {v5, v10, v3, v13}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onReady(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    goto/16 :goto_7

    .line 952
    :cond_11
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v13, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v5, v10, v3, v13}, Lccsancom/vungle/warren/AdLoader;->access$1900(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_7

    .line 945
    :cond_12
    :goto_3
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-static {v5, v10}, Lccsancom/vungle/warren/AdLoader;->access$700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdRequest;)V

    .line 946
    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v13, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v13, v13, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    invoke-static {v5, v10, v14, v13}, Lccsancom/vungle/warren/AdLoader;->access$1700(Lccsancom/vungle/warren/AdLoader;Lccsancom/vungle/warren/AdLoader$Operation;Lccsancom/vungle/warren/model/Advertisement;Lccsancom/vungle/warren/AdLoader$DownloadCallback;)V

    goto/16 :goto_7

    .line 896
    .end local v4    # "type":I
    .end local v8    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_13
    move-object v8, v5

    .line 897
    .end local v5    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_4
    const-string v4, "Response was successful, but adv directory is %1$s; op.request = %2$s, ad.getId() = %3$s"

    const/4 v5, 0x3

    new-array v10, v5, [Ljava/lang/Object;

    .line 900
    if-nez v9, :cond_14

    const-string v5, "null"

    goto :goto_5

    :cond_14
    const-string v5, "not a dir"

    :goto_5
    const/4 v13, 0x0

    aput-object v5, v10, v13

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v13, 0x1

    aput-object v5, v10, v13

    .line 901
    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x2

    aput-object v5, v10, v13

    .line 898
    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 897
    invoke-static {v6, v4}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    const/16 v10, 0x1a

    invoke-direct {v5, v10}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v10, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v10, v10, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v14}, Lccsancom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v5, v10, v13}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    return-void

    .line 987
    .end local v0    # "advertisementInDB":Lccsancom/vungle/warren/model/Advertisement;
    .end local v8    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9    # "destinationDir":Ljava/io/File;
    .end local v14    # "advertisement":Lccsancom/vungle/warren/model/Advertisement;
    :catch_0
    move-exception v0

    .line 988
    .local v0, "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    aput-object v0, v2, v4

    .line 989
    const-string v4, "BadAd - DBException; can\'t proceed; placement = %1$s; op.request = %2$s; exception = %3$s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-static {v6, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v4, Lccsancom/vungle/warren/error/VungleException;

    const/16 v5, 0x1a

    invoke-direct {v4, v5}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 955
    .end local v0    # "e":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    :catch_1
    move-exception v0

    move-object v4, v0

    .line 958
    .local v4, "badAd":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v12, v2}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v2

    .line 959
    .local v2, "admarkup":Lccsancom/google/gson/JsonObject;
    const-string v0, "sleep"

    invoke-virtual {v2, v0}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 960
    invoke-virtual {v2, v0}, Lccsancom/google/gson/JsonObject;->get(Ljava/lang/String;)Lccsancom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    .line 964
    .local v5, "sleep":I
    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Lccsancom/vungle/warren/model/Placement;->snooze(J)V

    .line 966
    :try_start_1
    const-string v0, "badAd - snoozed placement %1$s; request = %2$s"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v9, v8

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 967
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 966
    invoke-static {v6, v0}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    invoke-static {v0}, Lccsancom/vungle/warren/AdLoader;->access$800(Lccsancom/vungle/warren/AdLoader;)Lccsancom/vungle/warren/persistence/Repository;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsancom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_1
    .catch Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    .line 976
    nop

    .line 980
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->this$0:Lccsancom/vungle/warren/AdLoader;

    iget-object v8, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v8, v8, Lccsancom/vungle/warren/AdLoader$Operation;->size:Lccsancom/vungle/warren/AdConfig$AdSize;

    int-to-long v9, v5

    const-wide/16 v13, 0x3e8

    mul-long v9, v9, v13

    invoke-virtual {v0, v3, v8, v9, v10}, Lccsancom/vungle/warren/AdLoader;->loadEndlessIfNeeded(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/AdConfig$AdSize;J)V

    goto :goto_6

    .line 970
    :catch_2
    move-exception v0

    .line 971
    .local v0, "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    iget-object v9, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    .line 972
    const-string v9, "badAd - can\'t save snoozed placement %1$s; request = %2$s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 971
    invoke-static {v6, v8}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v6, v6, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v8, Lccsancom/vungle/warren/error/VungleException;

    const/16 v9, 0x1a

    invoke-direct {v8, v9}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v9, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v9, v9, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v10, 0x0

    invoke-interface {v6, v8, v9, v10}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 975
    return-void

    .line 982
    .end local v0    # "ignored":Lccsancom/vungle/warren/persistence/DatabaseHelper$DBException;
    .end local v5    # "sleep":I
    :cond_15
    :goto_6
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v0, v5

    iget-object v5, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v5, v5, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v8, 0x1

    aput-object v5, v0, v8

    .line 983
    const-string v5, "badAd; can\'t proceed %1$s; request = %2$s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {v6, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v5, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v5, v8}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v6, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v6, v6, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v6, v6, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v8, 0x0

    invoke-interface {v0, v5, v6, v8}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 994
    .end local v2    # "admarkup":Lccsancom/google/gson/JsonObject;
    .end local v4    # "badAd":Ljava/lang/IllegalArgumentException;
    :cond_16
    :goto_7
    nop

    .line 995
    .end local v11    # "ads":Lccsancom/google/gson/JsonArray;
    .end local v12    # "ad":Lccsancom/google/gson/JsonObject;
    :goto_8
    goto :goto_a

    .line 850
    .restart local v11    # "ads":Lccsancom/google/gson/JsonArray;
    :cond_17
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response was successful, but no ads; request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v4, v5}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 854
    return-void

    .line 996
    .end local v11    # "ads":Lccsancom/google/gson/JsonArray;
    :cond_18
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v0, v2

    iget-object v2, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v2, v2, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    aput-object v7, v0, v2

    .line 997
    const-string v2, "Response has no ads; placement = %1$s;op.request = %2$s; response = %3$s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 996
    invoke-static {v6, v0}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v0, v0, Lccsancom/vungle/warren/AdLoader$5;->val$downloadCallback:Lccsancom/vungle/warren/AdLoader$DownloadCallback;

    new-instance v2, Lccsancom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v4, v1, Lccsancom/vungle/warren/AdLoader$5$1;->this$1:Lccsancom/vungle/warren/AdLoader$5;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$5;->val$op:Lccsancom/vungle/warren/AdLoader$Operation;

    iget-object v4, v4, Lccsancom/vungle/warren/AdLoader$Operation;->request:Lccsancom/vungle/warren/AdRequest;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v4, v5}, Lccsancom/vungle/warren/AdLoader$DownloadCallback;->onDownloadFailed(Lccsancom/vungle/warren/error/VungleException;Lccsancom/vungle/warren/AdRequest;Ljava/lang/String;)V

    .line 1002
    :goto_a
    return-void
.end method
