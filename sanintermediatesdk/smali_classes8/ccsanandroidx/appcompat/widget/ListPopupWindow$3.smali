.class Lccsanandroidx/appcompat/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ListPopupWindow;

    .line 1186
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$3;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Lccsanandroid/view/View;
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

    .line 1191
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1192
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ListPopupWindow$3;->this$0:Lccsanandroidx/appcompat/widget/ListPopupWindow;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Lccsanandroidx/appcompat/widget/DropDownListView;

    .line 1194
    .local v0, "dropDownList":Lccsanandroidx/appcompat/widget/DropDownListView;
    if-eqz v0, :cond_0

    .line 1195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 1198
    .end local v0    # "dropDownList":Lccsanandroidx/appcompat/widget/DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Lccsanandroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1202
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    return-void
.end method
