.class Lccsancom/applovin/impl/sdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/i$a;
    }
.end annotation


# static fields
.field private static b:Lccsanandroid/app/AlertDialog;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/j;

.field private d:Lccsancom/applovin/impl/sdk/utils/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lccsancom/applovin/impl/sdk/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Lccsancom/applovin/impl/sdk/j;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/i;->a:Lccsancom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance v0, Lccsanandroid/content/IntentFilter;

    const-string v1, "com.applovin.application_paused"

    invoke-direct {v0, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Lccsanandroid/content/IntentFilter;

    const-string v0, "com.applovin.application_resumed"

    invoke-direct {p2, v0}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic a(Lccsanandroid/app/AlertDialog;)Lccsanandroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lccsancom/applovin/impl/sdk/i;->b:Lccsanandroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/i;)Lccsancom/applovin/impl/sdk/j;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/i;->a:Lccsancom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b()Lccsanandroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/i;->b:Lccsanandroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public a(JLccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/i$a;)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/sdk/i;->b:Lccsanandroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/sdk/i;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const-string v1, " milliseconds"

    const-string v2, "ConsentAlertManager"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i;->d:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->a()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling consent alert earlier ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms) than remaining scheduled time ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/i;->d:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {v4}, Lccsancom/applovin/impl/sdk/utils/m;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/i;->d:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skip scheduling consent alert - one scheduled already with remaining time of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lccsancom/applovin/impl/sdk/i;->d:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/utils/m;->a()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling consent alert for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/sdk/i$1;

    invoke-direct {v0, p0, p3, p4}, Lccsancom/applovin/impl/sdk/i$1;-><init>(Lccsancom/applovin/impl/sdk/i;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/i$a;)V

    invoke-static {p1, p2, p3, v0}, Lccsancom/applovin/impl/sdk/utils/m;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/m;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/i;->d:Lccsancom/applovin/impl/sdk/utils/m;

    return-void
.end method

.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/i;->d:Lccsancom/applovin/impl/sdk/utils/m;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/i;->d:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/utils/m;->b()V

    goto :goto_0

    :cond_1
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/i;->d:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/utils/m;->c()V

    :cond_2
    :goto_0
    return-void
.end method
