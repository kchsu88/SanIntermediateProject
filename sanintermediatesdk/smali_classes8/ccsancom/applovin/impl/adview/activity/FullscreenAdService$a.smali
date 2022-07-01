.class Lccsancom/applovin/impl/adview/activity/FullscreenAdService$a;
.super Lccsanandroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/activity/FullscreenAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/activity/FullscreenAdService$1;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$a;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 5

    :try_start_0
    sget-object v0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lccsancom/applovin/impl/adview/q;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->getBooleanForProbability(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parentWrapper is null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lccsanandroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->b()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v1

    iget v2, p1, Lccsanandroid/os/Message;->what:I

    sget-object v3, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_2

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    const-string v2, "raw_full_ad_response"

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->getRawFullResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ad_source"

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->getSource()Lccsancom/applovin/impl/sdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/b;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    sget-object v2, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v2

    invoke-static {v1, v2}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Handler;I)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    invoke-virtual {p1, v1}, Lccsanandroid/os/Messenger;->send(Lccsanandroid/os/Message;)V
    :try_end_1
    .catch Lccsanandroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "FullscreenAdService"

    const-string v1, "Failed to respond to Fullscreen Activity in another process with ad"

    invoke-static {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    iget v2, p1, Lccsanandroid/os/Message;->what:I

    sget-object v3, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->b:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->d()Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object p1

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_3
    iget v2, p1, Lccsanandroid/os/Message;->what:I

    sget-object v3, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->c:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->e()Lccsancom/applovin/sdk/AppLovinAdClickListener;

    move-result-object p1

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_4
    iget v2, p1, Lccsanandroid/os/Message;->what:I

    sget-object v3, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->d:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->c()Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object p1

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_5
    iget v2, p1, Lccsanandroid/os/Message;->what:I

    sget-object v3, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->e:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string v2, "percent_viewed"

    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "fully_watched"

    invoke-virtual {p1, v4}, Lccsanandroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->c()Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V

    goto :goto_0

    :cond_6
    iget v2, p1, Lccsanandroid/os/Message;->what:I

    sget-object v3, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->f:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v3

    if-ne v2, v3, :cond_7

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/q;->d()Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object p1

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_7
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :goto_0
    return-void
.end method
