.class Lccsancom/applovin/impl/sdk/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/b/a;

.field private final b:Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/a$a;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/b/a$a;->b:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/b/a$a;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/b/a$a;->b:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method


# virtual methods
.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$a;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/b/a;->b(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$a;->b:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/b/a$a$1;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/b/a$a$1;-><init>(Lccsancom/applovin/impl/sdk/b/a$a;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$a;->b:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/b/a$a$2;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/b/a$a$2;-><init>(Lccsancom/applovin/impl/sdk/b/a$a;I)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
