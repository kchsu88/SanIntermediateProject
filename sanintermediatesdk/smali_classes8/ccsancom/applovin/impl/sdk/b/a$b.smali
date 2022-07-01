.class Lccsancom/applovin/impl/sdk/b/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/a/i;
.implements Lccsancom/applovin/sdk/AppLovinAdClickListener;
.implements Lccsancom/applovin/sdk/AppLovinAdRewardListener;
.implements Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/b/a;

.field private final b:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

.field private final c:Lccsancom/applovin/sdk/AppLovinAdClickListener;

.field private final d:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private final e:Lccsancom/applovin/sdk/AppLovinAdRewardListener;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/b/a$b;->b:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p5, p0, Lccsancom/applovin/impl/sdk/b/a$b;->c:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/b/a$b;->d:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/b/a$b;->e:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/impl/sdk/b/a$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lccsancom/applovin/impl/sdk/b/a$b;-><init>(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/a/g;)V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "IncentivizedAdController"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/b/a;->b(Lccsancom/applovin/impl/sdk/b/a;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid reward state - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and wasFullyEngaged: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/b/a;->b(Lccsancom/applovin/impl/sdk/b/a;)Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "Cancelling any incoming reward requests for this ad"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->aH()V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/b/a;->b(Lccsancom/applovin/impl/sdk/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "User close the ad after fully watching but reward validation task did not return on time"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x1f4

    const-string v1, "network_timeout"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "User close the ad prematurely"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x258

    const-string/jumbo v1, "user_closed_video"

    :goto_0
    invoke-static {v1}, Lccsancom/applovin/impl/sdk/b/c;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/b/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/a/g;->a(Lccsancom/applovin/impl/sdk/b/c;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v3, "Notifying listener of reward validation failure"

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/a$b;->e:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v1, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;I)V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "Notifying listener of rewarded ad dismissal"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->b:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->af()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "Scheduling report rewarded ad..."

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/sdk/e/u;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v1, v1, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, v1}, Lccsancom/applovin/impl/sdk/e/u;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/impl/sdk/k;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object p1, p1, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    sget-object v1, Lccsancom/applovin/impl/sdk/e/o$a;->i:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public adClicked(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->c:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public adDisplayed(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->b:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public adHidden(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 3

    instance-of v0, p1, Lccsancom/applovin/impl/sdk/a/h;

    if-eqz v0, :cond_0

    check-cast p1, Lccsancom/applovin/impl/sdk/a/h;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/h;->a()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object p1

    :cond_0
    instance-of v0, p1, Lccsancom/applovin/impl/sdk/a/g;

    if-eqz v0, :cond_1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/b/a$b;->a(Lccsancom/applovin/impl/sdk/a/g;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something is terribly wrong. Received `adHidden` callback for invalid ad of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IncentivizedAdController"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAdDisplayFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->b:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    return-void
.end method

.method public userDeclinedToViewAd(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    return-void
.end method

.method public userOverQuota(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    const-string v1, "quota_exceeded"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->e:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public userRewardRejected(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    const-string v1, "rejected"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->e:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public userRewardVerified(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    const-string v1, "accepted"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->e:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    return-void
.end method

.method public validationRequestFailed(Lccsancom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    const-string v1, "network_timeout"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->e:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;I)V

    return-void
.end method

.method public videoPlaybackBegan(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->d:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public videoPlaybackEnded(Lccsancom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a$b;->d:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-static {v0, p1, p2, p3, p4}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/b/a$b;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-static {p1, p4}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/b/a;Z)Z

    return-void
.end method
