.class Lccsancom/google/android/material/tabs/TabLayout$TabView$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lccsanandroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/tabs/TabLayout$TabView;->addOnLayoutChangeListener(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/android/material/tabs/TabLayout$TabView;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/android/material/tabs/TabLayout$TabView;

    .line 2722
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView$1;->this$1:Lccsancom/google/android/material/tabs/TabLayout$TabView;

    iput-object p2, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView$1;->val$view:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Lccsanandroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 2734
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView$1;->val$view:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2735
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView$1;->this$1:Lccsancom/google/android/material/tabs/TabLayout$TabView;

    iget-object v1, p0, Lccsancom/google/android/material/tabs/TabLayout$TabView$1;->val$view:Lccsanandroid/view/View;

    invoke-static {v0, v1}, Lccsancom/google/android/material/tabs/TabLayout$TabView;->access$1000(Lccsancom/google/android/material/tabs/TabLayout$TabView;Lccsanandroid/view/View;)V

    .line 2737
    :cond_0
    return-void
.end method
