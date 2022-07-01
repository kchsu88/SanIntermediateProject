.class Lccsancom/google/android/material/navigation/NavigationView$2;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/navigation/NavigationView;->setupInsetScrimsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/navigation/NavigationView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/navigation/NavigationView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/navigation/NavigationView;

    .line 678
    iput-object p1, p0, Lccsancom/google/android/material/navigation/NavigationView$2;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 681
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView$2;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lccsancom/google/android/material/navigation/NavigationView;->access$000(Lccsancom/google/android/material/navigation/NavigationView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/navigation/NavigationView;->getLocationOnScreen([I)V

    .line 682
    iget-object v0, p0, Lccsancom/google/android/material/navigation/NavigationView$2;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    invoke-static {v0}, Lccsancom/google/android/material/navigation/NavigationView;->access$000(Lccsancom/google/android/material/navigation/NavigationView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 683
    .local v0, "isBehindStatusBar":Z
    :goto_0
    iget-object v3, p0, Lccsancom/google/android/material/navigation/NavigationView$2;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    invoke-static {v3}, Lccsancom/google/android/material/navigation/NavigationView;->access$100(Lccsancom/google/android/material/navigation/NavigationView;)Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->setBehindStatusBar(Z)V

    .line 684
    iget-object v3, p0, Lccsancom/google/android/material/navigation/NavigationView$2;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3, v0}, Lccsancom/google/android/material/navigation/NavigationView;->setDrawTopInsetForeground(Z)V

    .line 686
    iget-object v3, p0, Lccsancom/google/android/material/navigation/NavigationView$2;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    invoke-virtual {v3}, Lccsancom/google/android/material/navigation/NavigationView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/android/material/internal/ContextUtils;->getActivity(Lccsanandroid/content/Context;)Lccsanandroid/app/Activity;

    move-result-object v3

    .line 687
    .local v3, "activity":Lccsanandroid/app/Activity;
    if-eqz v3, :cond_4

    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 688
    const v4, 0x1020002

    .line 689
    invoke-virtual {v3, v4}, Lccsanandroid/app/Activity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lccsancom/google/android/material/navigation/NavigationView$2;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    invoke-virtual {v5}, Lccsancom/google/android/material/navigation/NavigationView;->getHeight()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 690
    .local v4, "isBehindSystemNav":Z
    :goto_1
    nop

    .line 691
    invoke-virtual {v3}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Lccsanandroid/view/Window;->getNavigationBarColor()I

    move-result v5

    invoke-static {v5}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 693
    .local v5, "hasNonZeroAlpha":Z
    :goto_2
    iget-object v6, p0, Lccsancom/google/android/material/navigation/NavigationView$2;->this$0:Lccsancom/google/android/material/navigation/NavigationView;

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v6, v1}, Lccsancom/google/android/material/navigation/NavigationView;->setDrawBottomInsetForeground(Z)V

    .line 695
    .end local v4    # "isBehindSystemNav":Z
    .end local v5    # "hasNonZeroAlpha":Z
    :cond_4
    return-void
.end method
