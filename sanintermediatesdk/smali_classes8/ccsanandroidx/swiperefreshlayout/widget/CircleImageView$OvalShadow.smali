.class Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;
.super Lccsanandroid/graphics/drawable/shapes/OvalShape;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mRadialGradient:Lccsanandroid/graphics/RadialGradient;

.field private mShadowPaint:Lccsanandroid/graphics/Paint;

.field final synthetic this$0:Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;


# direct methods
.method constructor <init>(Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;I)V
    .locals 1
    .param p2, "shadowRadius"    # I

    .line 131
    iput-object p1, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;

    .line 132
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 133
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Lccsanandroid/graphics/Paint;

    .line 134
    iput p2, p1, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    .line 135
    invoke-virtual {p0}, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->rect()Lccsanandroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    .line 136
    return-void
.end method

.method private updateRadialGradient(I)V
    .locals 8
    .param p1, "diameter"    # I

    .line 153
    new-instance v7, Lccsanandroid/graphics/RadialGradient;

    div-int/lit8 v0, p1, 0x2

    int-to-float v1, v0

    div-int/lit8 v0, p1, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;

    iget v0, v0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    int-to-float v3, v0

    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    sget-object v6, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lccsanandroid/graphics/RadialGradient;-><init>(FFF[I[FLccsanandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mRadialGradient:Lccsanandroid/graphics/RadialGradient;

    .line 156
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, v7}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 157
    return-void

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v0}, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;->getWidth()I

    move-result v0

    .line 147
    .local v0, "viewWidth":I
    iget-object v1, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;

    invoke-virtual {v1}, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;->getHeight()I

    move-result v1

    .line 148
    .local v1, "viewHeight":I
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->mShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 149
    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;

    iget v5, v5, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView;->mShadowRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, p2}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 150
    return-void
.end method

.method protected onResize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 140
    invoke-super {p0, p1, p2}, Lccsanandroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    .line 141
    float-to-int v0, p1

    invoke-direct {p0, v0}, Lccsanandroidx/swiperefreshlayout/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    .line 142
    return-void
.end method
