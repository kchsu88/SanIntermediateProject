.class public Lccsancom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lccsancom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewPagerOnTabSelectedListener"
.end annotation


# instance fields
.field private final viewPager:Lccsanandroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lccsanandroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "viewPager"    # Lccsanandroidx/viewpager/widget/ViewPager;

    .line 3392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3393
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    .line 3394
    return-void
.end method


# virtual methods
.method public onTabReselected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 3409
    return-void
.end method

.method public onTabSelected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 3398
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lccsancom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 3399
    return-void
.end method

.method public onTabUnselected(Lccsancom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lccsancom/google/android/material/tabs/TabLayout$Tab;

    .line 3404
    return-void
.end method
