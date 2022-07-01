.class Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Lccsanandroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterChangeListener"
.end annotation


# instance fields
.field private autoRefresh:Z

.field final synthetic this$0:Lccsancom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .line 3429
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Lccsanandroidx/viewpager/widget/ViewPager;Lccsanandroidx/viewpager/widget/PagerAdapter;Lccsanandroidx/viewpager/widget/PagerAdapter;)V
    .locals 2
    .param p1, "viewPager"    # Lccsanandroidx/viewpager/widget/ViewPager;
    .param p2, "oldAdapter"    # Lccsanandroidx/viewpager/widget/PagerAdapter;
    .param p3, "newAdapter"    # Lccsanandroidx/viewpager/widget/PagerAdapter;

    .line 3436
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lccsancom/google/android/material/tabs/TabLayout;->viewPager:Lccsanandroidx/viewpager/widget/ViewPager;

    if-ne v0, p1, :cond_0

    .line 3437
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    iget-boolean v1, p0, Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;->autoRefresh:Z

    invoke-virtual {v0, p3, v1}, Lccsancom/google/android/material/tabs/TabLayout;->setPagerAdapter(Lccsanandroidx/viewpager/widget/PagerAdapter;Z)V

    .line 3439
    :cond_0
    return-void
.end method

.method setAutoRefresh(Z)V
    .locals 0
    .param p1, "autoRefresh"    # Z

    .line 3442
    iput-boolean p1, p0, Lccsancom/google/android/material/tabs/TabLayout$AdapterChangeListener;->autoRefresh:Z

    .line 3443
    return-void
.end method
