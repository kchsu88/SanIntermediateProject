.class public Lccsancom/applovin/impl/sdk/utils/AppKilledService;
.super Lccsanandroid/app/Service;


# static fields
.field public static final ACTION_APP_KILLED:Ljava/lang/String; = "com.applovin.app_killed"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Lccsanandroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Lccsanandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lccsanandroid/app/Service;->onTaskRemoved(Lccsanandroid/content/Intent;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/utils/AppKilledService;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "com.applovin.app_killed"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcast(Lccsanandroid/content/Intent;Ljava/util/Map;)Z

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/utils/AppKilledService;->stopSelf()V

    return-void
.end method
