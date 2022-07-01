.class Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "MaterialAutoCompleteTextView.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 107
    iput-object p1, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 8
    .param p2, "selectedView"    # Lccsanandroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;",
            "Lccsanandroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 110
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    if-gez p3, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 111
    invoke-static {v0}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;)Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Lccsanandroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "selectedItem":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v1, v0}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$100(Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v1}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->getOnItemClickListener()Lccsanandroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    .line 116
    .local v1, "userOnitemClickListener":Lccsanandroid/widget/AdapterView$OnItemClickListener;
    if-eqz v1, :cond_3

    .line 117
    if-eqz p2, :cond_1

    if-gez p3, :cond_2

    .line 118
    :cond_1
    iget-object v2, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v2}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;)Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->getSelectedView()Lccsanandroid/view/View;

    move-result-object p2

    .line 119
    iget-object v2, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v2}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;)Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p3

    .line 120
    iget-object v2, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v2}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;)Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p4

    .line 122
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    .line 123
    invoke-static {v2}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;)Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v3

    .line 122
    move-object v2, v1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lccsanandroid/widget/AdapterView$OnItemClickListener;->onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V

    .line 126
    :cond_3
    iget-object v2, p0, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView$1;->this$0:Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v2}, Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;->access$000(Lccsancom/google/android/material/textfield/MaterialAutoCompleteTextView;)Lccsanandroidx/appcompat/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 127
    return-void
.end method
