.class interface abstract Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "GestureDetectorCompatImpl"
.end annotation


# virtual methods
.method public abstract isLongpressEnabled()Z
.end method

.method public abstract onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation
.end method

.method public abstract setIsLongpressEnabled(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract setOnDoubleTapListener(Lccsanandroid/view/GestureDetector$OnDoubleTapListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
