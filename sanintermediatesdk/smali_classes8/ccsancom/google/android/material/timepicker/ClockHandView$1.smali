.class Lccsancom/google/android/material/timepicker/ClockHandView$1;
.super Ljava/lang/Object;
.source "ClockHandView.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 142
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/ClockHandView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockHandView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/ValueAnimator;

    .line 145
    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 146
    .local v0, "animatedValue":F
    iget-object v1, p0, Lccsancom/google/android/material/timepicker/ClockHandView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockHandView;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lccsancom/google/android/material/timepicker/ClockHandView;->access$000(Lccsancom/google/android/material/timepicker/ClockHandView;FZ)V

    .line 147
    return-void
.end method
