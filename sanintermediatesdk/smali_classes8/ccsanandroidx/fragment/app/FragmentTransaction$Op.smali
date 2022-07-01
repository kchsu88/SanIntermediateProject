.class final Lccsanandroidx/fragment/app/FragmentTransaction$Op;
.super Ljava/lang/Object;
.source "FragmentTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field mCmd:I

.field mCurrentMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

.field mEnterAnim:I

.field mExitAnim:I

.field mFragment:Lccsanandroidx/fragment/app/Fragment;

.field mOldMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

.field mPopEnterAnim:I

.field mPopExitAnim:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method constructor <init>(ILccsanandroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 77
    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mFragment:Lccsanandroidx/fragment/app/Fragment;

    .line 78
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->RESUMED:Lccsanandroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 79
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$State;->RESUMED:Lccsanandroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 80
    return-void
.end method

.method constructor <init>(ILccsanandroidx/fragment/app/Fragment;Lccsanandroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "state"    # Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 84
    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mFragment:Lccsanandroidx/fragment/app/Fragment;

    .line 85
    iget-object v0, p2, Lccsanandroidx/fragment/app/Fragment;->mMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 86
    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Lccsanandroidx/lifecycle/Lifecycle$State;

    .line 87
    return-void
.end method
