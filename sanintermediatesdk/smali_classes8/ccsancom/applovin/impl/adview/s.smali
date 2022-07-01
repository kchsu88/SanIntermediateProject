.class public final Lccsancom/applovin/impl/adview/s;
.super Lccsancom/applovin/impl/adview/j;


# static fields
.field private static final c:Lccsanandroid/graphics/Paint;

.field private static final d:Lccsanandroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lccsancom/applovin/impl/adview/s;->c:Lccsanandroid/graphics/Paint;

    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lccsancom/applovin/impl/adview/s;->d:Lccsanandroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/j;-><init>(Lccsanandroid/content/Context;)V

    sget-object p1, Lccsancom/applovin/impl/adview/s;->c:Lccsanandroid/graphics/Paint;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v1}, Lccsanandroid/graphics/Paint;->setARGB(IIII)V

    sget-object p1, Lccsancom/applovin/impl/adview/s;->d:Lccsanandroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/s;->setViewScale(F)V

    return-void
.end method

.method protected getCenter()F
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/s;->getSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getCrossOffset()F
    .locals 2

    iget v0, p0, Lccsancom/applovin/impl/adview/s;->a:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected getStrokeWidth()F
    .locals 2

    iget v0, p0, Lccsancom/applovin/impl/adview/s;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getStyle()Lccsancom/applovin/impl/adview/j$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/adview/j$a;->b:Lccsancom/applovin/impl/adview/j$a;

    return-object v0
.end method

.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Lccsancom/applovin/impl/adview/j;->onDraw(Lccsanandroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/s;->getCenter()F

    move-result v0

    sget-object v1, Lccsancom/applovin/impl/adview/s;->c:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/s;->getCrossOffset()F

    move-result v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/s;->getSize()F

    move-result v1

    sub-float/2addr v1, v0

    sget-object v8, Lccsancom/applovin/impl/adview/s;->d:Lccsanandroid/graphics/Paint;

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/s;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v8, v2}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v2, p1

    move v3, v0

    move v4, v0

    move v5, v1

    move v6, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawLine(FFFFLccsanandroid/graphics/Paint;)V

    move v4, v1

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawLine(FFFFLccsanandroid/graphics/Paint;)V

    return-void
.end method
