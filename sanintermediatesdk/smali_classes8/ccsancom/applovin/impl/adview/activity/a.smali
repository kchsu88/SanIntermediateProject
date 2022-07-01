.class public Lccsancom/applovin/impl/adview/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/adview/activity/a$a;,
        Lccsancom/applovin/impl/adview/activity/a$b;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/applovin/adview/AppLovinFullscreenActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lccsanandroid/os/Messenger;


# direct methods
.method public constructor <init>(Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/a;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    const-string v1, "InterActivityV2"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v3, "Dismissing..."

    invoke-virtual {v2, v1, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Unable to dismiss parent Activity"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/activity/a;Lccsancom/applovin/impl/sdk/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/adview/activity/a;->a(Lccsancom/applovin/impl/sdk/a/b;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/a/b;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "zone_id"

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v6

    new-instance v7, Lccsancom/applovin/impl/sdk/e/p;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/a/d;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v2

    new-instance v4, Lccsancom/applovin/impl/adview/activity/a$1;

    invoke-direct {v4, p0}, Lccsancom/applovin/impl/adview/activity/a$1;-><init>(Lccsancom/applovin/impl/adview/activity/a;)V

    iget-object v5, p0, Lccsancom/applovin/impl/adview/activity/a;->a:Lccsancom/applovin/impl/sdk/k;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/impl/sdk/e/p;-><init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V

    invoke-virtual {v6, v7}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to process ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "InterActivityV2"

    invoke-virtual {v0, v1, p2, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/a;->a()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/activity/a;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/activity/a;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/a;->a()V

    return-void
.end method

.method static synthetic d(Lccsancom/applovin/impl/adview/activity/a;)Lccsanandroid/os/Messenger;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/activity/a;->e:Lccsanandroid/os/Messenger;

    return-object p0
.end method


# virtual methods
.method public onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fullscreen ad service connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InterActivityV2"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lccsanandroid/os/Messenger;

    invoke-direct {p1, p2}, Lccsanandroid/os/Messenger;-><init>(Lccsanandroid/os/IBinder;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/a;->e:Lccsanandroid/os/Messenger;

    sget-object p1, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Handler;I)Lccsanandroid/os/Message;

    move-result-object p1

    new-instance v0, Lccsanandroid/os/Messenger;

    new-instance v2, Lccsancom/applovin/impl/adview/activity/a$b;

    invoke-direct {v2, p0, p2}, Lccsancom/applovin/impl/adview/activity/a$b;-><init>(Lccsancom/applovin/impl/adview/activity/a;Lccsancom/applovin/impl/adview/activity/a$1;)V

    invoke-direct {v0, v2}, Lccsanandroid/os/Messenger;-><init>(Lccsanandroid/os/Handler;)V

    iput-object v0, p1, Lccsanandroid/os/Message;->replyTo:Lccsanandroid/os/Messenger;

    :try_start_0
    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "Requesting ad from FullscreenAdService..."

    invoke-virtual {p2, v1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a;->e:Lccsanandroid/os/Messenger;

    invoke-virtual {p2, p1}, Lccsanandroid/os/Messenger;->send(Lccsanandroid/os/Message;)V
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "Failed to send ad request message to FullscreenAdService"

    invoke-virtual {p2, v1, v0, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/activity/a;->a()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullscreenAdService disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InterActivityV2"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
