.class Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

.field final synthetic b:Lccsancom/applovin/sdk/AppLovinAd;

.field final synthetic c:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;->c:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;->a:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;->b:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;->a:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl$1;->b:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AppLovinAdService"

    const-string v2, "Unable to notify listener about a newly loaded ad"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
