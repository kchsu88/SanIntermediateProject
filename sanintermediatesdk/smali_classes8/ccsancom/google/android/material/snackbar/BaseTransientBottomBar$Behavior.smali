.class public Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
.super Lccsancom/google/android/material/behavior/SwipeDismissBehavior;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<",
        "Lccsanandroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1299
    invoke-direct {p0}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    .line 1300
    new-instance v0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;-><init>(Lccsancom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    .line 1301
    return-void
.end method

.method static synthetic access$1300(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    .param p1, "x1"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1296
    invoke-direct {p0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->setBaseTransientBottomBar(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V

    return-void
.end method

.method private setBaseTransientBottomBar(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar<",
            "*>;)V"
        }
    .end annotation

    .line 1305
    .local p1, "baseTransientBottomBar":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar<*>;"
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->setBaseTransientBottomBar(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 1306
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 1310
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->canSwipeDismissView(Lccsanandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "event"    # Lccsanandroid/view/MotionEvent;

    .line 1316
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->delegate:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$BehaviorDelegate;->onInterceptTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)V

    .line 1317
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->onInterceptTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
