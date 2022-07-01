.class Lccsancom/applovin/impl/adview/q$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/q;->a(Lccsancom/applovin/impl/sdk/a/g;Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lccsancom/applovin/impl/adview/q;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/q;Lccsanandroid/content/Context;J)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/q$3;->c:Lccsancom/applovin/impl/adview/q;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/q$3;->a:Lccsanandroid/content/Context;

    iput-wide p3, p0, Lccsancom/applovin/impl/adview/q$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/q$3;->a:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v1, Lccsancom/applovin/impl/adview/q$3$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/q$3$1;-><init>(Lccsancom/applovin/impl/adview/q$3;)V

    iget-wide v2, p0, Lccsancom/applovin/impl/adview/q$3;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
