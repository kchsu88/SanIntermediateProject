.class public Lccsancom/applovin/impl/adview/a;
.super Lccsanandroid/widget/RelativeLayout;


# instance fields
.field private final a:Lccsanandroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;II)V
    .locals 3

    invoke-direct {p0, p1}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/a;->setClickable(Z)V

    new-instance v1, Lccsanandroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p3}, Lccsanandroid/widget/ProgressBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/a;->a:Lccsanandroid/widget/ProgressBar;

    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Lccsanandroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ProgressBar;->setClickable(Z)V

    const/4 p3, -0x2

    if-eq p2, p3, :cond_1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result p1

    new-instance p2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object p2, p1

    :goto_1
    const/16 p1, 0xd

    invoke-virtual {p2, p1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, p2}, Lccsanandroid/widget/ProgressBar;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/adview/a;->addView(Lccsanandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/a;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/a;->setVisibility(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/a;->a:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v0}, Lccsanandroid/widget/ProgressBar;->getIndeterminateDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
