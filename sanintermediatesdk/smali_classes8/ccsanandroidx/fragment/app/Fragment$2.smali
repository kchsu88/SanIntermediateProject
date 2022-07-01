.class Lccsanandroidx/fragment/app/Fragment$2;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/Fragment;->initLifecycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/Fragment;

    .line 471
    iput-object p1, p0, Lccsanandroidx/fragment/app/Fragment$2;->this$0:Lccsanandroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 475
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 476
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment$2;->this$0:Lccsanandroidx/fragment/app/Fragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lccsanandroidx/fragment/app/Fragment$2;->this$0:Lccsanandroidx/fragment/app/Fragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->cancelPendingInputEvents()V

    .line 480
    :cond_0
    return-void
.end method
