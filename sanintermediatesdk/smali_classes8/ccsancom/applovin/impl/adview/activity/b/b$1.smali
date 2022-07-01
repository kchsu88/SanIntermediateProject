.class Lccsancom/applovin/impl/adview/activity/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/b$1;->a:Lccsancom/applovin/impl/adview/activity/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/b$1;->a:Lccsancom/applovin/impl/adview/activity/b/b;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/b;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Marking ad as fully watched"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/b$1;->a:Lccsancom/applovin/impl/adview/activity/b/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/b;->a(Lccsancom/applovin/impl/adview/activity/b/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
