.class final Lccsancom/applovin/impl/sdk/e/q$b;
.super Lccsancom/applovin/impl/sdk/e/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lccsanorg/json/JSONObject;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/q;-><init>(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/a/c;->c()Lccsanorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/q$b;->a:Lccsanorg/json/JSONObject;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Processing SDK JSON response..."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/q$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/q$b;->a:Lccsanorg/json/JSONObject;

    const-string/jumbo v1, "xml"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/q$b;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->ee:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/q$b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/q$b;->a(Lccsancom/applovin/impl/sdk/utils/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v1, "Unable to parse VAST response"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/e/q$b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "VAST response is over max length"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/q$b;->d(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lccsancom/applovin/impl/a/d;->b:Lccsancom/applovin/impl/a/d;

    goto :goto_1

    :cond_1
    const-string v0, "No VAST response received."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/q$b;->d(Ljava/lang/String;)V

    sget-object v0, Lccsancom/applovin/impl/a/d;->f:Lccsancom/applovin/impl/a/d;

    :goto_1
    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/q$b;->a(Lccsancom/applovin/impl/a/d;)V

    :goto_2
    return-void
.end method
