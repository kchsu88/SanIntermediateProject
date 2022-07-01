.class public Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private final creativeType:Lccsancom/iab/omid/library/vungle/adsession/CreativeType;

.field private final impressionOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;

.field private final impressionType:Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;

.field private final isolateVerificationScripts:Z

.field private final mediaEventsOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;


# direct methods
.method private constructor <init>(Lccsancom/iab/omid/library/vungle/adsession/CreativeType;Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;Lccsancom/iab/omid/library/vungle/adsession/Owner;Lccsancom/iab/omid/library/vungle/adsession/Owner;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->creativeType:Lccsancom/iab/omid/library/vungle/adsession/CreativeType;

    iput-object p2, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->impressionType:Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;

    iput-object p3, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->impressionOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    if-nez p4, :cond_0

    sget-object p1, Lccsancom/iab/omid/library/vungle/adsession/Owner;->NONE:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    iput-object p1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->mediaEventsOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->mediaEventsOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    :goto_0
    iput-boolean p5, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    return-void
.end method

.method public static createAdSessionConfiguration(Lccsancom/iab/omid/library/vungle/adsession/CreativeType;Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;Lccsancom/iab/omid/library/vungle/adsession/Owner;Lccsancom/iab/omid/library/vungle/adsession/Owner;Z)Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;
    .locals 7

    const-string v0, "CreativeType is null"

    invoke-static {p0, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImpressionType is null"

    invoke-static {p1, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Impression owner is null"

    invoke-static {p2, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Lccsancom/iab/omid/library/vungle/d/e;->a(Lccsancom/iab/omid/library/vungle/adsession/Owner;Lccsancom/iab/omid/library/vungle/adsession/CreativeType;Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;)V

    new-instance v0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;-><init>(Lccsancom/iab/omid/library/vungle/adsession/CreativeType;Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;Lccsancom/iab/omid/library/vungle/adsession/Owner;Lccsancom/iab/omid/library/vungle/adsession/Owner;Z)V

    return-object v0
.end method


# virtual methods
.method public isNativeImpressionOwner()Z
    .locals 2

    sget-object v0, Lccsancom/iab/omid/library/vungle/adsession/Owner;->NATIVE:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->impressionOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNativeMediaEventsOwner()Z
    .locals 2

    sget-object v0, Lccsancom/iab/omid/library/vungle/adsession/Owner;->NATIVE:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->mediaEventsOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toJsonObject()Lccsanorg/json/JSONObject;
    .locals 3

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->impressionOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    const-string v2, "impressionOwner"

    invoke-static {v0, v2, v1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->mediaEventsOwner:Lccsancom/iab/omid/library/vungle/adsession/Owner;

    const-string v2, "mediaEventsOwner"

    invoke-static {v0, v2, v1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->creativeType:Lccsancom/iab/omid/library/vungle/adsession/CreativeType;

    const-string v2, "creativeType"

    invoke-static {v0, v2, v1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->impressionType:Lccsancom/iab/omid/library/vungle/adsession/ImpressionType;

    const-string v2, "impressionType"

    invoke-static {v0, v2, v1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lccsancom/iab/omid/library/vungle/adsession/AdSessionConfiguration;->isolateVerificationScripts:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, Lccsancom/iab/omid/library/vungle/d/b;->a(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
