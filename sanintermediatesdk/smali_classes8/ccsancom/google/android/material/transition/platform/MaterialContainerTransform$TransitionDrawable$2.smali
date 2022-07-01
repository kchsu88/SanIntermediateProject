.class Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"

# interfaces
.implements Lccsancom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawEndView(Lccsanandroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    .line 1287
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;->this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1290
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$2;->this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    invoke-static {v0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->access$900(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1291
    return-void
.end method
