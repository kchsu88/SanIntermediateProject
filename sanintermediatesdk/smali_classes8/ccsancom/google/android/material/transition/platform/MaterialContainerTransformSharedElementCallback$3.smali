.class Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;
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

.field final synthetic val$window:Lccsanandroid/view/Window;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Lccsanandroid/view/Window;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

    .line 281
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;->this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;

    iput-object p2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;->val$window:Lccsanandroid/view/Window;

    invoke-direct {p0}, Lccsancom/google/android/material/transition/platform/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Lccsanandroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 284
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;->val$window:Lccsanandroid/view/Window;

    invoke-static {v0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->access$000(Lccsanandroid/view/Window;)V

    .line 285
    return-void
.end method
