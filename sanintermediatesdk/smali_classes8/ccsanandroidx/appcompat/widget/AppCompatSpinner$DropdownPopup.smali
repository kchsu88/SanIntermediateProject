.class Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;
.super Lccsanandroidx/appcompat/widget/ListPopupWindow;
.source "AppCompatSpinner.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Lccsanandroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field private mOriginalHorizontalOffset:I

.field private final mVisibleRect:Lccsanandroid/graphics/Rect;

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/AppCompatSpinner;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .line 968
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    .line 969
    invoke-direct {p0, p2, p3, p4}, Lccsanandroidx/appcompat/widget/ListPopupWindow;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 965
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Lccsanandroid/graphics/Rect;

    .line 971
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setAnchorView(Lccsanandroid/view/View;)V

    .line 972
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setModal(Z)V

    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setPromptPosition(I)V

    .line 975
    new-instance v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;-><init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Lccsanandroidx/appcompat/widget/AppCompatSpinner;)V

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setOnItemClickListener(Lccsanandroid/widget/AdapterView$OnItemClickListener;)V

    .line 986
    return-void
.end method

.method static synthetic access$001(Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    .line 962
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 8

    .line 1006
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1007
    .local v0, "background":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1008
    .local v1, "hOffset":I
    if-eqz v0, :cond_1

    .line 1009
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, v2, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 1010
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v2}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, v2, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    iget v2, v2, Lccsanandroid/graphics/Rect;->right:I

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, v2, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    iget v2, v2, Lccsanandroid/graphics/Rect;->left:I

    neg-int v2, v2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 1013
    :cond_1
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v2, v2, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v3, v3, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Lccsanandroid/graphics/Rect;->right:I

    iput v4, v2, Lccsanandroid/graphics/Rect;->left:I

    .line 1016
    :goto_1
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getPaddingLeft()I

    move-result v2

    .line 1017
    .local v2, "spinnerPaddingLeft":I
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getPaddingRight()I

    move-result v3

    .line 1018
    .local v3, "spinnerPaddingRight":I
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v4}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getWidth()I

    move-result v4

    .line 1019
    .local v4, "spinnerWidth":I
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget v5, v5, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 1020
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v6, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Lccsanandroid/widget/ListAdapter;

    check-cast v6, Lccsanandroid/widget/SpinnerAdapter;

    .line 1021
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1020
    invoke-virtual {v5, v6, v7}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->compatMeasureContentWidth(Lccsanandroid/widget/SpinnerAdapter;Lccsanandroid/graphics/drawable/Drawable;)I

    move-result v5

    .line 1022
    .local v5, "contentWidth":I
    iget-object v6, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v6}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v6

    .line 1023
    invoke-virtual {v6}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v7, v7, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    iget v7, v7, Lccsanandroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v7, v7, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mTempRect:Lccsanandroid/graphics/Rect;

    iget v7, v7, Lccsanandroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 1024
    .local v6, "contentWidthLimit":I
    if-le v5, v6, :cond_2

    .line 1025
    move v5, v6

    .line 1027
    :cond_2
    sub-int v7, v4, v2

    sub-int/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    .line 1029
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthLimit":I
    goto :goto_2

    :cond_3
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget v5, v5, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 1030
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_2

    .line 1032
    :cond_4
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget v5, v5, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->mDropDownWidth:I

    invoke-virtual {p0, v5}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V

    .line 1034
    :goto_2
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-static {v5}, Lccsanandroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Lccsanandroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1035
    sub-int v5, v4, v3

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1036
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOriginalOffset()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    goto :goto_3

    .line 1038
    :cond_5
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getHorizontalOriginalOffset()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v1, v5

    .line 1040
    :goto_3
    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 1041
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 996
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    .line 1112
    iget v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return v0
.end method

.method isVisibleToUser(Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 1102
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdapter(Lccsanandroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lccsanandroid/widget/ListAdapter;

    .line 990
    invoke-super {p0, p1}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 991
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Lccsanandroid/widget/ListAdapter;

    .line 992
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0
    .param p1, "px"    # I

    .line 1107
    iput p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mOriginalHorizontalOffset:I

    .line 1108
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1002
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    .line 1003
    return-void
.end method

.method public show(II)V
    .locals 5
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 1045
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    .line 1047
    .local v0, "wasShowing":Z
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V

    .line 1049
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setInputMethodMode(I)V

    .line 1050
    invoke-super {p0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 1051
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v1

    .line 1052
    .local v1, "listView":Lccsanandroid/widget/ListView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsanandroid/widget/ListView;->setChoiceMode(I)V

    .line 1053
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1054
    invoke-virtual {v1, p1}, Lccsanandroid/widget/ListView;->setTextDirection(I)V

    .line 1055
    invoke-virtual {v1, p2}, Lccsanandroid/widget/ListView;->setTextAlignment(I)V

    .line 1057
    :cond_0
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setSelection(I)V

    .line 1059
    if-eqz v0, :cond_1

    .line 1062
    return-void

    .line 1068
    :cond_1
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1069
    .local v2, "vto":Lccsanandroid/view/ViewTreeObserver;
    if-eqz v2, :cond_2

    .line 1070
    new-instance v3, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;

    invoke-direct {v3, p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$2;-><init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;)V

    .line 1085
    .local v3, "layoutListener":Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v3}, Lccsanandroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1086
    new-instance v4, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;

    invoke-direct {v4, p0, v3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$3;-><init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->setOnDismissListener(Lccsanandroid/widget/PopupWindow$OnDismissListener;)V

    .line 1096
    .end local v3    # "layoutListener":Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_2
    return-void
.end method
