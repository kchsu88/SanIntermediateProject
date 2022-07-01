.class Lccsanandroidx/appcompat/app/AlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AlertController$AlertParams;Lccsanandroidx/appcompat/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    .line 1065
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$3;->val$dialog:Lccsanandroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 2
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

    .line 1068
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Lccsanandroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$3;->val$dialog:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AlertController;->mDialog:Lccsanandroidx/appcompat/app/AppCompatDialog;

    invoke-interface {v0, v1, p3}, Lccsanandroid/content/DialogInterface$OnClickListener;->onClick(Lccsanandroid/content/DialogInterface;I)V

    .line 1069
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$3;->val$dialog:Lccsanandroidx/appcompat/app/AlertController;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController;->mDialog:Lccsanandroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 1072
    :cond_0
    return-void
.end method
