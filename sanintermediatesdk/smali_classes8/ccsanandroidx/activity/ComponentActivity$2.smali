.class Lccsanandroidx/activity/ComponentActivity$2;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Lccsanandroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/activity/ComponentActivity;


# direct methods
.method constructor <init>(Lccsanandroidx/activity/ComponentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/activity/ComponentActivity;

    .line 94
    iput-object p1, p0, Lccsanandroidx/activity/ComponentActivity$2;->this$0:Lccsanandroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lccsanandroidx/lifecycle/LifecycleOwner;Lccsanandroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .param p1, "source"    # Lccsanandroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Lccsanandroidx/lifecycle/Lifecycle$Event;

    .line 98
    sget-object v0, Lccsanandroidx/lifecycle/Lifecycle$Event;->ON_STOP:Lccsanandroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_1

    .line 99
    iget-object v0, p0, Lccsanandroidx/activity/ComponentActivity$2;->this$0:Lccsanandroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Lccsanandroidx/activity/ComponentActivity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    .line 100
    .local v0, "window":Lccsanandroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/Window;->peekDecorView()Lccsanandroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 101
    .local v1, "decor":Lccsanandroid/view/View;
    :goto_0
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1}, Lccsanandroid/view/View;->cancelPendingInputEvents()V

    .line 105
    .end local v0    # "window":Lccsanandroid/view/Window;
    .end local v1    # "decor":Lccsanandroid/view/View;
    :cond_1
    return-void
.end method
