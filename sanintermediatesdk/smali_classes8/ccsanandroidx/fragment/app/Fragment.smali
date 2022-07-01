.class public Lccsanandroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Lccsanandroid/content/ComponentCallbacks;
.implements Lccsanandroid/view/View$OnCreateContextMenuListener;
.implements Lccsanandroidx/lifecycle/LifecycleOwner;
.implements Lccsanandroidx/lifecycle/ViewModelStoreOwner;
.implements Lccsanandroidx/savedstate/SavedStateRegistryOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/fragment/app/Fragment$AnimationInfo;,
        Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;,
        Lccsanandroidx/fragment/app/Fragment$InstantiationException;,
        Lccsanandroidx/fragment/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;


# instance fields
.field mAdded:Z

.field mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

.field mArguments:Lccsanandroid/os/Bundle;

.field mBackStackNesting:I

.field private mCalled:Z

.field mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

.field mContainer:Lccsanandroid/view/ViewGroup;

.field mContainerId:I

.field private mContentLayoutId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

.field mInLayout:Z

.field mInnerView:Lccsanandroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field private mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

.field mLayoutInflater:Lccsanandroid/view/LayoutInflater;

.field mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

.field mMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

.field mMenuVisible:Z

.field mParentFragment:Lccsanandroidx/fragment/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mPostponedDurationRunnable:Ljava/lang/Runnable;

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetainInstanceChangedWhileDetached:Z

.field mSavedFragmentState:Lccsanandroid/os/Bundle;

.field mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewState:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Lccsanandroidx/fragment/app/Fragment;

.field mTargetRequestCode:I

.field mTargetWho:Ljava/lang/String;

.field mUserVisibleHint:Z

.field mView:Lccsanandroid/view/View;

.field mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

.field mViewLifecycleOwnerLiveData:Lccsanandroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/lifecycle/MutableLiveData<",
            "Lccsanandroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsanandroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 116
    nop

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 165
    new-instance v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 221
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 230
    new-instance v0, Lccsanandroidx/fragment/app/Fragment$1;

    invoke-direct {v0, p0}, Lccsanandroidx/fragment/app/Fragment$1;-><init>(Lccsanandroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    .line 260
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->RESUMED:Lccsanandroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 267
    new-instance v0, Lccsanandroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Lccsanandroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lccsanandroidx/lifecycle/MutableLiveData;

    .line 451
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->initLifecycle()V

    .line 452
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "contentLayoutId"    # I

    .line 463
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;-><init>()V

    .line 464
    iput p1, p0, Lccsanandroidx/fragment/app/Fragment;->mContentLayoutId:I

    .line 465
    return-void
.end method

.method private ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;
    .locals 1

    .line 2873
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2874
    new-instance v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    .line 2876
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    return-object v0
.end method

.method private initLifecycle()V
    .locals 2

    .line 468
    new-instance v0, Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    .line 469
    invoke-static {p0}, Lccsanandroidx/savedstate/SavedStateRegistryController;->create(Lccsanandroidx/savedstate/SavedStateRegistryOwner;)Lccsanandroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

    .line 470
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    new-instance v1, Lccsanandroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Lccsanandroidx/fragment/app/Fragment$2;-><init>(Lccsanandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 483
    :cond_0
    return-void
.end method

.method public static instantiate(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsanandroidx/fragment/app/Fragment;->instantiate(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/os/Bundle;)Lccsanandroidx/fragment/app/Fragment;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "args"    # Lccsanandroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 521
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 522
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 521
    invoke-static {v2, p1}, Lccsanandroidx/fragment/app/FragmentFactory;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 523
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/fragment/app/Fragment;>;"
    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/fragment/app/Fragment;

    .line 524
    .local v3, "f":Lccsanandroidx/fragment/app/Fragment;
    if-eqz p2, :cond_0

    .line 525
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p2, v4}, Lccsanandroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 526
    invoke-virtual {v3, p2}, Lccsanandroidx/fragment/app/Fragment;->setArguments(Lccsanandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    return-object v3

    .line 540
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lccsanandroidx/fragment/app/Fragment;>;"
    .end local v3    # "f":Lccsanandroidx/fragment/app/Fragment;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lccsanandroidx/fragment/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lccsanandroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 537
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lccsanandroidx/fragment/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": could not find Fragment constructor"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lccsanandroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 533
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 534
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lccsanandroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lccsanandroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 529
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lccsanandroidx/fragment/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lccsanandroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method


# virtual methods
.method callStartTransitionListener()V
    .locals 3

    .line 2451
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2452
    const/4 v0, 0x0

    .local v0, "listener":Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    goto :goto_0

    .line 2454
    .end local v0    # "listener":Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2455
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2456
    .restart local v0    # "listener":Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2458
    :goto_0
    if-eqz v0, :cond_1

    .line 2459
    invoke-interface {v0}, Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    .line 2461
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 2474
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2476
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2478
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2480
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2481
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2483
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2484
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2485
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2486
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2487
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2488
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2489
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2490
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2491
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2492
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2496
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    .line 2497
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2500
    :cond_1
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mParentFragment:Lccsanandroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 2501
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mParentFragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2504
    :cond_2
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mArguments:Lccsanandroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2505
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mArguments:Lccsanandroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2507
    :cond_3
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2508
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2511
    :cond_4
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedViewState:Lccsanandroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2512
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedViewState:Lccsanandroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2515
    :cond_5
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getTargetFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2516
    .local v0, "target":Lccsanandroidx/fragment/app/Fragment;
    if-eqz v0, :cond_6

    .line 2517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2518
    const-string v1, " mTargetRequestCode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    iget v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2521
    :cond_6
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    if-eqz v1, :cond_7

    .line 2522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mNextAnim="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2524
    :cond_7
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mContainer:Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_8

    .line 2525
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mContainer="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mContainer:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2527
    :cond_8
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v1, :cond_9

    .line 2528
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mView="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2530
    :cond_9
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mInnerView:Lccsanandroid/view/View;

    if-eqz v1, :cond_a

    .line 2531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mInnerView="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2533
    :cond_a
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getAnimatingAway()Lccsanandroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 2534
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2535
    const-string v1, "mAnimatingAway="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getAnimatingAway()Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2537
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2538
    const-string v1, "mStateAfterAnimating="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2541
    :cond_b
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 2542
    invoke-static {p0}, Lccsanandroidx/loader/app/LoaderManager;->getInstance(Lccsanandroidx/lifecycle/LifecycleOwner;)Lccsanandroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lccsanandroidx/loader/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2544
    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2547
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 570
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 2551
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2552
    return-object p0

    .line 2554
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public final getActivity()Lccsanandroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 788
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    check-cast v0, Lccsanandroidx/fragment/app/FragmentActivity;

    :goto_0
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    .line 2315
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2316
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 2315
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    .line 2340
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2341
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 2340
    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method getAnimatingAway()Lccsanandroid/view/View;
    .locals 1

    .line 2931
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2932
    const/4 v0, 0x0

    return-object v0

    .line 2934
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Lccsanandroid/view/View;

    return-object v0
.end method

.method getAnimator()Lccsanandroid/animation/Animator;
    .locals 1

    .line 2946
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2947
    const/4 v0, 0x0

    return-object v0

    .line 2949
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Lccsanandroid/animation/Animator;

    return-object v0
.end method

.method public final getArguments()Lccsanandroid/os/Bundle;
    .locals 1

    .line 636
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mArguments:Lccsanandroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;
    .locals 3

    .line 922
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    return-object v0

    .line 923
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 761
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    .line 2098
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2099
    const/4 v0, 0x0

    return-object v0

    .line 2101
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getEnterTransitionCallback()Lccsanandroidx/core/app/SharedElementCallback;
    .locals 1

    .line 2917
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2918
    const/4 v0, 0x0

    return-object v0

    .line 2920
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lccsanandroidx/core/app/SharedElementCallback;

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    .line 2177
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2178
    const/4 v0, 0x0

    return-object v0

    .line 2180
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    return-object v0
.end method

.method getExitTransitionCallback()Lccsanandroidx/core/app/SharedElementCallback;
    .locals 1

    .line 2924
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2925
    const/4 v0, 0x0

    return-object v0

    .line 2927
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lccsanandroidx/core/app/SharedElementCallback;

    return-object v0
.end method

.method public final getFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;
    .locals 1

    .line 890
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    .line 815
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 605
    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Lccsanandroid/view/LayoutInflater;
    .locals 1

    .line 1396
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLayoutInflater:Lccsanandroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 1397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/Fragment;->performGetLayoutInflater(Lccsanandroid/os/Bundle;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 1399
    :cond_0
    return-object v0
.end method

.method public getLayoutInflater(Lccsanandroid/os/Bundle;)Lccsanandroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedFragmentState"    # Lccsanandroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1430
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1434
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onGetLayoutInflater()Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 1435
    .local v0, "result":Lccsanandroid/view/LayoutInflater;
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->getLayoutInflaterFactory()Lccsanandroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroidx/core/view/LayoutInflaterCompat;->setFactory2(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/LayoutInflater$Factory2;)V

    .line 1436
    return-object v0

    .line 1431
    .end local v0    # "result":Lccsanandroid/view/LayoutInflater;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;
    .locals 1

    .line 283
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getLoaderManager()Lccsanandroidx/loader/app/LoaderManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1165
    invoke-static {p0}, Lccsanandroidx/loader/app/LoaderManager;->getInstance(Lccsanandroidx/lifecycle/LifecycleOwner;)Lccsanandroidx/loader/app/LoaderManager;

    move-result-object v0

    return-object v0
.end method

.method getNextAnim()I
    .locals 1

    .line 2880
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2881
    const/4 v0, 0x0

    return v0

    .line 2883
    :cond_0
    iget v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    return v0
.end method

.method getNextTransition()I
    .locals 1

    .line 2894
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2895
    const/4 v0, 0x0

    return v0

    .line 2897
    :cond_0
    iget v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    return v0
.end method

.method getNextTransitionStyle()I
    .locals 1

    .line 2910
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2911
    const/4 v0, 0x0

    return v0

    .line 2913
    :cond_0
    iget v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return v0
.end method

.method public final getParentFragment()Lccsanandroidx/fragment/app/Fragment;
    .locals 1

    .line 934
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mParentFragment:Lccsanandroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    .line 2215
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2216
    const/4 v0, 0x0

    return-object v0

    .line 2218
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    sget-object v1, Lccsanandroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    .line 838
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->requireContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .line 1073
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    .line 2137
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2138
    const/4 v0, 0x0

    return-object v0

    .line 2140
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    sget-object v1, Lccsanandroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final getSavedStateRegistry()Lccsanandroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 370
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Lccsanandroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Lccsanandroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    .line 2248
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2249
    const/4 v0, 0x0

    return-object v0

    .line 2251
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    .line 2286
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2287
    const/4 v0, 0x0

    return-object v0

    .line 2289
    :cond_0
    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    sget-object v1, Lccsanandroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2290
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 2289
    :goto_0
    return-object v0
.end method

.method getStateAfterAnimating()I
    .locals 1

    .line 2953
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2954
    const/4 v0, 0x0

    return v0

    .line 2956
    :cond_0
    iget v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .line 860
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .line 873
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsanandroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Lccsanandroidx/fragment/app/Fragment;
    .locals 2

    .line 736
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mTarget:Lccsanandroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 739
    return-object v0

    .line 740
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 742
    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/fragment/app/Fragment;

    return-object v0

    .line 744
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .line 751
    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resId"    # I

    .line 849
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1153
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Lccsanandroid/view/View;
    .locals 1

    .line 1686
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    return-object v0
.end method

.method public getViewLifecycleOwner()Lccsanandroidx/lifecycle/LifecycleOwner;
    .locals 2

    .line 324
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    if-eqz v0, :cond_0

    .line 328
    return-object v0

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getViewLifecycleOwnerLiveData()Lccsanandroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Lccsanandroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lccsanandroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getViewModelStore()Lccsanandroidx/lifecycle/ViewModelStore;
    .locals 2

    .line 361
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->getViewModelStore(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasOptionsMenu()Z
    .locals 1

    .line 1028
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 577
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    .line 1877
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->initLifecycle()V

    .line 1878
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 1879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    .line 1880
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1881
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 1882
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mInLayout:Z

    .line 1883
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mRestored:Z

    .line 1884
    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 1885
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 1886
    new-instance v2, Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v2}, Lccsanandroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v2, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 1887
    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    .line 1888
    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentId:I

    .line 1889
    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mContainerId:I

    .line 1890
    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 1891
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    .line 1892
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mDetached:Z

    .line 1893
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .line 964
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDetached()Z
    .locals 1

    .line 973
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 1022
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    return v0
.end method

.method isHideReplaced()Z
    .locals 1

    .line 2971
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2972
    const/4 v0, 0x0

    return v0

    .line 2974
    :cond_0
    iget-boolean v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    .line 563
    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    .line 993
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 1

    .line 1034
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    return v0
.end method

.method isPostponed()Z
    .locals 1

    .line 2964
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    .line 2965
    const/4 v0, 0x0

    return v0

    .line 2967
    :cond_0
    iget-boolean v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .line 982
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 2

    .line 1001
    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStateSaved()Z
    .locals 1

    .line 663
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    .line 664
    const/4 v0, 0x0

    return v0

    .line 666
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1010
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 1011
    invoke-virtual {v0}, Lccsanandroid/view/View;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1010
    :goto_0
    return v0
.end method

.method noteStateNotSaved()V
    .locals 1

    .line 2663
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2664
    return-void
.end method

.method public onActivityCreated(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1721
    return-void
.end method

.method public onActivityResult(IILccsanandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Lccsanandroid/content/Intent;

    .line 1238
    return-void
.end method

.method public onAttach(Lccsanandroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1541
    return-void
.end method

.method public onAttach(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1524
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    .line 1525
    .local v0, "hostActivity":Lccsanandroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_1

    .line 1526
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1527
    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/Fragment;->onAttach(Lccsanandroid/app/Activity;)V

    .line 1529
    :cond_1
    return-void
.end method

.method public onAttachFragment(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "childFragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 1515
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 1804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1805
    return-void
.end method

.method public onContextItemSelected(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 2045
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1604
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->restoreChildFragmentState(Lccsanandroid/os/Bundle;)V

    .line 1605
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1608
    :cond_0
    return-void
.end method

.method public onCreateAnimation(IZI)Lccsanandroid/view/animation/Animation;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 1560
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Lccsanandroid/animation/Animator;
    .locals 1
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .line 1581
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Lccsanandroid/view/ContextMenu;Lccsanandroid/view/View;Lccsanandroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroid/view/ContextMenu;
    .param p2, "v"    # Lccsanandroid/view/View;
    .param p3, "menuInfo"    # Lccsanandroid/view/ContextMenu$ContextMenuInfo;

    .line 1999
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->requireActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/fragment/app/FragmentActivity;->onCreateContextMenu(Lccsanandroid/view/ContextMenu;Lccsanandroid/view/View;Lccsanandroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2000
    return-void
.end method

.method public onCreateOptionsMenu(Lccsanandroid/view/Menu;Lccsanandroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroid/view/Menu;
    .param p2, "inflater"    # Lccsanandroid/view/MenuInflater;

    .line 1918
    return-void
.end method

.method public onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 2
    .param p1, "inflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "container"    # Lccsanandroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1659
    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mContentLayoutId:I

    if-eqz v0, :cond_0

    .line 1660
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0

    .line 1662
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1868
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .line 1945
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1859
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1902
    return-void
.end method

.method public onGetLayoutInflater(Lccsanandroid/os/Bundle;)Lccsanandroid/view/LayoutInflater;
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1380
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->getLayoutInflater(Lccsanandroid/os/Bundle;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .line 1044
    return-void
.end method

.method public onInflate(Lccsanandroid/app/Activity;Lccsanandroid/util/AttributeSet;Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Lccsanandroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1503
    return-void
.end method

.method public onInflate(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1485
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    .line 1486
    .local v0, "hostActivity":Lccsanandroid/app/Activity;
    :goto_0
    if-eqz v0, :cond_1

    .line 1487
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1488
    invoke-virtual {p0, v0, p2, p3}, Lccsanandroidx/fragment/app/Fragment;->onInflate(Lccsanandroid/app/Activity;Lccsanandroid/util/AttributeSet;Lccsanandroid/os/Bundle;)V

    .line 1490
    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1845
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0
    .param p1, "isInMultiWindowMode"    # Z

    .line 1790
    return-void
.end method

.method public onOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 1966
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Lccsanandroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroid/view/Menu;

    .line 1977
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1829
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .line 1799
    return-void
.end method

.method public onPrepareOptionsMenu(Lccsanandroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Lccsanandroid/view/Menu;

    .line 1935
    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 0
    .param p1, "isPrimaryNavigationFragment"    # Z

    .line 1819
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1340
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1757
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1758
    return-void
.end method

.method public onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Lccsanandroid/os/Bundle;

    .line 1780
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1747
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1839
    return-void
.end method

.method public onViewCreated(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1676
    return-void
.end method

.method public onViewStateRestored(Lccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 1737
    return-void
.end method

.method performActivityCreated(Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 2616
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2617
    const/4 v0, 0x2

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 2618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2619
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onActivityCreated(Lccsanandroid/os/Bundle;)V

    .line 2620
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_0

    .line 2624
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 2625
    return-void

    .line 2621
    :cond_0
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performAttach()V
    .locals 3

    .line 2558
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    new-instance v2, Lccsanandroidx/fragment/app/Fragment$4;

    invoke-direct {v2, p0}, Lccsanandroidx/fragment/app/Fragment$4;-><init>(Lccsanandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->attachController(Lccsanandroidx/fragment/app/FragmentHostCallback;Lccsanandroidx/fragment/app/FragmentContainer;Lccsanandroidx/fragment/app/Fragment;)V

    .line 2573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2574
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/Fragment;->onAttach(Lccsanandroid/content/Context;)V

    .line 2575
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_0

    .line 2579
    return-void

    .line 2576
    :cond_0
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 2688
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 2689
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 2690
    return-void
.end method

.method performContextItemSelected(Lccsanandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 2745
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2746
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onContextItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2747
    return v1

    .line 2749
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2750
    return v1

    .line 2753
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method performCreate(Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 2582
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2583
    const/4 v0, 0x1

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 2584
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2585
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v1, p1}, Lccsanandroidx/savedstate/SavedStateRegistryController;->performRestore(Lccsanandroid/os/Bundle;)V

    .line 2586
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2587
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 2588
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_0

    .line 2592
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2593
    return-void

    .line 2589
    :cond_0
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performCreateOptionsMenu(Lccsanandroid/view/Menu;Lccsanandroid/view/MenuInflater;)Z
    .locals 2
    .param p1, "menu"    # Lccsanandroid/view/Menu;
    .param p2, "inflater"    # Lccsanandroid/view/MenuInflater;

    .line 2707
    const/4 v0, 0x0

    .line 2708
    .local v0, "show":Z
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2709
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2710
    const/4 v0, 0x1

    .line 2711
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/fragment/app/Fragment;->onCreateOptionsMenu(Lccsanandroid/view/Menu;Lccsanandroid/view/MenuInflater;)V

    .line 2713
    :cond_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Lccsanandroid/view/Menu;Lccsanandroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2715
    :cond_1
    return v0
.end method

.method performCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "inflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "container"    # Lccsanandroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 2597
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2599
    new-instance v0, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;-><init>()V

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 2600
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/fragment/app/Fragment;->onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    .line 2601
    if-eqz v0, :cond_0

    .line 2603
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->initialize()V

    .line 2605
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lccsanandroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2607
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2611
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 2613
    :goto_0
    return-void

    .line 2608
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroy()V
    .locals 3

    .line 2825
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2826
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2827
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 2828
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2829
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mIsCreated:Z

    .line 2830
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->onDestroy()V

    .line 2831
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_0

    .line 2835
    return-void

    .line 2832
    :cond_0
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .locals 3

    .line 2805
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2806
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2809
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 2810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2811
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2812
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_1

    .line 2820
    invoke-static {p0}, Lccsanandroidx/loader/app/LoaderManager;->getInstance(Lccsanandroidx/lifecycle/LifecycleOwner;)Lccsanandroidx/loader/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroidx/loader/app/LoaderManager;->markForRedelivery()V

    .line 2821
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    .line 2822
    return-void

    .line 2813
    :cond_1
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDetach()V
    .locals 3

    .line 2838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2839
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->onDetach()V

    .line 2840
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLayoutInflater:Lccsanandroid/view/LayoutInflater;

    .line 2841
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2849
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2850
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2851
    new-instance v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 2853
    :cond_0
    return-void

    .line 2842
    :cond_1
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Lccsanandroid/os/Bundle;)Lccsanandroid/view/LayoutInflater;
    .locals 1
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1412
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onGetLayoutInflater(Lccsanandroid/os/Bundle;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 1413
    .local v0, "layoutInflater":Lccsanandroid/view/LayoutInflater;
    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLayoutInflater:Lccsanandroid/view/LayoutInflater;

    .line 1414
    return-object v0
.end method

.method performLowMemory()V
    .locals 1

    .line 2693
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2694
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2695
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .line 2678
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2679
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 2680
    return-void
.end method

.method performOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lccsanandroid/view/MenuItem;

    .line 2731
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2732
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 2733
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2734
    return v1

    .line 2737
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Lccsanandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2738
    return v1

    .line 2741
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method performOptionsMenuClosed(Lccsanandroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroid/view/Menu;

    .line 2757
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 2758
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 2759
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onOptionsMenuClosed(Lccsanandroid/view/Menu;)V

    .line 2761
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Lccsanandroid/view/Menu;)V

    .line 2763
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    .line 2775
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchPause()V

    .line 2776
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 2777
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2779
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2780
    const/4 v0, 0x3

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 2781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2782
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->onPause()V

    .line 2783
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2787
    return-void

    .line 2784
    :cond_1
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .line 2683
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2684
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 2685
    return-void
.end method

.method performPrepareOptionsMenu(Lccsanandroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lccsanandroid/view/Menu;

    .line 2719
    const/4 v0, 0x0

    .line 2720
    .local v0, "show":Z
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 2721
    iget-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 2722
    const/4 v0, 0x1

    .line 2723
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Lccsanandroid/view/Menu;)V

    .line 2725
    :cond_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Lccsanandroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2727
    :cond_1
    return v0
.end method

.method performPrimaryNavigationFragmentChanged()V
    .locals 2

    .line 2667
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->isPrimaryNavigation(Lccsanandroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 2669
    .local v0, "isPrimaryNavigationFragment":Z
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2670
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2671
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mIsPrimaryNavigationFragment:Ljava/lang/Boolean;

    .line 2672
    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/Fragment;->onPrimaryNavigationFragmentChanged(Z)V

    .line 2673
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchPrimaryNavigationFragmentChanged()V

    .line 2675
    :cond_1
    return-void
.end method

.method performResume()V
    .locals 3

    .line 2645
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2646
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2647
    const/4 v0, 0x4

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 2648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2649
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->onResume()V

    .line 2650
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2654
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2655
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2658
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchResume()V

    .line 2659
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2660
    return-void

    .line 2651
    :cond_1
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Lccsanandroid/os/Bundle;

    .line 2766
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 2767
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lccsanandroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Lccsanandroidx/savedstate/SavedStateRegistryController;->performSave(Lccsanandroid/os/Bundle;)V

    .line 2768
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->saveAllState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 2769
    .local v0, "p":Lccsanandroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2770
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 2772
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    .line 2628
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2629
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2630
    const/4 v0, 0x3

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 2631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2632
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->onStart()V

    .line 2633
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2637
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2638
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2641
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchStart()V

    .line 2642
    return-void

    .line 2634
    :cond_1
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performStop()V
    .locals 3

    .line 2790
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchStop()V

    .line 2791
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2794
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 2795
    const/4 v0, 0x2

    iput v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    .line 2796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 2797
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->onStop()V

    .line 2798
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1

    .line 2802
    return-void

    .line 2799
    :cond_1
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postponeEnterTransition()V
    .locals 2

    .line 2375
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2376
    return-void
.end method

.method public final postponeEnterTransition(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 2409
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2411
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getHandler()Lccsanandroid/os/Handler;

    move-result-object v0

    .local v0, "handler":Lccsanandroid/os/Handler;
    goto :goto_0

    .line 2414
    .end local v0    # "handler":Lccsanandroid/os/Handler;
    :cond_0
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 2416
    .restart local v0    # "handler":Lccsanandroid/os/Handler;
    :goto_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2417
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mPostponedDurationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2418
    return-void
.end method

.method public registerForContextMenu(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 2013
    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->setOnCreateContextMenuListener(Lccsanandroid/view/View$OnCreateContextMenuListener;)V

    .line 2014
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 1314
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1317
    invoke-virtual {v0, p0, p1, p2}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Lccsanandroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 1318
    return-void

    .line 1315
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireActivity()Lccsanandroidx/fragment/app/FragmentActivity;
    .locals 4

    .line 800
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 801
    .local v0, "activity":Lccsanandroidx/fragment/app/FragmentActivity;
    if-eqz v0, :cond_0

    .line 804
    return-object v0

    .line 802
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not attached to an activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireArguments()Lccsanandroid/os/Bundle;
    .locals 4

    .line 647
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 648
    .local v0, "arguments":Lccsanandroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 651
    return-object v0

    .line 649
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have any arguments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireContext()Lccsanandroid/content/Context;
    .locals 4

    .line 772
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 773
    .local v0, "context":Lccsanandroid/content/Context;
    if-eqz v0, :cond_0

    .line 776
    return-object v0

    .line 774
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not attached to a context."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;
    .locals 4

    .line 908
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 909
    .local v0, "fragmentManager":Lccsanandroidx/fragment/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 913
    return-object v0

    .line 910
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not associated with a fragment manager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 4

    .line 826
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    .line 827
    .local v0, "host":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 830
    return-object v0

    .line 828
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not attached to a host."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final requireParentFragment()Lccsanandroidx/fragment/app/Fragment;
    .locals 5

    .line 946
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getParentFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    .line 947
    .local v0, "parentFragment":Lccsanandroidx/fragment/app/Fragment;
    if-nez v0, :cond_1

    .line 948
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    .line 949
    .local v1, "context":Lccsanandroid/content/Context;
    const-string v2, "Fragment "

    if-nez v1, :cond_0

    .line 950
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not attached to any Fragment or host"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 953
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child Fragment, it is directly attached to "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 957
    .end local v1    # "context":Lccsanandroid/content/Context;
    :cond_1
    return-object v0
.end method

.method public final requireView()Lccsanandroid/view/View;
    .locals 4

    .line 1697
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v0

    .line 1698
    .local v0, "view":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 1702
    return-object v0

    .line 1699
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method restoreChildFragmentState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 1623
    if-eqz p1, :cond_0

    .line 1624
    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 1626
    .local v0, "p":Lccsanandroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1627
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1, v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->restoreSaveState(Lccsanandroid/os/Parcelable;)V

    .line 1628
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mChildFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1631
    .end local v0    # "p":Lccsanandroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method final restoreViewState(Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 547
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedViewState:Lccsanandroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 548
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mInnerView:Lccsanandroid/view/View;

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->restoreHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedViewState:Lccsanandroid/util/SparseArray;

    .line 551
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    .line 552
    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onViewStateRestored(Lccsanandroid/os/Bundle;)V

    .line 553
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Lccsanandroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/FragmentViewLifecycleOwner;->handleLifecycleEvent(Lccsanandroidx/lifecycle/Lifecycle$Event;)V

    .line 560
    :cond_1
    return-void

    .line 554
    :cond_2
    new-instance v0, Lccsanandroidx/fragment/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/fragment/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 2303
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 2304
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .line 2328
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 2329
    return-void
.end method

.method setAnimatingAway(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 2938
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAnimatingAway:Lccsanandroid/view/View;

    .line 2939
    return-void
.end method

.method setAnimator(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 2942
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mAnimator:Lccsanandroid/animation/Animator;

    .line 2943
    return-void
.end method

.method public setArguments(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Lccsanandroid/os/Bundle;

    .line 624
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already added and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_1
    :goto_0
    iput-object p1, p0, Lccsanandroidx/fragment/app/Fragment;->mArguments:Lccsanandroid/os/Bundle;

    .line 628
    return-void
.end method

.method public setEnterSharedElementCallback(Lccsanandroidx/core/app/SharedElementCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/core/app/SharedElementCallback;

    .line 2056
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Lccsanandroidx/core/app/SharedElementCallback;

    .line 2057
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2084
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransition:Ljava/lang/Object;

    .line 2085
    return-void
.end method

.method public setExitSharedElementCallback(Lccsanandroidx/core/app/SharedElementCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/core/app/SharedElementCallback;

    .line 2067
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mExitTransitionCallback:Lccsanandroidx/core/app/SharedElementCallback;

    .line 2068
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2160
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mExitTransition:Ljava/lang/Object;

    .line 2161
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .param p1, "hasMenu"    # Z

    .line 1084
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 1085
    iput-boolean p1, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    .line 1086
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1090
    :cond_0
    return-void
.end method

.method setHideReplaced(Z)V
    .locals 1
    .param p1, "replaced"    # Z

    .line 2978
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    .line 2979
    return-void
.end method

.method public setInitialSavedState(Lccsanandroidx/fragment/app/Fragment$SavedState;)V
    .locals 2
    .param p1, "state"    # Lccsanandroidx/fragment/app/Fragment$SavedState;

    .line 678
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-nez v0, :cond_1

    .line 681
    if-eqz p1, :cond_0

    iget-object v0, p1, Lccsanandroidx/fragment/app/Fragment$SavedState;->mState:Lccsanandroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lccsanandroidx/fragment/app/Fragment$SavedState;->mState:Lccsanandroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    .line 683
    return-void

    .line 679
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .line 1102
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 1103
    iput-boolean p1, p0, Lccsanandroidx/fragment/app/Fragment;->mMenuVisible:Z

    .line 1104
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1108
    :cond_0
    return-void
.end method

.method setNextAnim(I)V
    .locals 1
    .param p1, "animResourceId"    # I

    .line 2887
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2888
    return-void

    .line 2890
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mNextAnim:I

    .line 2891
    return-void
.end method

.method setNextTransition(II)V
    .locals 1
    .param p1, "nextTransition"    # I
    .param p2, "nextTransitionStyle"    # I

    .line 2901
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2902
    return-void

    .line 2904
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    .line 2905
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iput p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 2906
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iput p2, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    .line 2907
    return-void
.end method

.method setOnStartEnterTransitionListener(Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3
    .param p1, "listener"    # Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2856
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    .line 2857
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_0

    .line 2858
    return-void

    .line 2860
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2861
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2864
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iget-boolean v0, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_3

    .line 2865
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mAnimationInfo:Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;

    .line 2867
    :cond_3
    if-eqz p1, :cond_4

    .line 2868
    invoke-interface {p1}, Lccsanandroidx/fragment/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    .line 2870
    :cond_4
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2199
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mReenterTransition:Ljava/lang/Object;

    .line 2200
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .line 1060
    iput-boolean p1, p0, Lccsanandroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 1061
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 1062
    if-eqz p1, :cond_0

    .line 1063
    invoke-virtual {v0, p0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->addRetainedFragment(Lccsanandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {v0, p0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->removeRetainedFragment(Lccsanandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1068
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 1070
    :goto_0
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2120
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mReturnTransition:Ljava/lang/Object;

    .line 2121
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2234
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 2235
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 2269
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 2270
    return-void
.end method

.method setStateAfterAnimating(I)V
    .locals 1
    .param p1, "state"    # I

    .line 2960
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    .line 2961
    return-void
.end method

.method public setTargetFragment(Lccsanandroidx/fragment/app/Fragment;I)V
    .locals 6
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "requestCode"    # I

    .line 702
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->getFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 703
    .local v0, "mine":Lccsanandroidx/fragment/app/FragmentManager;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/Fragment;->getFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 704
    .local v2, "theirs":Lccsanandroidx/fragment/app/FragmentManager;
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 710
    :cond_2
    :goto_1
    move-object v3, p1

    .local v3, "check":Lccsanandroidx/fragment/app/Fragment;
    :goto_2
    if-eqz v3, :cond_4

    .line 711
    if-eq v3, p0, :cond_3

    .line 710
    invoke-virtual {v3}, Lccsanandroidx/fragment/app/Fragment;->getTargetFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v3

    goto :goto_2

    .line 712
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " as the target of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " would create a target cycle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 716
    .end local v3    # "check":Lccsanandroidx/fragment/app/Fragment;
    :cond_4
    if-nez p1, :cond_5

    .line 717
    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 718
    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTarget:Lccsanandroidx/fragment/app/Fragment;

    goto :goto_3

    .line 719
    :cond_5
    iget-object v3, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v3, :cond_6

    .line 721
    iget-object v3, p1, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v3, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 722
    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTarget:Lccsanandroidx/fragment/app/Fragment;

    goto :goto_3

    .line 725
    :cond_6
    iput-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 726
    iput-object p1, p0, Lccsanandroidx/fragment/app/Fragment;->mTarget:Lccsanandroidx/fragment/app/Fragment;

    .line 728
    :goto_3
    iput p2, p0, Lccsanandroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 729
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1131
    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mIsCreated:Z

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Lccsanandroidx/fragment/app/Fragment;)V

    .line 1135
    :cond_0
    iput-boolean p1, p0, Lccsanandroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 1136
    iget v0, p0, Lccsanandroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsanandroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1137
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedFragmentState:Lccsanandroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    .line 1142
    :cond_2
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1366
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivity(Lccsanandroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;

    .line 1173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/fragment/app/Fragment;->startActivity(Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V

    .line 1174
    return-void
.end method

.method public startActivity(Lccsanandroid/content/Intent;Lccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "options"    # Lccsanandroid/os/Bundle;

    .line 1182
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1185
    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V

    .line 1186
    return-void

    .line 1183
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Lccsanandroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/fragment/app/Fragment;->startActivityForResult(Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V

    .line 1195
    return-void
.end method

.method public startActivityForResult(Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V
    .locals 3
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Lccsanandroid/os/Bundle;

    .line 1203
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {v0, p0, p1, p2, p3}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V

    .line 1207
    return-void

    .line 1204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startIntentSenderForResult(Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Lccsanandroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Lccsanandroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1216
    move-object v9, p0

    iget-object v0, v9, Lccsanandroidx/fragment/app/Fragment;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    .line 1219
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V

    .line 1221
    return-void

    .line 1217
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    .line 2431
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2433
    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, v1, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getHandler()Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2434
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->mHost:Lccsanandroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->getHandler()Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsanandroidx/fragment/app/Fragment$3;

    invoke-direct {v1, p0}, Lccsanandroidx/fragment/app/Fragment$3;-><init>(Lccsanandroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2441
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/Fragment;->callStartTransitionListener()V

    goto :goto_1

    .line 2432
    :cond_2
    :goto_0
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;->ensureAnimationInfo()Lccsanandroidx/fragment/app/Fragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/fragment/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2443
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 583
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lccsanandroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 584
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_0

    .line 588
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Lccsanandroidx/fragment/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 592
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Lccsanandroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterForContextMenu(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 2024
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setOnCreateContextMenuListener(Lccsanandroid/view/View$OnCreateContextMenuListener;)V

    .line 2025
    return-void
.end method
