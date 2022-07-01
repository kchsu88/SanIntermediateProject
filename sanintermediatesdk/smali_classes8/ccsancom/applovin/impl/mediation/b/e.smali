.class public Lccsancom/applovin/impl/mediation/b/e;
.super Lccsancom/applovin/impl/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/b/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lccsancom/applovin/mediation/MaxAdFormat;

.field private final e:Lccsanorg/json/JSONObject;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lccsancom/applovin/impl/mediation/ads/a$a;

.field private final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lccsancom/applovin/impl/mediation/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanorg/json/JSONObject;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskProcessMediationWaterfall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->i:Ljava/util/List;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/e;->c:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b/e;->d:Lccsancom/applovin/mediation/MaxAdFormat;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/b/e;->e:Lccsanorg/json/JSONObject;

    iput-object p6, p0, Lccsancom/applovin/impl/mediation/b/e;->g:Lccsancom/applovin/impl/mediation/ads/a$a;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/e;->h:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lccsanorg/json/JSONObject;->length()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/e;->f:Ljava/util/List;

    new-instance p1, Lccsanorg/json/JSONArray;

    invoke-direct {p1}, Lccsanorg/json/JSONArray;-><init>()V

    const-string p2, "ads"

    invoke-static {p3, p2, p1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result p4

    if-ge p2, p4, :cond_0

    const/4 p4, 0x0

    invoke-static {p1, p2, p4}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONArray;ILccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p4

    iget-object p6, p0, Lccsancom/applovin/impl/mediation/b/e;->f:Ljava/util/List;

    invoke-static {p4, p3, p5}, Lccsancom/applovin/impl/mediation/a/a;->a(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/mediation/a/a;

    move-result-object p4

    invoke-interface {p6, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b/e;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/e;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b/e;Lccsancom/applovin/mediation/MaxAd;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/b/e;->a(Lccsancom/applovin/mediation/MaxAd;I)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b/e;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/b/e;->a(Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private a(Lccsancom/applovin/mediation/MaxAd;I)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lccsancom/applovin/impl/mediation/a/a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->D()Lccsancom/applovin/impl/sdk/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/s;->a(Lccsancom/applovin/impl/mediation/a/a;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e;->f:Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/a;->S:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v4}, Lccsancom/applovin/impl/mediation/a/a;->g()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    new-instance v6, Lccsancom/applovin/impl/mediation/b/e$3;

    invoke-direct {v6, p0, v4, v5}, Lccsancom/applovin/impl/mediation/b/e$3;-><init>(Lccsancom/applovin/impl/mediation/b/e;Lccsancom/applovin/impl/mediation/a/a;Ljava/lang/Float;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waterfall loaded for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/a;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lccsancom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/b/e;->g:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method private a(Lccsancom/applovin/mediation/MaxError;)V
    .locals 5

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result v0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->q:Lccsancom/applovin/impl/sdk/d/f;

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result v0

    const/16 v1, -0x1389

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->r:Lccsancom/applovin/impl/sdk/d/f;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->s:Lccsancom/applovin/impl/sdk/d/f;

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waterfall failed to load with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/b/e;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "======FAILED AD LOADS======"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/e;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/e;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->getLoadError()Lccsancom/applovin/mediation/MaxError;

    move-result-object v4

    invoke-interface {v4}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "..message: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;->getLoadError()Lccsancom/applovin/mediation/MaxError;

    move-result-object v3

    invoke-interface {v3}, Lccsancom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object v1, p1

    check-cast v1, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;->setAdLoadFailureInfo(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->g:Lccsancom/applovin/impl/mediation/ads/a$a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/b/e;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/mediation/b/e;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/mediation/b/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lccsancom/applovin/impl/mediation/b/e;)Lccsancom/applovin/impl/mediation/ads/a$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/e;->g:Lccsancom/applovin/impl/mediation/ads/a$a;

    return-object p0
.end method

.method static synthetic f(Lccsancom/applovin/impl/mediation/b/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/e;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lccsancom/applovin/impl/mediation/b/e;)Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/e;->d:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->e:Lccsanorg/json/JSONObject;

    const-string v1, "is_testing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lccsancom/applovin/impl/mediation/b/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/mediation/b/e$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/mediation/b/e$1;-><init>(Lccsancom/applovin/impl/mediation/b/e;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting waterfall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ad(s)..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/mediation/b/e$a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e;->f:Ljava/util/List;

    invoke-direct {v0, p0, v2, v1}, Lccsancom/applovin/impl/mediation/b/e$a;-><init>(Lccsancom/applovin/impl/mediation/b/e;ILjava/util/List;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    goto :goto_0

    :cond_1
    const-string v0, "No ads were returned from the server"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/b/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->c:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e;->d:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/e;->e:Lccsanorg/json/JSONObject;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, v1, v3, v4}, Lccsancom/applovin/impl/sdk/utils/Utils;->maybeHandleNoFillResponseForPublisher(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->e:Lccsanorg/json/JSONObject;

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "settings"

    invoke-static {v0, v3, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "alfdcs"

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v3, v4}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v5

    new-instance v1, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    const/16 v7, 0xcc

    const-string v8, "MAX returned no eligible ads from any mediated networks for this app/device."

    invoke-direct {v1, v7, v8}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    cmp-long v7, v5, v3

    if-lez v7, :cond_3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    new-instance v5, Lccsancom/applovin/impl/mediation/b/e$2;

    invoke-direct {v5, p0, v1}, Lccsancom/applovin/impl/mediation/b/e$2;-><init>(Lccsancom/applovin/impl/mediation/b/e;Lccsancom/applovin/mediation/MaxError;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "alfdcs_iba"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v3, v4, v0, v5}, Lccsancom/applovin/impl/sdk/utils/d;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/d;

    goto :goto_0

    :cond_2
    invoke-static {v5, v3, v4}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lccsancom/applovin/impl/mediation/b/e;->a(Lccsancom/applovin/mediation/MaxError;)V

    :goto_0
    return-void
.end method
