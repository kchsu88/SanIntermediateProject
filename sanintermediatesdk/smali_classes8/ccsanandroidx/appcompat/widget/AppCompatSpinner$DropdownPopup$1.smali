.class Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;-><init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

.field final synthetic val$this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;Lccsanandroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    .line 975
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iput-object p2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->val$this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Lccsanandroid/view/View;
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

    .line 978
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    .line 979
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getOnItemClickListener()Lccsanandroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    iget-object v1, v1, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Lccsanandroid/widget/ListAdapter;

    .line 981
    invoke-interface {v1, p3}, Lccsanandroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, p2, p3, v1, v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->performItemClick(Lccsanandroid/view/View;IJ)Z

    .line 983
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 984
    return-void
.end method
