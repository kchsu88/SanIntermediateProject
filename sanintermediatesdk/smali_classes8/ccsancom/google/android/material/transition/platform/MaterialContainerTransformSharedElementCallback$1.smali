.class Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;
.super Lccsancom/google/android/material/transition/platform/TransitionListenerAdapter;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpEnterTransform(Lccsanandroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

.field final synthetic val$window:Lccsanandroid/view/Window;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Lccsanandroid/view/Window;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

    .line 240
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;->this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

    iput-object p2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;->val$window:Lccsanandroid/view/Window;

    invoke-direct {p0}, Lccsancom/google/android/material/transition/platform/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 248
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;->val$window:Lccsanandroid/view/Window;

    invoke-static {v0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$100(Lccsanandroid/view/Window;)V

    .line 249
    return-void
.end method

.method public onTransitionStart(Lccsanandroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 243
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;->val$window:Lccsanandroid/view/Window;

    invoke-static {v0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$000(Lccsanandroid/view/Window;)V

    .line 244
    return-void
.end method
