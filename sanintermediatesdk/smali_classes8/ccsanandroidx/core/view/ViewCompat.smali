.class public Lccsanandroidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/view/ViewCompat$Api30Impl;,
        Lccsanandroidx/core/view/ViewCompat$Api29Impl;,
        Lccsanandroidx/core/view/ViewCompat$Api23Impl;,
        Lccsanandroidx/core/view/ViewCompat$Api21Impl;,
        Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;,
        Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;,
        Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;,
        Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;,
        Lccsanandroidx/core/view/ViewCompat$CompatImplApi28;,
        Lccsanandroidx/core/view/ViewCompat$ScrollIndicators;,
        Lccsanandroidx/core/view/ViewCompat$NestedScrollType;,
        Lccsanandroidx/core/view/ViewCompat$ScrollAxis;,
        Lccsanandroidx/core/view/ViewCompat$FocusRelativeDirection;,
        Lccsanandroidx/core/view/ViewCompat$FocusRealDirection;,
        Lccsanandroidx/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Lccsanandroidx/core/view/OnReceiveContentViewBehavior;

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I

.field private static sAccessibilityDelegateCheckFailed:Z

.field private static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static sAccessibilityPaneVisibilityManager:Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lccsanandroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/view/View;",
            "Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 470
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 482
    const/4 v0, 0x0

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 486
    const/4 v0, 0x0

    sput-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 1236
    const/16 v2, 0x20

    new-array v2, v2, [I

    sget v3, Lccsanandroidx/core/R$id;->accessibility_custom_action_0:I

    aput v3, v2, v0

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_1:I

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_2:I

    const/4 v1, 0x2

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_3:I

    const/4 v1, 0x3

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_4:I

    const/4 v1, 0x4

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_5:I

    const/4 v1, 0x5

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_6:I

    const/4 v1, 0x6

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_7:I

    const/4 v1, 0x7

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_8:I

    const/16 v1, 0x8

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_9:I

    const/16 v1, 0x9

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_10:I

    const/16 v1, 0xa

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_11:I

    const/16 v1, 0xb

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_12:I

    const/16 v1, 0xc

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_13:I

    const/16 v1, 0xd

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_14:I

    const/16 v1, 0xe

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_15:I

    const/16 v1, 0xf

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_16:I

    const/16 v1, 0x10

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_17:I

    const/16 v1, 0x11

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_18:I

    const/16 v1, 0x12

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_19:I

    const/16 v1, 0x13

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_20:I

    const/16 v1, 0x14

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_21:I

    const/16 v1, 0x15

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_22:I

    const/16 v1, 0x16

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_23:I

    const/16 v1, 0x17

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_24:I

    const/16 v1, 0x18

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_25:I

    const/16 v1, 0x19

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_26:I

    const/16 v1, 0x1a

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_27:I

    const/16 v1, 0x1b

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_28:I

    const/16 v1, 0x1c

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_29:I

    const/16 v1, 0x1d

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_30:I

    const/16 v1, 0x1e

    aput v0, v2, v1

    sget v0, Lccsanandroidx/core/R$id;->accessibility_custom_action_31:I

    const/16 v1, 0x1f

    aput v0, v2, v1

    sput-object v2, Lccsanandroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    .line 2825
    new-instance v0, Lccsanandroidx/core/view/ViewCompat$1;

    invoke-direct {v0}, Lccsanandroidx/core/view/ViewCompat$1;-><init>()V

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Lccsanandroidx/core/view/OnReceiveContentViewBehavior;

    .line 4480
    new-instance v0, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-direct {v0}, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;-><init>()V

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4101
    return-void
.end method

.method private static accessibilityHeadingProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4329
    new-instance v0, Lccsanandroidx/core/view/ViewCompat$5;

    sget v1, Lccsanandroidx/core/R$id;->tag_accessibility_heading:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lccsanandroidx/core/view/ViewCompat$5;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static addAccessibilityAction(Lccsanandroid/view/View;Ljava/lang/CharSequence;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "command"    # Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "label",
            "command"
        }
    .end annotation

    .line 1227
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat;->getAvailableActionIdFromResources(Lccsanandroid/view/View;Ljava/lang/CharSequence;)I

    move-result v0

    .line 1228
    .local v0, "actionId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1229
    new-instance v1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v1, v0, p1, p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 1231
    .local v1, "action":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->addAccessibilityAction(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1233
    .end local v1    # "action":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    :cond_0
    return v0
.end method

.method private static addAccessibilityAction(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "action"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "action"
        }
    .end annotation

    .line 1321
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1322
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getOrCreateAccessibilityDelegateCompat(Lccsanandroid/view/View;)Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 1323
    invoke-virtual {p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {v0, p0}, Lccsanandroidx/core/view/ViewCompat;->removeActionWithId(ILccsanandroid/view/View;)V

    .line 1324
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getActionList(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Lccsanandroid/view/View;I)V

    .line 1328
    :cond_0
    return-void
.end method

.method public static addKeyboardNavigationClusters(Lccsanandroid/view/View;Ljava/util/Collection;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "views",
            "direction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/Collection<",
            "Lccsanandroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 3936
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Lccsanandroid/view/View;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3937
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 3939
    :cond_0
    return-void
.end method

.method public static addOnUnhandledKeyEventListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 3
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "listener"    # Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 4054
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 4055
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat$CompatImplApi28;->addOnUnhandledKeyEventListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 4056
    return-void

    .line 4058
    :cond_0
    sget v0, Lccsanandroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4060
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4061
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-nez v0, :cond_1

    .line 4062
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4063
    sget v1, Lccsanandroidx/core/R$id;->tag_unhandled_key_listeners:I

    invoke-virtual {p0, v1, v0}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4065
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4066
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 4067
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->registerListeningView(Lccsanandroid/view/View;)V

    .line 4069
    :cond_2
    return-void
.end method

.method public static animate(Lccsanandroid/view/View;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2068
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 2069
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2071
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2072
    .local v0, "vpa":Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    if-nez v0, :cond_1

    .line 2073
    new-instance v1, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {v1, p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;-><init>(Lccsanandroid/view/View;)V

    move-object v0, v1

    .line 2074
    sget-object v1, Lccsanandroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    :cond_1
    return-object v0
.end method

.method private static bindTempDetach()V
    .locals 4

    .line 1886
    :try_start_0
    const-class v0, Lccsanandroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 1888
    const-class v0, Lccsanandroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1892
    goto :goto_0

    .line 1890
    :catch_0
    move-exception v0

    .line 1891
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1893
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sTempDetachBound:Z

    .line 1894
    return-void
.end method

.method public static canScrollHorizontally(Lccsanandroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "direction"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 539
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static canScrollVertically(Lccsanandroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "direction"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public static cancelDragAndDrop(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 3807
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3808
    invoke-virtual {p0}, Lccsanandroid/view/View;->cancelDragAndDrop()V

    .line 3810
    :cond_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curState",
            "newState"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1776
    invoke-static {p0, p1}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method private static compatOffsetLeftAndRight(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "offset"
        }
    .end annotation

    .line 3600
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->offsetLeftAndRight(I)V

    .line 3601
    invoke-virtual {p0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3602
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->tickleInvalidationFlag(Lccsanandroid/view/View;)V

    .line 3604
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 3605
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/View;

    if-eqz v1, :cond_0

    .line 3606
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->tickleInvalidationFlag(Lccsanandroid/view/View;)V

    .line 3609
    .end local v0    # "parent":Lccsanandroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method private static compatOffsetTopAndBottom(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "offset"
        }
    .end annotation

    .line 3552
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->offsetTopAndBottom(I)V

    .line 3553
    invoke-virtual {p0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3554
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->tickleInvalidationFlag(Lccsanandroid/view/View;)V

    .line 3556
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 3557
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/View;

    if-eqz v1, :cond_0

    .line 3558
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->tickleInvalidationFlag(Lccsanandroid/view/View;)V

    .line 3561
    .end local v0    # "parent":Lccsanandroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method public static computeSystemWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p2, "outLocalInsets"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "insets",
            "outLocalInsets"
        }
    .end annotation

    .line 2644
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2645
    invoke-static {p0, p1, p2}, Lccsanandroidx/core/view/ViewCompat$Api21Impl;->computeSystemWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 2647
    :cond_0
    return-object p1
.end method

.method public static dispatchApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "insets"
        }
    .end annotation

    .line 2565
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2566
    invoke-virtual {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    .line 2567
    .local v0, "unwrapped":Lccsanandroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 2568
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->dispatchApplyWindowInsets(Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    move-result-object v1

    .line 2569
    .local v1, "result":Lccsanandroid/view/WindowInsets;
    invoke-virtual {v1, v0}, Lccsanandroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2571
    invoke-static {v1, p0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 2575
    .end local v0    # "unwrapped":Lccsanandroid/view/WindowInsets;
    .end local v1    # "result":Lccsanandroid/view/WindowInsets;
    :cond_0
    return-object p1
.end method

.method public static dispatchFinishTemporaryDetach(Lccsanandroid/view/View;)V
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1923
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1924
    invoke-virtual {p0}, Lccsanandroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1

    .line 1926
    :cond_0
    sget-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v0, :cond_1

    .line 1927
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->bindTempDetach()V

    .line 1929
    :cond_1
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 1931
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1932
    :catch_0
    move-exception v0

    .line 1933
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1934
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1937
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/view/View;->onFinishTemporaryDetach()V

    .line 1940
    :goto_1
    return-void
.end method

.method public static dispatchNestedFling(Lccsanandroid/view/View;FFZ)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    .line 3384
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3385
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0

    .line 3387
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3388
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2, p3}, Lccsanandroidx/core/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0

    .line 3391
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreFling(Lccsanandroid/view/View;FF)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 3427
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3428
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0

    .line 3430
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3431
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/core/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0

    .line 3433
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreScroll(Lccsanandroid/view/View;II[I[I)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "dx",
            "dy",
            "consumed",
            "offsetInWindow"
        }
    .end annotation

    .line 3160
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3161
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0

    .line 3163
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3164
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2, p3, p4}, Lccsanandroidx/core/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0

    .line 3167
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreScroll(Lccsanandroid/view/View;II[I[II)Z
    .locals 7
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "dx",
            "dy",
            "consumed",
            "offsetInWindow",
            "type"
        }
    .end annotation

    .line 3354
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 3355
    move-object v1, p0

    check-cast v1, Lccsanandroidx/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lccsanandroidx/core/view/NestedScrollingChild2;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0

    .line 3357
    :cond_0
    if-nez p5, :cond_1

    .line 3358
    invoke-static {p0, p1, p2, p3, p4}, Lccsanandroidx/core/view/ViewCompat;->dispatchNestedPreScroll(Lccsanandroid/view/View;II[I[I)Z

    move-result v0

    return v0

    .line 3360
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedScroll(Lccsanandroid/view/View;IIII[II[I)V
    .locals 10
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow",
            "type",
            "consumed"
        }
    .end annotation

    .line 3286
    move-object v0, p0

    instance-of v1, v0, Lccsanandroidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_0

    .line 3287
    move-object v2, v0

    check-cast v2, Lccsanandroidx/core/view/NestedScrollingChild3;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lccsanandroidx/core/view/NestedScrollingChild3;->dispatchNestedScroll(IIII[II[I)V

    goto :goto_0

    .line 3290
    :cond_0
    invoke-static/range {p0 .. p6}, Lccsanandroidx/core/view/ViewCompat;->dispatchNestedScroll(Lccsanandroid/view/View;IIII[II)Z

    .line 3293
    :goto_0
    return-void
.end method

.method public static dispatchNestedScroll(Lccsanandroid/view/View;IIII[I)Z
    .locals 7
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow"
        }
    .end annotation

    .line 3129
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3130
    invoke-virtual/range {p0 .. p5}, Lccsanandroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0

    .line 3133
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3134
    move-object v1, p0

    check-cast v1, Lccsanandroidx/core/view/NestedScrollingChild;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lccsanandroidx/core/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0

    .line 3137
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedScroll(Lccsanandroid/view/View;IIII[II)Z
    .locals 8
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "offsetInWindow",
            "type"
        }
    .end annotation

    .line 3322
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 3323
    move-object v1, p0

    check-cast v1, Lccsanandroidx/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lccsanandroidx/core/view/NestedScrollingChild2;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0

    .line 3325
    :cond_0
    if-nez p6, :cond_1

    .line 3326
    invoke-static/range {p0 .. p5}, Lccsanandroidx/core/view/ViewCompat;->dispatchNestedScroll(Lccsanandroid/view/View;IIII[I)Z

    move-result v0

    return v0

    .line 3329
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchStartTemporaryDetach(Lccsanandroid/view/View;)V
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1900
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 1901
    invoke-virtual {p0}, Lccsanandroid/view/View;->dispatchStartTemporaryDetach()V

    goto :goto_1

    .line 1903
    :cond_0
    sget-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v0, :cond_1

    .line 1904
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->bindTempDetach()V

    .line 1906
    :cond_1
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 1908
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 1914
    :cond_2
    invoke-virtual {p0}, Lccsanandroid/view/View;->onStartTemporaryDetach()V

    .line 1917
    :goto_1
    return-void
.end method

.method static dispatchUnhandledKeyEventBeforeCallback(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "root"    # Lccsanandroid/view/View;
    .param p1, "evt"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "evt"
        }
    .end annotation

    .line 4129
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 4130
    const/4 v0, 0x0

    return v0

    .line 4132
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Lccsanandroid/view/View;)Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatch(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static dispatchUnhandledKeyEventBeforeHierarchy(Lccsanandroid/view/View;Lccsanandroid/view/KeyEvent;)Z
    .locals 2
    .param p0, "root"    # Lccsanandroid/view/View;
    .param p1, "evt"    # Lccsanandroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "evt"
        }
    .end annotation

    .line 4121
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 4122
    const/4 v0, 0x0

    return v0

    .line 4124
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Lccsanandroid/view/View;)Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->preDispatch(Lccsanandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static enableAccessibleClickableSpanSupport(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1414
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1415
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getOrCreateAccessibilityDelegateCompat(Lccsanandroid/view/View;)Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 1417
    :cond_0
    return-void
.end method

.method public static generateViewId()I
    .locals 4

    .line 3985
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3986
    invoke-static {}, Lccsanandroid/view/View;->generateViewId()I

    move-result v0

    return v0

    .line 3989
    :cond_0
    :goto_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 3991
    .local v1, "result":I
    add-int/lit8 v2, v1, 0x1

    .line 3992
    .local v2, "newValue":I
    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    .line 3993
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3994
    return v1

    .line 3996
    .end local v1    # "result":I
    .end local v2    # "newValue":I
    :cond_2
    goto :goto_0
.end method

.method public static getAccessibilityDelegate(Lccsanandroid/view/View;)Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 922
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Lccsanandroid/view/View;)Lccsanandroid/view/View$AccessibilityDelegate;

    move-result-object v0

    .line 923
    .local v0, "delegate":Lccsanandroid/view/View$AccessibilityDelegate;
    if-nez v0, :cond_0

    .line 924
    const/4 v1, 0x0

    return-object v1

    .line 926
    :cond_0
    instance-of v1, v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v1, :cond_1

    .line 927
    move-object v1, v0

    check-cast v1, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    iget-object v1, v1, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;->mCompat:Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    return-object v1

    .line 929
    :cond_1
    new-instance v1, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v1, v0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>(Lccsanandroid/view/View$AccessibilityDelegate;)V

    return-object v1
.end method

.method private static getAccessibilityDelegateInternal(Lccsanandroid/view/View;)Lccsanandroid/view/View$AccessibilityDelegate;
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 945
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 946
    invoke-virtual {p0}, Lccsanandroid/view/View;->getAccessibilityDelegate()Lccsanandroid/view/View$AccessibilityDelegate;

    move-result-object v0

    return-object v0

    .line 948
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityDelegateThroughReflection(Lccsanandroid/view/View;)Lccsanandroid/view/View$AccessibilityDelegate;

    move-result-object v0

    return-object v0
.end method

.method private static getAccessibilityDelegateThroughReflection(Lccsanandroid/view/View;)Lccsanandroid/view/View$AccessibilityDelegate;
    .locals 4
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 954
    sget-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 955
    return-object v1

    .line 957
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 959
    :try_start_0
    const-class v0, Lccsanandroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 960
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 961
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    goto :goto_0

    .line 962
    :catchall_0
    move-exception v0

    .line 963
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v2, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 964
    return-object v1

    .line 968
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 969
    .local v0, "o":Ljava/lang/Object;
    instance-of v3, v0, Lccsanandroid/view/View$AccessibilityDelegate;

    if-eqz v3, :cond_2

    .line 970
    move-object v3, v0

    check-cast v3, Lccsanandroid/view/View$AccessibilityDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    .line 972
    :cond_2
    return-object v1

    .line 973
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .line 974
    .local v0, "t":Ljava/lang/Throwable;
    sput-boolean v2, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityDelegateCheckFailed:Z

    .line 975
    return-object v1
.end method

.method public static getAccessibilityLiveRegion(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1789
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1790
    invoke-virtual {p0}, Lccsanandroid/view/View;->getAccessibilityLiveRegion()I

    move-result v0

    return v0

    .line 1792
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAccessibilityNodeProvider(Lccsanandroid/view/View;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1443
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1444
    invoke-virtual {p0}, Lccsanandroid/view/View;->getAccessibilityNodeProvider()Lccsanandroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1445
    .local v0, "provider":Lccsanandroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v0, :cond_0

    .line 1446
    new-instance v1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v1, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1449
    .end local v0    # "provider":Lccsanandroid/view/accessibility/AccessibilityNodeProvider;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAccessibilityPaneTitle(Lccsanandroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 4245
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->paneTitleProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Lccsanandroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static getActionList(Lccsanandroid/view/View;)Ljava/util/List;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .line 1357
    sget v0, Lccsanandroidx/core/R$id;->tag_accessibility_actions:I

    .line 1358
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1359
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    if-nez v0, :cond_0

    .line 1360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1361
    sget v1, Lccsanandroidx/core/R$id;->tag_accessibility_actions:I

    invoke-virtual {p0, v1, v0}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1363
    :cond_0
    return-object v0
.end method

.method public static getAlpha(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1463
    invoke-virtual {p0}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method private static getAvailableActionIdFromResources(Lccsanandroid/view/View;Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "label"
        }
    .end annotation

    .line 1271
    const/4 v0, -0x1

    .line 1273
    .local v0, "result":I
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getActionList(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v1

    .line 1274
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1275
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p1, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1276
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v3}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v3

    return v3

    .line 1274
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1280
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    sget-object v3, Lccsanandroidx/core/view/ViewCompat;->ACCESSIBILITY_ACTIONS_RESOURCE_IDS:[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    .line 1282
    aget v3, v3, v2

    .line 1283
    .local v3, "id":I
    const/4 v4, 0x1

    .line 1284
    .local v4, "idAvailable":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1285
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v6

    if-eq v6, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    and-int/2addr v4, v6

    .line 1284
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1287
    .end local v5    # "j":I
    :cond_3
    if-eqz v4, :cond_4

    .line 1288
    move v0, v3

    .line 1281
    .end local v3    # "id":I
    .end local v4    # "idAvailable":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1291
    .end local v2    # "i":I
    :cond_5
    return v0
.end method

.method public static getBackgroundTintList(Lccsanandroid/view/View;)Lccsanandroid/content/res/ColorStateList;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2918
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2919
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 2921
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/TintableBackgroundView;

    if-eqz v0, :cond_1

    .line 2922
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/TintableBackgroundView;

    invoke-interface {v0}, Lccsanandroidx/core/view/TintableBackgroundView;->getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 2923
    :cond_1
    const/4 v0, 0x0

    .line 2921
    :goto_0
    return-object v0
.end method

.method public static getBackgroundTintMode(Lccsanandroid/view/View;)Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2963
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2964
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 2966
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/TintableBackgroundView;

    if-eqz v0, :cond_1

    .line 2967
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/TintableBackgroundView;

    invoke-interface {v0}, Lccsanandroidx/core/view/TintableBackgroundView;->getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    .line 2968
    :cond_1
    const/4 v0, 0x0

    .line 2966
    :goto_0
    return-object v0
.end method

.method public static getClipBounds(Lccsanandroid/view/View;)Lccsanandroid/graphics/Rect;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3644
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3645
    invoke-virtual {p0}, Lccsanandroid/view/View;->getClipBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3647
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDisplay(Lccsanandroid/view/View;)Lccsanandroid/view/Display;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3766
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3767
    invoke-virtual {p0}, Lccsanandroid/view/View;->getDisplay()Lccsanandroid/view/Display;

    move-result-object v0

    return-object v0

    .line 3769
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3770
    invoke-virtual {p0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    .line 3772
    .local v0, "wm":Lccsanandroid/view/WindowManager;
    invoke-interface {v0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v1

    return-object v1

    .line 3774
    .end local v0    # "wm":Lccsanandroid/view/WindowManager;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getElevation(Lccsanandroid/view/View;)F
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2352
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2353
    invoke-virtual {p0}, Lccsanandroid/view/View;->getElevation()F

    move-result v0

    return v0

    .line 2355
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getEmptyTempRect()Lccsanandroid/graphics/Rect;
    .locals 2

    .line 491
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 494
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/Rect;

    .line 495
    .local v0, "rect":Lccsanandroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 496
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 497
    sget-object v1, Lccsanandroidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 499
    :cond_1
    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->setEmpty()V

    .line 500
    return-object v0
.end method

.method private static getFallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/OnReceiveContentViewBehavior;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2819
    instance-of v0, p0, Lccsanandroidx/core/view/OnReceiveContentViewBehavior;

    if-eqz v0, :cond_0

    .line 2820
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/OnReceiveContentViewBehavior;

    return-object v0

    .line 2822
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->NO_OP_ON_RECEIVE_CONTENT_VIEW_BEHAVIOR:Lccsanandroidx/core/view/OnReceiveContentViewBehavior;

    return-object v0
.end method

.method public static getFitsSystemWindows(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 2478
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2479
    invoke-virtual {p0}, Lccsanandroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0

    .line 2481
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getImportantForAccessibility(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1101
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1102
    invoke-virtual {p0}, Lccsanandroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0

    .line 1104
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getImportantForAutofill(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 782
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 783
    invoke-virtual {p0}, Lccsanandroid/view/View;->getImportantForAutofill()I

    move-result v0

    return v0

    .line 785
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getLabelFor(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1538
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1539
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLabelFor()I

    move-result v0

    return v0

    .line 1541
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getLayerType(Lccsanandroid/view/View;)I
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1527
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static getLayoutDirection(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1611
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1612
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0

    .line 1614
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getMatrix(Lccsanandroid/view/View;)Lccsanandroid/graphics/Matrix;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1989
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMatrix()Lccsanandroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static getMeasuredHeightAndState(Lccsanandroid/view/View;)I
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1747
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredHeightAndState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredState(Lccsanandroid/view/View;)I
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1761
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredWidthAndState(Lccsanandroid/view/View;)I
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1730
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    return v0
.end method

.method public static getMinimumHeight(Lccsanandroid/view/View;)I
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2034
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2035
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0

    .line 2038
    :cond_0
    sget-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sMinHeightFieldFetched:Z

    if-nez v0, :cond_1

    .line 2040
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lccsanandroid/view/View;

    const-string v2, "mMinHeight"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 2041
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2044
    goto :goto_0

    .line 2042
    :catch_0
    move-exception v1

    .line 2045
    :goto_0
    sput-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sMinHeightFieldFetched:Z

    .line 2048
    :cond_1
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 2050
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 2051
    :catch_1
    move-exception v0

    .line 2057
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getMinimumWidth(Lccsanandroid/view/View;)I
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2000
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2001
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0

    .line 2004
    :cond_0
    sget-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sMinWidthFieldFetched:Z

    if-nez v0, :cond_1

    .line 2006
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Lccsanandroid/view/View;

    const-string v2, "mMinWidth"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 2007
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    goto :goto_0

    .line 2008
    :catch_0
    move-exception v1

    .line 2011
    :goto_0
    sput-boolean v0, Lccsanandroidx/core/view/ViewCompat;->sMinWidthFieldFetched:Z

    .line 2014
    :cond_1
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 2016
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 2017
    :catch_1
    move-exception v0

    .line 2023
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getNextClusterForwardId(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3828
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3829
    invoke-virtual {p0}, Lccsanandroid/view/View;->getNextClusterForwardId()I

    move-result v0

    return v0

    .line 3831
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getOnReceiveContentMimeTypes(Lccsanandroid/view/View;)[Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2782
    sget v0, Lccsanandroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static getOrCreateAccessibilityDelegateCompat(Lccsanandroid/view/View;)Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 934
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityDelegate(Lccsanandroid/view/View;)Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 935
    .local v0, "delegateCompat":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-nez v0, :cond_0

    .line 936
    new-instance v1, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v1}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    move-object v0, v1

    .line 938
    :cond_0
    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 939
    return-object v0
.end method

.method public static getOverScrollMode(Lccsanandroid/view/View;)I
    .locals 1
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    invoke-virtual {p0}, Lccsanandroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static getPaddingEnd(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1856
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1857
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingEnd()I

    move-result v0

    return v0

    .line 1859
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public static getPaddingStart(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1840
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1841
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingStart()I

    move-result v0

    return v0

    .line 1843
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public static getParentForAccessibility(Lccsanandroid/view/View;)Lccsanandroid/view/ViewParent;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1649
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1650
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParentForAccessibility()Lccsanandroid/view/ViewParent;

    move-result-object v0

    return-object v0

    .line 1652
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static getPivotX(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2233
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method public static getPivotY(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2262
    invoke-virtual {p0}, Lccsanandroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method public static getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2622
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2623
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 2624
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2625
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat$Api21Impl;->getRootWindowInsets(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 2627
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRotation(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2286
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public static getRotationX(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2294
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public static getRotationY(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2302
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method public static getScaleX(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2310
    invoke-virtual {p0}, Lccsanandroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static getScaleY(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2318
    invoke-virtual {p0}, Lccsanandroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public static getScrollIndicators(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3736
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3737
    invoke-virtual {p0}, Lccsanandroid/view/View;->getScrollIndicators()I

    move-result v0

    return v0

    .line 3739
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final getStateDescription(Lccsanandroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1399
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->stateDescriptionProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Lccsanandroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static getSystemGestureExclusionRects(Lccsanandroid/view/View;)Ljava/util/List;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 2606
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2607
    invoke-virtual {p0}, Lccsanandroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2609
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTransitionName(Lccsanandroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2409
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2410
    invoke-virtual {p0}, Lccsanandroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2412
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2413
    const/4 v0, 0x0

    return-object v0

    .line 2415
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTranslationX(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1953
    invoke-virtual {p0}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static getTranslationY(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1967
    invoke-virtual {p0}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static getTranslationZ(Lccsanandroid/view/View;)F
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2373
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2374
    invoke-virtual {p0}, Lccsanandroid/view/View;->getTranslationZ()F

    move-result v0

    return v0

    .line 2376
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getWindowInsetsController(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsControllerCompat;
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2659
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2660
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat$Api30Impl;->getWindowInsetsController(Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    return-object v0

    .line 2662
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 2663
    .local v0, "context":Lccsanandroid/content/Context;
    :goto_0
    instance-of v1, v0, Lccsanandroid/content/ContextWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2664
    instance-of v1, v0, Lccsanandroid/app/Activity;

    if-eqz v1, :cond_2

    .line 2665
    move-object v1, v0

    check-cast v1, Lccsanandroid/app/Activity;

    invoke-virtual {v1}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    .line 2666
    .local v1, "window":Lccsanandroid/view/Window;
    if-eqz v1, :cond_1

    invoke-static {v1, p0}, Lccsanandroidx/core/view/WindowCompat;->getInsetsController(Lccsanandroid/view/Window;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    :cond_1
    return-object v2

    .line 2668
    .end local v1    # "window":Lccsanandroid/view/Window;
    :cond_2
    move-object v1, v0

    check-cast v1, Lccsanandroid/content/ContextWrapper;

    invoke-virtual {v1}, Lccsanandroid/content/ContextWrapper;->getBaseContext()Lccsanandroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 2670
    :cond_3
    return-object v2
.end method

.method public static getWindowSystemUiVisibility(Lccsanandroid/view/View;)I
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2422
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2423
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    return v0

    .line 2425
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getX(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2326
    invoke-virtual {p0}, Lccsanandroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public static getY(Lccsanandroid/view/View;)F
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2334
    invoke-virtual {p0}, Lccsanandroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public static getZ(Lccsanandroid/view/View;)F
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3491
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3492
    invoke-virtual {p0}, Lccsanandroid/view/View;->getZ()F

    move-result v0

    return v0

    .line 3494
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasAccessibilityDelegate(Lccsanandroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 908
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Lccsanandroid/view/View;)Lccsanandroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasExplicitFocusable(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3972
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3973
    invoke-virtual {p0}, Lccsanandroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    return v0

    .line 3975
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->hasFocusable()Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3100
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3101
    invoke-virtual {p0}, Lccsanandroid/view/View;->hasNestedScrollingParent()Z

    move-result v0

    return v0

    .line 3103
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3104
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild;

    invoke-interface {v0}, Lccsanandroidx/core/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    return v0

    .line 3106
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNestedScrollingParent(Lccsanandroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "type"
        }
    .end annotation

    .line 3245
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 3246
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/NestedScrollingChild2;->hasNestedScrollingParent(I)Z

    goto :goto_0

    .line 3247
    :cond_0
    if-nez p1, :cond_1

    .line 3248
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->hasNestedScrollingParent(Lccsanandroid/view/View;)Z

    move-result v0

    return v0

    .line 3250
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasOnClickListeners(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3666
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 3667
    invoke-virtual {p0}, Lccsanandroid/view/View;->hasOnClickListeners()Z

    move-result v0

    return v0

    .line 3669
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasOverlappingRendering(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2878
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2879
    invoke-virtual {p0}, Lccsanandroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0

    .line 2881
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static hasTransientState(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 988
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 989
    invoke-virtual {p0}, Lccsanandroid/view/View;->hasTransientState()Z

    move-result v0

    return v0

    .line 991
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isAccessibilityHeading(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 4308
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Lccsanandroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4309
    .local v0, "result":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static isAttachedToWindow(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3654
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3655
    invoke-virtual {p0}, Lccsanandroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 3657
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFocusedByDefault(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3883
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3884
    invoke-virtual {p0}, Lccsanandroid/view/View;->isFocusedByDefault()Z

    move-result v0

    return v0

    .line 3886
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isImportantForAccessibility(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1179
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1180
    invoke-virtual {p0}, Lccsanandroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    return v0

    .line 1182
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isImportantForAutofill(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 895
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 896
    invoke-virtual {p0}, Lccsanandroid/view/View;->isImportantForAutofill()Z

    move-result v0

    return v0

    .line 898
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isInLayout(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3449
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3450
    invoke-virtual {p0}, Lccsanandroid/view/View;->isInLayout()Z

    move-result v0

    return v0

    .line 3452
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isKeyboardNavigationCluster(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3854
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3855
    invoke-virtual {p0}, Lccsanandroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v0

    return v0

    .line 3857
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLaidOut(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3460
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3461
    invoke-virtual {p0}, Lccsanandroid/view/View;->isLaidOut()Z

    move-result v0

    return v0

    .line 3463
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLayoutDirectionResolved(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3477
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 3478
    invoke-virtual {p0}, Lccsanandroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    return v0

    .line 3480
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNestedScrollingEnabled(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3042
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3043
    invoke-virtual {p0}, Lccsanandroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    .line 3045
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3046
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild;

    invoke-interface {v0}, Lccsanandroidx/core/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    .line 3048
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isOpaque(Lccsanandroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1693
    invoke-virtual {p0}, Lccsanandroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public static isPaddingRelative(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2891
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2892
    invoke-virtual {p0}, Lccsanandroid/view/View;->isPaddingRelative()Z

    move-result v0

    return v0

    .line 2894
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenReaderFocusable(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 4172
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Lccsanandroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 4173
    .local v0, "result":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1
.end method

.method public static jumpDrawablesToCurrentState(Lccsanandroid/view/View;)V
    .locals 0
    .param p0, "v"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2508
    invoke-virtual {p0}, Lccsanandroid/view/View;->jumpDrawablesToCurrentState()V

    .line 2509
    return-void
.end method

.method public static keyboardNavigationClusterSearch(Lccsanandroid/view/View;Lccsanandroid/view/View;I)Lccsanandroid/view/View;
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "currentCluster"    # Lccsanandroid/view/View;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "currentCluster",
            "direction"
        }
    .end annotation

    .line 3920
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3921
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/View;->keyboardNavigationClusterSearch(Lccsanandroid/view/View;I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0

    .line 3923
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static notifyViewAccessibilityStateChangedIfNeeded(Lccsanandroid/view/View;I)V
    .locals 5
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "changeType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "changeType"
        }
    .end annotation

    .line 4421
    nop

    .line 4422
    invoke-virtual {p0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/accessibility/AccessibilityManager;

    .line 4423
    .local v0, "accessibilityManager":Lccsanandroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4424
    return-void

    .line 4426
    :cond_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4427
    invoke-virtual {p0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4430
    .local v1, "isVisibleAccessibilityPane":Z
    :goto_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityLiveRegion(Lccsanandroid/view/View;)I

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_5

    if-eqz v1, :cond_2

    goto :goto_2

    .line 4442
    :cond_2
    if-ne p1, v3, :cond_3

    .line 4443
    invoke-static {}, Lccsanandroid/view/accessibility/AccessibilityEvent;->obtain()Lccsanandroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4444
    .local v2, "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v2}, Lccsanandroid/view/View;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 4445
    invoke-virtual {v2, v3}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4446
    invoke-virtual {v2, p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4447
    invoke-virtual {v2, p0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setSource(Lccsanandroid/view/View;)V

    .line 4448
    invoke-virtual {p0, v2}, Lccsanandroid/view/View;->onPopulateAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 4449
    invoke-virtual {v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4450
    invoke-virtual {v0, v2}, Lccsanandroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .end local v2    # "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    goto :goto_1

    .line 4451
    :cond_3
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4453
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p0, p0, p1}, Lccsanandroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Lccsanandroid/view/View;Lccsanandroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4457
    goto :goto_4

    .line 4454
    :catch_0
    move-exception v2

    .line 4455
    .local v2, "e":Ljava/lang/AbstractMethodError;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not fully implement ViewParent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewCompat"

    invoke-static {v4, v3, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 4451
    .end local v2    # "e":Ljava/lang/AbstractMethodError;
    :cond_4
    :goto_1
    goto :goto_4

    .line 4432
    :cond_5
    :goto_2
    invoke-static {}, Lccsanandroid/view/accessibility/AccessibilityEvent;->obtain()Lccsanandroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 4433
    .local v2, "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    if-eqz v1, :cond_6

    .line 4434
    goto :goto_3

    .line 4435
    :cond_6
    const/16 v3, 0x800

    .line 4433
    :goto_3
    invoke-virtual {v2, v3}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 4436
    invoke-virtual {v2, p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4437
    if-eqz v1, :cond_7

    .line 4438
    invoke-virtual {v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Lccsanandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4439
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->setViewImportanceForAccessibilityIfNeeded(Lccsanandroid/view/View;)V

    .line 4441
    :cond_7
    invoke-virtual {p0, v2}, Lccsanandroid/view/View;->sendAccessibilityEventUnchecked(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 4442
    .end local v2    # "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    nop

    .line 4459
    :goto_4
    return-void
.end method

.method public static offsetLeftAndRight(Lccsanandroid/view/View;I)V
    .locals 8
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "offset"
        }
    .end annotation

    .line 3569
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3570
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 3571
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3572
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->getEmptyTempRect()Lccsanandroid/graphics/Rect;

    move-result-object v0

    .line 3573
    .local v0, "parentRect":Lccsanandroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3575
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    .line 3576
    .local v2, "parent":Lccsanandroid/view/ViewParent;
    instance-of v3, v2, Lccsanandroid/view/View;

    if-eqz v3, :cond_1

    .line 3577
    move-object v3, v2

    check-cast v3, Lccsanandroid/view/View;

    .line 3578
    .local v3, "p":Lccsanandroid/view/View;
    invoke-virtual {v3}, Lccsanandroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Lccsanandroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Lccsanandroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Lccsanandroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 3581
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lccsanandroid/view/View;->getTop()I

    move-result v5

    .line 3582
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lccsanandroid/view/View;->getBottom()I

    move-result v7

    .line 3581
    invoke-virtual {v0, v4, v5, v6, v7}, Lccsanandroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 3586
    .end local v3    # "p":Lccsanandroid/view/View;
    :cond_1
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat;->compatOffsetLeftAndRight(Lccsanandroid/view/View;I)V

    .line 3590
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getTop()I

    move-result v4

    .line 3591
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lccsanandroid/view/View;->getBottom()I

    move-result v6

    .line 3590
    invoke-virtual {v0, v3, v4, v5, v6}, Lccsanandroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3592
    move-object v3, v2

    check-cast v3, Lccsanandroid/view/View;

    invoke-virtual {v3, v0}, Lccsanandroid/view/View;->invalidate(Lccsanandroid/graphics/Rect;)V

    .line 3594
    .end local v0    # "parentRect":Lccsanandroid/graphics/Rect;
    .end local v1    # "needInvalidateWorkaround":Z
    .end local v2    # "parent":Lccsanandroid/view/ViewParent;
    :cond_2
    goto :goto_0

    .line 3595
    :cond_3
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat;->compatOffsetLeftAndRight(Lccsanandroid/view/View;I)V

    .line 3597
    :goto_0
    return-void
.end method

.method public static offsetTopAndBottom(Lccsanandroid/view/View;I)V
    .locals 8
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "offset"
        }
    .end annotation

    .line 3521
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3522
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 3523
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 3524
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->getEmptyTempRect()Lccsanandroid/graphics/Rect;

    move-result-object v0

    .line 3525
    .local v0, "parentRect":Lccsanandroid/graphics/Rect;
    const/4 v1, 0x0

    .line 3527
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v2

    .line 3528
    .local v2, "parent":Lccsanandroid/view/ViewParent;
    instance-of v3, v2, Lccsanandroid/view/View;

    if-eqz v3, :cond_1

    .line 3529
    move-object v3, v2

    check-cast v3, Lccsanandroid/view/View;

    .line 3530
    .local v3, "p":Lccsanandroid/view/View;
    invoke-virtual {v3}, Lccsanandroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Lccsanandroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Lccsanandroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Lccsanandroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 3533
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lccsanandroid/view/View;->getTop()I

    move-result v5

    .line 3534
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lccsanandroid/view/View;->getBottom()I

    move-result v7

    .line 3533
    invoke-virtual {v0, v4, v5, v6, v7}, Lccsanandroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 3538
    .end local v3    # "p":Lccsanandroid/view/View;
    :cond_1
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat;->compatOffsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 3542
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getTop()I

    move-result v4

    .line 3543
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lccsanandroid/view/View;->getBottom()I

    move-result v6

    .line 3542
    invoke-virtual {v0, v3, v4, v5, v6}, Lccsanandroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3544
    move-object v3, v2

    check-cast v3, Lccsanandroid/view/View;

    invoke-virtual {v3, v0}, Lccsanandroid/view/View;->invalidate(Lccsanandroid/graphics/Rect;)V

    .line 3546
    .end local v0    # "parentRect":Lccsanandroid/graphics/Rect;
    .end local v1    # "needInvalidateWorkaround":Z
    .end local v2    # "parent":Lccsanandroid/view/ViewParent;
    :cond_2
    goto :goto_0

    .line 3547
    :cond_3
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat;->compatOffsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 3549
    :goto_0
    return-void
.end method

.method public static onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "insets"
        }
    .end annotation

    .line 2537
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2538
    invoke-virtual {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    .line 2539
    .local v0, "unwrapped":Lccsanandroid/view/WindowInsets;
    if-eqz v0, :cond_0

    .line 2540
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->onApplyWindowInsets(Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;

    move-result-object v1

    .line 2541
    .local v1, "result":Lccsanandroid/view/WindowInsets;
    invoke-virtual {v1, v0}, Lccsanandroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2543
    invoke-static {v1, p0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 2547
    .end local v0    # "unwrapped":Lccsanandroid/view/WindowInsets;
    .end local v1    # "result":Lccsanandroid/view/WindowInsets;
    :cond_0
    return-object p1
.end method

.method public static onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 663
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "info"
        }
    .end annotation

    .line 694
    invoke-virtual {p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 695
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->onPopulateAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 631
    return-void
.end method

.method private static paneTitleProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4249
    new-instance v0, Lccsanandroidx/core/view/ViewCompat$3;

    sget v1, Lccsanandroidx/core/R$id;->tag_accessibility_pane_title:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x8

    const/16 v4, 0x1c

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanandroidx/core/view/ViewCompat$3;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "action"    # I
    .param p2, "arguments"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "action",
            "arguments"
        }
    .end annotation

    .line 1201
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1202
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/View;->performAccessibilityAction(ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 1204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static performReceiveContent(Lccsanandroid/view/View;Lccsanandroidx/core/view/ContentInfoCompat;)Lccsanandroidx/core/view/ContentInfoCompat;
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "payload"    # Lccsanandroidx/core/view/ContentInfoCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "payload"
        }
    .end annotation

    .line 2805
    const-string v0, "ViewCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performReceiveContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2806
    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    :cond_0
    sget v0, Lccsanandroidx/core/R$id;->tag_on_receive_content_listener:I

    .line 2810
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/OnReceiveContentListener;

    .line 2811
    .local v0, "listener":Lccsanandroidx/core/view/OnReceiveContentListener;
    if-eqz v0, :cond_2

    .line 2812
    invoke-interface {v0, p0, p1}, Lccsanandroidx/core/view/OnReceiveContentListener;->onReceiveContent(Lccsanandroid/view/View;Lccsanandroidx/core/view/ContentInfoCompat;)Lccsanandroidx/core/view/ContentInfoCompat;

    move-result-object v1

    .line 2813
    .local v1, "remaining":Lccsanandroidx/core/view/ContentInfoCompat;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getFallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/OnReceiveContentViewBehavior;

    move-result-object v2

    invoke-interface {v2, v1}, Lccsanandroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Lccsanandroidx/core/view/ContentInfoCompat;)Lccsanandroidx/core/view/ContentInfoCompat;

    move-result-object v2

    :goto_0
    return-object v2

    .line 2815
    .end local v1    # "remaining":Lccsanandroidx/core/view/ContentInfoCompat;
    :cond_2
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getFallback(Lccsanandroid/view/View;)Lccsanandroidx/core/view/OnReceiveContentViewBehavior;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsanandroidx/core/view/OnReceiveContentViewBehavior;->onReceiveContent(Lccsanandroidx/core/view/ContentInfoCompat;)Lccsanandroidx/core/view/ContentInfoCompat;

    move-result-object v1

    return-object v1
.end method

.method public static postInvalidateOnAnimation(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1017
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1018
    invoke-virtual {p0}, Lccsanandroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 1020
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->postInvalidate()V

    .line 1022
    :goto_0
    return-void
.end method

.method public static postInvalidateOnAnimation(Lccsanandroid/view/View;IIII)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1039
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1040
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/view/View;->postInvalidateOnAnimation(IIII)V

    goto :goto_0

    .line 1042
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/view/View;->postInvalidate(IIII)V

    .line 1044
    :goto_0
    return-void
.end method

.method public static postOnAnimation(Lccsanandroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "action"
        }
    .end annotation

    .line 1057
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1058
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1060
    :cond_0
    invoke-static {}, Lccsanandroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lccsanandroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1062
    :goto_0
    return-void
.end method

.method public static postOnAnimationDelayed(Lccsanandroid/view/View;Ljava/lang/Runnable;J)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "action",
            "delayMillis"
        }
    .end annotation

    .line 1079
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1080
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1082
    :cond_0
    invoke-static {}, Lccsanandroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lccsanandroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1084
    :goto_0
    return-void
.end method

.method public static removeAccessibilityAction(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "actionId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "actionId"
        }
    .end annotation

    .line 1338
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1339
    invoke-static {p1, p0}, Lccsanandroidx/core/view/ViewCompat;->removeActionWithId(ILccsanandroid/view/View;)V

    .line 1340
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Lccsanandroid/view/View;I)V

    .line 1343
    :cond_0
    return-void
.end method

.method private static removeActionWithId(ILccsanandroid/view/View;)V
    .locals 3
    .param p0, "actionId"    # I
    .param p1, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actionId",
            "view"
        }
    .end annotation

    .line 1346
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getActionList(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 1347
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1348
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1349
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1350
    goto :goto_1

    .line 1347
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1353
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public static removeOnUnhandledKeyEventListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "listener"    # Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 4081
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 4082
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat$CompatImplApi28;->removeOnUnhandledKeyEventListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 4083
    return-void

    .line 4085
    :cond_0
    sget v0, Lccsanandroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 4087
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4088
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-eqz v0, :cond_1

    .line 4089
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4090
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 4091
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat$UnhandledKeyEventManager;->unregisterListeningView(Lccsanandroid/view/View;)V

    .line 4094
    :cond_1
    return-void
.end method

.method public static replaceAccessibilityAction(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "replacedAction"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "command"    # Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "replacedAction",
            "label",
            "command"
        }
    .end annotation

    .line 1312
    if-nez p3, :cond_0

    if-nez p2, :cond_0

    .line 1313
    invoke-virtual {p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->removeAccessibilityAction(Lccsanandroid/view/View;I)V

    goto :goto_0

    .line 1315
    :cond_0
    invoke-virtual {p1, p2, p3}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->createReplacementAction(Ljava/lang/CharSequence;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->addAccessibilityAction(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 1317
    :goto_0
    return-void
.end method

.method public static requestApplyInsets(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2433
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 2434
    invoke-virtual {p0}, Lccsanandroid/view/View;->requestApplyInsets()V

    goto :goto_0

    .line 2435
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2436
    invoke-virtual {p0}, Lccsanandroid/view/View;->requestFitSystemWindows()V

    .line 2438
    :cond_1
    :goto_0
    return-void
.end method

.method public static requireViewById(Lccsanandroid/view/View;I)Lccsanandroid/view/View;
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsanandroid/view/View;",
            ">(",
            "Lccsanandroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 1672
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 1673
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->requireViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0

    .line 1676
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 1677
    .local v0, "targetView":Lccsanandroid/view/View;, "TT;"
    if-eqz v0, :cond_1

    .line 1680
    return-object v0

    .line 1678
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolveSizeAndState(III)I
    .locals 1
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "measureSpec",
            "childMeasuredState"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1713
    invoke-static {p0, p1, p2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static restoreDefaultFocus(Lccsanandroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3950
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3951
    invoke-virtual {p0}, Lccsanandroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    .line 3953
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public static saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "styleable"    # [I
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p4, "t"    # Lccsanandroid/content/res/TypedArray;
    .param p5, "defStyleAttr"    # I
    .param p6, "defStyleRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "styleable",
            "attrs",
            "t",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 522
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 523
    invoke-static/range {p0 .. p6}, Lccsanandroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Lccsanandroid/view/View;Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 526
    :cond_0
    return-void
.end method

.method private static screenReaderFocusableProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 4177
    new-instance v0, Lccsanandroidx/core/view/ViewCompat$2;

    sget v1, Lccsanandroidx/core/R$id;->tag_screen_reader_focusable:I

    const-class v2, Ljava/lang/Boolean;

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lccsanandroidx/core/view/ViewCompat$2;-><init>(ILjava/lang/Class;I)V

    return-object v0
.end method

.method public static setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "delegate"    # Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "delegate"
        }
    .end annotation

    .line 724
    if-nez p1, :cond_0

    .line 725
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityDelegateInternal(Lccsanandroid/view/View;)Lccsanandroid/view/View$AccessibilityDelegate;

    move-result-object v0

    instance-of v0, v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;

    if-eqz v0, :cond_0

    .line 726
    new-instance v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    invoke-direct {v0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    move-object p1, v0

    .line 728
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->getBridge()Lccsanandroid/view/View$AccessibilityDelegate;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setAccessibilityDelegate(Lccsanandroid/view/View$AccessibilityDelegate;)V

    .line 729
    return-void
.end method

.method public static setAccessibilityHeading(Lccsanandroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "isHeading"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isHeading"
        }
    .end annotation

    .line 4325
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Lccsanandroid/view/View;Ljava/lang/Object;)V

    .line 4326
    return-void
.end method

.method public static setAccessibilityLiveRegion(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "mode"
        }
    .end annotation

    .line 1825
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1826
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 1828
    :cond_0
    return-void
.end method

.method public static setAccessibilityPaneTitle(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "accessibilityPaneTitle"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "accessibilityPaneTitle"
        }
    .end annotation

    .line 4219
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 4220
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->paneTitleProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Lccsanandroid/view/View;Ljava/lang/Object;)V

    .line 4221
    if-eqz p1, :cond_0

    .line 4222
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-virtual {v0, p0}, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->addAccessibilityPane(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 4224
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sAccessibilityPaneVisibilityManager:Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;

    invoke-virtual {v0, p0}, Lccsanandroidx/core/view/ViewCompat$AccessibilityPaneVisibilityManager;->removeAccessibilityPane(Lccsanandroid/view/View;)V

    .line 4227
    :cond_1
    :goto_0
    return-void
.end method

.method public static setActivated(Lccsanandroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "activated"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "activated"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2860
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setActivated(Z)V

    .line 2861
    return-void
.end method

.method public static setAlpha(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2125
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 2126
    return-void
.end method

.method public static varargs setAutofillHints(Lccsanandroid/view/View;[Ljava/lang/String;)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "autofillHints"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "autofillHints"
        }
    .end annotation

    .line 761
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 762
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    .line 764
    :cond_0
    return-void
.end method

.method public static setBackground(Lccsanandroid/view/View;Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "background"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "background"
        }
    .end annotation

    .line 2904
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2905
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2907
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 2909
    :goto_0
    return-void
.end method

.method public static setBackgroundTintList(Lccsanandroid/view/View;Lccsanandroid/content/res/ColorStateList;)V
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "tintList"
        }
    .end annotation

    .line 2934
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 2935
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 2937
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_5

    .line 2940
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2941
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2942
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2943
    .local v1, "hasTint":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 2944
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2945
    invoke-virtual {p0}, Lccsanandroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2947
    :cond_2
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 2949
    .end local v0    # "background":Lccsanandroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_3
    goto :goto_2

    .line 2950
    :cond_4
    instance-of v0, p0, Lccsanandroidx/core/view/TintableBackgroundView;

    if-eqz v0, :cond_5

    .line 2951
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/TintableBackgroundView;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/TintableBackgroundView;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 2953
    :cond_5
    :goto_2
    return-void
.end method

.method public static setBackgroundTintMode(Lccsanandroid/view/View;Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "mode"
        }
    .end annotation

    .line 2981
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 2982
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 2984
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_5

    .line 2987
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2988
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackgroundTintList()Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2989
    invoke-virtual {p0}, Lccsanandroid/view/View;->getBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2990
    .local v1, "hasTint":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 2991
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2992
    invoke-virtual {p0}, Lccsanandroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2994
    :cond_2
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 2996
    .end local v0    # "background":Lccsanandroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_3
    goto :goto_2

    .line 2997
    :cond_4
    instance-of v0, p0, Lccsanandroidx/core/view/TintableBackgroundView;

    if-eqz v0, :cond_5

    .line 2998
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/TintableBackgroundView;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/TintableBackgroundView;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 3000
    :cond_5
    :goto_2
    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Lccsanandroid/view/ViewGroup;Z)V
    .locals 8
    .param p0, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "enabled"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2453
    const-string v0, "Unable to invoke childrenDrawingOrderEnabled"

    sget-object v1, Lccsanandroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ViewCompat"

    if-nez v1, :cond_0

    .line 2455
    :try_start_0
    const-class v1, Lccsanandroid/view/ViewGroup;

    const-string/jumbo v5, "setChildrenDrawingOrderEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 2456
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lccsanandroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2459
    goto :goto_0

    .line 2457
    :catch_0
    move-exception v1

    .line 2458
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2460
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    sget-object v1, Lccsanandroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2463
    :cond_0
    :try_start_1
    sget-object v1, Lccsanandroidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2468
    :catch_1
    move-exception v1

    .line 2469
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v4, v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2466
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 2467
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 2464
    :catch_3
    move-exception v1

    .line 2465
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v4, v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2470
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    nop

    .line 2471
    :goto_2
    return-void
.end method

.method public static setClipBounds(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "clipBounds"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "clipBounds"
        }
    .end annotation

    .line 3629
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3630
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setClipBounds(Lccsanandroid/graphics/Rect;)V

    .line 3632
    :cond_0
    return-void
.end method

.method public static setElevation(Lccsanandroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "elevation"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "elevation"
        }
    .end annotation

    .line 2341
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2342
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setElevation(F)V

    .line 2344
    :cond_0
    return-void
.end method

.method public static setFitsSystemWindows(Lccsanandroid/view/View;Z)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "fitSystemWindows"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "fitSystemWindows"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2494
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setFitsSystemWindows(Z)V

    .line 2495
    return-void
.end method

.method public static setFocusedByDefault(Lccsanandroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "isFocusedByDefault"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isFocusedByDefault"
        }
    .end annotation

    .line 3902
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3903
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setFocusedByDefault(Z)V

    .line 3905
    :cond_0
    return-void
.end method

.method public static setHasTransientState(Lccsanandroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "hasTransientState"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "hasTransientState"
        }
    .end annotation

    .line 1002
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1003
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setHasTransientState(Z)V

    .line 1005
    :cond_0
    return-void
.end method

.method public static setImportantForAccessibility(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "mode"
        }
    .end annotation

    .line 1128
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1129
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 1130
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 1134
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1135
    const/4 p1, 0x2

    .line 1138
    :cond_1
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setImportantForAccessibility(I)V

    .line 1140
    :cond_2
    :goto_0
    return-void
.end method

.method public static setImportantForAutofill(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "mode"
        }
    .end annotation

    .line 826
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 827
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setImportantForAutofill(I)V

    .line 829
    :cond_0
    return-void
.end method

.method public static setKeyboardNavigationCluster(Lccsanandroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "isCluster"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isCluster"
        }
    .end annotation

    .line 3868
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3869
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setKeyboardNavigationCluster(Z)V

    .line 3871
    :cond_0
    return-void
.end method

.method public static setLabelFor(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "labeledId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "labeledId"
        }
    .end annotation

    .line 1552
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1553
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setLabelFor(I)V

    .line 1555
    :cond_0
    return-void
.end method

.method public static setLayerPaint(Lccsanandroid/view/View;Lccsanandroid/graphics/Paint;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "paint"    # Lccsanandroid/graphics/Paint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "paint"
        }
    .end annotation

    .line 1588
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1589
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setLayerPaint(Lccsanandroid/graphics/Paint;)V

    goto :goto_0

    .line 1593
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lccsanandroid/view/View;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 1595
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    .line 1597
    :goto_0
    return-void
.end method

.method public static setLayerType(Lccsanandroid/view/View;ILccsanandroid/graphics/Paint;)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "layerType",
            "paint"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1502
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/View;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 1503
    return-void
.end method

.method public static setLayoutDirection(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "layoutDirection"
        }
    .end annotation

    .line 1635
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1636
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setLayoutDirection(I)V

    .line 1638
    :cond_0
    return-void
.end method

.method public static setNestedScrollingEnabled(Lccsanandroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "enabled"
        }
    .end annotation

    .line 3019
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3020
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setNestedScrollingEnabled(Z)V

    goto :goto_0

    .line 3022
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3023
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 3026
    :cond_1
    :goto_0
    return-void
.end method

.method public static setNextClusterForwardId(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "nextClusterForwardId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "nextClusterForwardId"
        }
    .end annotation

    .line 3842
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3843
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setNextClusterForwardId(I)V

    .line 3845
    :cond_0
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "listener"    # Lccsanandroidx/core/view/OnApplyWindowInsetsListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 2517
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2518
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 2520
    :cond_0
    return-void
.end method

.method public static setOnReceiveContentListener(Lccsanandroid/view/View;[Ljava/lang/String;Lccsanandroidx/core/view/OnReceiveContentListener;)V
    .locals 5
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "mimeTypes"    # [Ljava/lang/String;
    .param p2, "listener"    # Lccsanandroidx/core/view/OnReceiveContentListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "mimeTypes",
            "listener"
        }
    .end annotation

    .line 2737
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move-object p1, v0

    .line 2738
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2739
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v2, "When the listener is set, MIME types must also be set"

    invoke-static {v1, v2}, Lccsanandroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2742
    :cond_3
    if-eqz p1, :cond_6

    .line 2743
    const/4 v1, 0x0

    .line 2744
    .local v1, "hasLeadingWildcard":Z
    array-length v2, p1

    :goto_3
    if-ge v0, v2, :cond_5

    aget-object v3, p1, v0

    .line 2745
    .local v3, "mimeType":Ljava/lang/String;
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2746
    const/4 v1, 0x1

    .line 2747
    goto :goto_4

    .line 2744
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2750
    :cond_5
    :goto_4
    xor-int/lit8 v0, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A MIME type set here must not start with *: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2750
    invoke-static {v0, v2}, Lccsanandroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2753
    .end local v1    # "hasLeadingWildcard":Z
    :cond_6
    sget v0, Lccsanandroidx/core/R$id;->tag_on_receive_content_mime_types:I

    invoke-virtual {p0, v0, p1}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2754
    sget v0, Lccsanandroidx/core/R$id;->tag_on_receive_content_listener:I

    invoke-virtual {p0, v0, p2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2755
    return-void
.end method

.method public static setOverScrollMode(Lccsanandroid/view/View;I)V
    .locals 0
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "overScrollMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "overScrollMode"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setOverScrollMode(I)V

    .line 591
    return-void
.end method

.method public static setPaddingRelative(Lccsanandroid/view/View;IIII)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "start",
            "top",
            "end",
            "bottom"
        }
    .end annotation

    .line 1877
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1878
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 1880
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/view/View;->setPadding(IIII)V

    .line 1882
    :goto_0
    return-void
.end method

.method public static setPivotX(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2249
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setPivotX(F)V

    .line 2250
    return-void
.end method

.method public static setPivotY(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2278
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setPivotY(F)V

    .line 2279
    return-void
.end method

.method public static setPointerIcon(Lccsanandroid/view/View;Lccsanandroidx/core/view/PointerIconCompat;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "pointerIcon"    # Lccsanandroidx/core/view/PointerIconCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "pointerIcon"
        }
    .end annotation

    .line 3747
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 3748
    if-eqz p1, :cond_0

    .line 3749
    invoke-virtual {p1}, Lccsanandroidx/core/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lccsanandroid/view/PointerIcon;

    .line 3748
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setPointerIcon(Lccsanandroid/view/PointerIcon;)V

    .line 3751
    :cond_1
    return-void
.end method

.method public static setRotation(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2168
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setRotation(F)V

    .line 2169
    return-void
.end method

.method public static setRotationX(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2182
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setRotationX(F)V

    .line 2183
    return-void
.end method

.method public static setRotationY(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2196
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setRotationY(F)V

    .line 2197
    return-void
.end method

.method public static setSaveFromParentEnabled(Lccsanandroid/view/View;Z)V
    .locals 0
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "enabled"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2844
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 2845
    return-void
.end method

.method public static setScaleX(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2209
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setScaleX(F)V

    .line 2210
    return-void
.end method

.method public static setScaleY(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2222
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setScaleY(F)V

    .line 2223
    return-void
.end method

.method public static setScreenReaderFocusable(Lccsanandroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "screenReaderFocusable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "screenReaderFocusable"
        }
    .end annotation

    .line 4153
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->screenReaderFocusableProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Lccsanandroid/view/View;Ljava/lang/Object;)V

    .line 4154
    return-void
.end method

.method public static setScrollIndicators(Lccsanandroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "indicators"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "indicators"
        }
    .end annotation

    .line 3684
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3685
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setScrollIndicators(I)V

    .line 3687
    :cond_0
    return-void
.end method

.method public static setScrollIndicators(Lccsanandroid/view/View;II)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "indicators"    # I
    .param p2, "mask"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "indicators",
            "mask"
        }
    .end annotation

    .line 3718
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 3719
    invoke-virtual {p0, p1, p2}, Lccsanandroid/view/View;->setScrollIndicators(II)V

    .line 3721
    :cond_0
    return-void
.end method

.method public static setStateDescription(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "stateDescription"
        }
    .end annotation

    .line 1381
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1382
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->stateDescriptionProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;->set(Lccsanandroid/view/View;Ljava/lang/Object;)V

    .line 1384
    :cond_0
    return-void
.end method

.method public static setSystemGestureExclusionRects(Lccsanandroid/view/View;Ljava/util/List;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "rects"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 2591
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/graphics/Rect;>;"
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2592
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 2594
    :cond_0
    return-void
.end method

.method public static setTooltipText(Lccsanandroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "tooltipText"
        }
    .end annotation

    .line 3786
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 3787
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 3789
    :cond_0
    return-void
.end method

.method public static setTransitionName(Lccsanandroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "transitionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "transitionName"
        }
    .end annotation

    .line 2387
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2388
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_0

    .line 2390
    :cond_0
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_1

    .line 2391
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lccsanandroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    .line 2393
    :cond_1
    sget-object v0, Lccsanandroidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    :goto_0
    return-void
.end method

.method public static setTranslationX(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2091
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 2092
    return-void
.end method

.method public static setTranslationY(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2108
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 2109
    return-void
.end method

.method public static setTranslationZ(Lccsanandroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "translationZ"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "translationZ"
        }
    .end annotation

    .line 2362
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2363
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setTranslationZ(F)V

    .line 2365
    :cond_0
    return-void
.end method

.method private static setViewImportanceForAccessibilityIfNeeded(Lccsanandroid/view/View;)V
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 4462
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->getImportantForAccessibility(Lccsanandroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4464
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 4468
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 4469
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lccsanandroid/view/View;

    if-eqz v1, :cond_2

    .line 4470
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->getImportantForAccessibility(Lccsanandroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 4472
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 4474
    goto :goto_1

    .line 4476
    :cond_1
    invoke-interface {v0}, Lccsanandroid/view/ViewParent;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 4478
    :cond_2
    :goto_1
    return-void
.end method

.method public static setWindowInsetsAnimationCallback(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "callback"    # Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "callback"
        }
    .end annotation

    .line 2697
    invoke-static {p0, p1}, Lccsanandroidx/core/view/WindowInsetsAnimationCompat;->setCallback(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 2698
    return-void
.end method

.method public static setX(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2140
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setX(F)V

    .line 2141
    return-void
.end method

.method public static setY(Lccsanandroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2155
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setY(F)V

    .line 2156
    return-void
.end method

.method public static setZ(Lccsanandroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "z"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "z"
        }
    .end annotation

    .line 3510
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3511
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->setZ(F)V

    .line 3513
    :cond_0
    return-void
.end method

.method public static startDragAndDrop(Lccsanandroid/view/View;Lccsanandroid/content/ClipData;Lccsanandroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "data"    # Lccsanandroid/content/ClipData;
    .param p2, "shadowBuilder"    # Lccsanandroid/view/View$DragShadowBuilder;
    .param p3, "localState"    # Ljava/lang/Object;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "data",
            "shadowBuilder",
            "localState",
            "flags"
        }
    .end annotation

    .line 3796
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3797
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/view/View;->startDragAndDrop(Lccsanandroid/content/ClipData;Lccsanandroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 3799
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroid/view/View;->startDrag(Lccsanandroid/content/ClipData;Lccsanandroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static startNestedScroll(Lccsanandroid/view/View;I)Z
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "axes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "axes"
        }
    .end annotation

    .line 3064
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3065
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->startNestedScroll(I)Z

    move-result v0

    return v0

    .line 3067
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3068
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    return v0

    .line 3070
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static startNestedScroll(Lccsanandroid/view/View;II)Z
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "axes"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "axes",
            "type"
        }
    .end annotation

    .line 3211
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 3212
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/core/view/NestedScrollingChild2;->startNestedScroll(II)Z

    move-result v0

    return v0

    .line 3213
    :cond_0
    if-nez p2, :cond_1

    .line 3214
    invoke-static {p0, p1}, Lccsanandroidx/core/view/ViewCompat;->startNestedScroll(Lccsanandroid/view/View;I)Z

    move-result v0

    return v0

    .line 3216
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static stateDescriptionProperty()Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/core/view/ViewCompat$AccessibilityViewProperty<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 4272
    new-instance v0, Lccsanandroidx/core/view/ViewCompat$4;

    sget v1, Lccsanandroidx/core/R$id;->tag_state_description:I

    const-class v2, Ljava/lang/CharSequence;

    const/16 v3, 0x40

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Lccsanandroidx/core/view/ViewCompat$4;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method public static stopNestedScroll(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3083
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3084
    invoke-virtual {p0}, Lccsanandroid/view/View;->stopNestedScroll()V

    goto :goto_0

    .line 3085
    :cond_0
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1

    .line 3086
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild;

    invoke-interface {v0}, Lccsanandroidx/core/view/NestedScrollingChild;->stopNestedScroll()V

    .line 3088
    :cond_1
    :goto_0
    return-void
.end method

.method public static stopNestedScroll(Lccsanandroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "type"
        }
    .end annotation

    .line 3228
    instance-of v0, p0, Lccsanandroidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_0

    .line 3229
    move-object v0, p0

    check-cast v0, Lccsanandroidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Lccsanandroidx/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    goto :goto_0

    .line 3230
    :cond_0
    if-nez p1, :cond_1

    .line 3231
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->stopNestedScroll(Lccsanandroid/view/View;)V

    .line 3233
    :cond_1
    :goto_0
    return-void
.end method

.method private static tickleInvalidationFlag(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 3612
    invoke-virtual {p0}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v0

    .line 3613
    .local v0, "y":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 3614
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 3615
    return-void
.end method

.method public static updateDragShadow(Lccsanandroid/view/View;Lccsanandroid/view/View$DragShadowBuilder;)V
    .locals 2
    .param p0, "v"    # Lccsanandroid/view/View;
    .param p1, "shadowBuilder"    # Lccsanandroid/view/View$DragShadowBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "shadowBuilder"
        }
    .end annotation

    .line 3816
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3817
    invoke-virtual {p0, p1}, Lccsanandroid/view/View;->updateDragShadow(Lccsanandroid/view/View$DragShadowBuilder;)V

    .line 3819
    :cond_0
    return-void
.end method
