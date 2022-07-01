.class Lccsancom/applovin/impl/adview/activity/b/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/g;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/g;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/g$2;->a:Lccsancom/applovin/impl/adview/activity/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g$2;->a:Lccsancom/applovin/impl/adview/activity/b/g;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/adview/activity/b/g;->a(Lccsancom/applovin/impl/adview/activity/b/g;J)J

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/g$2;->a:Lccsancom/applovin/impl/adview/activity/b/g;

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/adview/activity/b/g;->b(Lccsancom/applovin/impl/adview/activity/b/g;J)J

    return-void
.end method
