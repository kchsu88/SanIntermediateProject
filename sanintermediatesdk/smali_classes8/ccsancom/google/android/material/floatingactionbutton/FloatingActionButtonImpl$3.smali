.class Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;
.super Lccsancom/google/android/material/animation/MatrixEvaluator;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createAnimator(Lccsancom/google/android/material/animation/MotionSpec;FFF)Lccsanandroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 584
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    invoke-direct {p0}, Lccsancom/google/android/material/animation/MatrixEvaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/graphics/Matrix;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lccsanandroid/graphics/Matrix;
    .param p3, "endValue"    # Lccsanandroid/graphics/Matrix;

    .line 590
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    invoke-static {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$202(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;F)F

    .line 591
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/animation/MatrixEvaluator;->evaluate(FLccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 584
    check-cast p2, Lccsanandroid/graphics/Matrix;

    check-cast p3, Lccsanandroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$3;->evaluate(FLccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
