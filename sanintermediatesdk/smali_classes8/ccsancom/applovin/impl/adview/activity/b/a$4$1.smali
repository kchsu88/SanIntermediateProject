.class Lccsancom/applovin/impl/adview/activity/b/a$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/a$4;->onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/a$4;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a$4;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$4$1;->a:Lccsancom/applovin/impl/adview/activity/b/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "InterActivityV2"

    const-string v1, "Dismissing on-screen ad due to app relaunched via launcher."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$4$1;->a:Lccsancom/applovin/impl/adview/activity/b/a$4;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a$4;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/activity/b/a;->g()V

    return-void
.end method
