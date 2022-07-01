.class public abstract Lccsanandroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FragmentLifecycleCallbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 512
    return-void
.end method

.method public onFragmentAttached(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "context"    # Lccsanandroid/content/Context;

    .line 476
    return-void
.end method

.method public onFragmentCreated(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 500
    return-void
.end method

.method public onFragmentDestroyed(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;

    .line 589
    return-void
.end method

.method public onFragmentDetached(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;

    .line 598
    return-void
.end method

.method public onFragmentPaused(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;

    .line 551
    return-void
.end method

.method public onFragmentPreAttached(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "context"    # Lccsanandroid/content/Context;

    .line 465
    return-void
.end method

.method public onFragmentPreCreated(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 488
    return-void
.end method

.method public onFragmentResumed(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;

    .line 542
    return-void
.end method

.method public onFragmentSaveInstanceState(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "outState"    # Lccsanandroid/os/Bundle;

    .line 571
    return-void
.end method

.method public onFragmentStarted(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;

    .line 533
    return-void
.end method

.method public onFragmentStopped(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;

    .line 560
    return-void
.end method

.method public onFragmentViewCreated(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;
    .param p3, "v"    # Lccsanandroid/view/View;
    .param p4, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 524
    return-void
.end method

.method public onFragmentViewDestroyed(Lccsanandroidx/fragment/app/FragmentManager;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fm"    # Lccsanandroidx/fragment/app/FragmentManager;
    .param p2, "f"    # Lccsanandroidx/fragment/app/Fragment;

    .line 580
    return-void
.end method
