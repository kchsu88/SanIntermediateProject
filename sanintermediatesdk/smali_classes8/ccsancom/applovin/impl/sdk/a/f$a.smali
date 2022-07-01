.class public Lccsancom/applovin/impl/sdk/a/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/a/d;

.field private final c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

.field private d:Z


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/a/f$a;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/a/f$a;->b:Lccsancom/applovin/impl/sdk/a/d;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/a/f$a;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/a/f$a;->d:Z

    return-void
.end method

.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/f$a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Z()Lccsancom/applovin/impl/sdk/a/e;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lccsancom/applovin/impl/sdk/a/g;

    iget-boolean v2, p0, Lccsancom/applovin/impl/sdk/a/f$a;->d:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lccsancom/applovin/impl/sdk/a/e;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;ZZ)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/f$a;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/f$a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Z()Lccsancom/applovin/impl/sdk/a/e;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a/f$a;->b:Lccsancom/applovin/impl/sdk/a/d;

    iget-boolean v2, p0, Lccsancom/applovin/impl/sdk/a/f$a;->d:Z

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/applovin/impl/sdk/a/e;->a(Lccsancom/applovin/impl/sdk/a/d;ZI)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/f$a;->c:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void
.end method
