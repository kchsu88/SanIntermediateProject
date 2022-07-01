.class public Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;
.super Lccsanandroidx/constraintlayout/widget/ConstraintHelper;
.source "MotionHelper.java"

# interfaces
.implements Lccsanandroidx/constraintlayout/motion/widget/Animatable;
.implements Lccsanandroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;


# instance fields
.field private mProgress:F

.field private mUseOnHide:Z

.field private mUseOnShow:Z

.field protected views:[Lccsanandroid/view/View;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 28
    invoke-virtual {p0, p2}, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->init(Lccsanandroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 33
    invoke-virtual {p0, p2}, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->init(Lccsanandroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .line 75
    iget v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mProgress:F

    return v0
.end method

.method protected init(Lccsanandroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 40
    invoke-super {p0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintHelper;->init(Lccsanandroid/util/AttributeSet;)V

    .line 41
    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/constraintlayout/widget/R$styleable;->MotionHelper:[I

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 44
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 45
    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 46
    .local v3, "attr":I
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->MotionHelper_onShow:I

    if-ne v3, v4, :cond_0

    .line 47
    iget-boolean v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    invoke-virtual {v0, v3, v4}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    goto :goto_1

    .line 48
    :cond_0
    sget v4, Lccsanandroidx/constraintlayout/widget/R$styleable;->MotionHelper_onHide:I

    if-ne v3, v4, :cond_1

    .line 49
    iget-boolean v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    invoke-virtual {v0, v3, v4}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    .line 44
    .end local v3    # "attr":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "a":Lccsanandroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public isUseOnHide()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    return v0
.end method

.method public isUsedOnShow()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    return v0
.end method

.method public onTransitionChange(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0
    .param p1, "motionLayout"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "progress"    # F

    .line 120
    return-void
.end method

.method public onTransitionCompleted(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 0
    .param p1, "motionLayout"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "currentId"    # I

    .line 125
    return-void
.end method

.method public onTransitionStarted(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 0
    .param p1, "motionLayout"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I

    .line 115
    return-void
.end method

.method public onTransitionTrigger(Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;IZF)V
    .locals 0
    .param p1, "motionLayout"    # Lccsanandroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "triggerId"    # I
    .param p3, "positive"    # Z
    .param p4, "progress"    # F

    .line 130
    return-void
.end method

.method public setProgress(F)V
    .locals 5
    .param p1, "progress"    # F

    .line 80
    iput p1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mProgress:F

    .line 81
    iget v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mCount:I

    if-lez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->getViews(Lccsanandroidx/constraintlayout/widget/ConstraintLayout;)[Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->views:[Lccsanandroid/view/View;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->mCount:I

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->views:[Lccsanandroid/view/View;

    aget-object v1, v1, v0

    .line 86
    .local v1, "view":Lccsanandroid/view/View;
    invoke-virtual {p0, v1, p1}, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(Lccsanandroid/view/View;F)V

    .line 84
    .end local v1    # "view":Lccsanandroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_3

    .line 89
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 90
    .local v0, "group":Lccsanandroid/view/ViewGroup;
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 92
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 93
    invoke-virtual {v0, v2}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 94
    .local v3, "view":Lccsanandroid/view/View;
    instance-of v4, v3, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;

    if-eqz v4, :cond_2

    .line 95
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p0, v3, p1}, Lccsanandroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(Lccsanandroid/view/View;F)V

    .line 92
    .end local v3    # "view":Lccsanandroid/view/View;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "group":Lccsanandroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_3
    :goto_3
    return-void
.end method

.method public setProgress(Lccsanandroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "progress"    # F

    .line 110
    return-void
.end method
