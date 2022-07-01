.class Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"

# interfaces
.implements Lccsancom/google/android/material/transition/TransitionUtils$CanvasOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawStartView(Lccsanandroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    .line 1264
    iput-object p1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;->this$0:Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 1267
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;->this$0:Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    invoke-static {v0}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->access$800(Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 1268
    return-void
.end method
