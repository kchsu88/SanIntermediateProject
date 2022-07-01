.class Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;
.super Lccsanandroid/view/ViewOutlineProvider;
.source "ShapeableImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/imageview/ShapeableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutlineProvider"
.end annotation


# instance fields
.field private final rect:Lccsanandroid/graphics/Rect;

.field final synthetic this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/imageview/ShapeableImageView;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/android/material/imageview/ShapeableImageView;

    .line 578
    iput-object p1, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;

    invoke-direct {p0}, Lccsanandroid/view/ViewOutlineProvider;-><init>()V

    .line 580
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->rect:Lccsanandroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Lccsanandroid/view/View;Lccsanandroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "outline"    # Lccsanandroid/graphics/Outline;

    .line 584
    iget-object v0, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lccsancom/google/android/material/imageview/ShapeableImageView;->access$000(Lccsancom/google/android/material/imageview/ShapeableImageView;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 585
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lccsancom/google/android/material/imageview/ShapeableImageView;->access$100(Lccsancom/google/android/material/imageview/ShapeableImageView;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 589
    iget-object v0, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;

    new-instance v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v2, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2}, Lccsancom/google/android/material/imageview/ShapeableImageView;->access$000(Lccsancom/google/android/material/imageview/ShapeableImageView;)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-static {v0, v1}, Lccsancom/google/android/material/imageview/ShapeableImageView;->access$102(Lccsancom/google/android/material/imageview/ShapeableImageView;Lccsancom/google/android/material/shape/MaterialShapeDrawable;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 592
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lccsancom/google/android/material/imageview/ShapeableImageView;->access$200(Lccsancom/google/android/material/imageview/ShapeableImageView;)Lccsanandroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->rect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/RectF;->round(Lccsanandroid/graphics/Rect;)V

    .line 593
    iget-object v0, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lccsancom/google/android/material/imageview/ShapeableImageView;->access$100(Lccsancom/google/android/material/imageview/ShapeableImageView;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->rect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 594
    iget-object v0, p0, Lccsancom/google/android/material/imageview/ShapeableImageView$OutlineProvider;->this$0:Lccsancom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0}, Lccsancom/google/android/material/imageview/ShapeableImageView;->access$100(Lccsancom/google/android/material/imageview/ShapeableImageView;)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getOutline(Lccsanandroid/graphics/Outline;)V

    .line 595
    return-void
.end method
