.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$6;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V
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

    .line 685
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 693
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1600(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 694
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$002(Lccsancom/google/android/material/bottomappbar/BottomAppBar;Z)Z

    .line 695
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1902(Lccsancom/google/android/material/bottomappbar/BottomAppBar;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;

    .line 696
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 688
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1500(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 689
    return-void
.end method
