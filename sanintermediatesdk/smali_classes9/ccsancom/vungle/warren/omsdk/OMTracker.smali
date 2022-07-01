.class public Lccsancom/vungle/warren/omsdk/OMTracker;
.super Ljava/lang/Object;
.source "OMTracker.java"

# interfaces
.implements Lccsancom/vungle/warren/omsdk/WebViewObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/omsdk/OMTracker$Factory;
    }
.end annotation


# static fields
.field static final DESTROY_DELAY_MS:J


# instance fields
.field private adSession:Lccsancom/iab/omid/library/vungle/adsession/AdSession;

.field private final enabled:Z

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lccsancom/vungle/warren/omsdk/OMTracker;->DESTROY_DELAY_MS:J

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->enabled:Z

    .line 35
    return-void
.end method

.method synthetic constructor <init>(ZLccsancom/vungle/warren/omsdk/OMTracker$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lccsancom/vungle/warren/omsdk/OMTracker$1;

    .line 20
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/omsdk/OMTracker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lccsanandroid/webkit/WebView;)V
    .locals 5
    .param p1, "webView"    # Lccsanandroid/webkit/WebView;

    .line 63
    iget-boolean v0, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->started:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->adSession:Lccsancom/iab/omid/library/vungle/adsession/AdSession;

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lccsancom/iab/omid/library/vungle/adsession/CreativeType;->DEFINED_BY_JAVASCRIPT:Lccsancom/iab/omid/library/vungle/adsession/CreativeType;

    sget-object v1, Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;->DEFINED_BY_JAVASCRIPT:Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;

    sget-object v2, Lccsancom/iab/omid/library/vungle/adsession/Owner;->JAVASCRIPT:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    sget-object v3, Lccsancom/iab/omid/library/vungle/adsession/Owner;->JAVASCRIPT:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    const/4 v4, 0x0

    .line 65
    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lccsancom/iab/omid/library/vungle/adsession/CreativeType;Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;Lccsancom/iab/omid/library/vungle/adsession/Owner;Lccsancom/iab/omid/library/vungle/adsession/Owner;Z)Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    move-result-object v0

    .line 71
    .local v0, "adSessionConfiguration":Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;
    const-string v1, "Vungle"

    const-string v2, "6.10.2"

    invoke-static {v1, v2}, Lccsancom/iab/omid/library/vungle/adsession/Partner;->createPartner(Ljava/lang/String;Ljava/lang/String;)Lccsancom/iab/omid/library/vungle/adsession/Partner;

    move-result-object v1

    .line 72
    .local v1, "partner":Lccsancom/iab/omid/library/vungle/adsession/Partner;
    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v2}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;->createHtmlAdSessionContext(Lccsancom/iab/omid/library/vungle/adsession/Partner;Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;

    move-result-object v2

    .line 73
    .local v2, "adSessionContext":Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;
    invoke-static {v0, v2}, Lccsancom/iab/omid/library/vungle/adsession/AdSession;->createAdSession(Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;)Lccsancom/iab/omid/library/vungle/adsession/AdSession;

    move-result-object v3

    iput-object v3, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->adSession:Lccsancom/iab/omid/library/vungle/adsession/AdSession;

    .line 75
    invoke-virtual {v3, p1}, Lccsancom/iab/omid/library/vungle/adsession/AdSession;->registerAdView(Lccsanandroid/view/View;)V

    .line 76
    iget-object v3, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->adSession:Lccsancom/iab/omid/library/vungle/adsession/AdSession;

    invoke-virtual {v3}, Lccsancom/iab/omid/library/vungle/adsession/AdSession;->start()V

    .line 78
    .end local v0    # "adSessionConfiguration":Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;
    .end local v1    # "partner":Lccsancom/iab/omid/library/vungle/adsession/Partner;
    .end local v2    # "adSessionContext":Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->enabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/iab/omid/library/vungle/Omid;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->started:Z

    .line 44
    :cond_0
    return-void
.end method

.method public stop()J
    .locals 3

    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .local v0, "delay":J
    iget-boolean v2, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->started:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->adSession:Lccsancom/iab/omid/library/vungle/adsession/AdSession;

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Lccsancom/iab/omid/library/vungle/adsession/AdSession;->finish()V

    .line 54
    sget-wide v0, Lccsancom/vungle/warren/omsdk/OMTracker;->DESTROY_DELAY_MS:J

    .line 56
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->started:Z

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lccsancom/vungle/warren/omsdk/OMTracker;->adSession:Lccsancom/iab/omid/library/vungle/adsession/AdSession;

    .line 58
    return-wide v0
.end method
