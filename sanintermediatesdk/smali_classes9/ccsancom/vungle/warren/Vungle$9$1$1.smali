.class Lccsancom/vungle/warren/Vungle$9$1$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle$9$1;->onResponse(Lccsancom/vungle/warren/network/Call;Lccsancom/vungle/warren/network/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/vungle/warren/Vungle$9$1;

.field final synthetic val$response:Lccsancom/vungle/warren/network/Response;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle$9$1;Lccsancom/vungle/warren/network/Response;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/vungle/warren/Vungle$9$1;

    .line 1009
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iput-object p2, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->val$response:Lccsancom/vungle/warren/network/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1012
    const-string v0, "Vungle#playAd"

    const/4 v1, 0x0

    .line 1013
    .local v1, "streamingAd":Lccsancom/vungle/warren/model/Advertisement;
    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->val$response:Lccsancom/vungle/warren/network/Response;

    invoke-virtual {v2}, Lccsancom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->val$response:Lccsancom/vungle/warren/network/Response;

    invoke-virtual {v2}, Lccsancom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/gson/JsonObject;

    .line 1015
    .local v2, "responseBody":Lccsancom/google/gson/JsonObject;
    if-eqz v2, :cond_0

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Lccsancom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1017
    :try_start_0
    invoke-virtual {v2, v3}, Lccsancom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lccsancom/google/gson/JsonObject;

    move-result-object v3

    .line 1018
    .local v3, "adJson":Lccsancom/google/gson/JsonObject;
    new-instance v4, Lccsancom/vungle/warren/model/Advertisement;

    invoke-direct {v4, v3}, Lccsancom/vungle/warren/model/Advertisement;-><init>(Lccsancom/google/gson/JsonObject;)V

    move-object v1, v4

    .line 1021
    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v4, v4, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v4, v4, Lccsancom/vungle/warren/Vungle$9;->val$settings:Lccsancom/vungle/warren/AdConfig;

    invoke-virtual {v1, v4}, Lccsancom/vungle/warren/model/Advertisement;->configure(Lccsancom/vungle/warren/AdConfig;)V

    .line 1026
    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v4, v4, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v4, v4, Lccsancom/vungle/warren/Vungle$9;->val$repository:Lccsancom/vungle/warren/persistence/Repository;

    iget-object v5, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v5, v5, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v5, v5, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lccsancom/vungle/warren/persistence/Repository;->saveAndApplyState(Lccsancom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "adJson":Lccsancom/google/gson/JsonObject;
    goto :goto_0

    .line 1030
    :catch_0
    move-exception v3

    .line 1031
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "streaming ads Exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Error using will_play_ad!"

    invoke-static {v0, v4, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1027
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1028
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "streaming ads IllegalArgumentException"

    invoke-static {v0, v4}, Lccsancom/vungle/warren/VungleLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-static {}, Lccsancom/vungle/warren/Vungle;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Will Play Ad did not respond with a replacement. Move on."

    invoke-static {v0, v4}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    .end local v2    # "responseBody":Lccsancom/google/gson/JsonObject;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-boolean v0, v0, Lccsancom/vungle/warren/Vungle$9$1;->val$finalStreamingOnly:Z

    if-eqz v0, :cond_2

    .line 1038
    if-nez v1, :cond_1

    .line 1039
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9;->val$placementId:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v2, v2, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v2, v2, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    new-instance v3, Lccsancom/vungle/warren/error/VungleException;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lccsancom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-static {v0, v2, v3}, Lccsancom/vungle/warren/Vungle;->access$1800(Ljava/lang/String;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/error/VungleException;)V

    goto :goto_1

    .line 1041
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9$1;->val$request:Lccsancom/vungle/warren/AdRequest;

    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v2, v2, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v2, v2, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v3, v3, Lccsancom/vungle/warren/Vungle$9$1;->val$placement:Lccsancom/vungle/warren/model/Placement;

    invoke-static {v0, v2, v3, v1}, Lccsancom/vungle/warren/Vungle;->access$1900(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    goto :goto_1

    .line 1044
    :cond_2
    iget-object v0, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v0, v0, Lccsancom/vungle/warren/Vungle$9$1;->val$request:Lccsancom/vungle/warren/AdRequest;

    iget-object v2, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v2, v2, Lccsancom/vungle/warren/Vungle$9$1;->this$0:Lccsancom/vungle/warren/Vungle$9;

    iget-object v2, v2, Lccsancom/vungle/warren/Vungle$9;->val$listener:Lccsancom/vungle/warren/PlayAdCallback;

    iget-object v3, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v3, v3, Lccsancom/vungle/warren/Vungle$9$1;->val$placement:Lccsancom/vungle/warren/model/Placement;

    iget-object v4, p0, Lccsancom/vungle/warren/Vungle$9$1$1;->this$1:Lccsancom/vungle/warren/Vungle$9$1;

    iget-object v4, v4, Lccsancom/vungle/warren/Vungle$9$1;->val$finalAdvertisement:Lccsancom/vungle/warren/model/Advertisement;

    invoke-static {v0, v2, v3, v4}, Lccsancom/vungle/warren/Vungle;->access$1900(Lccsancom/vungle/warren/AdRequest;Lccsancom/vungle/warren/PlayAdCallback;Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Advertisement;)V

    .line 1046
    :goto_1
    return-void
.end method
