.class public final Lccsancom/applovin/impl/adview/y;
.super Lccsancom/applovin/impl/adview/j;


# static fields
.field private static final c:Lccsanandroid/graphics/Paint;

.field private static final d:Lccsanandroid/graphics/Paint;

.field private static final e:Lccsanandroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lccsancom/applovin/impl/adview/y;->c:Lccsanandroid/graphics/Paint;

    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lccsancom/applovin/impl/adview/y;->d:Lccsanandroid/graphics/Paint;

    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lccsancom/applovin/impl/adview/y;->e:Lccsanandroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/j;-><init>(Lccsanandroid/content/Context;)V

    sget-object p1, Lccsancom/applovin/impl/adview/y;->c:Lccsanandroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lccsancom/applovin/impl/adview/y;->d:Lccsanandroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    sget-object p1, Lccsancom/applovin/impl/adview/y;->e:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected getCenter()F
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/y;->getSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getCrossOffset()F
    .locals 2

    iget v0, p0, Lccsancom/applovin/impl/adview/y;->a:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected getInnerCircleOffset()F
    .locals 2

    iget v0, p0, Lccsancom/applovin/impl/adview/y;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected getInnerCircleRadius()F
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/y;->getCenter()F

    move-result v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/y;->getInnerCircleOffset()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method protected getStrokeWidth()F
    .locals 2

    iget v0, p0, Lccsancom/applovin/impl/adview/y;->a:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    return v0
.end method

.method public getStyle()Lccsancom/applovin/impl/adview/j$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/adview/j$a;->a:Lccsancom/applovin/impl/adview/j$a;

    return-object v0
.end method

.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Lccsancom/applovin/impl/adview/j;->onDraw(Lccsanandroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/y;->getCenter()F

    move-result v0

    sget-object v1, Lccsancom/applovin/impl/adview/y;->c:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/y;->getInnerCircleRadius()F

    move-result v1

    sget-object v2, Lccsancom/applovin/impl/adview/y;->d:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/y;->getCrossOffset()F

    move-result v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/y;->getSize()F

    move-result v1

    sub-float/2addr v1, v0

    sget-object v2, Lccsancom/applovin/impl/adview/y;->e:Lccsanandroid/graphics/Paint;

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/y;->getStrokeWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v3, p1

    move v4, v0

    move v5, v0

    move v6, v1

    move v7, v1

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->drawLine(FFFFLccsanandroid/graphics/Paint;)V

    move v5, v1

    move v7, v0

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->drawLine(FFFFLccsanandroid/graphics/Paint;)V

    return-void
.end method
