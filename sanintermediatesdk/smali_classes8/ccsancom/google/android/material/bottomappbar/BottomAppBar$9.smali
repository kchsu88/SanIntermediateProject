.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$9;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar;->addFabAnimationListeners(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    .line 930
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$9;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 933
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$9;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v0, v0, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Lccsanandroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationStart(Lccsanandroid/animation/Animator;)V

    .line 936
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$9;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$2200(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    .line 937
    .local v0, "fab":Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
    if-eqz v0, :cond_0

    .line 938
    iget-object v1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$9;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$2300(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)F

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 940
    :cond_0
    return-void
.end method
