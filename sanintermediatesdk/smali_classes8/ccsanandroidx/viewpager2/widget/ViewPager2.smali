.class public final Lccsanandroidx/viewpager2/widget/ViewPager2;
.super Lccsanandroid/view/ViewGroup;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$OffscreenPageLimit;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$ScrollState;,
        Lccsanandroidx/viewpager2/widget/ViewPager2$Orientation;
    }
.end annotation


# static fields
.field public static final OFFSCREEN_PAGE_LIMIT_DEFAULT:I = -0x1

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static sFeatureEnhancedA11yEnabled:Z


# instance fields
.field mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

.field mCurrentItem:I

.field private mCurrentItemDataSetChangeObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field mCurrentItemDirty:Z

.field private mExternalPageChangeCallbacks:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mFakeDragger:Lccsanandroidx/viewpager2/widget/FakeDrag;

.field private mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

.field private mOffscreenPageLimit:I

.field private mPageChangeEventDispatcher:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

.field private mPageTransformerAdapter:Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;

.field private mPagerSnapHelper:Lccsanandroidx/recyclerview/widget/PagerSnapHelper;

.field private mPendingAdapterState:Lccsanandroid/os/Parcelable;

.field private mPendingCurrentItem:I

.field mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

.field private mSavedItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mSavedItemAnimatorPresent:Z

.field mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

.field private final mTmpChildRect:Lccsanandroid/graphics/Rect;

.field private final mTmpContainerRect:Lccsanandroid/graphics/Rect;

.field private mUserInputEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->sFeatureEnhancedA11yEnabled:Z

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 157
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;)V

    .line 124
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    .line 125
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    .line 127
    new-instance v0, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 132
    new-instance v1, Lccsanandroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$1;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 151
    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 153
    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 158
    invoke-direct {p0, p1, v2}, Lccsanandroidx/viewpager2/widget/ViewPager2;->initialize(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 162
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    .line 125
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    .line 127
    new-instance v0, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 132
    new-instance v1, Lccsanandroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$1;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 151
    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 153
    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 163
    invoke-direct {p0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2;->initialize(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 124
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    .line 125
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    .line 127
    new-instance v0, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 132
    new-instance v1, Lccsanandroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$1;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 151
    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 153
    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 168
    invoke-direct {p0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2;->initialize(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 124
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    .line 125
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    .line 127
    new-instance v0, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 132
    new-instance v1, Lccsanandroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$1;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 142
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 151
    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 153
    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 175
    invoke-direct {p0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2;->initialize(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method private enforceChildFillListener()Lccsanandroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
    .locals 1

    .line 263
    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$4;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$4;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    return-object v0
.end method

.method private initialize(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 179
    sget-boolean v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->sFeatureEnhancedA11yEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$BasicAccessibilityProvider;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    :goto_0
    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    .line 183
    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 184
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setId(I)V

    .line 185
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 187
    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    .line 188
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 189
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 190
    invoke-direct {p0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2;->setOrientation(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 192
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->enforceChildFillListener()Lccsanandroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Lccsanandroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 198
    new-instance v0, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    .line 200
    new-instance v1, Lccsanandroidx/viewpager2/widget/FakeDrag;

    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v0, v2}, Lccsanandroidx/viewpager2/widget/FakeDrag;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Lccsanandroidx/viewpager2/widget/FakeDrag;

    .line 201
    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lccsanandroidx/recyclerview/widget/PagerSnapHelper;

    .line 202
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 205
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lccsanandroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 207
    new-instance v0, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    .line 208
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v1, v0}, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;->setOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 212
    new-instance v0, Lccsanandroidx/viewpager2/widget/ViewPager2$2;

    invoke-direct {v0, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$2;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    .line 230
    .local v0, "currentItemUpdater":Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    new-instance v1, Lccsanandroidx/viewpager2/widget/ViewPager2$3;

    invoke-direct {v1, p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$3;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V

    .line 242
    .local v1, "focusClearer":Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v2, v0}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 243
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v2, v1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 246
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v4, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3, v4}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onInitialize(Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 247
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v2, v3}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 251
    new-instance v2, Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;

    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v3}, Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;-><init>(Lccsanandroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;

    .line 252
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v3, v2}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 254
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lccsanandroidx/viewpager2/widget/ViewPager2;->attachViewToParent(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method

.method private registerCurrentItemDataSetTracker(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 469
    .local p1, "adapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 472
    :cond_0
    return-void
.end method

.method private restorePendingState()V
    .locals 5

    .line 340
    iget v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 342
    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 345
    .local v0, "adapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-nez v0, :cond_1

    .line 346
    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Lccsanandroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 349
    instance-of v3, v0, Lccsanandroidx/viewpager2/adapter/StatefulAdapter;

    if-eqz v3, :cond_2

    .line 350
    move-object v3, v0

    check-cast v3, Lccsanandroidx/viewpager2/adapter/StatefulAdapter;

    invoke-interface {v3, v2}, Lccsanandroidx/viewpager2/adapter/StatefulAdapter;->restoreState(Lccsanandroid/os/Parcelable;)V

    .line 352
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Lccsanandroid/os/Parcelable;

    .line 355
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 356
    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 357
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 358
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v1}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onRestorePendingState()V

    .line 359
    return-void
.end method

.method private setOrientation(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 292
    sget-object v0, Lccsanandroidx/viewpager2/R$styleable;->ViewPager2:[I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 294
    sget-object v3, Lccsanandroidx/viewpager2/R$styleable;->ViewPager2:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lccsanandroidx/viewpager2/widget/ViewPager2;->saveAttributeDataForStyleable(Lccsanandroid/content/Context;[ILccsanandroid/util/AttributeSet;Lccsanandroid/content/res/TypedArray;II)V

    .line 297
    :cond_0
    :try_start_0
    sget v1, Lccsanandroidx/viewpager2/R$styleable;->ViewPager2_android_orientation:I

    const/4 v2, 0x0

    .line 298
    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 297
    invoke-virtual {p0, v1}, Lccsanandroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 301
    throw v1
.end method

.method private unregisterCurrentItemDataSetTracker(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    .line 475
    .local p1, "adapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDataSetChangeObserver:Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lccsanandroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 478
    :cond_0
    return-void
.end method


# virtual methods
.method public addItemDecoration(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 1144
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1145
    return-void
.end method

.method public addItemDecoration(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .locals 1
    .param p1, "decor"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .line 1163
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    .line 1164
    return-void
.end method

.method public beginFakeDrag()Z
    .locals 1

    .line 713
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Lccsanandroidx/viewpager2/widget/FakeDrag;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/FakeDrag;->beginFakeDrag()Z

    move-result v0

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 855
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1
    .param p1, "direction"    # I

    .line 860
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Lccsanandroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 364
    .local p1, "container":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Parcelable;

    .line 365
    .local v0, "state":Lccsanandroid/os/Parcelable;
    instance-of v1, v0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    .line 366
    move-object v1, v0

    check-cast v1, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v1, v1, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 367
    .local v1, "previousRvId":I
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v2

    .line 368
    .local v2, "currentRvId":I
    invoke-virtual {p1, v1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    invoke-virtual {p1, v1}, Lccsanandroid/util/SparseArray;->remove(I)V

    .line 372
    .end local v1    # "previousRvId":I
    .end local v2    # "currentRvId":I
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->dispatchRestoreInstanceState(Lccsanandroid/util/SparseArray;)V

    .line 375
    invoke-direct {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->restorePendingState()V

    .line 376
    return-void
.end method

.method public endFakeDrag()Z
    .locals 1

    .line 749
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Lccsanandroidx/viewpager2/widget/FakeDrag;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/FakeDrag;->endFakeDrag()Z

    move-result v0

    return v0
.end method

.method public fakeDragBy(F)Z
    .locals 1
    .param p1, "offsetPxFloat"    # F

    .line 735
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Lccsanandroidx/viewpager2/widget/FakeDrag;

    invoke-virtual {v0, p1}, Lccsanandroidx/viewpager2/widget/FakeDrag;->fakeDragBy(F)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 285
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesGetAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onGetAccessibilityClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    invoke-super {p0}, Lccsanandroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 482
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 675
    iget v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    return v0
.end method

.method public getItemDecorationAt(I)Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1
    .param p1, "index"    # I

    .line 1175
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v0

    return-object v0
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 1184
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 850
    iget v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 573
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    return v0
.end method

.method getPageSize()I
    .locals 3

    .line 556
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 557
    .local v0, "rv":Lccsanandroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 559
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 557
    :goto_0
    return v1
.end method

.method public getScrollState()I
    .locals 1

    .line 687
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;->getScrollState()I

    move-result v0

    return v0
.end method

.method public invalidateItemDecorations()V
    .locals 1

    .line 1192
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 1193
    return-void
.end method

.method public isFakeDragging()Z
    .locals 1

    .line 761
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mFakeDragger:Lccsanandroidx/viewpager2/widget/FakeDrag;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/FakeDrag;->isFakeDragging()Z

    move-result v0

    return v0
.end method

.method isRtl()Z
    .locals 2

    .line 577
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUserInputEnabled()Z
    .locals 1

    .line 803
    iget-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Lccsanandroid/view/accessibility/AccessibilityNodeInfo;

    .line 949
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 950
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 951
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 516
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 517
    .local v0, "width":I
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 521
    .local v1, "height":I
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Lccsanandroid/graphics/Rect;->left:I

    .line 522
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    sub-int v3, p4, p2

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lccsanandroid/graphics/Rect;->right:I

    .line 523
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    iput v3, v2, Lccsanandroid/graphics/Rect;->top:I

    .line 524
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    sub-int v3, p5, p3

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Lccsanandroid/graphics/Rect;->bottom:I

    .line 526
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpContainerRect:Lccsanandroid/graphics/Rect;

    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    const v4, 0x800033

    invoke-static {v4, v0, v1, v2, v3}, Lccsanandroid/view/Gravity;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 527
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    iget v3, v3, Lccsanandroid/graphics/Rect;->left:I

    iget-object v4, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    iget v4, v4, Lccsanandroid/graphics/Rect;->top:I

    iget-object v5, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->right:I

    iget-object v6, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mTmpChildRect:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lccsanandroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 530
    iget-boolean v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    if-eqz v2, :cond_0

    .line 531
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->updateCurrentItem()V

    .line 533
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 498
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2;->measureChild(Lccsanandroid/view/View;II)V

    .line 499
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 500
    .local v0, "width":I
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 501
    .local v1, "height":I
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    .line 503
    .local v2, "childState":I
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 504
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 506
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 507
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 509
    invoke-static {v0, p1, v2}, Lccsanandroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v2, 0x10

    .line 510
    invoke-static {v1, p2, v4}, Lccsanandroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result v4

    .line 509
    invoke-virtual {p0, v3, v4}, Lccsanandroidx/viewpager2/widget/ViewPager2;->setMeasuredDimension(II)V

    .line 512
    return-void
.end method

.method protected onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Lccsanandroid/os/Parcelable;

    .line 328
    instance-of v0, p1, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    .line 329
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 330
    return-void

    .line 333
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 334
    .local v0, "ss":Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;
    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->getSuperState()Lccsanandroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lccsanandroid/view/ViewGroup;->onRestoreInstanceState(Lccsanandroid/os/Parcelable;)V

    .line 335
    iget v1, v0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 336
    iget-object v1, v0, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Lccsanandroid/os/Parcelable;

    iput-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Lccsanandroid/os/Parcelable;

    .line 337
    return-void
.end method

.method protected onSaveInstanceState()Lccsanandroid/os/Parcelable;
    .locals 4

    .line 308
    invoke-super {p0}, Lccsanandroid/view/ViewGroup;->onSaveInstanceState()Lccsanandroid/os/Parcelable;

    move-result-object v0

    .line 309
    .local v0, "superState":Lccsanandroid/os/Parcelable;
    new-instance v1, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 311
    .local v1, "ss":Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v2

    iput v2, v1, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 312
    iget v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    :cond_0
    iput v2, v1, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    .line 314
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingAdapterState:Lccsanandroid/os/Parcelable;

    if-eqz v2, :cond_1

    .line 315
    iput-object v2, v1, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Lccsanandroid/os/Parcelable;

    goto :goto_0

    .line 317
    :cond_1
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 318
    .local v2, "adapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    instance-of v3, v2, Lccsanandroidx/viewpager2/adapter/StatefulAdapter;

    if-eqz v3, :cond_2

    .line 319
    move-object v3, v2

    check-cast v3, Lccsanandroidx/viewpager2/adapter/StatefulAdapter;

    invoke-interface {v3}, Lccsanandroidx/viewpager2/adapter/StatefulAdapter;->saveState()Lccsanandroid/os/Parcelable;

    move-result-object v3

    iput-object v3, v1, Lccsanandroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Lccsanandroid/os/Parcelable;

    .line 323
    .end local v2    # "adapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    :cond_2
    :goto_0
    return-object v1
.end method

.method public onViewAdded(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not support direct child views"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performAccessibilityAction(ILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Lccsanandroid/os/Bundle;

    .line 956
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesPerformAccessibilityAction(ILccsanandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onPerformAccessibilityAction(ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 959
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/view/ViewGroup;->performAccessibilityAction(ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public registerOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 872
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v0, p1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;->addOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 873
    return-void
.end method

.method public removeItemDecoration(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 1215
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1216
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 1202
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 1203
    return-void
.end method

.method public requestTransform()V
    .locals 6

    .line 930
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;->getPageTransformer()Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 931
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;->getRelativeScrollPosition()D

    move-result-wide v0

    .line 934
    .local v0, "relativePosition":D
    double-to-int v2, v0

    .line 935
    .local v2, "position":I
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v0, v3

    double-to-float v3, v3

    .line 936
    .local v3, "positionOffset":F
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 937
    .local v4, "positionOffsetPx":I
    iget-object v5, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v5, v2, v3, v4}, Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;->onPageScrolled(IFI)V

    .line 938
    return-void
.end method

.method public setAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 458
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 459
    .local v0, "currentAdapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v1, v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onDetachAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 460
    invoke-direct {p0, v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->unregisterCurrentItemDataSetTracker(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 461
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 462
    const/4 v1, 0x0

    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 463
    invoke-direct {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->restorePendingState()V

    .line 464
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v1, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onAttachAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 465
    invoke-direct {p0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2;->registerCurrentItemDataSetTracker(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 466
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "item"    # I

    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 592
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 603
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2;->setCurrentItemInternal(IZ)V

    .line 608
    return-void

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCurrentItemInternal(IZ)V
    .locals 8
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 614
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 615
    .local v0, "adapter":Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;, "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 617
    iget v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 618
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPendingCurrentItem:I

    .line 620
    :cond_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 624
    return-void

    .line 626
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 627
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 629
    iget v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v1}, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 631
    return-void

    .line 633
    :cond_3
    iget v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-ne p1, v1, :cond_4

    if-eqz p2, :cond_4

    .line 636
    return-void

    .line 641
    :cond_4
    int-to-double v1, v1

    .line 642
    .local v1, "previousItem":D
    iput p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    .line 643
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v3}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetNewCurrentItem()V

    .line 645
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v3}, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    move-result v3

    if-nez v3, :cond_5

    .line 647
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v3}, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;->getRelativeScrollPosition()D

    move-result-wide v1

    .line 652
    :cond_5
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v3, p1, p2}, Lccsanandroidx/viewpager2/widget/ScrollEventAdapter;->notifyProgrammaticScroll(IZ)V

    .line 653
    if-nez p2, :cond_6

    .line 654
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 655
    return-void

    .line 659
    :cond_6
    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_8

    .line 660
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    int-to-double v4, p1

    cmpl-double v6, v4, v1

    if-lez v6, :cond_7

    add-int/lit8 v4, p1, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v4, p1, 0x3

    :goto_0
    invoke-virtual {v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 662
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lccsanandroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;

    invoke-direct {v4, p1, v3}, Lccsanandroidx/viewpager2/widget/ViewPager2$SmoothScrollToPosition;-><init>(ILccsanandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 664
    :cond_8
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 666
    :goto_1
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 943
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 944
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetLayoutDirection()V

    .line 945
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 2
    .param p1, "limit"    # I

    .line 832
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_1
    :goto_0
    iput p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mOffscreenPageLimit:I

    .line 838
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 839
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 568
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 569
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetOrientation()V

    .line 570
    return-void
.end method

.method public setPageTransformer(Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 3
    .param p1, "transformer"    # Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 900
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 901
    iget-boolean v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    if-nez v1, :cond_0

    .line 902
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 903
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 905
    :cond_0
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 907
    :cond_1
    iget-boolean v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    if-eqz v1, :cond_2

    .line 908
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 909
    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mSavedItemAnimatorPresent:Z

    .line 916
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;->getPageTransformer()Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 917
    return-void

    .line 919
    :cond_3
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageTransformerAdapter:Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;

    invoke-virtual {v0, p1}, Lccsanandroidx/viewpager2/widget/PageTransformerAdapter;->setPageTransformer(Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    .line 920
    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->requestTransform()V

    .line 921
    return-void
.end method

.method public setUserInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 792
    iput-boolean p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mUserInputEnabled:Z

    .line 793
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onSetUserInputEnabled()V

    .line 794
    return-void
.end method

.method snapToPage()V
    .locals 5

    .line 770
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lccsanandroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroid/view/View;

    move-result-object v0

    .line 771
    .local v0, "view":Lccsanandroid/view/View;
    if-nez v0, :cond_0

    .line 772
    return-void

    .line 774
    :cond_0
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lccsanandroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2, v0}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lccsanandroid/view/View;)[I

    move-result-object v1

    .line 776
    .local v1, "snapDistance":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    aget v3, v1, v4

    if-eqz v3, :cond_2

    .line 777
    :cond_1
    iget-object v3, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    aget v2, v1, v2

    aget v4, v1, v4

    invoke-virtual {v3, v2, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 779
    :cond_2
    return-void
.end method

.method public unregisterOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 882
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v0, p1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;->removeOnPageChangeCallback(Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 883
    return-void
.end method

.method updateCurrentItem()V
    .locals 3

    .line 537
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPagerSnapHelper:Lccsanandroidx/recyclerview/widget/PagerSnapHelper;

    if-eqz v0, :cond_2

    .line 541
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroid/view/View;

    move-result-object v0

    .line 542
    .local v0, "snapView":Lccsanandroid/view/View;
    if-nez v0, :cond_0

    .line 543
    return-void

    .line 545
    :cond_0
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mLayoutManager:Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Lccsanandroid/view/View;)I

    move-result v1

    .line 547
    .local v1, "snapPosition":I
    iget v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v2

    if-nez v2, :cond_1

    .line 549
    iget-object v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mPageChangeEventDispatcher:Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;

    invoke-virtual {v2, v1}, Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;->onPageSelected(I)V

    .line 552
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    .line 553
    return-void

    .line 538
    .end local v0    # "snapView":Lccsanandroid/view/View;
    .end local v1    # "snapPosition":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
