.class Lccsancom/applovin/impl/adview/activity/b/f$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/f$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/f$7;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/f$7;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$7$1;->a:Lccsancom/applovin/impl/adview/activity/b/f$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$7$1;->a:Lccsancom/applovin/impl/adview/activity/b/f$7;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/f$7;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->b()V

    return-void
.end method
