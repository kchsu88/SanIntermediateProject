.class Lccsancom/google/android/material/timepicker/ClockHandView$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ClockHandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/timepicker/ClockHandView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/timepicker/ClockHandView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/timepicker/ClockHandView;

    .line 150
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/ClockHandView$2;->this$0:Lccsancom/google/android/material/timepicker/ClockHandView;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 153
    invoke-virtual {p1}, Lccsanandroid/animation/Animator;->end()V

    .line 154
    return-void
.end method
