.class Lccsancom/google/android/material/badge/BadgeDrawable$1;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/badge/BadgeDrawable;->tryWrapAnchorInCompatParent(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/badge/BadgeDrawable;

.field final synthetic val$anchorView:Lccsanandroid/view/View;

.field final synthetic val$frameLayout:Lccsanandroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/badge/BadgeDrawable;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/badge/BadgeDrawable;

    .line 534
    iput-object p1, p0, Lccsancom/google/android/material/badge/BadgeDrawable$1;->this$0:Lccsancom/google/android/material/badge/BadgeDrawable;

    iput-object p2, p0, Lccsancom/google/android/material/badge/BadgeDrawable$1;->val$anchorView:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsancom/google/android/material/badge/BadgeDrawable$1;->val$frameLayout:Lccsanandroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 537
    iget-object v0, p0, Lccsancom/google/android/material/badge/BadgeDrawable$1;->this$0:Lccsancom/google/android/material/badge/BadgeDrawable;

    iget-object v1, p0, Lccsancom/google/android/material/badge/BadgeDrawable$1;->val$anchorView:Lccsanandroid/view/View;

    iget-object v2, p0, Lccsancom/google/android/material/badge/BadgeDrawable$1;->val$frameLayout:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V

    .line 538
    return-void
.end method
