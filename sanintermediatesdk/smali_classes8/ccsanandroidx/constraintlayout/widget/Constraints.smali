.class public Lccsanandroidx/constraintlayout/widget/Constraints;
.super Lccsanandroid/view/ViewGroup;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Constraints"


# instance fields
.field myConstraintSet:Lccsanandroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;)V

    .line 42
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p2}, Lccsanandroidx/constraintlayout/widget/Constraints;->init(Lccsanandroid/util/AttributeSet;)V

    .line 48
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p2}, Lccsanandroidx/constraintlayout/widget/Constraints;->init(Lccsanandroid/util/AttributeSet;)V

    .line 54
    const/16 v0, 0x8

    invoke-super {p0, v0}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 55
    return-void
.end method

.method private init(Lccsanandroid/util/AttributeSet;)V
    .locals 2
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 139
    const-string v0, "Constraints"

    const-string v1, " ################# init"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Constraints;->generateDefaultLayoutParams()Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;
    .locals 2

    .line 135
    new-instance v0, Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lccsanandroidx/constraintlayout/widget/Constraints;->generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 147
    new-instance v0, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Lccsanandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 62
    new-instance v0, Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;

    invoke-virtual {p0}, Lccsanandroidx/constraintlayout/widget/Constraints;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lccsanandroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConstraintSet()Lccsanandroidx/constraintlayout/widget/ConstraintSet;
    .locals 1

    .line 151
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Constraints;->myConstraintSet:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v0, p0, Lccsanandroidx/constraintlayout/widget/Constraints;->myConstraintSet:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    .line 155
    :cond_0
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Constraints;->myConstraintSet:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v0, p0}, Lccsanandroidx/constraintlayout/widget/ConstraintSet;->clone(Lccsanandroidx/constraintlayout/widget/Constraints;)V

    .line 156
    iget-object v0, p0, Lccsanandroidx/constraintlayout/widget/Constraints;->myConstraintSet:Lccsanandroidx/constraintlayout/widget/ConstraintSet;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 162
    return-void
.end method
