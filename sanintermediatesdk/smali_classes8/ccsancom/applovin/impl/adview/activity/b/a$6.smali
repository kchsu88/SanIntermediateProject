.class Lccsancom/applovin/impl/adview/activity/b/a$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/a;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$6;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/b/a$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$6;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a;->f:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->getAdViewController()Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->s()Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
