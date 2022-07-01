.class Lccsancom/vungle/warren/VungleApiClient$2;
.super Ljava/lang/Object;
.source "VungleApiClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/VungleApiClient;->initUserAgentLazy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/VungleApiClient;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/VungleApiClient;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/VungleApiClient;

    .line 437
    iput-object p1, p0, Lccsancom/vungle/warren/VungleApiClient$2;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 442
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient$2;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleApiClient;->access$300(Lccsancom/vungle/warren/VungleApiClient;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/webkit/WebSettings;->getDefaultUserAgent(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleApiClient;->access$202(Lccsancom/vungle/warren/VungleApiClient;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient$2;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleApiClient;->access$400(Lccsancom/vungle/warren/VungleApiClient;)Lccsancom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "ua"

    iget-object v2, p0, Lccsancom/vungle/warren/VungleApiClient$2;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-static {v2}, Lccsancom/vungle/warren/VungleApiClient;->access$200(Lccsancom/vungle/warren/VungleApiClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lccsancom/vungle/warren/VungleApiClient$2;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleApiClient;->access$200(Lccsancom/vungle/warren/VungleApiClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/vungle/warren/VungleApiClient;->access$500(Lccsancom/vungle/warren/VungleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot Get UserAgent. Setting Default Device UserAgent."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
