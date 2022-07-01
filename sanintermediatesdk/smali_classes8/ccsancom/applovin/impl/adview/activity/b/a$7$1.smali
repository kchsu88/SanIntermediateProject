.class Lccsancom/applovin/impl/adview/activity/b/a$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/a$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/a$7;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a$7;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$7$1;->a:Lccsancom/applovin/impl/adview/activity/b/a$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$7$1;->a:Lccsancom/applovin/impl/adview/activity/b/a$7;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a$7;->a:Lccsancom/applovin/impl/adview/n;

    new-instance v1, Lccsancom/applovin/impl/adview/activity/b/a$7$1$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/activity/b/a$7$1$1;-><init>(Lccsancom/applovin/impl/adview/activity/b/a$7$1;)V

    const-wide/16 v2, 0x190

    invoke-static {v0, v2, v3, v1}, Lccsancom/applovin/impl/sdk/utils/o;->a(Lccsanandroid/view/View;JLjava/lang/Runnable;)V

    return-void
.end method
