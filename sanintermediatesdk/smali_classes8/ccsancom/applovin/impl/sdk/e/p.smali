.class public Lccsancom/applovin/impl/sdk/e/p;
.super Lccsancom/applovin/impl/sdk/e/a;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field private final a:Lccsanorg/json/JSONObject;

.field private final c:Lccsancom/applovin/impl/sdk/a/d;

.field private final d:Lccsancom/applovin/impl/sdk/a/b;

.field private final e:Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method public constructor <init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskProcessAdResponse"

    invoke-direct {p0, v0, p5}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/p;->a:Lccsanorg/json/JSONObject;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/p;->c:Lccsancom/applovin/impl/sdk/a/d;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/e/p;->d:Lccsancom/applovin/impl/sdk/a/b;

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/e/p;->e:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/p;->e:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method

.method private a(Lccsanorg/json/JSONObject;)V
    .locals 8

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "undefined"

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "applovin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Starting task for AppLovin ad..."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/p;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v7, Lccsancom/applovin/impl/sdk/e/r;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/p;->a:Lccsanorg/json/JSONObject;

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/e/p;->d:Lccsancom/applovin/impl/sdk/a/b;

    iget-object v6, p0, Lccsancom/applovin/impl/sdk/e/p;->b:Lccsancom/applovin/impl/sdk/k;

    move-object v1, v7

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lccsancom/applovin/impl/sdk/e/r;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    invoke-virtual {v0, v7}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "vast"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Starting task for VAST ad..."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/p;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/p;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/p;->a:Lccsanorg/json/JSONObject;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/p;->d:Lccsancom/applovin/impl/sdk/a/b;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/p;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v1, v2, p0, v3}, Lccsancom/applovin/impl/sdk/e/q;->a(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/e/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to process ad of unknown type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/p;->c(Ljava/lang/String;)V

    const/16 p1, -0x320

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/p;->failedToReceiveAd(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/p;->e:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/e/p;->a(I)V

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/p;->a:Lccsanorg/json/JSONObject;

    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    const-string v2, "ads"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "Processing ad..."

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/e/p;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONArray;ILccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/e/p;->a(Lccsanorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v0, "No ads were returned from the server"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/p;->c:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/p;->c:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->b()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/p;->a:Lccsanorg/json/JSONObject;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/p;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/Utils;->maybeHandleNoFillResponseForPublisher(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    const/16 v0, 0xcc

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/e/p;->a(I)V

    :goto_0
    return-void
.end method
