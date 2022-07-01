.class Lccsancom/applovin/impl/sdk/e/s;
.super Lccsancom/applovin/impl/sdk/e/a;


# instance fields
.field private a:Lccsancom/applovin/impl/a/c;

.field private final c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskRenderVastAd"

    invoke-direct {p0, v0, p3}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/s;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "Rendering VAST ad..."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/s;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsancom/applovin/impl/sdk/utils/p;

    invoke-static {v8}, Lccsancom/applovin/impl/a/i;->a(Lccsancom/applovin/impl/sdk/utils/p;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "Wrapper"

    goto :goto_1

    :cond_1
    const-string v9, "InLine"

    :goto_1
    invoke-virtual {v8, v9}, Lccsancom/applovin/impl/sdk/utils/p;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object v9

    if-eqz v9, :cond_7

    const-string v8, "AdSystem"

    invoke-virtual {v9, v8}, Lccsancom/applovin/impl/sdk/utils/p;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v10, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v8, v5, v10}, Lccsancom/applovin/impl/a/f;->a(Lccsancom/applovin/impl/sdk/utils/p;Lccsancom/applovin/impl/a/f;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/a/f;

    move-result-object v5

    :cond_2
    const-string v8, "AdTitle"

    invoke-static {v9, v8, v3}, Lccsancom/applovin/impl/a/i;->a(Lccsancom/applovin/impl/sdk/utils/p;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "Description"

    invoke-static {v9, v8, v4}, Lccsancom/applovin/impl/a/i;->a(Lccsancom/applovin/impl/sdk/utils/p;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "Impression"

    invoke-virtual {v9, v8}, Lccsancom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget-object v10, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    iget-object v11, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v8, v1, v10, v11}, Lccsancom/applovin/impl/a/i;->a(Ljava/util/List;Ljava/util/Set;Lccsancom/applovin/impl/a/c;Lccsancom/applovin/impl/sdk/k;)V

    const-string v8, "ViewableImpression"

    invoke-virtual {v9, v8}, Lccsancom/applovin/impl/sdk/utils/p;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v10, "Viewable"

    invoke-virtual {v8, v10}, Lccsancom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget-object v10, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    iget-object v11, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v8, v1, v10, v11}, Lccsancom/applovin/impl/a/i;->a(Ljava/util/List;Ljava/util/Set;Lccsancom/applovin/impl/a/c;Lccsancom/applovin/impl/sdk/k;)V

    :cond_3
    const-string v8, "Error"

    invoke-virtual {v9, v8}, Lccsancom/applovin/impl/sdk/utils/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget-object v10, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    iget-object v11, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v8, v2, v10, v11}, Lccsancom/applovin/impl/a/i;->a(Ljava/util/List;Ljava/util/Set;Lccsancom/applovin/impl/a/c;Lccsancom/applovin/impl/sdk/k;)V

    const-string v8, "Creatives"

    invoke-virtual {v9, v8}, Lccsancom/applovin/impl/sdk/utils/p;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lccsancom/applovin/impl/sdk/utils/p;->d()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsancom/applovin/impl/sdk/utils/p;

    const-string v10, "Linear"

    invoke-virtual {v9, v10}, Lccsancom/applovin/impl/sdk/utils/p;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v9, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    iget-object v11, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v10, v6, v9, v11}, Lccsancom/applovin/impl/a/j;->a(Lccsancom/applovin/impl/sdk/utils/p;Lccsancom/applovin/impl/a/j;Lccsancom/applovin/impl/a/c;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/a/j;

    move-result-object v6

    goto :goto_2

    :cond_5
    const-string v10, "CompanionAds"

    invoke-virtual {v9, v10}, Lccsancom/applovin/impl/sdk/utils/p;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string v9, "Companion"

    invoke-virtual {v10, v9}, Lccsancom/applovin/impl/sdk/utils/p;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v10, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    iget-object v11, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v9, v7, v10, v11}, Lccsancom/applovin/impl/a/b;->a(Lccsancom/applovin/impl/sdk/utils/p;Lccsancom/applovin/impl/a/b;Lccsancom/applovin/impl/a/c;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/a/b;

    move-result-object v7

    goto :goto_2

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received and will skip rendering for an unidentified creative: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lccsancom/applovin/impl/sdk/e/s;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Did not find wrapper or inline response for node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lccsancom/applovin/impl/sdk/e/s;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lccsancom/applovin/impl/a/a;->aS()Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v8, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0, v8}, Lccsancom/applovin/impl/a/a$a;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v8, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    invoke-virtual {v8}, Lccsancom/applovin/impl/a/c;->c()Lccsanorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v8}, Lccsancom/applovin/impl/a/a$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v8, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    invoke-virtual {v8}, Lccsancom/applovin/impl/a/c;->d()Lccsanorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v0, v8}, Lccsancom/applovin/impl/a/a$a;->b(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v8, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    invoke-virtual {v8}, Lccsancom/applovin/impl/a/c;->e()Lccsancom/applovin/impl/sdk/a/b;

    move-result-object v8

    invoke-virtual {v0, v8}, Lccsancom/applovin/impl/a/a$a;->a(Lccsancom/applovin/impl/sdk/a/b;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    iget-object v8, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    invoke-virtual {v8}, Lccsancom/applovin/impl/a/c;->f()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lccsancom/applovin/impl/a/a$a;->a(J)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsancom/applovin/impl/a/a$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lccsancom/applovin/impl/a/a$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lccsancom/applovin/impl/a/a$a;->a(Lccsancom/applovin/impl/a/f;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lccsancom/applovin/impl/a/a$a;->a(Lccsancom/applovin/impl/a/j;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lccsancom/applovin/impl/a/a$a;->a(Lccsancom/applovin/impl/a/b;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/a/a$a;->a(Ljava/util/Set;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/a/a$a;->b(Ljava/util/Set;)Lccsancom/applovin/impl/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a$a;->a()Lccsancom/applovin/impl/a/a;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/a/i;->a(Lccsancom/applovin/impl/a/a;)Lccsancom/applovin/impl/a/d;

    move-result-object v1

    if-nez v1, :cond_b

    new-instance v1, Lccsancom/applovin/impl/sdk/e/e;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/s;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    invoke-direct {v1, v0, v2, v3}, Lccsancom/applovin/impl/sdk/e/e;-><init>(Lccsancom/applovin/impl/a/a;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    sget-object v2, Lccsancom/applovin/impl/sdk/e/o$a;->h:Lccsancom/applovin/impl/sdk/e/o$a;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->be:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    sget-object v4, Lccsancom/applovin/sdk/AppLovinAdType;->REGULAR:Lccsancom/applovin/sdk/AppLovinAdType;

    if-ne v3, v4, :cond_9

    sget-object v2, Lccsancom/applovin/impl/sdk/e/o$a;->f:Lccsancom/applovin/impl/sdk/e/o$a;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v3, Lccsancom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lccsancom/applovin/sdk/AppLovinAdType;

    if-ne v0, v3, :cond_a

    sget-object v2, Lccsancom/applovin/impl/sdk/e/o$a;->g:Lccsancom/applovin/impl/sdk/e/o$a;

    :cond_a
    :goto_3
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/s;->a:Lccsancom/applovin/impl/a/c;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/s;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v3, -0x6

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/e/s;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, v2, v1, v3, v4}, Lccsancom/applovin/impl/a/i;->a(Lccsancom/applovin/impl/a/c;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/a/d;ILccsancom/applovin/impl/sdk/k;)V

    :goto_4
    return-void
.end method
