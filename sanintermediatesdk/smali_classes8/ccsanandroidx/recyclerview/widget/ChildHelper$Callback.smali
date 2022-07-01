.class interface abstract Lccsanandroidx/recyclerview/widget/ChildHelper$Callback;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/ChildHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract addView(Lccsanandroid/view/View;I)V
.end method

.method public abstract attachViewToParent(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract detachViewFromParent(I)V
.end method

.method public abstract getChildAt(I)Lccsanandroid/view/View;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getChildViewHolder(Lccsanandroid/view/View;)Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract indexOfChild(Lccsanandroid/view/View;)I
.end method

.method public abstract onEnteredHiddenState(Lccsanandroid/view/View;)V
.end method

.method public abstract onLeftHiddenState(Lccsanandroid/view/View;)V
.end method

.method public abstract removeAllViews()V
.end method

.method public abstract removeViewAt(I)V
.end method
