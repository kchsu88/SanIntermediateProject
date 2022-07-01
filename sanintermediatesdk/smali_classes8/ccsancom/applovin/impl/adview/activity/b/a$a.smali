.class Lccsancom/applovin/impl/adview/activity/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;
.implements Lccsancom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/activity/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/a;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a;Lccsancom/applovin/impl/adview/activity/b/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/b/a$a;-><init>(Lccsancom/applovin/impl/adview/activity/b/a;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "InterActivityV2"

    const-string v2, "Clicking through graphic"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a;->l:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/a;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/d;->b()V

    return-void
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a;->g:Lccsancom/applovin/impl/adview/n;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/a;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->U()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    const-string v0, "javascript:al_onCloseButtonTapped();"

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/activity/b/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/a;->g()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$a;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled click on widget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "InterActivityV2"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
