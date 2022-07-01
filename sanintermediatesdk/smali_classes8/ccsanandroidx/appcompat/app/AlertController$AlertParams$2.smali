.class Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;
.super Lccsanandroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AlertController$AlertParams;->createListView(Lccsanandroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lccsanandroidx/appcompat/app/AlertController;

.field final synthetic val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AlertController$AlertParams;Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;ZLccsanandroidx/appcompat/app/AlertController$RecycleListView;Lccsanandroidx/appcompat/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AlertController$AlertParams;
    .param p2, "arg0"    # Lccsanandroid/content/Context;
    .param p3, "arg1"    # Lccsanandroid/database/Cursor;
    .param p4, "arg2"    # Z

    .line 1009
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iput-object p5, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p6, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->val$dialog:Lccsanandroidx/appcompat/app/AlertController;

    invoke-direct {p0, p2, p3, p4}, Lccsanandroid/widget/CursorAdapter;-><init>(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Z)V

    .line 1014
    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->getCursor()Lccsanandroid/database/Cursor;

    move-result-object p5

    .line 1015
    .local p5, "cursor":Lccsanandroid/database/Cursor;
    iget-object p6, p1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p5, p6}, Lccsanandroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p6

    iput p6, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 1016
    iget-object p6, p1, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p5, p6}, Lccsanandroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p6

    iput p6, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1017
    .end local p5    # "cursor":Lccsanandroid/database/Cursor;
    return-void
.end method


# virtual methods
.method public bindView(Lccsanandroid/view/View;Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "context"    # Lccsanandroid/content/Context;
    .param p3, "cursor"    # Lccsanandroid/database/Cursor;

    .line 1021
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/CheckedTextView;

    .line 1023
    .local v0, "text":Lccsanandroid/widget/CheckedTextView;
    iget v1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1024
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->val$listView:Lccsanandroidx/appcompat/app/AlertController$RecycleListView;

    invoke-interface {p3}, Lccsanandroid/database/Cursor;->getPosition()I

    move-result v2

    iget v3, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1025
    invoke-interface {p3, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1024
    :goto_0
    invoke-virtual {v1, v2, v4}, Lccsanandroidx/appcompat/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    .line 1026
    return-void
.end method

.method public newView(Lccsanandroid/content/Context;Lccsanandroid/database/Cursor;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cursor"    # Lccsanandroid/database/Cursor;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 1030
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->this$0:Lccsanandroidx/appcompat/app/AlertController$AlertParams;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AlertController$AlertParams;->mInflater:Lccsanandroid/view/LayoutInflater;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AlertController$AlertParams$2;->val$dialog:Lccsanandroidx/appcompat/app/AlertController;

    iget v1, v1, Lccsanandroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method
