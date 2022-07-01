.class Lccsancom/applovin/impl/sdk/e/e;
.super Lccsancom/applovin/impl/sdk/e/c;


# instance fields
.field private final c:Lccsancom/applovin/impl/a/a;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/a/a;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    const-string v0, "TaskCacheVastAd"

    invoke-direct {p0, v0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/e/c;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    return-void
.end method

.method private j()V
    .locals 7

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->aQ()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->n()Lccsancom/applovin/impl/a/b;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/b;->b()Lccsancom/applovin/impl/a/e;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/e;->b()Lccsanandroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0}, Lccsancom/applovin/impl/a/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lccsanandroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "Companion ad does not have any resources attached. Skipping..."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->c(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lccsancom/applovin/impl/a/e;->a()Lccsancom/applovin/impl/a/e$a;

    move-result-object v3

    sget-object v4, Lccsancom/applovin/impl/a/e$a;->b:Lccsancom/applovin/impl/a/e$a;

    const-string v5, "..."

    const/4 v6, 0x1

    if-ne v3, v4, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching static companion ad at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/e/e;->b(Ljava/lang/String;Ljava/util/List;Z)Lccsanandroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/a/e;->a(Lccsanandroid/net/Uri;)V

    :goto_2
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0, v6}, Lccsancom/applovin/impl/a/a;->a(Z)V

    goto/16 :goto_6

    :cond_4
    const-string v0, "Failed to cache static companion ad"

    :goto_3
    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->d(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v0}, Lccsancom/applovin/impl/a/e;->a()Lccsancom/applovin/impl/a/e$a;

    move-result-object v3

    sget-object v4, Lccsancom/applovin/impl/a/e$a;->d:Lccsancom/applovin/impl/a/e$a;

    if-ne v3, v4, :cond_8

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin caching HTML companion ad. Fetching from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/e/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "HTML fetched. Caching HTML now..."

    :goto_4
    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {p0, v2, v1, v3}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;Ljava/util/List;Lccsancom/applovin/impl/sdk/a/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/a/e;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load companion ad resources from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching provided HTML for companion ad. No fetch required. HTML: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lccsancom/applovin/impl/a/e;->a()Lccsancom/applovin/impl/a/e$a;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/a/e$a;->c:Lccsancom/applovin/impl/a/e$a;

    if-ne v0, v1, :cond_c

    const-string v0, "Skip caching of iFrame resource..."

    goto :goto_5

    :cond_9
    const-string v0, "Failed to retrieve non-video resources from companion ad. Skipping..."

    goto :goto_3

    :cond_a
    const-string v0, "No companion ad provided. Skipping..."

    goto :goto_5

    :cond_b
    const-string v0, "Companion ad caching disabled. Skipping..."

    :goto_5
    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    :cond_c
    :goto_6
    return-void
.end method

.method private k()V
    .locals 4

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->aR()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->l()Lccsancom/applovin/impl/a/j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->m()Lccsancom/applovin/impl/a/k;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/k;->b()Lccsanandroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;Ljava/util/List;Z)Lccsanandroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video file successfully cached into: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/a/k;->a(Lccsanandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cache video file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Video caching disabled. Skipping..."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private l()V
    .locals 4

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->aP()Lccsanandroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Begin caching HTML template. Fetching from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/a/a;->aP()Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->aP()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/a/a;->J()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->aO()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/a/a;->J()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {p0, v0, v2, v3}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;Ljava/util/List;Lccsancom/applovin/impl/sdk/a/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/a/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish caching HTML template "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/a/a;->aO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for ad #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/a/a;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "Unable to load HTML template"

    :goto_1
    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-super {p0}, Lccsancom/applovin/impl/sdk/e/c;->run()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->f()Z

    move-result v0

    const-string v1, "..."

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin caching for VAST streaming ad #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/e;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->c()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->i()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->e()Lccsancom/applovin/impl/a/a$b;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/a/a$b;->a:Lccsancom/applovin/impl/a/a$b;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->j()V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->l()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->k()V

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->i()V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->e()Lccsancom/applovin/impl/a/a$b;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/a/a$b;->a:Lccsancom/applovin/impl/a/a$b;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->k()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->j()V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->l()V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin caching for VAST ad #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/e;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->c()V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->j()V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->k()V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/e;->l()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->i()V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished caching VAST ad #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/a/a;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v2}, Lccsancom/applovin/impl/a/a;->getCreatedAtMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v2, v3}, Lccsancom/applovin/impl/sdk/d/d;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/d/d;->a(JLccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/e;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/e;->c:Lccsancom/applovin/impl/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/a/a;->c()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/e;->a()V

    return-void
.end method
