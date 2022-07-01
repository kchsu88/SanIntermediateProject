.class public Lccsancom/iab/omid/library/vungle/adsession/a;
.super Lccsancom/iab/omid/library/vungle/adsession/AdSession;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;

.field private final c:Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/iab/omid/library/vungle/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lccsancom/iab/omid/library/vungle/e/a;

.field private f:Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

.field private g:Z

.field private h:Z

.field private final i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/iab/omid/library/vungle/adsession/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;)V
    .locals 2

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/adsession/AdSession;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->g:Z

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->c:Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    iput-object p2, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->b:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->i:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/iab/omid/library/vungle/adsession/a;->c(Lccsanandroid/view/View;)V

    invoke-virtual {p2}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;->getAdSessionContextType()Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->HTML:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;->getAdSessionContextType()Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;->JAVASCRIPT:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/iab/omid/library/vungle/publisher/b;

    invoke-virtual {p2}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;->getInjectedResourcesMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;->getOmidJsScriptContent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lccsancom/iab/omid/library/vungle/publisher/b;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lccsancom/iab/omid/library/vungle/publisher/a;

    invoke-virtual {p2}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;->getWebView()Lccsanandroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p2}, Lccsancom/iab/omid/library/vungle/publisher/a;-><init>(Lccsanandroid/webkit/WebView;)V

    :goto_1
    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->f:Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    iget-object p2, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->f:Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    invoke-virtual {p2}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a()V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/a;->a()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object p2

    invoke-virtual {p2, p0}, Lccsancom/iab/omid/library/vungle/b/a;->a(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    iget-object p2, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->f:Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    invoke-virtual {p2, p1}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;)V

    return-void
.end method

.method private a(Lccsanandroid/view/View;)Lccsancom/iab/omid/library/vungle/b/c;
    .locals 3

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/iab/omid/library/vungle/b/c;

    invoke-virtual {v1}, Lccsancom/iab/omid/library/vungle/b/c;->a()Lccsancom/iab/omid/library/vungle/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/iab/omid/library/vungle/e/a;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    sget-object v0, Lccsancom/iab/omid/library/vungle/adsession/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FriendlyObstruction has improperly formatted detailed reason"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Lccsanandroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "FriendlyObstruction is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(Lccsanandroid/view/View;)V
    .locals 1

    new-instance v0, Lccsancom/iab/omid/library/vungle/e/a;

    invoke-direct {v0, p1}, Lccsancom/iab/omid/library/vungle/e/a;-><init>(Lccsanandroid/view/View;)V

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->e:Lccsancom/iab/omid/library/vungle/e/a;

    return-void
.end method

.method private d(Lccsanandroid/view/View;)V
    .locals 3

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/a;->a()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/b/a;->b()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/iab/omid/library/vungle/adsession/a;

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lccsancom/iab/omid/library/vungle/adsession/a;->d()Lccsanandroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Lccsancom/iab/omid/library/vungle/adsession/a;->e:Lccsancom/iab/omid/library/vungle/e/a;

    invoke-virtual {v1}, Lccsancom/iab/omid/library/vungle/e/a;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Loaded event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/iab/omid/library/vungle/b/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->d:Ljava/util/List;

    return-object v0
.end method

.method a(Lccsanorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->k()V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lccsanorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->k:Z

    return-void
.end method

.method public addFriendlyObstruction(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lccsancom/iab/omid/library/vungle/adsession/a;->b(Lccsanandroid/view/View;)V

    invoke-direct {p0, p3}, Lccsancom/iab/omid/library/vungle/adsession/a;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lccsancom/iab/omid/library/vungle/adsession/a;->a(Lccsanandroid/view/View;)Lccsancom/iab/omid/library/vungle/b/c;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->d:Ljava/util/List;

    new-instance v1, Lccsancom/iab/omid/library/vungle/b/c;

    invoke-direct {v1, p1, p2, p3}, Lccsancom/iab/omid/library/vungle/b/c;-><init>(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method b()V
    .locals 1

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->j()V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->j:Z

    return-void
.end method

.method c()V
    .locals 1

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->k()V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->k:Z

    return-void
.end method

.method public d()Lccsanandroid/view/View;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->e:Lccsancom/iab/omid/library/vungle/e/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/e/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public error(Lccsancom/iab/omid/library/vungle/adsession/ErrorType;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    if-nez v0, :cond_0

    const-string v0, "Error type is null"

    invoke-static {p1, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Message is null"

    invoke-static {p2, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lccsancom/iab/omid/library/vungle/adsession/ErrorType;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AdSession is finished"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->g:Z

    return v0
.end method

.method public finish()V
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->e:Lccsancom/iab/omid/library/vungle/e/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/e/a;->clear()V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->removeAllFriendlyObstructions()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->f()V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/a;->a()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/iab/omid/library/vungle/b/a;->c(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->f:Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    return v0
.end method

.method public getAdSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->f:Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->c:Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->isNativeImpressionOwner()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->c:Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->isNativeMediaEventsOwner()Z

    move-result v0

    return v0
.end method

.method public registerAdView(Lccsanandroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->d()Lccsanandroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lccsancom/iab/omid/library/vungle/adsession/a;->c(Lccsanandroid/view/View;)V

    invoke-virtual {p0}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->i()V

    invoke-direct {p0, p1}, Lccsancom/iab/omid/library/vungle/adsession/a;->d(Lccsanandroid/view/View;)V

    return-void
.end method

.method public removeAllFriendlyObstructions()V
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeFriendlyObstruction(Lccsanandroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lccsancom/iab/omid/library/vungle/adsession/a;->b(Lccsanandroid/view/View;)V

    invoke-direct {p0, p1}, Lccsancom/iab/omid/library/vungle/adsession/a;->a(Lccsanandroid/view/View;)Lccsancom/iab/omid/library/vungle/b/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->g:Z

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/a;->a()Lccsancom/iab/omid/library/vungle/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/iab/omid/library/vungle/b/a;->b(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    invoke-static {}, Lccsancom/iab/omid/library/vungle/b/f;->a()Lccsancom/iab/omid/library/vungle/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/b/f;->d()F

    move-result v0

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->f:Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    invoke-virtual {v1, v0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(F)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->f:Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/adsession/a;->b:Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;

    invoke-virtual {v0, p0, v1}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lccsancom/iab/omid/library/vungle/adsession/a;Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;)V

    return-void
.end method