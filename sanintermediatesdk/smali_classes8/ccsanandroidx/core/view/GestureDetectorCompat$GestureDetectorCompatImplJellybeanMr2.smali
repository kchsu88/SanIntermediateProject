.class Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"

# interfaces
.implements Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/GestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GestureDetectorCompatImplJellybeanMr2"
.end annotation


# instance fields
.field private final mDetector:Lccsanandroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;Lccsanandroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "listener"    # Lccsanandroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Lccsanandroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "listener",
            "handler"
        }
    .end annotation

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    new-instance v0, Lccsanandroid/view/GestureDetector;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroid/view/GestureDetector;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Lccsanandroid/view/GestureDetector;

    .line 471
    return-void
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Lccsanandroid/view/GestureDetector;

    invoke-virtual {v0}, Lccsanandroid/view/GestureDetector;->isLongpressEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Lccsanandroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Lccsanandroid/view/GestureDetector;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Lccsanandroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Lccsanandroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 486
    return-void
.end method

.method public setOnDoubleTapListener(Lccsanandroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1
    .param p1, "listener"    # Lccsanandroid/view/GestureDetector$OnDoubleTapListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;->mDetector:Lccsanandroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Lccsanandroid/view/GestureDetector;->setOnDoubleTapListener(Lccsanandroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 491
    return-void
.end method
