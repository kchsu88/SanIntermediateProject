.class Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;
.implements Lccsanandroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Lccsanandroid/widget/ListAdapter;

.field mPopup:Lccsanandroidx/appcompat/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/AppCompatSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    .line 858
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 866
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Lccsanandroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Lccsanandroidx/appcompat/app/AlertDialog;

    .line 870
    :cond_0
    return-void
.end method

.method public getBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 937
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 889
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 947
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    .line 957
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 874
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Lccsanandroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 913
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0, p2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->setSelection(I)V

    .line 914
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getOnItemClickListener()Lccsanandroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    const/4 v1, 0x0

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Lccsanandroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Lccsanandroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->performItemClick(Lccsanandroid/view/View;IJ)Z

    .line 917
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->dismiss()V

    .line 918
    return-void
.end method

.method public setAdapter(Lccsanandroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lccsanandroid/widget/ListAdapter;

    .line 879
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Lccsanandroid/widget/ListAdapter;

    .line 880
    return-void
.end method

.method public setBackgroundDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 922
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 932
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 952
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 884
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 885
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 927
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void
.end method

.method public show(II)V
    .locals 4
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 894
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Lccsanandroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 895
    return-void

    .line 897
    :cond_0
    new-instance v0, Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;-><init>(Lccsanandroid/content/Context;)V

    .line 898
    .local v0, "builder":Lccsanandroidx/appcompat/app/AlertDialog$Builder;
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 899
    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    .line 901
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Lccsanandroid/widget/ListAdapter;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->this$0:Lccsanandroidx/appcompat/widget/AppCompatSpinner;

    .line 902
    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    .line 901
    invoke-virtual {v0, v1, v2, p0}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Lccsanandroid/widget/ListAdapter;ILccsanandroid/content/DialogInterface$OnClickListener;)Lccsanandroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 902
    invoke-virtual {v1}, Lccsanandroidx/appcompat/app/AlertDialog$Builder;->create()Lccsanandroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Lccsanandroidx/appcompat/app/AlertDialog;

    .line 903
    invoke-virtual {v1}, Lccsanandroidx/appcompat/app/AlertDialog;->getListView()Lccsanandroid/widget/ListView;

    move-result-object v1

    .line 904
    .local v1, "listView":Lccsanandroid/widget/ListView;
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 905
    invoke-virtual {v1, p1}, Lccsanandroid/widget/ListView;->setTextDirection(I)V

    .line 906
    invoke-virtual {v1, p2}, Lccsanandroid/widget/ListView;->setTextAlignment(I)V

    .line 908
    :cond_2
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/AppCompatSpinner$DialogPopup;->mPopup:Lccsanandroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/app/AlertDialog;->show()V

    .line 909
    return-void
.end method
