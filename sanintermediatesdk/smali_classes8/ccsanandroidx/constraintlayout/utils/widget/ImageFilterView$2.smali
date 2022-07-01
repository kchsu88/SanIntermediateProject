.class Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$2;
.super Lccsanandroid/view/ViewOutlineProvider;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;


# direct methods
.method constructor <init>(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 543
    iput-object p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$2;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-direct {p0}, Lccsanandroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Lccsanandroid/view/View;Lccsanandroid/graphics/Outline;)V
    .locals 8
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "outline"    # Lccsanandroid/graphics/Outline;

    .line 546
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$2;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result v0

    .line 547
    .local v0, "w":I
    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$2;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v7

    .line 548
    .local v7, "h":I
    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView$2;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;->access$100(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterView;)F

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 549
    return-void
.end method
