.class Lccsanandroidx/appcompat/app/AlertController$AlertParams$1;
.super Lccsanandroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AlertController$AlertParams;->createListView(Lccsanandroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AlertController$AlertParams;Lccsanandroid/content/Context;II[Ljava/lang/CharSequence;Lccsanandroidx/appcompat/app/AlertController$RecycleListView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AlertController$AlertParams;
    .param p2, "arg0"    # Lccsanandroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # [Ljava/lang/CharSequence;

    .line 995
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p6, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$1;->val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Lccsanandroid/widget/ArrayAdapter;-><init>(Lccsanandroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 998
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/widget/ArrayAdapter;->getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 999
    .local v0, "view":Lccsanandroid/view/View;
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v1, v1, p1

    .line 1001
    .local v1, "isItemChecked":Z
    if-eqz v1, :cond_0

    .line 1002
    iget-object v2, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$1;->val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lccsanandroidx/appcompat/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1005
    .end local v1    # "isItemChecked":Z
    :cond_0
    return-object v0
.end method
