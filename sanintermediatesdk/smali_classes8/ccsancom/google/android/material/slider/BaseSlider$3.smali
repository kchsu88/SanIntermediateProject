.class Lccsancom/google/android/material/slider/BaseSlider$3;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/slider/BaseSlider;->ensureLabelsRemoved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/slider/BaseSlider;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/slider/BaseSlider;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/slider/BaseSlider;

    .line 1958
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider$3;, "Lccsancom/google/android/material/slider/BaseSlider$3;"
    iput-object p1, p0, Lccsancom/google/android/material/slider/BaseSlider$3;->this$0:Lccsancom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 1961
    .local p0, "this":Lccsancom/google/android/material/slider/BaseSlider$3;, "Lccsancom/google/android/material/slider/BaseSlider$3;"
    invoke-super {p0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Lccsanandroid/animation/Animator;)V

    .line 1962
    iget-object v0, p0, Lccsancom/google/android/material/slider/BaseSlider$3;->this$0:Lccsancom/google/android/material/slider/BaseSlider;

    invoke-static {v0}, Lccsancom/google/android/material/slider/BaseSlider;->access$100(Lccsancom/google/android/material/slider/BaseSlider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/tooltip/TooltipDrawable;

    .line 1963
    .local v1, "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    iget-object v2, p0, Lccsancom/google/android/material/slider/BaseSlider$3;->this$0:Lccsancom/google/android/material/slider/BaseSlider;

    invoke-static {v2}, Lccsancom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v2

    invoke-interface {v2, v1}, Lccsancom/google/android/material/internal/ViewOverlayImpl;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1964
    .end local v1    # "label":Lccsancom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 1965
    :cond_0
    return-void
.end method