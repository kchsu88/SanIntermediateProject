.class public Lccsanandroidx/core/app/ComponentActivity;
.super Lccsanandroid/app/Activity;
.source "ComponentActivity.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleOwner;
.implements Lccsanandroidx/core/view/KeyEventDispatcher$Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/ComponentActivity$ExtraData;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Lccsanandroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Class<",
            "+",
            "Lccsanandroidx/core/app/ComponentActivity$ExtraData;",
            ">;",
            "Lccsanandroidx/core/app/ComponentActivity$ExtraData;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lccsanandroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/ComponentActivity;->mExtraDataMap:Lccsanandroidx/collection/SimpleArrayMap;

    .line 63
    new-instance v0, Lccsanandroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/LifecycleRegistry;-><init>(Lccsanandroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lccsanandroidx/core/app/ComponentActivity;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lccsanandroidx/core/app/ComponentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "decor":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lccsanandroidx/core/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_0
    invoke-static {p0, v0, p0, p1}, Lccsanandroidx/core/view/KeyEventDispatcher;->dispatchKeyEvent(Lccsanandroidx/core/view/KeyEventDispatcher$Component;Lccsanandroid/view/View;Lccsanandroid/view/Window$Callback;Lccsanandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchKeyShortcutEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lccsanandroidx/core/app/ComponentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "decor":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lccsanandroidx/core/view/KeyEventDispatcher;->dispatchBeforeHierarchy(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x1

    return v1

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->dispatchKeyShortcutEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public getExtraData(Ljava/lang/Class;)Lccsanandroidx/core/app/ComponentActivity$ExtraData;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraDataClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroidx/core/app/ComponentActivity$ExtraData;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    .local p1, "extraDataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lccsanandroidx/core/app/ComponentActivity;->mExtraDataMap:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Lccsanandroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/app/ComponentActivity$ExtraData;

    return-object v0
.end method

.method public getLifecycle()Lccsanandroidx/lifecycle/Lifecycle;
    .locals 1

    .line 113
    iget-object v0, p0, Lccsanandroidx/core/app/ComponentActivity;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Lccsanandroidx/lifecycle/ReportFragment;->injectIfNeededIn(Lccsanandroid/app/Activity;)V

    .line 87
    return-void
.end method

.method protected onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lccsanandroidx/core/app/ComponentActivity;->mLifecycleRegistry:Lccsanandroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Lccsanandroidx/lifecycle/Lifecycle$State;->CREATED:Lccsanandroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Lccsanandroidx/lifecycle/LifecycleRegistry;->markState(Lccsanandroidx/lifecycle/Lifecycle$State;)V

    .line 93
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public putExtraData(Lccsanandroidx/core/app/ComponentActivity$ExtraData;)V
    .locals 2
    .param p1, "extraData"    # Lccsanandroidx/core/app/ComponentActivity$ExtraData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraData"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Lccsanandroidx/core/app/ComponentActivity;->mExtraDataMap:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public superDispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 122
    invoke-super {p0, p1}, Lccsanandroid/app/Activity;->dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
