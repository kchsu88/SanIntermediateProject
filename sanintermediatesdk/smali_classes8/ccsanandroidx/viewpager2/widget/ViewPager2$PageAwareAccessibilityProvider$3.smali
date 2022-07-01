.class Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;
.super Lccsanandroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->onInitialize(Lccsanandroidx/viewpager2/widget/CompositeOnPageChangeCallback;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;)V
    .locals 1
    .param p1, "this$1"    # Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    .line 1359
    iput-object p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;->this$1:Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;-><init>(Lccsanandroidx/viewpager2/widget/ViewPager2$1;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1362
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider$3;->this$1:Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$PageAwareAccessibilityProvider;->updatePageAccessibilityActions()V

    .line 1363
    return-void
.end method
