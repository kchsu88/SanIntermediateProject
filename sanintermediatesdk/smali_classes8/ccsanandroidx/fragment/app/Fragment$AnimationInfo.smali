.class Lccsanandroidx/fragment/app/Fragment$AnimationInfo;
.super Ljava/lang/Object;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationInfo"
.end annotation


# instance fields
.field mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Lccsanandroid/view/View;

.field mAnimator:Lccsanandroid/animation/Animator;

.field mEnterTransition:Ljava/lang/Object;

.field mEnterTransitionCallback:Lccsanandroidx/core/app/SharedElementCallback;

.field mEnterTransitionPostponed:Z

.field mExitTransition:Ljava/lang/Object;

.field mExitTransitionCallback:Lccsanandroidx/core/app/SharedElementCallback;

.field mIsHideReplaced:Z

.field mNextAnim:I

.field mNextTransition:I

.field mNextTransitionStyle:I

.field mReenterTransition:Ljava/lang/Object;

.field mReturnTransition:Ljava/lang/Object;

.field mSharedElementEnterTransition:Ljava/lang/Object;

.field mSharedElementReturnTransition:Ljava/lang/Object;

.field mStartEnterTransitionListener:Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

.field mStateAfterAnimating:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3018
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 3019
    sget-object v1, Lccsanandroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 3020
    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    .line 3021
    sget-object v1, Lccsanandroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 3022
    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 3023
    sget-object v1, Lccsanandroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 3027
    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lccsanandroidx/core/app/SharedElementCallback;

    .line 3028
    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lccsanandroidx/core/app/SharedElementCallback;

    return-void
.end method