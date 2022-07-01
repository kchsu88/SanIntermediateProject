.class Lccsancom/google/android/material/timepicker/ClockFaceView$1;
.super Ljava/lang/Object;
.source "ClockFaceView.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/timepicker/ClockFaceView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/timepicker/ClockFaceView;

    .line 128
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 131
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Lccsancom/google/android/material/timepicker/ClockFaceView;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 132
    return v1

    .line 134
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Lccsancom/google/android/material/timepicker/ClockFaceView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 135
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    .line 136
    invoke-virtual {v0}, Lccsancom/google/android/material/timepicker/ClockFaceView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v2}, Lccsancom/google/android/material/timepicker/ClockFaceView;->access$000(Lccsancom/google/android/material/timepicker/ClockFaceView;)Lccsancom/google/android/material/timepicker/ClockHandView;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/android/material/timepicker/ClockHandView;->getSelectorRadius()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v2}, Lccsancom/google/android/material/timepicker/ClockFaceView;->access$100(Lccsancom/google/android/material/timepicker/ClockFaceView;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 137
    .local v0, "circleRadius":I
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lccsancom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v2, v0}, Lccsancom/google/android/material/timepicker/ClockFaceView;->setRadius(I)V

    .line 138
    return v1
.end method
