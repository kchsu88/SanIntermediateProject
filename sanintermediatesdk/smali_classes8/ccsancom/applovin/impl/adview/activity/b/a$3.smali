.class Lccsancom/applovin/impl/adview/activity/b/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/a;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$3;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$3;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget v0, v0, Lccsancom/applovin/impl/adview/activity/b/a;->j:I

    sget v1, Lccsancom/applovin/impl/sdk/f;->a:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$3;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->k:Z

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$3;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->s()Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a$3;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget v1, v1, Lccsancom/applovin/impl/adview/activity/b/a;->j:I

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/f;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "javascript:al_muteSwitchOn();"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string v1, "javascript:al_muteSwitchOff();"

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$3;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iput p1, v0, Lccsancom/applovin/impl/adview/activity/b/a;->j:I

    return-void
.end method
