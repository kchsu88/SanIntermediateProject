.class final Lccsancom/google/android/material/transition/platform/SlideDistanceProvider$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "SlideDistanceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/platform/SlideDistanceProvider;->createTranslationYAnimator(Lccsanandroid/view/View;FFF)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$originalTranslation:F

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;F)V
    .locals 0

    .line 221
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/SlideDistanceProvider$2;->val$view:Lccsanandroid/view/View;

    iput p2, p0, Lccsancom/google/android/material/transition/platform/SlideDistanceProvider$2;->val$originalTranslation:F

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 224
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/SlideDistanceProvider$2;->val$view:Lccsanandroid/view/View;

    iget v1, p0, Lccsancom/google/android/material/transition/platform/SlideDistanceProvider$2;->val$originalTranslation:F

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 225
    return-void
.end method
