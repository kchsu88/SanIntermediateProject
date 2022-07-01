.class public Lccsanandroidx/constraintlayout/widget/Barrier;
.super Lccsanandroidx/constraintlayout/widget/ConstraintHelper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 118
    invoke-direct {p0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;)V

    .line 119
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 123
    invoke-direct {p0, p1, p2}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 124
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 129
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 130
    return-void
.end method

.method private updateType(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V
    .locals 6
    .param p1, "widget"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "type"    # I
    .param p3, "isRtl"    # Z

    .line 151
    iput p2, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    .line 152
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x11

    if-ge v0, v5, :cond_1

    .line 155
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_0

    .line 156
    iput v2, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 157
    :cond_0
    if-ne v0, v3, :cond_5

    .line 158
    iput v1, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 162
    :cond_1
    if-eqz p3, :cond_3

    .line 163
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_2

    .line 164
    iput v1, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 165
    :cond_2
    if-ne v0, v3, :cond_5

    .line 166
    iput v2, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 169
    :cond_3
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne v0, v4, :cond_4

    .line 170
    iput v2, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_0

    .line 171
    :cond_4
    if-ne v0, v3, :cond_5

    .line 172
    iput v1, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    .line 176
    :cond_5
    :goto_0
    instance-of v0, p1, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v0, :cond_6

    .line 177
    move-object v0, p1

    check-cast v0, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    .line 178
    .local v0, "barrier":Lccsanandroidx/constraintlayout/solver/widgets/Barrier;
    iget v1, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    invoke-virtual {v0, v1}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->setBarrierType(I)V

    .line 180
    .end local v0    # "barrier":Lccsanandroidx/constraintlayout/solver/widgets/Barrier;
    :cond_6
    return-void
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v0

    return v0
.end method

.method public getMargin()I
    .locals 1

    .line 239
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->getMargin()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 138
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    return v0
.end method

.method protected init(Lccsanandroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 193
    invoke-super {p0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->init(Lccsanandroid/util/AttributeSet;)V

    .line 194
    new-instance v0, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    .line 195
    if-eqz p1, :cond_3

    .line 196
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Barrier;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 197
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 198
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 199
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 200
    .local v3, "attr":I
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 201
    invoke-virtual {v0, v3, v5}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lccsanandroidx/constraintlayout/widget/Barrier;->setType(I)V

    goto :goto_1

    .line 202
    :cond_0
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_1

    .line 203
    iget-object v4, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v5}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    goto :goto_1

    .line 204
    :cond_1
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierMargin:I

    if-ne v3, v4, :cond_2

    .line 205
    invoke-virtual {v0, v3, v5}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 206
    .local v4, "margin":I
    iget-object v5, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v5, v4}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    .line 198
    .end local v3    # "attr":I
    .end local v4    # "margin":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    iput-object v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mHelperWidget:Lccsanandroidx/constraintlayout/solver/widgets/Helper;

    .line 211
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Barrier;->validateParams()V

    .line 212
    return-void
.end method

.method public loadParameters(Lccsanandroidx/constraintlayout/widget/ConstraintSet$Constraint;Lccsanandroidx/constraintlayout/solver/widgets/HelperWidget;Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Lccsanandroid/util/SparseArray;)V
    .locals 4
    .param p1, "constraint"    # Lccsanandroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .param p2, "child"    # Lccsanandroidx/constraintlayout/solver/widgets/HelperWidget;
    .param p3, "layoutParams"    # Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Lccsanandroidx/constraintlayout/solver/widgets/HelperWidget;",
            "Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p4, "mapIdToWidget":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Lccsanandroidx/constraintlayout/widget/ConstraintSet$Constraint;Lccsanandroidx/constraintlayout/solver/widgets/HelperWidget;Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Lccsanandroid/util/SparseArray;)V

    .line 254
    instance-of v0, p2, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v0, :cond_0

    .line 255
    move-object v0, p2

    check-cast v0, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    .line 256
    .local v0, "barrier":Lccsanandroidx/constraintlayout/solver/widgets/Barrier;
    invoke-virtual {p2}, Lccsanandroidx/constraintlayout/solver/widgets/HelperWidget;->getParent()Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 257
    .local v1, "container":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v2

    .line 258
    .local v2, "isRtl":Z
    iget-object v3, p1, Lccsanandroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Lccsanandroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v3, Lccsanandroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-direct {p0, v0, v3, v2}, Lccsanandroidx/constraintlayout/widget/Barrier;->updateType(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    .line 259
    iget-object v3, p1, Lccsanandroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Lccsanandroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean v3, v3, Lccsanandroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v0, v3}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    .line 260
    iget-object v3, p1, Lccsanandroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Lccsanandroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v3, v3, Lccsanandroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v0, v3}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    .line 262
    .end local v0    # "barrier":Lccsanandroidx/constraintlayout/solver/widgets/Barrier;
    .end local v1    # "container":Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .end local v2    # "isRtl":Z
    :cond_0
    return-void
.end method

.method public resolveRtl(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V
    .locals 1
    .param p1, "widget"    # Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "isRtl"    # Z

    .line 184
    iget v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    invoke-direct {p0, p1, v0, p2}, Lccsanandroidx/constraintlayout/widget/Barrier;->updateType(Lccsanandroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    .line 185
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1
    .param p1, "supportGone"    # Z

    .line 215
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    .line 216
    return-void
.end method

.method public setDpMargin(I)V
    .locals 3
    .param p1, "margin"    # I

    .line 228
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Barrier;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->density:F

    .line 229
    .local v0, "density":F
    int-to-float v1, p1

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 230
    .local v1, "px":I
    iget-object v2, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v2, v1}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    .line 231
    return-void
.end method

.method public setMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .line 248
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mBarrier:Lccsanandroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Lccsanandroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    .line 249
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 147
    iput p1, p0, Lccsanandroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    .line 148
    return-void
.end method
