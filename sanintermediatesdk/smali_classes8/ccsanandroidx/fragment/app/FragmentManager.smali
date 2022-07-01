.class public abstract Lccsanandroidx/fragment/app/FragmentManager;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;,
        Lccsanandroidx/fragment/app/FragmentManager$OnBackStackChangedListener;,
        Lccsanandroidx/fragment/app/FragmentManager$BackStackEntry;
    }
.end annotation


# static fields
.field static final DEFAULT_FACTORY:Lccsanandroidx/fragment/app/FragmentFactory;

.field public static final POP_BACK_STACK_INCLUSIVE:I = 0x1


# instance fields
.field private mFragmentFactory:Lccsanandroidx/fragment/app/FragmentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lccsanandroidx/fragment/app/FragmentFactory;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentFactory;-><init>()V

    sput-object v0, Lccsanandroidx/fragment/app/FragmentManager;->DEFAULT_FACTORY:Lccsanandroidx/fragment/app/FragmentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManager;->mFragmentFactory:Lccsanandroidx/fragment/app/FragmentFactory;

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 434
    sput-boolean p0, Lccsanandroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    .line 435
    return-void
.end method


# virtual methods
.method public abstract addOnBackStackChangedListener(Lccsanandroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentById(I)Lccsanandroidx/fragment/app/Fragment;
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;
.end method

.method public abstract getBackStackEntryAt(I)Lccsanandroidx/fragment/app/FragmentManager$BackStackEntry;
.end method

.method public abstract getBackStackEntryCount()I
.end method

.method public abstract getFragment(Lccsanandroid/os/Bundle;Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;
.end method

.method public getFragmentFactory()Lccsanandroidx/fragment/app/FragmentFactory;
    .locals 1

    .line 411
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManager;->mFragmentFactory:Lccsanandroidx/fragment/app/FragmentFactory;

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Lccsanandroidx/fragment/app/FragmentManager;->DEFAULT_FACTORY:Lccsanandroidx/fragment/app/FragmentFactory;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentManager;->mFragmentFactory:Lccsanandroidx/fragment/app/FragmentFactory;

    .line 414
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManager;->mFragmentFactory:Lccsanandroidx/fragment/app/FragmentFactory;

    return-object v0
.end method

.method public abstract getFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryNavigationFragment()Lccsanandroidx/fragment/app/Fragment;
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isStateSaved()Z
.end method

.method public openTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public abstract popBackStack()V
.end method

.method public abstract popBackStack(II)V
.end method

.method public abstract popBackStack(Ljava/lang/String;I)V
.end method

.method public abstract popBackStackImmediate()Z
.end method

.method public abstract popBackStackImmediate(II)Z
.end method

.method public abstract popBackStackImmediate(Ljava/lang/String;I)Z
.end method

.method public abstract putFragment(Lccsanandroid/os/Bundle;Ljava/lang/String;Lccsanandroidx/fragment/app/Fragment;)V
.end method

.method public abstract registerFragmentLifecycleCallbacks(Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
.end method

.method public abstract removeOnBackStackChangedListener(Lccsanandroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V
.end method

.method public abstract saveFragmentInstanceState(Lccsanandroidx/fragment/app/Fragment;)Lccsanandroidx/fragment/app/Fragment$SavedState;
.end method

.method public setFragmentFactory(Lccsanandroidx/fragment/app/FragmentFactory;)V
    .locals 0
    .param p1, "fragmentFactory"    # Lccsanandroidx/fragment/app/FragmentFactory;

    .line 401
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManager;->mFragmentFactory:Lccsanandroidx/fragment/app/FragmentFactory;

    .line 402
    return-void
.end method

.method public abstract unregisterFragmentLifecycleCallbacks(Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V
.end method
