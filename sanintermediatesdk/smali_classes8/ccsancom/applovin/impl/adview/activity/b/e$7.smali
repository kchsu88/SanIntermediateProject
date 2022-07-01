.class Lccsancom/applovin/impl/adview/activity/b/e$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/e;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/e;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/e;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$7;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/e$7;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/e;->c(Lccsancom/applovin/impl/adview/activity/b/e;)Lccsancom/applovin/impl/adview/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/e$7;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/e;->c(Lccsancom/applovin/impl/adview/activity/b/e;)Lccsancom/applovin/impl/adview/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->a()V

    :cond_0
    return-void
.end method
