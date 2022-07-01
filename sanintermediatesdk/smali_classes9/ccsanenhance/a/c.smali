.class public Lccsanenhance/a/c;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public a:Lccsanandroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lccsanenhance/a/c;->a:Lccsanandroid/content/IntentFilter;

    .line 4
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsanenhance/a/c;->a:Lccsanandroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x45e5283a

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x311a1d6c

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "user present"

    .line 18
    invoke-static {p1}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p1

    sget-object p2, Lccsanenhance/a/g;->d:Lccsanenhance/a/g;

    invoke-virtual {p1, p2}, Lccsanenhance/a/e;->a(Lccsanenhance/a/g;)V

    goto :goto_1

    :cond_4
    const-string p2, "connectivity"

    .line 20
    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/net/ConnectivityManager;

    .line 21
    invoke-virtual {p1}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    .line 25
    :cond_5
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string p1, "network connected"

    .line 30
    invoke-static {p1}, Lccsanenhance/g/e;->a(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p1

    sget-object p2, Lccsanenhance/a/g;->a:Lccsanenhance/a/g;

    invoke-virtual {p1, p2}, Lccsanenhance/a/e;->a(Lccsanenhance/a/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :goto_1
    return-void
.end method
