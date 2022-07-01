.class public final Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FragmentViewHolder.java"


# direct methods
.method private constructor <init>(Lccsanandroid/widget/FrameLayout;)V
    .locals 0
    .param p1, "container"    # Lccsanandroid/widget/FrameLayout;

    .line 33
    invoke-direct {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Lccsanandroid/view/View;)V

    .line 34
    return-void
.end method

.method static create(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;
    .locals 3
    .param p0, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 37
    new-instance v0, Lccsanandroid/widget/FrameLayout;

    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 38
    .local v0, "container":Lccsanandroid/widget/FrameLayout;
    new-instance v1, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-static {}, Lccsanandroidx/core/view/ViewCompat;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setId(I)V

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setSaveEnabled(Z)V

    .line 43
    new-instance v1, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;

    invoke-direct {v1, v0}, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;-><init>(Lccsanandroid/widget/FrameLayout;)V

    return-object v1
.end method


# virtual methods
.method getContainer()Lccsanandroid/widget/FrameLayout;
    .locals 1

    .line 47
    iget-object v0, p0, Lccsanandroidx/viewpager2/adapter/FragmentViewHolder;->itemView:Lccsanandroid/view/View;

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    return-object v0
.end method
