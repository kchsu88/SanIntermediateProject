.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar;
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

    .line 192
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 199
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$000(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$100(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v1

    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$1;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$200(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$300(Lccsancom/google/android/material/bottomappbar/BottomAppBar;IZ)V

    .line 202
    :cond_0
    return-void
.end method
