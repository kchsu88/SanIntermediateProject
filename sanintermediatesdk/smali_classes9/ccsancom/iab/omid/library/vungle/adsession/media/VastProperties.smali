.class public final Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;
.super Ljava/lang/Object;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Float;

.field private final c:Z

.field private final d:Lccsancom/iab/omid/library/vungle/adsession/media/Position;


# direct methods
.method private constructor <init>(ZLjava/lang/Float;ZLccsancom/iab/omid/library/vungle/adsession/media/Position;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->a:Z

    iput-object p2, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->b:Ljava/lang/Float;

    iput-boolean p3, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->c:Z

    iput-object p4, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->d:Lccsancom/iab/omid/library/vungle/adsession/media/Position;

    return-void
.end method

.method public static createVastPropertiesForNonSkippableMedia(ZLccsancom/iab/omid/library/vungle/adsession/media/Position;)Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;
    .locals 3

    const-string v0, "Position is null"

    invoke-static {p1, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;-><init>(ZLjava/lang/Float;ZLccsancom/iab/omid/library/vungle/adsession/media/Position;)V

    return-object v0
.end method

.method public static createVastPropertiesForSkippableMedia(FZLccsancom/iab/omid/library/vungle/adsession/media/Position;)Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;
    .locals 2

    const-string v0, "Position is null"

    invoke-static {p2, v0}, Lccsancom/iab/omid/library/vungle/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;-><init>(ZLjava/lang/Float;ZLccsancom/iab/omid/library/vungle/adsession/media/Position;)V

    return-object v0
.end method


# virtual methods
.method public a()Lccsanorg/json/JSONObject;
    .locals 3

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "skippable"

    iget-boolean v2, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->a:Z

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    iget-boolean v1, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "skipOffset"

    iget-object v2, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->b:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_0
    const-string v1, "autoPlay"

    iget-boolean v2, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->c:Z

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    const-string v1, "position"

    iget-object v2, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->d:Lccsancom/iab/omid/library/vungle/adsession/media/Position;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VastProperties: JSON error"

    invoke-static {v2, v1}, Lccsancom/iab/omid/library/vungle/d/c;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public getPosition()Lccsancom/iab/omid/library/vungle/adsession/media/Position;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->d:Lccsancom/iab/omid/library/vungle/adsession/media/Position;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->b:Ljava/lang/Float;

    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->c:Z

    return v0
.end method

.method public isSkippable()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/iab/omid/library/vungle/adsession/media/VastProperties;->a:Z

    return v0
.end method
