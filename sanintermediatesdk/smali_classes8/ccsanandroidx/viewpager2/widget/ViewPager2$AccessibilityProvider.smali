.class abstract Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;
.super Ljava/lang/Object;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AccessibilityProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;


# direct methods
.method private constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2;Lccsanandroidx/viewpager2/widget/ViewPager2$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroidx/viewpager2/widget/ViewPager2;
    .param p2, "x1"    # Lccsanandroidx/viewpager2/widget/ViewPager2$1;

    .line 1220
    invoke-direct {p0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method


# virtual methods
.method handlesGetAccessibilityClassName()Z
    .locals 1

    .line 1226
    const/4 v0, 0x0

    return v0
.end method

.method handlesLmPerformAccessibilityAction(I)Z
    .locals 1
    .param p1, "action"    # I

    .line 1269
    const/4 v0, 0x0

    return v0
.end method

.method handlesPerformAccessibilityAction(ILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Lccsanandroid/os/Bundle;

    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method handlesRvGetAccessibilityClassName()Z
    .locals 1

    .line 1280
    const/4 v0, 0x0

    return v0
.end method

.method onAttachAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1237
    .local p1, "newAdapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    return-void
.end method

.method onDetachAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 1240
    .local p1, "oldAdapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    return-void
.end method

.method onGetAccessibilityClassName()Ljava/lang/String;
    .locals 2

    .line 1230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onInitialize(Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "pageChangeEventDispatcher"    # Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;
    .param p2, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 1223
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 1255
    return-void
.end method

.method onLmInitializeAccessibilityNodeInfo(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1277
    return-void
.end method

.method onLmPerformAccessibilityAction(I)Z
    .locals 2
    .param p1, "action"    # I

    .line 1273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onPerformAccessibilityAction(ILccsanandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Lccsanandroid/os/Bundle;

    .line 1262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onRestorePendingState()V
    .locals 0

    .line 1234
    return-void
.end method

.method onRvGetAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 2

    .line 1284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onRvInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 1266
    return-void
.end method

.method onSetLayoutDirection()V
    .locals 0

    .line 1252
    return-void
.end method

.method onSetNewCurrentItem()V
    .locals 0

    .line 1246
    return-void
.end method

.method onSetOrientation()V
    .locals 0

    .line 1243
    return-void
.end method

.method onSetUserInputEnabled()V
    .locals 0

    .line 1249
    return-void
.end method
