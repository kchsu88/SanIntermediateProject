.class public Lccsancom/applovin/impl/sdk/network/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/network/g$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/sdk/network/g$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Lccsancom/applovin/impl/sdk/network/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->b:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Lccsancom/applovin/impl/sdk/network/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->c:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Lccsancom/applovin/impl/sdk/network/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->d:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->d(Lccsancom/applovin/impl/sdk/network/g$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->e:Ljava/util/Map;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->e(Lccsancom/applovin/impl/sdk/network/g$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->f:Ljava/util/Map;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->f(Lccsancom/applovin/impl/sdk/network/g$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->g:Ljava/util/Map;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->g(Lccsancom/applovin/impl/sdk/network/g$a;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/sdk/network/g;->h:Z

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->h(Lccsancom/applovin/impl/sdk/network/g$a;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/sdk/network/g;->i:Z

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->i(Lccsancom/applovin/impl/sdk/network/g$a;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/sdk/network/g;->j:Z

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->j(Lccsancom/applovin/impl/sdk/network/g$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/network/g;->k:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lccsancom/applovin/impl/sdk/network/g;->l:I

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/sdk/network/g$a;Lccsancom/applovin/impl/sdk/network/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/network/g;-><init>(Lccsancom/applovin/impl/sdk/network/g$a;)V

    return-void
.end method

.method constructor <init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "uniqueId"

    invoke-static {p1, v0, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "communicatorRequestId"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "httpMethod"

    invoke-static {p1, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, "targetUrl"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "backupUrl"

    invoke-static {p1, v3, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "attemptNumber"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "parameters"

    invoke-static {p1, v4}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lccsanorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toStringMap(Lccsanorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    :goto_0
    const-string v5, "httpHeaders"

    invoke-static {p1, v5}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lccsanorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v5}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toStringMap(Lccsanorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    :goto_1
    const-string v6, "requestBody"

    invoke-static {p1, v6}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lccsanorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toStringObjectMap(Lccsanorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    :goto_2
    iput-object p2, p0, Lccsancom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->k:Ljava/lang/String;

    iput-object v2, p0, Lccsancom/applovin/impl/sdk/network/g;->c:Ljava/lang/String;

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->d:Ljava/lang/String;

    iput-object v4, p0, Lccsancom/applovin/impl/sdk/network/g;->e:Ljava/util/Map;

    iput-object v5, p0, Lccsancom/applovin/impl/sdk/network/g;->f:Ljava/util/Map;

    iput-object v6, p0, Lccsancom/applovin/impl/sdk/network/g;->g:Ljava/util/Map;

    const-string p2, "isEncodingEnabled"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lccsancom/applovin/impl/sdk/network/g;->h:Z

    const-string p2, "gzipBodyEncoding"

    invoke-virtual {p1, p2, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lccsancom/applovin/impl/sdk/network/g;->i:Z

    const-string/jumbo p2, "shouldFireInWebView"

    invoke-virtual {p1, p2, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/network/g;->j:Z

    iput v3, p0, Lccsancom/applovin/impl/sdk/network/g;->l:I

    return-void
.end method

.method public static o()Lccsancom/applovin/impl/sdk/network/g$a;
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/sdk/network/g$a;

    invoke-direct {v0}, Lccsancom/applovin/impl/sdk/network/g$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->e:Ljava/util/Map;

    return-object v0
.end method

.method e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->f:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lccsancom/applovin/impl/sdk/network/g;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    iget-object p1, p1, Lccsancom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->g:Ljava/util/Map;

    return-object v0
.end method

.method g()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/sdk/network/g;->h:Z

    return v0
.end method

.method h()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/sdk/network/g;->i:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/sdk/network/g;->j:Z

    return v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method k()I
    .locals 1

    iget v0, p0, Lccsancom/applovin/impl/sdk/network/g;->l:I

    return v0
.end method

.method l()V
    .locals 1

    iget v0, p0, Lccsancom/applovin/impl/sdk/network/g;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/applovin/impl/sdk/network/g;->l:I

    return-void
.end method

.method m()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "postback_ts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/network/g;->e:Ljava/util/Map;

    return-void
.end method

.method n()Lccsanorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    const-string/jumbo v2, "uniqueId"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->k:Ljava/lang/String;

    const-string v2, "communicatorRequestId"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->b:Ljava/lang/String;

    const-string v2, "httpMethod"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->c:Ljava/lang/String;

    const-string/jumbo v2, "targetUrl"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->d:Ljava/lang/String;

    const-string v2, "backupUrl"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    iget-boolean v1, p0, Lccsancom/applovin/impl/sdk/network/g;->h:Z

    const-string v2, "isEncodingEnabled"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    iget-boolean v1, p0, Lccsancom/applovin/impl/sdk/network/g;->i:Z

    const-string v2, "gzipBodyEncoding"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    iget v1, p0, Lccsancom/applovin/impl/sdk/network/g;->l:I

    const-string v2, "attemptNumber"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->e:Ljava/util/Map;

    if-eqz v1, :cond_0

    new-instance v1, Lccsanorg/json/JSONObject;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/g;->e:Ljava/util/Map;

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "parameters"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->f:Ljava/util/Map;

    if-eqz v1, :cond_1

    new-instance v1, Lccsanorg/json/JSONObject;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/g;->f:Ljava/util/Map;

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "httpHeaders"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->g:Ljava/util/Map;

    if-eqz v1, :cond_2

    new-instance v1, Lccsanorg/json/JSONObject;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/g;->g:Ljava/util/Map;

    invoke-direct {v1, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "requestBody"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostbackRequest{uniqueId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", communicatorRequestId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", httpMethod=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", targetUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", backupUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/network/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", attemptNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/applovin/impl/sdk/network/g;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEncodingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/applovin/impl/sdk/network/g;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isGzipBodyEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/applovin/impl/sdk/network/g;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
