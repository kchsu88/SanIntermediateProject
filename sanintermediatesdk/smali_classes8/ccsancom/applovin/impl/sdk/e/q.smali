.class abstract Lccsancom/applovin/impl/sdk/e/q;
.super Lccsancom/applovin/impl/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/e/q$a;,
        Lccsancom/applovin/impl/sdk/e/q$c;,
        Lccsancom/applovin/impl/sdk/e/q$b;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

.field private final c:Lccsancom/applovin/impl/sdk/e/q$a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskProcessVastResponse"

    invoke-direct {p0, v0, p3}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    if-eqz p1, :cond_0

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/q;->a:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    check-cast p1, Lccsancom/applovin/impl/sdk/e/q$a;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/q;->c:Lccsancom/applovin/impl/sdk/e/q$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lccsancom/applovin/impl/sdk/utils/p;Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/e/q;
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/sdk/e/q$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/q$c;-><init>(Lccsancom/applovin/impl/sdk/utils/p;Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    return-object v0
.end method

.method public static a(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/e/q;
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/sdk/e/q$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lccsancom/applovin/impl/sdk/e/q$a;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/impl/sdk/k;)V

    new-instance p0, Lccsancom/applovin/impl/sdk/e/q$b;

    invoke-direct {p0, v0, p3, p4}, Lccsancom/applovin/impl/sdk/e/q$b;-><init>(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    return-object p0
.end method


# virtual methods
.method a(Lccsancom/applovin/impl/a/d;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to process VAST response due to VAST error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/q;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/q;->c:Lccsancom/applovin/impl/sdk/e/q$a;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/q;->a:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/q;->b:Lccsancom/applovin/impl/sdk/k;

    const/4 v3, -0x6

    invoke-static {v0, v1, p1, v3, v2}, Lccsancom/applovin/impl/a/i;->a(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/a/d;ILccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method a(Lccsancom/applovin/impl/sdk/utils/p;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/q;->c:Lccsancom/applovin/impl/sdk/e/q$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/e/q$a;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished parsing XML at depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/e/q;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/q;->c:Lccsancom/applovin/impl/sdk/e/q$a;

    invoke-virtual {v1, p1}, Lccsancom/applovin/impl/sdk/e/q$a;->a(Lccsancom/applovin/impl/sdk/utils/p;)V

    invoke-static {p1}, Lccsancom/applovin/impl/a/i;->a(Lccsancom/applovin/impl/sdk/utils/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/q;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ef:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v0, p1, :cond_0

    const-string p1, "VAST response is wrapper. Resolving..."

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/q;->a(Ljava/lang/String;)V

    new-instance p1, Lccsancom/applovin/impl/sdk/e/w;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/q;->c:Lccsancom/applovin/impl/sdk/e/q$a;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/q;->a:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/q;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p1, v0, v1, v2}, Lccsancom/applovin/impl/sdk/e/w;-><init>(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reached beyond max wrapper depth of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/q;->d(Ljava/lang/String;)V

    sget-object p1, Lccsancom/applovin/impl/a/d;->e:Lccsancom/applovin/impl/a/d;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lccsancom/applovin/impl/a/i;->b(Lccsancom/applovin/impl/sdk/utils/p;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "VAST response is inline. Rendering ad..."

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/q;->a(Ljava/lang/String;)V

    new-instance p1, Lccsancom/applovin/impl/sdk/e/s;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/q;->c:Lccsancom/applovin/impl/sdk/e/q$a;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/q;->a:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/q;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p1, v0, v1, v2}, Lccsancom/applovin/impl/sdk/e/s;-><init>(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/q;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    goto :goto_2

    :cond_2
    const-string p1, "VAST response is an error"

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/q;->d(Ljava/lang/String;)V

    sget-object p1, Lccsancom/applovin/impl/a/d;->f:Lccsancom/applovin/impl/a/d;

    :goto_1
    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/q;->a(Lccsancom/applovin/impl/a/d;)V

    :goto_2
    return-void
.end method
