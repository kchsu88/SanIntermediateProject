.class public Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
.super Lccsanandroid/widget/LinearLayout;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;,
        Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;,
        Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;,
        Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private checkedId:I

.field private final checkedStateTracker:Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

.field private childOrder:[Ljava/lang/Integer;

.field private final childOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lccsancom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private final onButtonCheckedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final originalCornerData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;",
            ">;"
        }
    .end annotation
.end field

.field private final pressedStateTracker:Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

.field private selectionRequired:Z

.field private singleSelection:Z

.field private skipCheckedStateTracker:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    const-class v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    .line 140
    sget v0, Lccsancom/google/android/material/R$style;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    sput v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 180
    sget v0, Lccsancom/google/android/material/R$attr;->materialButtonToggleGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 185
    sget v4, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lccsancom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    .line 145
    new-instance v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;-><init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;Lccsancom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    .line 146
    new-instance v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;-><init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;Lccsancom/google/android/material/button/MaterialButtonToggleGroup$1;)V

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    .line 147
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    .line 149
    new-instance v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$1;-><init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)V

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->childOrderComparator:Ljava/util/Comparator;

    .line 169
    const/4 v6, 0x0

    iput-boolean v6, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 187
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 188
    sget-object v2, Lccsancom/google/android/material/R$styleable;->MaterialButtonToggleGroup:[I

    new-array v5, v6, [I

    .line 189
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lccsancom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;[III[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 192
    .local v0, "attributes":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->MaterialButtonToggleGroup_singleSelection:I

    .line 193
    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 192
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 194
    sget v1, Lccsancom/google/android/material/R$styleable;->MaterialButtonToggleGroup_checkedButton:I

    .line 195
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    .line 196
    sget v1, Lccsancom/google/android/material/R$styleable;->MaterialButtonToggleGroup_selectionRequired:I

    .line 197
    invoke-virtual {v0, v1, v6}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    .line 198
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 199
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-static {p0, v1}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 202
    return-void
.end method

.method static synthetic access$200(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;Lccsanandroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
    .param p1, "x1"    # Lccsanandroid/view/View;

    .line 122
    invoke-direct {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getIndexWithinVisibleButtons(Lccsanandroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    .line 122
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    return v0
.end method

.method static synthetic access$400(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    .line 122
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return v0
.end method

.method static synthetic access$502(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;I)I
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
    .param p1, "x1"    # I

    .line 122
    iput p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    return p1
.end method

.method static synthetic access$600(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;IZ)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 122
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 122
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    return-void
.end method

.method private adjustChildMarginsAndUpdateLayout()V
    .locals 8

    .line 529
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    move-result v0

    .line 530
    .local v0, "firstVisibleChildIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 531
    return-void

    .line 534
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 536
    invoke-direct {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 537
    .local v2, "currentButton":Lccsancom/google/android/material/button/MaterialButton;
    add-int/lit8 v3, v1, -0x1

    invoke-direct {p0, v3}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v3

    .line 540
    .local v3, "previousButton":Lccsancom/google/android/material/button/MaterialButton;
    nop

    .line 541
    invoke-virtual {v2}, Lccsancom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v4

    invoke-virtual {v3}, Lccsancom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 543
    .local v4, "smallestStrokeWidth":I
    invoke-direct {p0, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->buildLayoutParams(Lccsanandroid/view/View;)Lccsanandroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 544
    .local v5, "params":Lccsanandroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 545
    invoke-static {v5, v7}, Lccsanandroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Lccsanandroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 546
    neg-int v6, v4

    invoke-static {v5, v6}, Lccsanandroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Lccsanandroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 547
    iput v7, v5, Lccsanandroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 549
    :cond_1
    iput v7, v5, Lccsanandroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 550
    neg-int v6, v4

    iput v6, v5, Lccsanandroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 551
    invoke-static {v5, v7}, Lccsanandroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Lccsanandroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 554
    :goto_1
    invoke-virtual {v2, v5}, Lccsancom/google/android/material/button/MaterialButton;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 534
    .end local v2    # "currentButton":Lccsancom/google/android/material/button/MaterialButton;
    .end local v3    # "previousButton":Lccsancom/google/android/material/button/MaterialButton;
    .end local v4    # "smallestStrokeWidth":I
    .end local v5    # "params":Lccsanandroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->resetChildMargins(I)V

    .line 558
    return-void
.end method

.method private buildLayoutParams(Lccsanandroid/view/View;)Lccsanandroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 765
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 766
    .local v0, "layoutParams":Lccsanandroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 767
    move-object v1, v0

    check-cast v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    return-object v1

    .line 770
    :cond_0
    new-instance v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    iget v3, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v1, v2, v3}, Lccsanandroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method private checkForced(I)V
    .locals 1
    .param p1, "checkedId"    # I

    .line 732
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 733
    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    .line 734
    invoke-direct {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    .line 735
    return-void
.end method

.method private dispatchOnButtonChecked(IZ)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "checked"    # Z

    .line 726
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    .line 727
    .local v1, "listener":Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    invoke-interface {v1, p0, p1, p2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;->onButtonChecked(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    .line 728
    .end local v1    # "listener":Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;
    goto :goto_0

    .line 729
    :cond_0
    return-void
.end method

.method private getChildButton(I)Lccsancom/google/android/material/button/MaterialButton;
    .locals 1
    .param p1, "index"    # I

    .line 561
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/button/MaterialButton;

    return-object v0
.end method

.method private getFirstVisibleChildIndex()I
    .locals 3

    .line 604
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    .line 605
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 606
    invoke-direct {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    return v1

    .line 605
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getIndexWithinVisibleButtons(Lccsanandroid/view/View;)I
    .locals 4
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 641
    instance-of v0, p1, Lccsancom/google/android/material/button/MaterialButton;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 642
    return v1

    .line 644
    :cond_0
    const/4 v0, 0x0

    .line 645
    .local v0, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 646
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 647
    return v0

    .line 649
    :cond_1
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lccsancom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 650
    add-int/lit8 v0, v0, 0x1

    .line 645
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 653
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method private getLastVisibleChildIndex()I
    .locals 3

    .line 615
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    .line 616
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 617
    invoke-direct {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    return v1

    .line 616
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 622
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getNewCornerData(III)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    .locals 3
    .param p1, "index"    # I
    .param p2, "firstVisibleChildIndex"    # I
    .param p3, "lastVisibleChildIndex"    # I

    .line 659
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 662
    .local v0, "cornerData":Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    if-ne p2, p3, :cond_0

    .line 663
    return-object v0

    .line 666
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 667
    .local v1, "isHorizontal":Z
    :goto_0
    if-ne p1, p2, :cond_3

    .line 668
    if-eqz v1, :cond_2

    invoke-static {v0, p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->start(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Lccsanandroid/view/View;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->top(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v2

    :goto_1
    return-object v2

    .line 671
    :cond_3
    if-ne p1, p3, :cond_5

    .line 672
    if-eqz v1, :cond_4

    invoke-static {v0, p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->end(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;Lccsanandroid/view/View;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottom(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v2

    :goto_2
    return-object v2

    .line 675
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method private getVisibleButtonCount()I
    .locals 3

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 633
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lccsancom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    add-int/lit8 v0, v0, 0x1

    .line 632
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private isChildVisible(I)Z
    .locals 3
    .param p1, "i"    # I

    .line 626
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 627
    .local v0, "child":Lccsanandroid/view/View;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private resetChildMargins(I)V
    .locals 5
    .param p1, "childIndex"    # I

    .line 565
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v0

    .line 570
    .local v0, "currentButton":Lccsancom/google/android/material/button/MaterialButton;
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout$LayoutParams;

    .line 571
    .local v1, "params":Lccsanandroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 572
    iput v4, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 573
    iput v4, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 574
    return-void

    .line 577
    :cond_1
    invoke-static {v1, v4}, Lccsanandroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Lccsanandroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 578
    invoke-static {v1, v4}, Lccsanandroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Lccsanandroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 579
    iput v4, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 580
    iput v4, v1, Lccsanandroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 581
    return-void

    .line 566
    .end local v0    # "currentButton":Lccsancom/google/android/material/button/MaterialButton;
    .end local v1    # "params":Lccsanandroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method private setCheckedId(I)V
    .locals 1
    .param p1, "checkedId"    # I

    .line 512
    iput p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    .line 514
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    .line 515
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .line 503
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 504
    .local v0, "checkedView":Lccsanandroid/view/View;
    instance-of v1, v0, Lccsancom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_0

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 506
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v1, p2}, Lccsancom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 507
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 509
    :cond_0
    return-void
.end method

.method private setGeneratedIdIfNeeded(Lccsancom/google/android/material/button/MaterialButton;)V
    .locals 2
    .param p1, "materialButton"    # Lccsancom/google/android/material/button/MaterialButton;

    .line 739
    invoke-virtual {p1}, Lccsancom/google/android/material/button/MaterialButton;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 740
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/button/MaterialButton;->setId(I)V

    .line 742
    :cond_0
    return-void
.end method

.method private setupButtonChild(Lccsancom/google/android/material/button/MaterialButton;)V
    .locals 2
    .param p1, "buttonChild"    # Lccsancom/google/android/material/button/MaterialButton;

    .line 752
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    .line 753
    sget-object v1, Lccsanandroid/text/TextUtils$TruncateAt;->END:Lccsanandroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/button/MaterialButton;->setEllipsize(Lccsanandroid/text/TextUtils$TruncateAt;)V

    .line 754
    invoke-virtual {p1, v0}, Lccsancom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 756
    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/button/MaterialButton;->addOnCheckedChangeListener(Lccsancom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    .line 757
    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->pressedStateTracker:Lccsancom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lccsancom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 760
    invoke-virtual {p1, v0}, Lccsancom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    .line 761
    return-void
.end method

.method private static updateBuilderWithCornerData(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)V
    .locals 2
    .param p0, "shapeAppearanceModelBuilder"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .param p1, "cornerData"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 680
    if-nez p1, :cond_0

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 682
    return-void

    .line 685
    :cond_0
    iget-object v0, p1, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topLeft:Lccsancom/google/android/material/shape/CornerSize;

    .line 686
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    iget-object v1, p1, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomLeft:Lccsancom/google/android/material/shape/CornerSize;

    .line 687
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    iget-object v1, p1, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->topRight:Lccsancom/google/android/material/shape/CornerSize;

    .line 688
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    iget-object v1, p1, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;->bottomRight:Lccsancom/google/android/material/shape/CornerSize;

    .line 689
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lccsancom/google/android/material/shape/CornerSize;)Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 690
    return-void
.end method

.method private updateCheckedStates(IZ)Z
    .locals 5
    .param p1, "childId"    # I
    .param p2, "childIsChecked"    # Z

    .line 706
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getCheckedButtonIds()Ljava/util/List;

    move-result-object v0

    .line 707
    .local v0, "checkedButtonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-boolean v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    invoke-direct {p0, p1, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 710
    iput p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    .line 711
    return v3

    .line 715
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v1, :cond_1

    .line 716
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 717
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 718
    .local v4, "buttonId":I
    invoke-direct {p0, v4, v3}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 719
    invoke-direct {p0, v4, v3}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    .line 720
    .end local v4    # "buttonId":I
    goto :goto_0

    .line 722
    :cond_1
    return v2
.end method

.method private updateChildOrder()V
    .locals 5

    .line 788
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->childOrderComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 789
    .local v0, "viewToIndexMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Lccsancom/google/android/material/button/MaterialButton;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v1

    .line 790
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 791
    invoke-direct {p0, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    .end local v2    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Integer;

    iput-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    .line 795
    return-void
.end method


# virtual methods
.method public addOnButtonCheckedListener(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    .line 429
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method public addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 8
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 226
    instance-of v0, p1, Lccsancom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    .line 227
    sget-object v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Child views must be of type MaterialButton."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void

    .line 231
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 232
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/button/MaterialButton;

    .line 233
    .local v0, "buttonChild":Lccsancom/google/android/material/button/MaterialButton;
    invoke-direct {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setGeneratedIdIfNeeded(Lccsancom/google/android/material/button/MaterialButton;)V

    .line 235
    invoke-direct {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setupButtonChild(Lccsancom/google/android/material/button/MaterialButton;)V

    .line 238
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    .line 240
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    .line 244
    :cond_1
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 245
    .local v1, "shapeAppearanceModel":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    iget-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    new-instance v3, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    .line 247
    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v4

    .line 248
    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v5

    .line 249
    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v6

    .line 250
    invoke-virtual {v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;-><init>(Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;Lccsancom/google/android/material/shape/CornerSize;)V

    .line 245
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v2, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$2;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup$2;-><init>(Lccsancom/google/android/material/button/MaterialButtonToggleGroup;)V

    invoke-static {v0, v2}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 269
    return-void
.end method

.method public check(I)V
    .locals 1
    .param p1, "id"    # I

    .line 330
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    if-ne p1, v0, :cond_0

    .line 331
    return-void

    .line 334
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(I)V

    .line 335
    return-void
.end method

.method public clearChecked()V
    .locals 4

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 365
    invoke-direct {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 366
    .local v1, "child":Lccsancom/google/android/material/button/MaterialButton;
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 368
    invoke-virtual {v1}, Lccsancom/google/android/material/button/MaterialButton;->getId()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    .line 364
    .end local v1    # "child":Lccsancom/google/android/material/button/MaterialButton;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_0
    iput-boolean v2, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 372
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedId(I)V

    .line 373
    return-void
.end method

.method public clearOnButtonCheckedListeners()V
    .locals 1

    .line 444
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 445
    return-void
.end method

.method protected dispatchDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 216
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->updateChildOrder()V

    .line 217
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->dispatchDraw(Lccsanandroid/graphics/Canvas;)V

    .line 218
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 300
    const-class v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedButtonId()I
    .locals 1

    .line 391
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "checkedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 410
    invoke-direct {p0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 411
    .local v2, "child":Lccsancom/google/android/material/button/MaterialButton;
    invoke-virtual {v2}, Lccsancom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    invoke-virtual {v2}, Lccsancom/google/android/material/button/MaterialButton;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v2    # "child":Lccsancom/google/android/material/button/MaterialButton;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 779
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->childOrder:[Ljava/lang/Integer;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 780
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Child order wasn\'t updated"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return p2
.end method

.method public isSelectionRequired()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .line 454
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 206
    invoke-super {p0}, Lccsanandroid/widget/LinearLayout;->onFinishInflate()V

    .line 209
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 210
    invoke-direct {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkForced(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 305
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 306
    invoke-static {p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 307
    .local v0, "infoCompat":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    nop

    .line 310
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getVisibleButtonCount()I

    move-result v1

    .line 312
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->isSingleSelection()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 308
    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v1

    .line 307
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 291
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    .line 292
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    .line 294
    invoke-super {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;->onMeasure(II)V

    .line 295
    return-void
.end method

.method public onViewRemoved(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 273
    invoke-super {p0, p1}, Lccsanandroid/widget/LinearLayout;->onViewRemoved(Lccsanandroid/view/View;)V

    .line 275
    instance-of v0, p1, Lccsancom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    .line 276
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedStateTracker:Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CheckedStateTracker;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButton;->removeOnCheckedChangeListener(Lccsancom/google/android/material/button/MaterialButton$OnCheckedChangeListener;)V

    .line 277
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lccsancom/google/android/material/button/MaterialButton$OnPressedChangeListener;)V

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v0

    .line 281
    .local v0, "indexOfChild":I
    if-ltz v0, :cond_1

    .line 282
    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->originalCornerData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->updateChildShapes()V

    .line 286
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->adjustChildMarginsAndUpdateLayout()V

    .line 287
    return-void
.end method

.method public removeOnButtonCheckedListener(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;

    .line 439
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->onButtonCheckedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "selectionRequired"    # Z

    .line 478
    iput-boolean p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->selectionRequired:Z

    .line 479
    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1, "id"    # I

    .line 499
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setSingleSelection(Z)V

    .line 500
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1
    .param p1, "singleSelection"    # Z

    .line 466
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 467
    iput-boolean p1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->singleSelection:Z

    .line 468
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->clearChecked()V

    .line 470
    :cond_0
    return-void
.end method

.method public uncheck(I)V
    .locals 2
    .param p1, "id"    # I

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setCheckedStateForView(IZ)V

    .line 348
    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->updateCheckedStates(IZ)Z

    .line 349
    const/4 v1, -0x1

    iput v1, p0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->checkedId:I

    .line 350
    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->dispatchOnButtonChecked(IZ)V

    .line 351
    return-void
.end method

.method updateChildShapes()V
    .locals 8

    .line 586
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildCount()I

    move-result v0

    .line 587
    .local v0, "childCount":I
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getFirstVisibleChildIndex()I

    move-result v1

    .line 588
    .local v1, "firstVisibleChildIndex":I
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getLastVisibleChildIndex()I

    move-result v2

    .line 589
    .local v2, "lastVisibleChildIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 590
    invoke-direct {p0, v3}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getChildButton(I)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v4

    .line 591
    .local v4, "button":Lccsancom/google/android/material/button/MaterialButton;
    invoke-virtual {v4}, Lccsancom/google/android/material/button/MaterialButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 592
    goto :goto_1

    .line 595
    :cond_0
    invoke-virtual {v4}, Lccsancom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v5

    .line 596
    .local v5, "builder":Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    invoke-direct {p0, v3, v1, v2}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->getNewCornerData(III)Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;

    move-result-object v6

    .line 597
    .local v6, "newCornerData":Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    invoke-static {v5, v6}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->updateBuilderWithCornerData(Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;)V

    .line 599
    invoke-virtual {v5}, Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v7

    invoke-virtual {v4, v7}, Lccsancom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 589
    .end local v4    # "button":Lccsancom/google/android/material/button/MaterialButton;
    .end local v5    # "builder":Lccsancom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .end local v6    # "newCornerData":Lccsancom/google/android/material/button/MaterialButtonToggleGroup$CornerData;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    .end local v3    # "i":I
    :cond_1
    return-void
.end method
