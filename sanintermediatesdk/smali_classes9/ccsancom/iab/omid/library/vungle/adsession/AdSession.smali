.class public abstract Lccsancom/iab/omid/library/vungle/adsession/AdSession;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAdSession(Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;)Lccsancom/iab/omid/library/vungle/adsession/AdSession;
    .locals 1

    invoke-static {}, Lccsancom/iab/omid/library/vungle/d/e;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lccsancom/iab/omid/library/vungle/adsession/a;

    invoke-direct {v0, p0, p1}, Lccsancom/iab/omid/library/vungle/adsession/a;-><init>(Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;Lccsancom/iab/omid/library/vungle/adsession/AdSessionContext;)V

    return-object v0
.end method


# virtual methods
.method public abstract addFriendlyObstruction(Lccsanandroid/view/View;Lccsancom/iab/omid/library/vungle/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
.end method

.method public abstract error(Lccsancom/iab/omid/library/vungle/adsession/ErrorType;Ljava/lang/String;)V
.end method

.method public abstract finish()V
.end method

.method public abstract getAdSessionId()Ljava/lang/String;
.end method

.method public abstract getAdSessionStatePublisher()Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;
.end method

.method public abstract registerAdView(Lccsanandroid/view/View;)V
.end method

.method public abstract removeAllFriendlyObstructions()V
.end method

.method public abstract removeFriendlyObstruction(Lccsanandroid/view/View;)V
.end method

.method public abstract start()V
.end method
