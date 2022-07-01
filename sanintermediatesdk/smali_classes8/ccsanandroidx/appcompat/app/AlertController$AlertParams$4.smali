.class Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AlertController$AlertParams;->createListView(Lccsanandroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lccsanandroidx/appcompat/app/AlertController;

.field final synthetic val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AlertController$AlertParams;Lccsanandroidx/appcompat/app/AlertController$RecycleListView;Lccsanandroidx/appcompat/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    .line 1075
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->val$dialog:Lccsanandroidx/appcompat/app/AlertController;

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

    .line 1078
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lccsanandroidx/appcompat/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1081
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->val$dialog:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController;->mDialog:Lccsanandroidx/appcompat/app/AppCompatDialog;

    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$4;->val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    .line 1082
    invoke-virtual {v2, p3}, Lccsanandroidx/appcompat/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 1081
    invoke-interface {v0, v1, p3, v2}, Lccsanandroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Lccsanandroid/content/DialogInterface;IZ)V

    .line 1083
    return-void
.end method
