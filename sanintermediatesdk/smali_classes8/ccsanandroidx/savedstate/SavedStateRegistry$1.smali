.class Lccsanandroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source "SavedStateRegistry.java"

# interfaces
.implements Lccsanandroidx/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/savedstate/SavedStateRegistry;->performRestore(Lccsanandroidx/lifecycle/Lifecycle;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/savedstate/SavedStateRegistry;


# direct methods
.method constructor <init>(Lccsanandroidx/savedstate/SavedStateRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/savedstate/SavedStateRegistry;

    .line 197
    iput-object p1, p0, Lccsanandroidx/savedstate/SavedStateRegistry$1;->this$0:Lccsanandroidx/savedstate/SavedStateRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 200
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 201
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry$1;->this$0:Lccsanandroidx/savedstate/SavedStateRegistry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/savedstate/SavedStateRegistry;->mAllowingSavingState:Z

    goto :goto_0

    .line 202
    :cond_0
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_1

    .line 203
    iget-object v0, p0, Lccsanandroidx/savedstate/SavedStateRegistry$1;->this$0:Lccsanandroidx/savedstate/SavedStateRegistry;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/savedstate/SavedStateRegistry;->mAllowingSavingState:Z

    .line 205
    :cond_1
    :goto_0
    return-void
.end method
