.class Lccsancom/applovin/impl/sdk/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/a/f;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/a/f;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/a/f;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/a/f$1;->a:Lccsancom/applovin/impl/sdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/a/f$1;->a:Lccsancom/applovin/impl/sdk/a/f;

    sget-object p2, Lccsancom/applovin/impl/sdk/a/f$b;->c:Lccsancom/applovin/impl/sdk/a/f$b;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/a/f;->a(Lccsancom/applovin/impl/sdk/a/f;Lccsancom/applovin/impl/sdk/a/f$b;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/a/f$1;->a:Lccsancom/applovin/impl/sdk/a/f;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/a/f;->a(Lccsancom/applovin/impl/sdk/a/f;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lccsancom/applovin/impl/sdk/a/f$1;->a:Lccsancom/applovin/impl/sdk/a/f;

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/a/f;->b(Lccsancom/applovin/impl/sdk/a/f;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
