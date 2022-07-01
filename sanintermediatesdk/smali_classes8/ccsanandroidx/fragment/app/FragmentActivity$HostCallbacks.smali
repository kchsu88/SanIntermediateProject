.class Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;
.super Lccsanandroidx/fragment/app/FragmentHostCallback;
.source "FragmentActivity.java"

# interfaces
.implements Lccsanandroidx/lifecycle/ViewModelStoreOwner;
.implements Lccsanandroidx/activity/OnBackPressedDispatcherOwner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/fragment/app/FragmentHostCallback<",
        "Lccsanandroidx/fragment/app/FragmentActivity;",
        ">;",
        "Lccsanandroidx/lifecycle/ViewModelStoreOwner;",
        "Lccsanandroidx/activity/OnBackPressedDispatcherOwner;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Lccsanandroidx/fragment/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/FragmentActivity;

    .line 871
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    .line 872
    invoke-direct {p0, p1}, Lccsanandroidx/fragment/app/FragmentHostCallback;-><init>(Lccsanandroidx/fragment/app/FragmentActivity;)V

    .line 873
    return-void
.end method


# virtual methods
.method public getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;
    .locals 1

    .line 882
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    iget-object v0, v0, Lccsanandroidx/fragment/app/FragmentActivity;->mFragmentLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getOnBackPressedDispatcher()Lccsanandroidx/activity/OnBackPressedDispatcher;
    .locals 1

    .line 894
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Lccsanandroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Lccsanandroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 888
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getViewModelStore()Lccsanandroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method

.method public onAttachFragment(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 971
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onAttachFragment(Lccsanandroidx/fragment/app/Fragment;)V

    .line 972
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroidx/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method public onFindViewById(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 977
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetHost()Lccsanandroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 916
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->onGetHost()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Lccsanandroid/view/LayoutInflater;
    .locals 2

    .line 911
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getLayoutInflater()Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lccsanandroid/view/LayoutInflater;->cloneInContext(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    .line 965
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 966
    .local v0, "w":Lccsanandroid/view/Window;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getAttributes()Lccsanandroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Lccsanandroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return v1
.end method

.method public onHasView()Z
    .locals 2

    .line 982
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 983
    .local v0, "w":Lccsanandroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->peekDecorView()Lccsanandroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .line 960
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRequestPermissionsFromFragment(Lccsanandroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 948
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/fragment/app/FragmentActivity;->requestPermissionsFromFragment(Lccsanandroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 950
    return-void
.end method

.method public onShouldSaveFragmentState(Lccsanandroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 905
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lccsanandroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Lccsanandroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onStartActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 927
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;I)V

    .line 928
    return-void
.end method

.method public onStartActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Lccsanandroid/os/Bundle;

    .line 933
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V

    .line 934
    return-void
.end method

.method public onStartIntentSenderFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V
    .locals 10
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "intent"    # Lccsanandroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Lccsanandroid/content/Intent;
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 941
    move-object v0, p0

    iget-object v1, v0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lccsanandroidx/fragment/app/FragmentActivity;->startIntentSenderFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V

    .line 943
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 1

    .line 921
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentActivity$HostCallbacks;->this$0:Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 922
    return-void
.end method
