.class Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lccsanandroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityPaneVisibilityManager"
.end annotation


# instance fields
.field private mPanesToVisible:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4485
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    return-void
.end method

.method private checkPaneVisibility(Lccsanandroid/view/View;Z)V
    .locals 4
    .param p1, "pane"    # Lccsanandroid/view/View;
    .param p2, "oldVisibility"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pane",
            "oldVisibility"
        }
    .end annotation

    .line 4527
    invoke-virtual {p1}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4528
    .local v0, "newVisibility":Z
    :goto_0
    if-eq p2, v0, :cond_2

    .line 4529
    if-eqz v0, :cond_1

    .line 4530
    const/16 v1, 0x10

    goto :goto_1

    .line 4531
    :cond_1
    const/16 v1, 0x20

    :goto_1
    nop

    .line 4532
    .local v1, "contentChangeType":I
    invoke-static {p1, v1}, Lccsanandroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Lccsanandroid/view/View;I)V

    .line 4533
    iget-object v2, p0, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4535
    .end local v1    # "contentChangeType":I
    :cond_2
    return-void
.end method

.method private registerForLayoutCallback(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 4539
    invoke-virtual {p1}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4540
    return-void
.end method

.method private unregisterForLayoutCallback(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 4544
    invoke-virtual {p1}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4545
    return-void
.end method


# virtual methods
.method addAccessibilityPane(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "pane"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pane"
        }
    .end annotation

    .line 4511
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4512
    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->addOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 4513
    invoke-virtual {p1}, Lccsanandroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4514
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->registerForLayoutCallback(Lccsanandroid/view/View;)V

    .line 4516
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .line 4490
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 4491
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4492
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroid/view/View;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->checkPaneVisibility(Lccsanandroid/view/View;Z)V

    .line 4493
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroid/view/View;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 4495
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 4501
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->registerForLayoutCallback(Lccsanandroid/view/View;)V

    .line 4502
    return-void
.end method

.method public onViewDetachedFromWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 4507
    return-void
.end method

.method removeAccessibilityPane(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "pane"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pane"
        }
    .end annotation

    .line 4520
    iget-object v0, p0, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->mPanesToVisible:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4521
    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->removeOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 4522
    invoke-direct {p0, p1}, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->unregisterForLayoutCallback(Lccsanandroid/view/View;)V

    .line 4523
    return-void
.end method
