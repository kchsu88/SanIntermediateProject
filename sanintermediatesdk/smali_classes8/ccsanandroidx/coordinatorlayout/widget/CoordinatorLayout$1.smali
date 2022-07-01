.class Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Lccsanandroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 3312
    iput-object p1, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$1;->this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 3316
    iget-object v0, p0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$1;->this$0:Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->setWindowInsets(Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
