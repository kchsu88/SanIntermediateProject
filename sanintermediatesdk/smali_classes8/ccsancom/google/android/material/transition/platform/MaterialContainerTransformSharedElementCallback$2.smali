.class Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;
.super Lccsancom/google/android/material/transition/platform/TransitionListenerAdapter;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpReturnTransform(Lccsanandroid/app/Activity;Lccsanandroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

.field final synthetic val$activity:Lccsanandroid/app/Activity;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Lccsanandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

    .line 261
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;->this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

    iput-object p2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;->val$activity:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Lccsancom/google/android/material/transition/platform/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 265
    invoke-static {}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    .line 267
    .local v0, "sharedElement":Lccsanandroid/view/View;
    if-eqz v0, :cond_0

    .line 268
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 269
    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 274
    .end local v0    # "sharedElement":Lccsanandroid/view/View;
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;->val$activity:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V

    .line 275
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;->val$activity:Lccsanandroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lccsanandroid/app/Activity;->overridePendingTransition(II)V

    .line 276
    return-void
.end method
