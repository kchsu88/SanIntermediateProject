.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Lccsanandroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 483
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/ValueAnimator;

    .line 486
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 487
    .local v0, "alpha":F
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$10;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->setAlpha(F)V

    .line 488
    return-void
.end method
