.class Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$2;
.super Lccsanandroid/view/ViewOutlineProvider;
.source "ImageFilterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;


# direct methods
.method constructor <init>(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;

    .line 332
    iput-object p1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$2;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-direct {p0}, Lccsanandroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Lccsanandroid/view/View;Lccsanandroid/graphics/Outline;)V
    .locals 8
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "outline"    # Lccsanandroid/graphics/Outline;

    .line 335
    iget-object v0, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$2;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v0}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->getWidth()I

    move-result v0

    .line 336
    .local v0, "w":I
    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$2;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-virtual {v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->getHeight()I

    move-result v7

    .line 337
    .local v7, "h":I
    iget-object v1, p0, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton$2;->this$0:Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;

    invoke-static {v1}, Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;->access$100(Lccsanandroidx/constraintlayout/utils/widget/ImageFilterButton;)F

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 338
    return-void
.end method
