.class public Lccsanandroidx/appcompat/widget/ActionMenuView$LayoutParams;
.super Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Lccsanandroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Lccsanandroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Lccsanandroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Lccsanandroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Lccsanandroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 844
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 846
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .line 849
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    .line 850
    iput-boolean p3, p0, Lccsanandroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 851
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 831
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 832
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 835
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 836
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/appcompat/widget/ActionMenuView$LayoutParams;)V
    .locals 1
    .param p1, "other"    # Lccsanandroidx/appcompat/widget/ActionMenuView$LayoutParams;

    .line 839
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 840
    iget-boolean v0, p1, Lccsanandroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 841
    return-void
.end method
