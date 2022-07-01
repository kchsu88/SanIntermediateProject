.class public abstract Lccsanandroidx/fragment/app/FragmentHostCallback;
.super Lccsanandroidx/fragment/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroidx/fragment/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Lccsanandroid/app/Activity;

.field private final mContext:Lccsanandroid/content/Context;

.field final mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

.field private final mHandler:Lccsanandroid/os/Handler;

.field private final mWindowAnimations:I


# direct methods
.method constructor <init>(Lccsanandroid/app/Activity;Lccsanandroid/content/Context;Lccsanandroid/os/Handler;I)V
    .locals 1
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "handler"    # Lccsanandroid/os/Handler;
    .param p4, "windowAnimations"    # I

    .line 62
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentContainer;-><init>()V

    .line 49
    new-instance v0, Lccsanandroidx/fragment/app/FragmentManagerImpl;

    invoke-direct {v0}, Lccsanandroidx/fragment/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 63
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mActivity:Lccsanandroid/app/Activity;

    .line 64
    const-string v0, "context == null"

    invoke-static {p2, v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mContext:Lccsanandroid/content/Context;

    .line 65
    const-string v0, "handler == null"

    invoke-static {p3, v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    iput-object v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mHandler:Lccsanandroid/os/Handler;

    .line 66
    iput p4, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "handler"    # Lccsanandroid/os/Handler;
    .param p3, "windowAnimations"    # I

    .line 53
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    instance-of v0, p1, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsanandroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lccsanandroidx/fragment/app/FragmentHostCallback;-><init>(Lccsanandroid/app/Activity;Lccsanandroid/content/Context;Lccsanandroid/os/Handler;I)V

    .line 55
    return-void
.end method

.method constructor <init>(Lccsanandroidx/fragment/app/FragmentActivity;)V
    .locals 2
    .param p1, "activity"    # Lccsanandroidx/fragment/app/FragmentActivity;

    .line 58
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lccsanandroidx/fragment/app/FragmentHostCallback;-><init>(Lccsanandroid/app/Activity;Lccsanandroid/content/Context;Lccsanandroid/os/Handler;I)V

    .line 59
    return-void
.end method


# virtual methods
.method getActivity()Lccsanandroid/app/Activity;
    .locals 1

    .line 195
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mActivity:Lccsanandroid/app/Activity;

    return-object v0
.end method

.method getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 200
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method getHandler()Lccsanandroid/os/Handler;
    .locals 1

    .line 205
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mHandler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method onAttachFragment(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 209
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 80
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onFindViewById(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 185
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Lccsanandroid/view/LayoutInflater;
    .locals 1

    .line 95
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .line 179
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    iget v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mWindowAnimations:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .line 190
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .line 172
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Lccsanandroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 158
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method

.method public onShouldSaveFragmentState(Lccsanandroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;

    .line 86
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 165
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 119
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsanandroidx/fragment/app/FragmentHostCallback;->onStartActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public onStartActivityFromFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/content/Intent;ILccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Lccsanandroidx/fragment/app/Fragment;
    .param p2, "intent"    # Lccsanandroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Lccsanandroid/os/Bundle;

    .line 129
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 133
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0, p2}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    .line 134
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 144
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    const/4 v0, -0x1

    move v9, p3

    if-ne v9, v0, :cond_0

    .line 148
    move-object v0, p0

    iget-object v1, v0, Lccsanandroidx/fragment/app/FragmentHostCallback;->mActivity:Lccsanandroid/app/Activity;

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lccsanandroidx/core/app/ActivityCompat;->startIntentSenderForResult(Lccsanandroid/app/Activity;Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;IIILccsanandroid/os/Bundle;)V

    .line 150
    return-void

    .line 145
    :cond_0
    move-object v0, p0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Starting intent sender with a requestCode requires a FragmentActivity host"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .line 111
    .local p0, "this":Lccsanandroidx/fragment/app/FragmentHostCallback;, "Lccsanandroidx/fragment/app/FragmentHostCallback<TE;>;"
    return-void
.end method
