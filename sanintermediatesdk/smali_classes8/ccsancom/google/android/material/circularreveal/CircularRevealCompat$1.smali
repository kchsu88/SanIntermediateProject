.class final Lccsancom/google/android/material/circularreveal/CircularRevealCompat$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "CircularRevealCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)Lccsanandroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/circularreveal/CircularRevealWidget;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lccsancom/google/android/material/circularreveal/CircularRevealCompat$1;->val$view:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 131
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealCompat$1;->val$view:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-interface {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->destroyCircularRevealCache()V

    .line 132
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 126
    iget-object v0, p0, Lccsancom/google/android/material/circularreveal/CircularRevealCompat$1;->val$view:Lccsancom/google/android/material/circularreveal/CircularRevealWidget;

    invoke-interface {v0}, Lccsancom/google/android/material/circularreveal/CircularRevealWidget;->buildCircularRevealCache()V

    .line 127
    return-void
.end method
