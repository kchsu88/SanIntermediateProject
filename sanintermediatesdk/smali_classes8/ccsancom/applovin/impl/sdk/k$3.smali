.class Lccsancom/applovin/impl/sdk/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/k;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

.field final synthetic b:Lccsancom/applovin/impl/sdk/k;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/k$3;->b:Lccsancom/applovin/impl/sdk/k;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/k$3;->a:Lccsancom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$3;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    const-string v2, "Calling back publisher\'s initialization completion handler..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$3;->a:Lccsancom/applovin/sdk/AppLovinSdk$SdkInitializationListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/k$3;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/k;->c(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/sdk/AppLovinSdkConfiguration;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinSdk$SdkInitializationListener;->onSdkInitialized(Lccsancom/applovin/sdk/AppLovinSdkConfiguration;)V

    return-void
.end method
