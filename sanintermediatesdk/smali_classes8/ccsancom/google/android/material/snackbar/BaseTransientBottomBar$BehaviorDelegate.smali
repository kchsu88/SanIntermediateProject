.class public Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BehaviorDelegate"
.end annotation


# instance fields
.field private managerCallback:Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 1327
    .local p1, "behavior":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->setStartAlphaSwipeDistance(F)V

    .line 1329
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->setEndAlphaSwipeDistance(F)V

    .line 1330
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->setSwipeDirection(I)V

    .line 1331
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 1339
    instance-of v0, p1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return v0
.end method

.method public onInterceptTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "event"    # Lccsanandroid/view/MotionEvent;

    .line 1344
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1354
    :pswitch_1
    invoke-static {}, Lccsancom/google/android/material/snackbar/SnackbarManager;->getInstance()Lccsancom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/SnackbarManager;->restoreTimeoutIfPaused(Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 1355
    goto :goto_0

    .line 1348
    :pswitch_2
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Lccsanandroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1349
    invoke-static {}, Lccsancom/google/android/material/snackbar/SnackbarManager;->getInstance()Lccsancom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/SnackbarManager;->pauseTimeout(Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 1359
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBaseTransientBottomBar(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar<",
            "*>;)V"
        }
    .end annotation

    .line 1335
    .local p1, "baseTransientBottomBar":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar<*>;"
    iget-object v0, p1, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;

    iput-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->managerCallback:Lccsancom/google/android/material/snackbar/SnackbarManager$Callback;

    .line 1336
    return-void
.end method