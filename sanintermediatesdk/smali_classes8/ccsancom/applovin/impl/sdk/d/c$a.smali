.class Lccsancom/applovin/impl/sdk/d/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsanorg/json/JSONObject;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$a;->b:Lccsanorg/json/JSONObject;

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/d/c$a;->a:Lccsancom/applovin/impl/sdk/k;

    const-string p4, "pk"

    invoke-static {v0, p4, p1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo p1, "ts"

    invoke-static {v0, p1, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)V

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "sk1"

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "sk2"

    invoke-static {v0, p1, p3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/d/c$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/applovin/impl/sdk/d/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$a;->b:Lccsanorg/json/JSONObject;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/d/c$a;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/d/c$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$a;->b:Lccsanorg/json/JSONObject;

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/applovin/impl/sdk/d/c$a;->b(Ljava/lang/String;J)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$a;->b:Lccsanorg/json/JSONObject;

    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/d/c$a;->b:Lccsanorg/json/JSONObject;

    invoke-static {p2, p1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putJsonArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)V

    return-void
.end method

.method b(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/c$a;->b:Lccsanorg/json/JSONObject;

    invoke-static {v0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdEventStats{stats=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/c$a;->b:Lccsanorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
