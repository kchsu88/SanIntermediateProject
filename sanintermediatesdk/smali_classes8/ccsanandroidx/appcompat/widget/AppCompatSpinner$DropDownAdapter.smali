.class Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Lccsanandroid/widget/ListAdapter;
.implements Lccsanandroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Lccsanandroid/widget/SpinnerAdapter;

.field private mListAdapter:Lccsanandroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Lccsanandroid/widget/SpinnerAdapter;Lccsanandroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "adapter"    # Lccsanandroid/widget/SpinnerAdapter;
    .param p2, "dropDownTheme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Lccsanandroid/widget/SpinnerAdapter;

    .line 706
    instance-of v0, p1, Lccsanandroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 707
    move-object v0, p1

    check-cast v0, Lccsanandroid/widget/ListAdapter;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Lccsanandroid/widget/ListAdapter;

    .line 710
    :cond_0
    if-eqz p2, :cond_2

    .line 711
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Lccsanandroid/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_1

    .line 713
    move-object v0, p1

    check-cast v0, Lccsanandroid/widget/ThemedSpinnerAdapter;

    .line 715
    .local v0, "themedAdapter":Lccsanandroid/widget/ThemedSpinnerAdapter;
    invoke-interface {v0}, Lccsanandroid/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    if-eq v1, p2, :cond_2

    .line 716
    invoke-interface {v0, p2}, Lccsanandroid/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Lccsanandroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 718
    .end local v0    # "themedAdapter":Lccsanandroid/widget/ThemedSpinnerAdapter;
    :cond_1
    instance-of v0, p1, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter;

    if-eqz v0, :cond_2

    .line 719
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter;

    .line 720
    .local v0, "themedAdapter":Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter;
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter;->getDropDownViewTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    if-nez v1, :cond_2

    .line 721
    invoke-interface {v0, p2}, Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter;->setDropDownViewTheme(Lccsanandroid/content/res/Resources$Theme;)V

    nop

    .line 725
    .end local v0    # "themedAdapter":Lccsanandroidx/appcompat/widget/ThemedSpinnerAdapter;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .line 778
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Lccsanandroid/widget/ListAdapter;

    .line 779
    .local v0, "adapter":Lccsanandroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 780
    invoke-interface {v0}, Lccsanandroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    return v1

    .line 782
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCount()I
    .locals 1

    .line 729
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Lccsanandroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsanandroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDropDownView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 749
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Lccsanandroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 750
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/widget/SpinnerAdapter;->getDropDownView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 749
    :goto_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 734
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Lccsanandroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lccsanandroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 739
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Lccsanandroid/widget/SpinnerAdapter;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lccsanandroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 802
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 744
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->getDropDownView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 807
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 755
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Lccsanandroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsanandroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 812
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 792
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mListAdapter:Lccsanandroid/widget/ListAdapter;

    .line 793
    .local v0, "adapter":Lccsanandroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 794
    invoke-interface {v0, p1}, Lccsanandroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    return v1

    .line 796
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public registerDataSetObserver(Lccsanandroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Lccsanandroid/database/DataSetObserver;

    .line 760
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Lccsanandroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 761
    invoke-interface {v0, p1}, Lccsanandroid/widget/SpinnerAdapter;->registerDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    .line 763
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Lccsanandroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Lccsanandroid/database/DataSetObserver;

    .line 767
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropDownAdapter;->mAdapter:Lccsanandroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0, p1}, Lccsanandroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Lccsanandroid/database/DataSetObserver;)V

    .line 770
    :cond_0
    return-void
.end method
