.class public Lccsancom/applovin/impl/adview/i;
.super Lccsanandroid/webkit/WebView;


# instance fields
.field private a:Lccsanandroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    new-instance p1, Lccsanandroid/graphics/PointF;

    invoke-direct {p1}, Lccsanandroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/i;->a:Lccsanandroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getAndClearLastClickLocation()Lccsanandroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/i;->a:Lccsanandroid/graphics/PointF;

    new-instance v1, Lccsanandroid/graphics/PointF;

    invoke-direct {v1}, Lccsanandroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lccsancom/applovin/impl/adview/i;->a:Lccsanandroid/graphics/PointF;

    return-object v0
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Lccsanandroid/graphics/PointF;

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/i;->a:Lccsanandroid/graphics/PointF;

    invoke-super {p0, p1}, Lccsanandroid/webkit/WebView;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
