.class Lccsancom/applovin/impl/adview/m$5;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/m;->a(Lccsancom/applovin/impl/adview/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/m;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/m;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/m$5;->a:Lccsancom/applovin/impl/adview/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/m$5;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/m;->e(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/j;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/j;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/m$5;->a:Lccsancom/applovin/impl/adview/m;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/m;->e(Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/j;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/j;->performClick()Z

    :cond_0
    return-void
.end method
