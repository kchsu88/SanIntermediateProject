.class Lccsancom/google/android/material/tabs/TabLayout$PagerAdapterObserver;
.super Lccsanandroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/tabs/TabLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/tabs/TabLayout;)V
    .locals 0

    .line 3413
    iput-object p1, p0, Lccsancom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-direct {p0}, Lccsanandroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3417
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    .line 3418
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3422
    iget-object v0, p0, Lccsancom/google/android/material/tabs/TabLayout$PagerAdapterObserver;->this$0:Lccsancom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    .line 3423
    return-void
.end method
