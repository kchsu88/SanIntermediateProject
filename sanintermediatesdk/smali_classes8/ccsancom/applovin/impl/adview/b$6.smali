.class Lccsancom/applovin/impl/adview/b$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lccsancom/applovin/impl/adview/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$6;->b:Lccsancom/applovin/impl/adview/b;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/b$6;->a:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$6;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->n(Lccsancom/applovin/impl/adview/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$6;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->d(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAdSize;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$6;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->o(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$6;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->o(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$6;->a:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while running ad load callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinAdView"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method