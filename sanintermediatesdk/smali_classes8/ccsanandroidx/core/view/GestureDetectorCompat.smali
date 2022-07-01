.class public final Lccsanandroidx/core/view/GestureDetectorCompat;
.super Ljava/lang/Object;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;,
        Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;,
        Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "listener"    # Lccsanandroid/view/GestureDetector$OnGestureListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 506
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/core/view/GestureDetectorCompat;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;Lccsanandroid/os/Handler;)V

    .line 507
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;Lccsanandroid/os/Handler;)V
    .locals 2
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

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 521
    new-instance v0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat;->mImpl:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    goto :goto_0

    .line 523
    :cond_0
    new-instance v0, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-direct {v0, p1, p2, p3}, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/GestureDetector$OnGestureListener;Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat;->mImpl:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    .line 525
    :goto_0
    return-void
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .line 531
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat;->mImpl:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0}, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->isLongpressEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat;->mImpl:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

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

    .line 556
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat;->mImpl:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->setIsLongpressEnabled(Z)V

    .line 557
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

    .line 567
    iget-object v0, p0, Lccsanandroidx/core/view/GestureDetectorCompat;->mImpl:Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl;->setOnDoubleTapListener(Lccsanandroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 568
    return-void
.end method
