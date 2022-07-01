.class Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;
.implements Lccsanandroidx/activity/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LifecycleOnBackPressedCancellable"
.end annotation


# instance fields
.field private mCurrentCancellable:Lccsanandroidx/activity/Cancellable;

.field private final mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

.field private final mOnBackPressedCallback:Lccsanandroidx/activity/OnBackPressedCallback;

.field final synthetic this$0:Lccsanandroidx/activity/OnBackPressedDispatcher;


# direct methods
.method constructor <init>(Lccsanandroidx/activity/OnBackPressedDispatcher;Lccsanandroidx/lifecycle/Lifecycle;Lccsanandroidx/activity/OnBackPressedCallback;)V
    .locals 0
    .param p2, "lifecycle"    # Lccsanandroidx/lifecycle/Lifecycle;
    .param p3, "onBackPressedCallback"    # Lccsanandroidx/activity/OnBackPressedCallback;

    .line 220
    iput-object p1, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->this$0:Lccsanandroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

    .line 222
    iput-object p3, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mOnBackPressedCallback:Lccsanandroidx/activity/OnBackPressedCallback;

    .line 223
    invoke-virtual {p2, p0}, Lccsanandroidx/lifecycle/Lifecycle;->addObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 224
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 243
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mLifecycle:Lccsanandroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Lccsanandroidx/lifecycle/Lifecycle;->removeObserver(Lccsanandroidx/lifecycle/LifecycleObserver;)V

    .line 244
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mOnBackPressedCallback:Lccsanandroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p0}, Lccsanandroidx/activity/OnBackPressedCallback;->removeCancellable(Lccsanandroidx/activity/Cancellable;)V

    .line 245
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Lccsanandroidx/activity/Cancellable;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Lccsanandroidx/activity/Cancellable;->cancel()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Lccsanandroidx/activity/Cancellable;

    .line 249
    :cond_0
    return-void
.end method

.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 229
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_START:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 230
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->this$0:Lccsanandroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mOnBackPressedCallback:Lccsanandroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, v1}, Lccsanandroidx/activity/OnBackPressedDispatcher;->addCancellableCallback(Lccsanandroidx/activity/OnBackPressedCallback;)Lccsanandroidx/activity/Cancellable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Lccsanandroidx/activity/Cancellable;

    goto :goto_0

    .line 231
    :cond_0
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_1

    .line 233
    iget-object v0, p0, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->mCurrentCancellable:Lccsanandroidx/activity/Cancellable;

    if-eqz v0, :cond_2

    .line 234
    invoke-interface {v0}, Lccsanandroidx/activity/Cancellable;->cancel()V

    goto :goto_0

    .line 236
    :cond_1
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lccsanandroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    .line 239
    :cond_2
    :goto_0
    return-void
.end method
