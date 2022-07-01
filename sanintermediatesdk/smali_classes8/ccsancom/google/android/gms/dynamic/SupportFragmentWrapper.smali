.class public final Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;
.super Lccsancom/google/android/gms/dynamic/IFragmentWrapper$Stub;


# instance fields
.field private zzic:Lccsanandroidx/fragment/app/Fragment;


# direct methods
.method private constructor <init>(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lccsancom/google/android/gms/dynamic/IFragmentWrapper$Stub;-><init>()V

    .line 3
    iput-object p1, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    .line 4
    return-void
.end method

.method public static wrap(Lccsanandroidx/fragment/app/Fragment;)Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;-><init>(Lccsanandroidx/fragment/app/Fragment;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getArguments()Lccsanandroid/os/Bundle;
    .locals 1

    .line 7
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 8
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getId()I

    move-result v0

    return v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v0

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .line 15
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result v0

    return v0
.end method

.method public final getUserVisibleHint()Z
    .locals 1

    .line 16
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    return v0
.end method

.method public final isAdded()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final isDetached()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    return v0
.end method

.method public final isInLayout()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isInLayout()Z

    move-result v0

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final setHasOptionsMenu(Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 30
    return-void
.end method

.method public final setMenuVisibility(Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 32
    return-void
.end method

.method public final setRetainInstance(Z)V
    .locals 1

    .line 33
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 34
    return-void
.end method

.method public final setUserVisibleHint(Z)V
    .locals 1

    .line 35
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 36
    return-void
.end method

.method public final startActivity(Lccsanandroid/content/Intent;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/Fragment;->startActivity(Lccsanandroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public final startActivityForResult(Lccsanandroid/content/Intent;I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/fragment/app/Fragment;->startActivityForResult(Lccsanandroid/content/Intent;I)V

    .line 40
    return-void
.end method

.method public final zza(Lccsancom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 26
    invoke-static {p1}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lccsancom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/View;

    .line 27
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/Fragment;->registerForContextMenu(Lccsanandroid/view/View;)V

    .line 28
    return-void
.end method

.method public final zzad()Lccsancom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 5
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzae()Lccsancom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 1

    .line 9
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getParentFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->wrap(Lccsanandroidx/fragment/app/Fragment;)Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzaf()Lccsancom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 10
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzag()Lccsancom/google/android/gms/dynamic/IFragmentWrapper;
    .locals 1

    .line 14
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getTargetFragment()Lccsanandroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->wrap(Lccsanandroidx/fragment/app/Fragment;)Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzah()Lccsancom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 17
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getView()Lccsanandroid/view/View;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lccsancom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    .line 41
    invoke-static {p1}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lccsancom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/View;

    .line 42
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/SupportFragmentWrapper;->zzic:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lccsanandroidx/fragment/app/Fragment;->unregisterForContextMenu(Lccsanandroid/view/View;)V

    .line 43
    return-void
.end method
