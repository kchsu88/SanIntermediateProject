.class Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;
.super Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuViewAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/NavigationMenuPresenter;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 776
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    .line 777
    invoke-direct {p0, p2}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 778
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 783
    invoke-super {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 784
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuViewAccessibilityDelegate;->this$0:Lccsancom/google/android/material/internal/NavigationMenuPresenter;

    iget-object v0, v0, Lccsancom/google/android/material/internal/NavigationMenuPresenter;->adapter:Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getRowCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZ)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 785
    return-void
.end method
