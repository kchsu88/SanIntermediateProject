.class Lccsancom/applovin/impl/adview/activity/b/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/adview/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/d;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/d;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/d;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/d;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    iget-object v1, v1, Lccsancom/applovin/impl/adview/activity/b/d;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    iget-wide v3, v3, Lccsancom/applovin/impl/adview/activity/b/d;->u:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    invoke-static {v4}, Lccsancom/applovin/impl/adview/activity/b/d;->a(Lccsancom/applovin/impl/adview/activity/b/d;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/applovin/impl/a/g;

    iget-object v5, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    invoke-virtual {v5}, Lccsancom/applovin/impl/adview/activity/b/d;->x()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Lccsancom/applovin/impl/a/g;->a(JI)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    invoke-static {v5}, Lccsancom/applovin/impl/adview/activity/b/d;->a(Lccsancom/applovin/impl/adview/activity/b/d;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    invoke-static {v0, v2}, Lccsancom/applovin/impl/adview/activity/b/d;->a(Lccsancom/applovin/impl/adview/activity/b/d;Ljava/util/Set;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/d$1;->a:Lccsancom/applovin/impl/adview/activity/b/d;

    iget-boolean v0, v0, Lccsancom/applovin/impl/adview/activity/b/d;->v:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
