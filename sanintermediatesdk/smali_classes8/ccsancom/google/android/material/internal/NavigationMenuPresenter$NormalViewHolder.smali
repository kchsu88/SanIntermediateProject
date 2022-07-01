.class Lccsancom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;
.super Lccsancom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "inflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "parent"    # Lccsanandroid/view/ViewGroup;
    .param p3, "listener"    # Lccsanandroid/view/View$OnClickListener;

    .line 379
    sget v0, Lccsancom/google/android/material/R$layout;->design_navigation_item:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;-><init>(Lccsanandroid/view/View;)V

    .line 380
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuPresenter$NormalViewHolder;->itemView:Lccsanandroid/view/View;

    invoke-virtual {v0, p3}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 381
    return-void
.end method
