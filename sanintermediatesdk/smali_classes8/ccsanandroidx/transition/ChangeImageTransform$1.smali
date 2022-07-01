.class final Lccsanandroidx/transition/ChangeImageTransform$1;
.super Ljava/lang/Object;
.source "ChangeImageTransform.java"

# interfaces
.implements Lccsanandroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/ChangeImageTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/animation/TypeEvaluator<",
        "Lccsanandroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/graphics/Matrix;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Lccsanandroid/graphics/Matrix;
    .param p3, "endValue"    # Lccsanandroid/graphics/Matrix;

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p2, Lccsanandroid/graphics/Matrix;

    check-cast p3, Lccsanandroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/transition/ChangeImageTransform$1;->evaluate(FLccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Matrix;)Lccsanandroid/graphics/Matrix;

    move-result-object p1

    return-object p1
.end method
