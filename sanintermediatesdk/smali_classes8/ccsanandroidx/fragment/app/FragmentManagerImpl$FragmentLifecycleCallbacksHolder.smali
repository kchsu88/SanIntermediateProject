.class final Lccsanandroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentLifecycleCallbacksHolder"
.end annotation


# instance fields
.field final mCallback:Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

.field final mRecursive:Z


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 0
    .param p1, "callback"    # Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 90
    iput-boolean p2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    .line 91
    return-void
.end method
