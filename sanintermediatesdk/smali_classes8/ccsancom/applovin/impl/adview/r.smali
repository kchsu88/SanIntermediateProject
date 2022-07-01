.class public final Lccsancom/applovin/impl/adview/r;
.super Lccsancom/applovin/impl/adview/j;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/j;-><init>(Lccsanandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/r;->setViewScale(F)V

    return-void
.end method

.method public getStyle()Lccsancom/applovin/impl/adview/j$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/adview/j$a;->c:Lccsancom/applovin/impl/adview/j$a;

    return-object v0
.end method
