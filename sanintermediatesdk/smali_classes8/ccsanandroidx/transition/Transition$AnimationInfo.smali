.class Lccsanandroidx/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mTransition:Lccsanandroidx/transition/Transition;

.field mValues:Lccsanandroidx/transition/TransitionValues;

.field mView:Lccsanandroid/view/View;

.field mWindowId:Lccsanandroidx/transition/WindowIdImpl;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;Ljava/lang/String;Lccsanandroidx/transition/Transition;Lccsanandroidx/transition/WindowIdImpl;Lccsanandroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transition"    # Lccsanandroidx/transition/Transition;
    .param p4, "windowId"    # Lccsanandroidx/transition/WindowIdImpl;
    .param p5, "values"    # Lccsanandroidx/transition/TransitionValues;

    .line 2368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2369
    iput-object p1, p0, Lccsanandroidx/transition/Transition$AnimationInfo;->mView:Lccsanandroid/view/View;

    .line 2370
    iput-object p2, p0, Lccsanandroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 2371
    iput-object p5, p0, Lccsanandroidx/transition/Transition$AnimationInfo;->mValues:Lccsanandroidx/transition/TransitionValues;

    .line 2372
    iput-object p4, p0, Lccsanandroidx/transition/Transition$AnimationInfo;->mWindowId:Lccsanandroidx/transition/WindowIdImpl;

    .line 2373
    iput-object p3, p0, Lccsanandroidx/transition/Transition$AnimationInfo;->mTransition:Lccsanandroidx/transition/Transition;

    .line 2374
    return-void
.end method
