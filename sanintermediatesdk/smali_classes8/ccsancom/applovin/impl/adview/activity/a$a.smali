.class Lccsancom/applovin/impl/adview/activity/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdClickListener;
.implements Lccsancom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/a;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/adview/activity/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/a$a;->a:Lccsancom/applovin/impl/adview/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/activity/a;Lccsancom/applovin/impl/adview/activity/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/a$a;-><init>(Lccsancom/applovin/impl/adview/activity/a;)V

    return-void
.end method

.method private a(Lccsanandroid/os/Bundle;Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;)V
    .locals 3

    invoke-virtual {p2}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Handler;I)Lccsanandroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/a$a;->a:Lccsancom/applovin/impl/adview/activity/a;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/a;->d(Lccsancom/applovin/impl/adview/activity/a;)Lccsanandroid/os/Messenger;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/os/Messenger;->send(Lccsanandroid/os/Message;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a$a;->a:Lccsancom/applovin/impl/adview/activity/a;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/a;->b(Lccsancom/applovin/impl/adview/activity/a;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forward callback ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "InterActivityV2"

    invoke-virtual {v0, v1, p2, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/adview/activity/a$a;->a(Lccsanandroid/os/Bundle;Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    sget-object p1, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->c:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/a$a;->a(Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method

.method public adDisplayed(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    sget-object p1, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->b:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/a$a;->a(Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method

.method public adHidden(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    sget-object p1, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->f:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/a$a;->a(Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method

.method public videoPlaybackBegan(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    sget-object p1, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->d:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/a$a;->a(Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method

.method public videoPlaybackEnded(Lccsancom/applovin/sdk/AppLovinAd;DZ)V
    .locals 1

    new-instance p1, Lccsanandroid/os/Bundle;

    invoke-direct {p1}, Lccsanandroid/os/Bundle;-><init>()V

    const-string v0, "percent_viewed"

    invoke-virtual {p1, v0, p2, p3}, Lccsanandroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p2, "fully_watched"

    invoke-virtual {p1, p2, p4}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p2, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->e:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/adview/activity/a$a;->a(Lccsanandroid/os/Bundle;Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;)V

    return-void
.end method
