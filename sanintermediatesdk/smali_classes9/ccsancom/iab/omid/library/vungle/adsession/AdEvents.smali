.class public final Lccsancom/iab/omid/library/vungle/adsession/AdEvents;
.super Ljava/lang/Object;


# instance fields
.field private final adSession:Lccsancom/iab/omid/library/vungle/adsession/a;


# direct methods
.method private constructor <init>(Lccsancom/iab/omid/library/vungle/adsession/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    return-void
.end method

.method public static createAdEvents(Lccsancom/iab/omid/library/vungle/adsession/AdSession;)Lccsancom/iab/omid/library/vungle/adsession/AdEvents;
    .locals 2

    move-object v0, p0

    check-cast v0, Lccsancom/iab/omid/library/vungle/adsession/a;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/d/e;->d(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/d/e;->b(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    new-instance p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;

    invoke-direct {p0, v0}, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;-><init>(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/adsession/a;->getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->a(Lccsancom/iab/omid/library/vungle/adsession/AdEvents;)V

    return-object p0
.end method


# virtual methods
.method public impressionOccurred()V
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/d/e;->b(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/d/e;->f(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/adsession/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/adsession/a;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/adsession/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/adsession/a;->b()V

    :cond_1
    return-void
.end method

.method public loaded()V
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/d/e;->c(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/d/e;->f(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {v0}, Lccsancom/iab/omid/library/vungle/adsession/a;->c()V

    return-void
.end method

.method public loaded(Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;)V
    .locals 1

    const-string v0, "VastProperties is null"

    invoke-static {p1, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/d/e;->c(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/d/e;->f(Lccsancom/iab/omid/library/vungle/adsession/a;)V

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/AdEvents;->adSession:Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-virtual {p1}, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->a()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/iab/omid/library/vungle/adsession/a;->a(Lccsanorg/json/JSONObject;)V

    return-void
.end method
