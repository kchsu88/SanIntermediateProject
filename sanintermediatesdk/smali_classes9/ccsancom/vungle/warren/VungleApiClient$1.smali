.class Lccsancom/vungle/warren/VungleApiClient$1;
.super Ljava/lang/Object;
.source "VungleApiClient.java"

# interfaces
.implements Lccsanokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/VungleApiClient;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/persistence/Repository;Lccsancom/vungle/warren/omsdk/OMInjector;)V
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

    .line 232
    iput-object p1, p0, Lccsancom/vungle/warren/VungleApiClient$1;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lccsanokhttp3/Interceptor$Chain;)Lccsanokhttp3/Response;
    .locals 13
    .param p1, "chain"    # Lccsanokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->request()Lccsanokhttp3/Request;

    move-result-object v0

    .line 239
    .local v0, "request":Lccsanokhttp3/Request;
    invoke-virtual {v0}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "urlPath":Ljava/lang/String;
    iget-object v2, p0, Lccsancom/vungle/warren/VungleApiClient$1;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-static {v2}, Lccsancom/vungle/warren/VungleApiClient;->access$000(Lccsancom/vungle/warren/VungleApiClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 242
    .local v2, "retryExpireTime":Ljava/lang/Long;
    const/16 v3, 0x1f4

    const-string v4, "Retry-After"

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 244
    .local v7, "currentTimeStamp":J
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v9

    .line 245
    .local v9, "newRetryAfter":J
    cmp-long v11, v9, v5

    if-lez v11, :cond_0

    .line 246
    new-instance v5, Lccsanokhttp3/Response$Builder;

    invoke-direct {v5}, Lccsanokhttp3/Response$Builder;-><init>()V

    .line 247
    invoke-virtual {v5, v0}, Lccsanokhttp3/Response$Builder;->request(Lccsanokhttp3/Request;)Lccsanokhttp3/Response$Builder;

    move-result-object v5

    .line 248
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lccsanokhttp3/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Response$Builder;

    move-result-object v4

    .line 249
    invoke-virtual {v4, v3}, Lccsanokhttp3/Response$Builder;->code(I)Lccsanokhttp3/Response$Builder;

    move-result-object v3

    sget-object v4, Lccsanokhttp3/Protocol;->HTTP_1_1:Lccsanokhttp3/Protocol;

    .line 250
    invoke-virtual {v3, v4}, Lccsanokhttp3/Response$Builder;->protocol(Lccsanokhttp3/Protocol;)Lccsanokhttp3/Response$Builder;

    move-result-object v3

    .line 251
    const-string v4, "Server is busy"

    invoke-virtual {v3, v4}, Lccsanokhttp3/Response$Builder;->message(Ljava/lang/String;)Lccsanokhttp3/Response$Builder;

    move-result-object v3

    .line 252
    const-string v4, "application/json; charset=utf-8"

    invoke-static {v4}, Lccsanokhttp3/MediaType;->parse(Ljava/lang/String;)Lccsanokhttp3/MediaType;

    move-result-object v4

    const-string v5, "{\"Error\":\"Retry-After\"}"

    invoke-static {v4, v5}, Lccsanokhttp3/ResponseBody;->create(Lccsanokhttp3/MediaType;Ljava/lang/String;)Lccsanokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanokhttp3/Response$Builder;->body(Lccsanokhttp3/ResponseBody;)Lccsanokhttp3/Response$Builder;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v3

    .line 246
    return-object v3

    .line 255
    :cond_0
    iget-object v11, p0, Lccsancom/vungle/warren/VungleApiClient$1;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-static {v11}, Lccsancom/vungle/warren/VungleApiClient;->access$000(Lccsancom/vungle/warren/VungleApiClient;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v7    # "currentTimeStamp":J
    .end local v9    # "newRetryAfter":J
    :cond_1
    invoke-interface {p1, v0}, Lccsanokhttp3/Interceptor$Chain;->proceed(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v7

    .line 260
    .local v7, "response":Lccsanokhttp3/Response;
    if-eqz v7, :cond_4

    .line 261
    invoke-virtual {v7}, Lccsanokhttp3/Response;->code()I

    move-result v8

    .line 262
    .local v8, "responseCode":I
    const/16 v9, 0x1ad

    if-eq v8, v9, :cond_2

    if-eq v8, v3, :cond_2

    const/16 v3, 0x1f6

    if-eq v8, v3, :cond_2

    const/16 v3, 0x1f7

    if-ne v8, v3, :cond_4

    .line 263
    :cond_2
    invoke-virtual {v7}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3, v4}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "retryAfterTimeStr":Ljava/lang/String;
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 266
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 267
    .local v9, "retryAfterTimeValue":J
    cmp-long v4, v9, v5

    if-lez v4, :cond_3

    .line 268
    iget-object v4, p0, Lccsancom/vungle/warren/VungleApiClient$1;->this$0:Lccsancom/vungle/warren/VungleApiClient;

    invoke-static {v4}, Lccsancom/vungle/warren/VungleApiClient;->access$000(Lccsancom/vungle/warren/VungleApiClient;)Ljava/util/Map;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    add-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v9    # "retryAfterTimeValue":J
    :cond_3
    goto :goto_0

    .line 270
    :catch_0
    move-exception v4

    .line 271
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lccsancom/vungle/warren/VungleApiClient;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Retry-After value is not an valid value"

    invoke-static {v5, v6}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v3    # "retryAfterTimeStr":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "responseCode":I
    :cond_4
    :goto_0
    return-object v7
.end method
