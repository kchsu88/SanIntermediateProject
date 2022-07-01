.class Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Lccsanandroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ActivityChooserView;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-direct {p0}, Lccsanandroid/widget/BaseAdapter;-><init>()V

    .line 680
    const/4 p1, 0x4

    iput p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 689
    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 1

    .line 833
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 719
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 720
    .local v0, "activityCount":I
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 721
    add-int/lit8 v0, v0, -0x1

    .line 723
    :cond_0
    iget v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 724
    .local v1, "count":I
    iget-boolean v2, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_1

    .line 725
    add-int/lit8 v1, v1, 0x1

    .line 727
    :cond_1
    return v1
.end method

.method public getDataModel()Lccsanandroidx/appcompat/widget/ActivityChooserModel;
    .locals 1

    .line 841
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    return-object v0
.end method

.method public getDefaultActivity()Lccsanandroid/content/pm/ResolveInfo;
    .locals 1

    .line 822
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    .line 837
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 732
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 733
    .local v0, "itemViewType":I
    packed-switch v0, :pswitch_data_0

    .line 742
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 735
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 737
    :pswitch_1
    iget-boolean v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->getDefaultActivity()Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 738
    add-int/lit8 p1, p1, 0x1

    .line 740
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    invoke-virtual {v1, p1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->getActivity(I)Lccsanandroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 748
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 705
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 706
    return v1

    .line 708
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getShowDefaultActivity()Z
    .locals 1

    .line 855
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 753
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 754
    .local v0, "itemViewType":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 786
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 756
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lccsanandroid/view/View;->getId()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 757
    :cond_0
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lccsanandroidx/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v3, v4, p3, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p2

    .line 759
    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setId(I)V

    .line 760
    sget v1, Lccsanandroidx/appcompat/R$id;->title:I

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    .line 761
    .local v1, "titleView":Lccsanandroid/widget/TextView;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    sget v3, Lccsanandroidx/appcompat/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    .end local v1    # "titleView":Lccsanandroid/widget/TextView;
    :cond_1
    return-object p2

    .line 766
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lccsanandroid/view/View;->getId()I

    move-result v3

    sget v4, Lccsanandroidx/appcompat/R$id;->list_item:I

    if-eq v3, v4, :cond_3

    .line 767
    :cond_2
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lccsanandroidx/appcompat/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v3, v4, p3, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p2

    .line 770
    :cond_3
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v3

    .line 772
    .local v3, "packageManager":Lccsanandroid/content/pm/PackageManager;
    sget v4, Lccsanandroidx/appcompat/R$id;->icon:I

    invoke-virtual {p2, v4}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/ImageView;

    .line 773
    .local v4, "iconView":Lccsanandroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/content/pm/ResolveInfo;

    .line 774
    .local v5, "activity":Lccsanandroid/content/pm/ResolveInfo;
    invoke-virtual {v5, v3}, Lccsanandroid/content/pm/ResolveInfo;->loadIcon(Lccsanandroid/content/pm/PackageManager;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 776
    sget v6, Lccsanandroidx/appcompat/R$id;->title:I

    invoke-virtual {p2, v6}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v6

    check-cast v6, Lccsanandroid/widget/TextView;

    .line 777
    .local v6, "titleView":Lccsanandroid/widget/TextView;
    invoke-virtual {v5, v3}, Lccsanandroid/content/pm/ResolveInfo;->loadLabel(Lccsanandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-boolean v7, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v7, :cond_4

    if-nez p1, :cond_4

    iget-boolean v7, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v7, :cond_4

    .line 780
    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 782
    :cond_4
    invoke-virtual {p2, v2}, Lccsanandroid/view/View;->setActivated(Z)V

    .line 784
    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 714
    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .locals 8

    .line 793
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 794
    .local v0, "oldMaxActivityCount":I
    const v1, 0x7fffffff

    iput v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 796
    const/4 v1, 0x0

    .line 797
    .local v1, "contentWidth":I
    const/4 v2, 0x0

    .line 799
    .local v2, "itemView":Lccsanandroid/view/View;
    const/4 v3, 0x0

    invoke-static {v3, v3}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 800
    .local v4, "widthMeasureSpec":I
    invoke-static {v3, v3}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 801
    .local v3, "heightMeasureSpec":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v5

    .line 803
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_0

    .line 804
    const/4 v7, 0x0

    invoke-virtual {p0, v6, v2, v7}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v2

    .line 805
    invoke-virtual {v2, v4, v3}, Lccsanandroid/view/View;->measure(II)V

    .line 806
    invoke-virtual {v2}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 803
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 809
    .end local v6    # "i":I
    :cond_0
    iput v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 811
    return v1
.end method

.method public setDataModel(Lccsanandroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 2
    .param p1, "dataModel"    # Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    .line 692
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mAdapter:Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    move-result-object v0

    .line 693
    .local v0, "oldDataModel":Lccsanandroidx/appcompat/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Lccsanandroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 696
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lccsanandroidx/appcompat/widget/ActivityChooserModel;

    .line 697
    if-eqz p1, :cond_1

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lccsanandroidx/appcompat/widget/ActivityChooserView;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/ActivityChooserView;->mModelDataSetObserver:Lccsanandroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Lccsanandroidx/appcompat/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 700
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 701
    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 1
    .param p1, "maxActivityCount"    # I

    .line 815
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    if-eq v0, p1, :cond_0

    .line 816
    iput p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 817
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 819
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 1
    .param p1, "showDefaultActivity"    # Z
    .param p2, "highlightDefaultActivity"    # Z

    .line 846
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_1

    .line 848
    :cond_0
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 849
    iput-boolean p2, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 850
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 852
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .param p1, "showFooterView"    # Z

    .line 826
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 827
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 828
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 830
    :cond_0
    return-void
.end method
