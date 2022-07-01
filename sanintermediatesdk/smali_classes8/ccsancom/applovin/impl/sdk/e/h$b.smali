.class Lccsancom/applovin/impl/sdk/e/h$b;
.super Lccsancom/applovin/impl/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/sdk/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/h;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/e/h;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/h$b;->a:Lccsancom/applovin/impl/sdk/e/h;

    const-string p1, "TaskTimeoutFetchBasicSettings"

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/h$b;->a:Lccsancom/applovin/impl/sdk/e/h;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/e/h;->a(Lccsancom/applovin/impl/sdk/e/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/h$b;->a:Lccsancom/applovin/impl/sdk/e/h;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/e/h;->b(Lccsancom/applovin/impl/sdk/e/h;)Lccsancom/applovin/impl/sdk/e/h$a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Timing out fetch basic settings..."

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/e/h$b;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/h$b;->a:Lccsancom/applovin/impl/sdk/e/h;

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-static {v1, v2}, Lccsancom/applovin/impl/sdk/e/h;->a(Lccsancom/applovin/impl/sdk/e/h;Lccsanorg/json/JSONObject;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
